.class public final Landroidx/compose/ui/node/LayoutNodeDrawScope;
.super Ljava/lang/Object;
.source "LayoutNodeDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;
.implements Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNodeDrawScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNodeDrawScope.kt\nandroidx/compose/ui/node/LayoutNodeDrawScope\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n*L\n1#1,128:1\n246#2:129\n74#3:130\n74#3:174\n74#3:175\n74#3:176\n385#4,6:131\n395#4,2:138\n397#4,8:143\n405#4,9:154\n414#4,8:166\n385#4,6:177\n395#4,2:184\n397#4,8:189\n405#4,9:200\n414#4,8:212\n261#5:137\n261#5:183\n234#6,3:140\n237#6,3:163\n234#6,3:186\n237#6,3:209\n1208#7:151\n1187#7,2:152\n1208#7:197\n1187#7,2:198\n542#8,17:220\n*S KotlinDebug\n*F\n+ 1 LayoutNodeDrawScope.kt\nandroidx/compose/ui/node/LayoutNodeDrawScope\n*L\n46#1:129\n54#1:130\n61#1:174\n73#1:175\n85#1:176\n54#1:131,6\n54#1:138,2\n54#1:143,8\n54#1:154,9\n54#1:166,8\n85#1:177,6\n85#1:184,2\n85#1:189,8\n85#1:200,9\n85#1:212,8\n54#1:137\n85#1:183\n54#1:140,3\n54#1:163,3\n85#1:186,3\n85#1:209,3\n54#1:151\n54#1:152,2\n85#1:197\n85#1:198,2\n98#1:220,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J2\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020#H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010%Jq\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u00106Jq\u0010&\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:JY\u0010;\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010<\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>JY\u0010;\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u0010<\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@J\u0008\u0010A\u001a\u00020\u001eH\u0016J2\u0010B\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010DJO\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJm\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\u0008\u0008\u0002\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020M2\u0008\u0008\u0002\u0010N\u001a\u00020K2\u0008\u0008\u0002\u0010O\u001a\u00020M2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010QJw\u0010E\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020G2\u0008\u0008\u0002\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020M2\u0008\u0008\u0002\u0010N\u001a\u00020K2\u0008\u0008\u0002\u0010O\u001a\u00020M2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u0010R\u001a\u00020SH\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010UJk\u0010V\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0006\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u00072\u0008\u0008\u0002\u0010Y\u001a\u00020\u000b2\u0008\u0008\u0002\u0010Z\u001a\u00020[2\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008^\u0010_Jk\u0010V\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u00072\u0008\u0008\u0002\u0010Y\u001a\u00020\u000b2\u0008\u0008\u0002\u0010Z\u001a\u00020[2\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008`\u0010aJY\u0010b\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008c\u0010dJY\u0010b\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008e\u0010fJM\u0010g\u001a\u00020\u001e2\u0006\u0010h\u001a\u00020i2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008j\u0010kJM\u0010g\u001a\u00020\u001e2\u0006\u0010h\u001a\u00020i2\u0006\u00107\u001a\u0002082\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008l\u0010mJq\u0010n\u001a\u00020\u001e2\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00070p2\u0006\u0010q\u001a\u00020r2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010Y\u001a\u00020\u000b2\u0008\u0008\u0002\u0010Z\u001a\u00020[2\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008s\u0010tJq\u0010n\u001a\u00020\u001e2\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00070p2\u0006\u0010q\u001a\u00020r2\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u0010Y\u001a\u00020\u000b2\u0008\u0008\u0002\u0010Z\u001a\u00020[2\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008u\u0010vJY\u0010w\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008x\u0010dJY\u0010w\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008y\u0010fJc\u0010z\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010{\u001a\u00020|2\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008}\u0010~Jd\u0010z\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010{\u001a\u00020|2\u0008\u0008\u0002\u0010/\u001a\u0002002\u0008\u0008\u0003\u0010.\u001a\u00020\u000b2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u00103\u001a\u000204H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u0013\u0010\u0081\u0001\u001a\u00020\u001e*\u00020\u00132\u0006\u0010\u001f\u001a\u00020 J\u001c\u0010\u0082\u0001\u001a\u00030\u0083\u0001*\u00030\u0084\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u001c\u0010\u0082\u0001\u001a\u00030\u0083\u0001*\u00030\u0087\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u001c\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00030\u0087\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\u001e\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00020\u000bH\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001J\u001f\u0010\u008a\u0001\u001a\u00030\u0084\u0001*\u00030\u0083\u0001H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008f\u0001J\u001b\u0010\u0090\u0001\u001a\u00030\u0091\u0001*\u00020\u001bH\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u001b\u0010\u0094\u0001\u001a\u00020\u000b*\u00030\u0084\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u008e\u0001J\u001b\u0010\u0094\u0001\u001a\u00020\u000b*\u00030\u0087\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u008c\u0001J\u0010\u0010\u0097\u0001\u001a\u00030\u0098\u0001*\u00030\u0099\u0001H\u0097\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\u001b*\u00030\u0091\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u0093\u0001J\u001c\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00030\u0084\u0001H\u0097\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J\u001e\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00020\u000bH\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u009e\u0001J\u001f\u0010\u009c\u0001\u001a\u00030\u0087\u0001*\u00030\u0083\u0001H\u0097\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u00078VX\u0096\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u000b8\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\rR\u0012\u0010\u0016\u001a\u00020\u0017X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\t\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/node/LayoutNodeDrawScope;",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "canvasDrawScope",
        "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;",
        "(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V",
        "center",
        "Landroidx/compose/ui/geometry/Offset;",
        "getCenter-F1C5BW0",
        "()J",
        "density",
        "",
        "getDensity",
        "()F",
        "drawContext",
        "Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "getDrawContext",
        "()Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "drawNode",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "fontScale",
        "getFontScale",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "getSize-NH-jbRc",
        "draw",
        "",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "coordinator",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Landroidx/compose/ui/Modifier$Node;",
        "draw-x_KDEd0$ui_release",
        "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;)V",
        "drawArc",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "startAngle",
        "sweepAngle",
        "useCenter",
        "",
        "topLeft",
        "alpha",
        "style",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "drawArc-illE91I",
        "(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "drawArc-yD3GUKo",
        "(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle",
        "radius",
        "drawCircle-V9BoPsw",
        "(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle-VaOC9Bg",
        "(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawContent",
        "drawDirect",
        "drawDirect-x_KDEd0$ui_release",
        "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;)V",
        "drawImage",
        "image",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "drawImage-gbVJVH8",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "srcOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "srcSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "dstOffset",
        "dstSize",
        "drawImage-9jGpkUE",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "drawImage-AZ2fEMs",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V",
        "drawLine",
        "start",
        "end",
        "strokeWidth",
        "cap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "pathEffect",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "drawLine-1RTmtNc",
        "(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawLine-NGM6Ib0",
        "(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval",
        "drawOval-AsUm42w",
        "(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval-n-J9OG0",
        "(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "drawPath-GBMwjPU",
        "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath-LG529CI",
        "(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints",
        "points",
        "",
        "pointMode",
        "Landroidx/compose/ui/graphics/PointMode;",
        "drawPoints-Gsft0Ws",
        "(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints-F8ZwMP8",
        "(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRect",
        "drawRect-AsUm42w",
        "drawRect-n-J9OG0",
        "drawRoundRect",
        "cornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "drawRoundRect-ZuiqVtQ",
        "(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRoundRect-u-Aw5IA",
        "(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "performDraw",
        "roundToPx",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "roundToPx-0680j_4",
        "(F)I",
        "Landroidx/compose/ui/unit/TextUnit;",
        "roundToPx--R2X_6o",
        "(J)I",
        "toDp",
        "toDp-GaN1DYA",
        "(J)F",
        "toDp-u2uoSUM",
        "(F)F",
        "(I)F",
        "toDpSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "toDpSize-k-rfVVM",
        "(J)J",
        "toPx",
        "toPx-0680j_4",
        "toPx--R2X_6o",
        "toRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/unit/DpRect;",
        "toSize",
        "toSize-XkaWNTQ",
        "toSp",
        "toSp-0xMU5do",
        "(F)J",
        "toSp-kPz2Gy4",
        "(I)J",
        "ui_release"
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
.field public static final $stable:I


# instance fields
.field private final canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private drawNode:Landroidx/compose/ui/node/DrawModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0
    .param p1, "canvasDrawScope"    # Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 34
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 35
    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 110
    return-void
.end method


# virtual methods
.method public final draw-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;)V
    .locals 17
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "size"    # J
    .param p4, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p5, "drawNode"    # Landroidx/compose/ui/Modifier$Node;

    .line 85
    const/4 v0, 0x0

    .line 176
    .local v0, "$i$f$getDraw-OLwlOKw":I
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 85
    .end local v0    # "$i$f$getDraw-OLwlOKw":I
    move-object/from16 v1, p5

    .local v0, "kind$iv":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v3, 0x0

    .line 178
    .local v3, "stack$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "node$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 179
    :goto_0
    if-eqz v4, :cond_c

    .line 180
    instance-of v5, v4, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v5, :cond_0

    .line 181
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/node/DrawModifierNode;

    .local v5, "it":Landroidx/compose/ui/node/DrawModifierNode;
    const/4 v12, 0x0

    .line 86
    .local v12, "$i$a$-dispatchForKind-6rFNWt0-LayoutNodeDrawScope$draw$1":I
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawDirect-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 87
    nop

    .line 181
    .end local v5    # "it":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v12    # "$i$a$-dispatchForKind-6rFNWt0-LayoutNodeDrawScope$draw$1":I
    move/from16 v16, v0

    goto/16 :goto_6

    .line 182
    :cond_0
    move-object v5, v4

    .local v5, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v8

    .line 182
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v5, :cond_a

    instance-of v5, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_a

    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "count$iv":I
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v7, 0x0

    .line 186
    .local v7, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 187
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v10, :cond_9

    .line 188
    move-object v11, v10

    .local v11, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 189
    .local v12, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 183
    .local v14, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v0

    if-eqz v15, :cond_2

    move v13, v9

    goto :goto_3

    :cond_2
    move v13, v8

    .line 189
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v13, :cond_7

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    if-ne v5, v9, :cond_3

    .line 192
    move-object v4, v11

    move/from16 v16, v0

    goto :goto_5

    .line 196
    :cond_3
    if-nez v3, :cond_4

    const/4 v13, 0x0

    .line 197
    .local v13, "$i$f$mutableVectorOf":I
    nop

    .line 198
    const/16 v14, 0x10

    .local v14, "capacity$iv$iv$iv":I
    const/4 v15, 0x0

    .line 199
    .local v15, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v16, v0

    .end local v0    # "kind$iv":I
    .local v16, "kind$iv":I
    new-array v0, v14, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v0, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 197
    .end local v14    # "capacity$iv$iv$iv":I
    .end local v15    # "$i$f$MutableVector":I
    goto :goto_4

    .line 196
    .end local v13    # "$i$f$mutableVectorOf":I
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_4
    move/from16 v16, v0

    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    move-object v9, v3

    :goto_4
    move-object v3, v9

    .line 200
    move-object v0, v4

    .line 201
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_6

    .line 202
    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    const/4 v4, 0x0

    .line 205
    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 189
    .end local v16    # "kind$iv":I
    .local v0, "kind$iv":I
    :cond_7
    move/from16 v16, v0

    .line 208
    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    :cond_8
    :goto_5
    nop

    .line 188
    .end local v11    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 209
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v16

    const/4 v9, 0x1

    goto :goto_2

    .line 211
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_9
    move/from16 v16, v0

    .line 212
    .end local v0    # "kind$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v7    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "kind$iv":I
    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 214
    move/from16 v0, v16

    goto/16 :goto_0

    .line 182
    .end local v5    # "count$iv":I
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_a
    move/from16 v16, v0

    .line 217
    .end local v0    # "kind$iv":I
    .restart local v16    # "kind$iv":I
    :cond_b
    :goto_6
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move/from16 v0, v16

    goto/16 :goto_0

    .line 219
    .end local v16    # "kind$iv":I
    .restart local v0    # "kind$iv":I
    :cond_c
    nop

    .line 88
    .end local v0    # "kind$iv":I
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v3    # "stack$iv":Ljava/lang/Object;
    .end local v4    # "node$iv":Ljava/lang/Object;
    return-void
.end method

.method public drawArc-illE91I(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawArc-illE91I(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawArc-yD3GUKo(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawArc-yD3GUKo(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawCircle-V9BoPsw(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawCircle-V9BoPsw(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawContent()V
    .locals 24

    .line 46
    move-object/from16 v0, p0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v1, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v2, 0x0

    .line 129
    .local v2, "$i$f$drawIntoCanvas":I
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    .local v3, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$a$-drawIntoCanvas-LayoutNodeDrawScope$drawContent$1":I
    iget-object v5, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .local v5, "drawNode":Landroidx/compose/ui/node/DrawModifierNode;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScopeKt;->access$nextDrawNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 53
    .local v6, "nextDrawNode":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x4

    if-eqz v6, :cond_d

    .line 54
    const/4 v8, 0x0

    .line 130
    .local v8, "$i$f$getDraw-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 54
    .end local v8    # "$i$f$getDraw-OLwlOKw":I
    nop

    .local v7, "kind$iv":I
    move-object v8, v6

    .local v8, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 131
    .local v9, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v10, 0x0

    .line 132
    .local v10, "stack$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "node$iv":Ljava/lang/Object;
    move-object v11, v8

    .line 133
    :goto_0
    if-eqz v11, :cond_c

    .line 134
    instance-of v12, v11, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v12, :cond_0

    .line 135
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/node/DrawModifierNode;

    .local v12, "it":Landroidx/compose/ui/node/DrawModifierNode;
    const/4 v13, 0x0

    .line 55
    .local v13, "$i$a$-dispatchForKind-6rFNWt0-LayoutNodeDrawScope$drawContent$1$1":I
    invoke-virtual {v0, v12, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->performDraw(Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/Canvas;)V

    .line 56
    nop

    .line 135
    .end local v12    # "it":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v13    # "$i$a$-dispatchForKind-6rFNWt0-LayoutNodeDrawScope$drawContent$1$1":I
    move-object/from16 v22, v1

    move/from16 v23, v2

    goto/16 :goto_6

    .line 136
    :cond_0
    move-object v12, v11

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 137
    .local v13, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v7

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    move v12, v15

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 136
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v12, :cond_a

    instance-of v12, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_a

    .line 138
    const/4 v12, 0x0

    .line 139
    .local v12, "count$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .local v13, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v14, 0x0

    .line 140
    .local v14, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 141
    .local v16, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v16, :cond_9

    .line 142
    move-object/from16 v17, v16

    .local v17, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 143
    .local v18, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v19, v17

    .local v19, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 137
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v7

    if-eqz v21, :cond_2

    move/from16 v19, v15

    goto :goto_3

    :cond_2
    const/16 v19, 0x0

    .line 143
    .end local v19    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v19, :cond_8

    .line 144
    add-int/lit8 v12, v12, 0x1

    .line 145
    if-ne v12, v15, :cond_3

    .line 146
    move-object/from16 v11, v17

    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v1, v17

    const/4 v2, 0x0

    goto :goto_5

    .line 150
    :cond_3
    if-nez v10, :cond_4

    const/16 v19, 0x0

    .line 151
    .local v19, "$i$f$mutableVectorOf":I
    nop

    .line 152
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv":I
    const/16 v21, 0x0

    .line 153
    .local v21, "$i$f$MutableVector":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v22, v1

    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v22, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    new-array v1, v15, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "$i$f$drawIntoCanvas":I
    .local v23, "$i$f$drawIntoCanvas":I
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 151
    .end local v15    # "capacity$iv$iv$iv":I
    .end local v21    # "$i$f$MutableVector":I
    goto :goto_4

    .line 150
    .end local v19    # "$i$f$mutableVectorOf":I
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .restart local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    :cond_4
    move-object/from16 v22, v1

    move/from16 v23, v2

    const/4 v2, 0x0

    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "$i$f$drawIntoCanvas":I
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    move-object v0, v10

    :goto_4
    move-object v10, v0

    .line 154
    move-object v0, v11

    .line 155
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_6

    .line 156
    if-eqz v10, :cond_5

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5
    const/4 v1, 0x0

    move-object v11, v1

    .line 159
    :cond_6
    if-eqz v10, :cond_7

    move-object/from16 v1, v17

    .end local v17    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v1    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move-object/from16 v1, v17

    .end local v17    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_5

    .line 143
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .local v1, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    .restart local v17    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v1, v17

    const/4 v2, 0x0

    .line 162
    .end local v2    # "$i$f$drawIntoCanvas":I
    .end local v17    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    :goto_5
    nop

    .line 142
    .end local v1    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 163
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    const/4 v15, 0x1

    goto :goto_2

    .line 165
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .local v1, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    :cond_9
    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 166
    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "$i$f$drawIntoCanvas":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v14    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v16    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_b

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    goto/16 :goto_0

    .line 136
    .end local v12    # "count$iv":I
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .restart local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    :cond_a
    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 171
    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "$i$f$drawIntoCanvas":I
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    :cond_b
    :goto_6
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    goto/16 :goto_0

    .line 173
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .restart local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    :cond_c
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "$i$f$drawIntoCanvas":I
    .end local v7    # "kind$iv":I
    .end local v8    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "stack$iv":Ljava/lang/Object;
    .end local v11    # "node$iv":Ljava/lang/Object;
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    goto :goto_8

    .line 61
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    .restart local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v2    # "$i$f$drawIntoCanvas":I
    :cond_d
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "$i$f$drawIntoCanvas":I
    .restart local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v23    # "$i$f$drawIntoCanvas":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 174
    .local v1, "$i$f$getDraw-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 61
    .end local v1    # "$i$f$getDraw-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 62
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/ui/node/DrawModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_7

    .line 65
    :cond_e
    move-object v1, v0

    .line 62
    :goto_7
    nop

    .line 66
    .local v1, "nextCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 68
    .end local v0    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "nextCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_8
    nop

    .line 129
    .end local v3    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v4    # "$i$a$-drawIntoCanvas-LayoutNodeDrawScope$drawContent$1":I
    .end local v5    # "drawNode":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v6    # "nextDrawNode":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 69
    .end local v22    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$drawIntoCanvas":I
    return-void
.end method

.method public final drawDirect-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;)V
    .locals 19
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "size"    # J
    .param p4, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p5, "drawNode"    # Landroidx/compose/ui/node/DrawModifierNode;

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 97
    .local v1, "previousDrawNode":Landroidx/compose/ui/node/DrawModifierNode;
    move-object/from16 v2, p5

    iput-object v2, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 98
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 100
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    .line 98
    nop

    .local v3, "this_$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .local v4, "layoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$f$draw-yzxVdVo":I
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    .local v7, "prevDensity$iv":Landroidx/compose/ui/unit/Density;
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    .local v8, "prevLayoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v9

    .local v9, "prevCanvas$iv":Landroidx/compose/ui/graphics/Canvas;
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v10

    .line 221
    .local v10, "prevSize$iv":J
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v6

    .local v6, "$this$draw_yzxVdVo_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/4 v12, 0x0

    .line 222
    .local v12, "$i$a$-apply-CanvasDrawScope$draw$1$iv":I
    move-object/from16 v13, p4

    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v6, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 223
    invoke-virtual {v6, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 224
    move-object/from16 v13, p1

    invoke-virtual {v6, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 225
    move-wide/from16 v14, p2

    invoke-virtual {v6, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 226
    nop

    .line 221
    .end local v6    # "$this$draw_yzxVdVo_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v12    # "$i$a$-apply-CanvasDrawScope$draw$1$iv":I
    nop

    .line 227
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 228
    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v6, "$this$drawDirect_x_KDEd0_u24lambda_u244":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v12, 0x0

    .line 104
    .local v12, "$i$a$-draw-yzxVdVo-LayoutNodeDrawScope$drawDirect$1":I
    move-object/from16 v16, p5

    .local v16, "$this$drawDirect_x_KDEd0_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/node/DrawModifierNode;
    const/16 v17, 0x0

    .line 105
    .local v17, "$i$a$-with-LayoutNodeDrawScope$drawDirect$1$1":I
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    .end local v16    # "$this$drawDirect_x_KDEd0_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/node/DrawModifierNode;
    .local v4, "$this$drawDirect_x_KDEd0_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/node/DrawModifierNode;
    .local v18, "layoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-interface {v4, v2}, Landroidx/compose/ui/node/DrawModifierNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 106
    nop

    .line 104
    .end local v4    # "$this$drawDirect_x_KDEd0_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v17    # "$i$a$-with-LayoutNodeDrawScope$drawDirect$1$1":I
    nop

    .line 107
    nop

    .line 228
    .end local v6    # "$this$drawDirect_x_KDEd0_u24lambda_u244":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v12    # "$i$a$-draw-yzxVdVo-LayoutNodeDrawScope$drawDirect$1":I
    nop

    .line 229
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 230
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v2

    .local v2, "$this$draw_yzxVdVo_u24lambda_u241$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/4 v4, 0x0

    .line 231
    .local v4, "$i$a$-apply-CanvasDrawScope$draw$2$iv":I
    invoke-virtual {v2, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 232
    invoke-virtual {v2, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 233
    invoke-virtual {v2, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 234
    invoke-virtual {v2, v10, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 235
    nop

    .line 230
    .end local v2    # "$this$draw_yzxVdVo_u24lambda_u241$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v4    # "$i$a$-apply-CanvasDrawScope$draw$2$iv":I
    nop

    .line 236
    nop

    .line 108
    .end local v3    # "this_$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .end local v5    # "$i$f$draw-yzxVdVo":I
    .end local v7    # "prevDensity$iv":Landroidx/compose/ui/unit/Density;
    .end local v8    # "prevLayoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v9    # "prevCanvas$iv":Landroidx/compose/ui/graphics/Canvas;
    .end local v10    # "prevSize$iv":J
    .end local v18    # "layoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    iput-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 109
    return-void
.end method

.method public synthetic drawImage-9jGpkUE(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Prefer usage of drawImage that consumes an optional FilterQuality parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "drawImage(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, FilterQuality.Low)"
            imports = {
                "androidx.compose.ui.graphics.drawscope",
                "androidx.compose.ui.graphics.FilterQuality"
            }
        .end subannotation
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-9jGpkUE(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-virtual/range {v1 .. v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    return-void
.end method

.method public drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawLine-1RTmtNc(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawLine-1RTmtNc(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawLine-NGM6Ib0(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawLine-NGM6Ib0(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawOval-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawOval-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawOval-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawOval-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawPoints-F8ZwMP8(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;IJFI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawPoints-F8ZwMP8(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawPoints-Gsft0Ws(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;I",
            "Landroidx/compose/ui/graphics/Brush;",
            "FI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawPoints-Gsft0Ws(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public getCenter-F1C5BW0()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDensity()F

    move-result v0

    return v0
.end method

.method public getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    return-object v0
.end method

.method public getFontScale()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getFontScale()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final performDraw(Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 10
    .param p1, "$this$performDraw"    # Landroidx/compose/ui/node/DrawModifierNode;
    .param p2, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 73
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 175
    .local v1, "$i$f$getDraw-OLwlOKw":I
    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 73
    .end local v1    # "$i$f$getDraw-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 74
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v8

    .line 75
    .local v8, "size":J
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v1

    .line 76
    .local v1, "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    move-object v2, v1

    move-object v3, p2

    move-wide v4, v8

    move-object v6, v0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawDirect-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 77
    return-void
.end method

.method public roundToPx--R2X_6o(J)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->roundToPx--R2X_6o(J)I

    move-result v0

    return v0
.end method

.method public roundToPx-0680j_4(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->roundToPx-0680j_4(F)I

    move-result v0

    return v0
.end method

.method public toDp-GaN1DYA(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toDp-GaN1DYA(J)F

    move-result v0

    return v0
.end method

.method public toDp-u2uoSUM(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toDp-u2uoSUM(F)F

    move-result v0

    return v0
.end method

.method public toDp-u2uoSUM(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toDp-u2uoSUM(I)F

    move-result v0

    return v0
.end method

.method public toDpSize-k-rfVVM(J)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toDpSize-k-rfVVM(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toPx--R2X_6o(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toPx--R2X_6o(J)F

    move-result v0

    return v0
.end method

.method public toPx-0680j_4(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toPx-0680j_4(F)F

    move-result v0

    return v0
.end method

.method public toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSp-0xMU5do(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toSp-0xMU5do(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toSp-kPz2Gy4(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSp-kPz2Gy4(I)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->toSp-kPz2Gy4(I)J

    move-result-wide v0

    return-wide v0
.end method
