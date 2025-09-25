.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;
.super Lkotlin/collections/AbstractMutableList;
.source "PersistentVectorBuilder.kt"

# interfaces
.implements Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentVectorBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentVectorBuilder.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,991:1\n1#2:992\n26#3:993\n*S KotlinDebug\n*F\n+ 1 PersistentVectorBuilder.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder\n*L\n622#1:993\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010)\n\u0000\n\u0002\u0010*\n\u0000\n\u0002\u0010+\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0018\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B=\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u001d\u0010\u001c\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u000b2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0016\u0010#\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u001d\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010!\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010\'J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0016J=\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010+\u001a\u00020\u000b2\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080-H\u0002\u00a2\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000bH\u0096\u0002\u00a2\u0006\u0002\u00100J\r\u00101\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u00082JG\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00082\u0006\u00105\u001a\u000206H\u0002\u00a2\u0006\u0002\u00107J[\u00103\u001a\u00020 2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%2\u0006\u0010!\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0002\u0010<J/\u0010=\u001a\u00020 2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010>J\u001d\u0010?\u001a\u00020\u001d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0002\u0010@J\u000f\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000BH\u0096\u0002J\u001e\u0010C\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070D2\u0006\u0010!\u001a\u00020\u000bH\u0002J\u000e\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000FH\u0016J\u0016\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000F2\u0006\u0010!\u001a\u00020\u000bH\u0016J\'\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0010\u0010*\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010HJ-\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010J\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010KJ\u0015\u0010L\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010NJ5\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010PJ?\u0010Q\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020\u000b2\u0006\u0010S\u001a\u000206H\u0002\u00a2\u0006\u0002\u0010TJ/\u0010U\u001a\u00020 2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010VJM\u0010W\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0014\u0010X\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070-H\u0002\u00a2\u0006\u0002\u0010YJE\u0010Z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0014\u00109\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070\u0007H\u0002\u00a2\u0006\u0002\u0010[J?\u0010\\\u001a\u00020 2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u000e\u0010]\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010^\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0002\u0010_J?\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u00104\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010aJu\u0010b\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u0002062\u0014\u0010h\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070i2\u0014\u00109\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070iH\u0002\u00a2\u0006\u0002\u0010jJ\u001c\u0010k\u001a\u00020\u001d2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0dH\u0002JA\u0010k\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010e\u001a\u00020\u000b2\u0006\u0010g\u001a\u000206H\u0002\u00a2\u0006\u0002\u0010lJ\u0016\u0010k\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J,\u0010m\u001a\u00020\u000b2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0d2\u0006\u0010n\u001a\u00020\u000b2\u0006\u0010g\u001a\u000206H\u0002J\u001a\u0010o\u001a\u00020\u001d2\u0012\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001d0dJ\u0015\u0010p\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000bH\u0016\u00a2\u0006\u0002\u00100J=\u0010q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010S\u001a\u000206H\u0002\u00a2\u0006\u0002\u0010TJ9\u0010r\u001a\u0004\u0018\u00010\u00082\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0006\u0010R\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010sJ/\u0010t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010\u0018\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010KJ\u0008\u0010R\u001a\u00020\u000bH\u0002J\u001e\u0010u\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010vJE\u0010w\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010x\u001a\u00028\u00002\u0006\u0010y\u001a\u000206H\u0002\u00a2\u0006\u0002\u00107JU\u0010z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010{\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0002\u0010|Jl\u0010}\u001a\u00020 2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%2\u0006\u0010!\u001a\u00020\u000b2\u000e\u0010~\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010\u007f\u001a\u00020\u000b2\u0016\u00109\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00070\u00072\u0006\u0010:\u001a\u00020\u000b2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0002\u00a2\u0006\u0003\u0010\u0080\u0001J\u0008\u0010n\u001a\u00020\u000bH\u0002J\u0010\u0010n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R4\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0010\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007@BX\u0080\u000e\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R0\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007@BX\u0080\u000e\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0012R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;",
        "vector",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;",
        "vectorRoot",
        "",
        "",
        "vectorTail",
        "rootShift",
        "",
        "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V",
        "ownership",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;",
        "<set-?>",
        "root",
        "getRoot$runtime_release",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "getRootShift$runtime_release",
        "()I",
        "setRootShift$runtime_release",
        "(I)V",
        "size",
        "getSize",
        "tail",
        "getTail$runtime_release",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "bufferFor",
        "(I)[Ljava/lang/Object;",
        "build",
        "copyToBuffer",
        "buffer",
        "bufferIndex",
        "sourceIterator",
        "",
        "([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;",
        "get",
        "(I)Ljava/lang/Object;",
        "getModCount",
        "getModCount$runtime_release",
        "insertIntoRoot",
        "shift",
        "elementCarry",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;",
        "([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;",
        "rightShift",
        "buffers",
        "nullBuffers",
        "nextBuffer",
        "(Ljava/util/Collection;II[[Ljava/lang/Object;I[Ljava/lang/Object;)V",
        "insertIntoTail",
        "([Ljava/lang/Object;ILjava/lang/Object;)V",
        "isMutable",
        "([Ljava/lang/Object;)Z",
        "iterator",
        "",
        "leafBufferIterator",
        "",
        "listIterator",
        "",
        "makeMutable",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "makeMutableShiftingRight",
        "distance",
        "([Ljava/lang/Object;I)[Ljava/lang/Object;",
        "mutableBuffer",
        "mutableBufferWith",
        "(Ljava/lang/Object;)[Ljava/lang/Object;",
        "nullifyAfter",
        "([Ljava/lang/Object;II)[Ljava/lang/Object;",
        "pullLastBuffer",
        "rootSize",
        "tailCarry",
        "([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;",
        "pullLastBufferFromRoot",
        "([Ljava/lang/Object;II)V",
        "pushBuffers",
        "buffersIterator",
        "([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;",
        "pushBuffersIncreasingHeightIfNeeded",
        "([Ljava/lang/Object;I[[Ljava/lang/Object;)[Ljava/lang/Object;",
        "pushFilledTail",
        "filledTail",
        "newTail",
        "([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V",
        "pushTail",
        "([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;",
        "recyclableRemoveAll",
        "predicate",
        "Lkotlin/Function1;",
        "bufferSize",
        "toBufferSize",
        "bufferRef",
        "recyclableBuffers",
        "",
        "(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;Ljava/util/List;Ljava/util/List;)I",
        "removeAll",
        "(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I",
        "removeAllFromTail",
        "tailSize",
        "removeAllWithPredicate",
        "removeAt",
        "removeFromRootAt",
        "removeFromTailAt",
        "([Ljava/lang/Object;III)Ljava/lang/Object;",
        "retainFirst",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "setInRoot",
        "e",
        "oldElementCarry",
        "shiftLeafBuffers",
        "startLeafIndex",
        "(II[[Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;",
        "splitToBuffers",
        "startBuffer",
        "startBufferSize",
        "(Ljava/util/Collection;I[Ljava/lang/Object;I[[Ljava/lang/Object;I[Ljava/lang/Object;)V",
        "runtime_release"
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
.field private ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

.field private root:[Ljava/lang/Object;

.field private rootShift:I

.field private size:I

.field private tail:[Ljava/lang/Object;

.field private vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private vectorRoot:[Ljava/lang/Object;

.field private vectorTail:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 1
    .param p1, "vector"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .param p2, "vectorRoot"    # [Ljava/lang/Object;
    .param p3, "vectorTail"    # [Ljava/lang/Object;
    .param p4, "rootShift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TE;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 15
    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorRoot:[Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorTail:[Ljava/lang/Object;

    .line 17
    iput p4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 18
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    invoke-direct {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorRoot:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorTail:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->size()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 14
    return-void
.end method

.method private final bufferFor(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I

    .line 524
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 525
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 528
    .local v0, "buffer":[Ljava/lang/Object;
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 529
    .local v1, "shift":I
    :goto_0
    if-lez v1, :cond_1

    .line 531
    invoke-static {p1, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v2

    aget-object v2, v0, v2

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x5

    .line 532
    goto :goto_0

    .line 534
    :cond_1
    return-object v0
.end method

.method private final copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;
    .locals 3
    .param p1, "buffer"    # [Ljava/lang/Object;
    .param p2, "bufferIndex"    # I
    .param p3, "sourceIterator"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    move v0, p2

    .line 197
    .local v0, "index":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 200
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    return-object p1
.end method

.method private final insertIntoRoot(Ljava/util/Collection;II[[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 17
    .param p1, "elements"    # Ljava/util/Collection;
    .param p2, "index"    # I
    .param p3, "rightShift"    # I
    .param p4, "buffers"    # [[Ljava/lang/Object;
    .param p5, "nullBuffers"    # I
    .param p6, "nextBuffer"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;II[[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 418
    move/from16 v6, p5

    move-object/from16 v15, p0

    iget-object v0, v15, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 420
    shr-int/lit8 v16, p2, 0x5

    .line 421
    .local v16, "startLeafIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->shiftLeafBuffers(II[[Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "startLeaf":[Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    .line 424
    .local v1, "lastLeafIndex":I
    sub-int v2, v1, v16

    sub-int v2, v6, v2

    .line 425
    .local v2, "newNullBuffers":I
    if-ge v2, v6, :cond_0

    aget-object v3, p4, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v3

    goto :goto_0

    :cond_0
    move-object/from16 v14, p6

    .line 427
    .local v14, "newNextBuffer":[Ljava/lang/Object;
    :goto_0
    const/16 v11, 0x20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object v10, v0

    move-object/from16 v12, p4

    move v13, v2

    invoke-direct/range {v7 .. v14}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->splitToBuffers(Ljava/util/Collection;I[Ljava/lang/Object;I[[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 428
    return-void

    .line 992
    .end local v0    # "startLeaf":[Ljava/lang/Object;
    .end local v1    # "lastLeafIndex":I
    .end local v2    # "newNullBuffers":I
    .end local v14    # "newNextBuffer":[Ljava/lang/Object;
    .end local v16    # "startLeafIndex":I
    :cond_1
    const/4 v0, 0x0

    .line 418
    .local v0, "$i$a$-checkNotNull-PersistentVectorBuilder$insertIntoRoot$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-PersistentVectorBuilder$insertIntoRoot$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "root is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final insertIntoRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;
    .locals 18
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "shift"    # I
    .param p3, "index"    # I
    .param p4, "element"    # Ljava/lang/Object;
    .param p5, "elementCarry"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    .line 310
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v8, p3

    invoke-static {v8, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v9

    .line 312
    .local v9, "bufferIndex":I
    if-nez v1, :cond_0

    .line 313
    const/16 v2, 0x1f

    aget-object v3, v0, v2

    move-object/from16 v15, p5

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 314
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    invoke-static {v0, v3, v4, v9, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, "mutableRoot":[Ljava/lang/Object;
    aput-object p4, v2, v9

    .line 316
    return-object v2

    .line 319
    .end local v2    # "mutableRoot":[Ljava/lang/Object;
    :cond_0
    move-object/from16 v15, p5

    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .line 320
    .local v16, "mutableRoot":[Ljava/lang/Object;
    add-int/lit8 v17, v1, -0x5

    .line 323
    .local v17, "lowerLevelShift":I
    nop

    .line 324
    aget-object v2, v16, v9

    const-string/jumbo v14, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v2, p0

    move/from16 v4, v17

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v16, v9

    .line 326
    add-int/lit8 v2, v9, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 327
    aget-object v3, v16, v2

    if-eqz v3, :cond_1

    .line 329
    nop

    .line 330
    aget-object v3, v16, v2

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v10, p0

    move/from16 v12, v17

    move-object v4, v14

    move-object v14, v3

    move-object/from16 v15, p5

    invoke-direct/range {v10 .. v15}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v16, v2

    .line 326
    add-int/lit8 v2, v2, 0x1

    move-object v14, v4

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_1
    return-object v16
.end method

.method private final insertIntoTail([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "ITE;)V"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v0

    .line 287
    .local v0, "tailSize":I
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "mutableTail":[Ljava/lang/Object;
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 289
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v1, v3, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 290
    aput-object p3, v1, p2

    .line 291
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 292
    iput-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    goto :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    .line 296
    .local v2, "lastElement":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v1, v5, p2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 297
    aput-object p3, v1, p2

    .line 298
    invoke-direct {p0, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushFilledTail([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 300
    .end local v2    # "lastElement":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method private final isMutable([Ljava/lang/Object;)Z
    .locals 2
    .param p1, "buffer"    # [Ljava/lang/Object;

    .line 67
    array-length v0, p1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    aget-object v0, p1, v0

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final leafBufferIterator(I)Ljava/util/ListIterator;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 979
    .local v0, "root":[Ljava/lang/Object;
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x5

    .line 981
    .local v1, "leafCount":I
    invoke-static {p1, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkPositionIndex$runtime_release(II)V

    .line 983
    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    if-nez v2, :cond_0

    .line 984
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SingleElementListIterator;

    invoke-direct {v2, v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SingleElementListIterator;-><init>(Ljava/lang/Object;I)V

    check-cast v2, Ljava/util/ListIterator;

    return-object v2

    .line 987
    :cond_0
    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    div-int/lit8 v2, v2, 0x5

    .line 988
    .local v2, "trieHeight":I
    new-instance v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-direct {v3, v0, p1, v1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;-><init>([Ljava/lang/Object;III)V

    check-cast v3, Ljava/util/ListIterator;

    return-object v3

    .line 992
    .end local v0    # "root":[Ljava/lang/Object;
    .end local v1    # "leafCount":I
    .end local v2    # "trieHeight":I
    :cond_1
    const/4 v0, 0x0

    .line 977
    .local v0, "$i$a$-checkNotNull-PersistentVectorBuilder$leafBufferIterator$root$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-PersistentVectorBuilder$leafBufferIterator$root$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid root"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "buffer"    # [Ljava/lang/Object;

    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->isMutable([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    return-object p1

    .line 80
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v0, p1

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final makeMutableShiftingRight([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "buffer"    # [Ljava/lang/Object;
    .param p2, "distance"    # I

    .line 84
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->isMutable([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    rsub-int/lit8 v0, p2, 0x20

    invoke-static {p1, p1, p2, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v0

    rsub-int/lit8 v2, p2, 0x20

    invoke-static {p1, v0, p2, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final mutableBuffer()[Ljava/lang/Object;
    .locals 3

    .line 98
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    .local v0, "buffer":[Ljava/lang/Object;
    const/16 v1, 0x20

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    aput-object v2, v0, v1

    .line 100
    return-object v0
.end method

.method private final mutableBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 91
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .local v0, "buffer":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 93
    const/16 v1, 0x20

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    aput-object v2, v0, v1

    .line 94
    return-object v0
.end method

.method private final nullifyAfter([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "shift"    # I

    .line 768
    const/4 v0, 0x0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    .line 770
    if-nez p3, :cond_1

    .line 773
    return-object p1

    .line 776
    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v1

    .line 778
    .local v1, "lastIndex":I
    aget-object v2, p1, v1

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    add-int/lit8 v3, p3, -0x5

    invoke-direct {p0, v2, p2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->nullifyAfter([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    .line 780
    .local v2, "newChild":[Ljava/lang/Object;
    move-object v3, p1

    .line 781
    .local v3, "newRoot":[Ljava/lang/Object;
    const/16 v4, 0x1f

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    .line 782
    invoke-direct {p0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->isMutable([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 783
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 785
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v4, v0, v0, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v3

    .line 787
    :cond_3
    aget-object v0, v3, v1

    if-eq v2, v0, :cond_4

    .line 788
    invoke-direct {p0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 789
    aput-object v2, v3, v1

    .line 792
    :cond_4
    return-object v3

    .line 992
    .end local v1    # "lastIndex":I
    .end local v2    # "newChild":[Ljava/lang/Object;
    .end local v3    # "newRoot":[Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .line 768
    .local v0, "$i$a$-require-PersistentVectorBuilder$nullifyAfter$1":I
    nop

    .end local v0    # "$i$a$-require-PersistentVectorBuilder$nullifyAfter$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "shift should be positive"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final pullLastBuffer([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;
    .locals 4
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "shift"    # I
    .param p3, "rootSize"    # I
    .param p4, "tailCarry"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    .line 652
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v0

    .line 654
    .local v0, "bufferIndex":I
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 655
    aget-object v1, p1, v0

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 656
    move-object v1, v2

    goto :goto_0

    .line 659
    :cond_0
    aget-object v1, p1, v0

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v3, p2, -0x5

    invoke-direct {p0, v1, v3, p3, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pullLastBuffer([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v1

    .line 654
    :goto_0
    nop

    .line 661
    .local v1, "newBufferAtIndex":[Ljava/lang/Object;
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 662
    return-object v2

    .line 665
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 666
    .local v2, "mutableRoot":[Ljava/lang/Object;
    aput-object v1, v2, v0

    .line 667
    return-object v2
.end method

.method private final pullLastBufferFromRoot([Ljava/lang/Object;II)V
    .locals 5
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "rootSize"    # I
    .param p3, "shift"    # I

    .line 620
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 621
    iput-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 622
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 993
    .local v1, "$i$f$emptyArray":I
    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0

    .line 622
    .end local v1    # "$i$f$emptyArray":I
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 623
    iput p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 624
    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 625
    return-void

    .line 628
    :cond_1
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 629
    .local v1, "tailCarry":Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p3, p2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pullLastBuffer([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 631
    .local v2, "newRoot":[Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 632
    iput p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 635
    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-nez v3, :cond_2

    .line 638
    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 639
    add-int/lit8 v0, p3, -0x5

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    goto :goto_1

    .line 641
    :cond_2
    iput-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 642
    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 644
    :goto_1
    return-void
.end method

.method private final pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;
    .locals 6
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "rootSize"    # I
    .param p3, "shift"    # I
    .param p4, "buffersIterator"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 241
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 244
    if-nez p3, :cond_1

    .line 245
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 248
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "mutableRoot":[Ljava/lang/Object;
    invoke-static {p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v3

    .line 252
    .local v3, "index":I
    nop

    .line 253
    aget-object v4, v2, v3

    check-cast v4, [Ljava/lang/Object;

    add-int/lit8 v5, p3, -0x5

    invoke-direct {p0, v4, p2, v5, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    :goto_1
    add-int/2addr v3, v0

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    nop

    .line 258
    aget-object v4, v2, v3

    check-cast v4, [Ljava/lang/Object;

    add-int/lit8 v5, p3, -0x5

    invoke-direct {p0, v4, v1, v5, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 260
    :cond_2
    return-object v2

    .line 992
    .end local v2    # "mutableRoot":[Ljava/lang/Object;
    .end local v3    # "index":I
    :cond_3
    const/4 v0, 0x0

    .line 242
    .local v0, "$i$a$-require-PersistentVectorBuilder$pushBuffers$2":I
    nop

    .end local v0    # "$i$a$-require-PersistentVectorBuilder$pushBuffers$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative shift"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_4
    const/4 v0, 0x0

    .line 241
    .local v0, "$i$a$-require-PersistentVectorBuilder$pushBuffers$1":I
    nop

    .end local v0    # "$i$a$-require-PersistentVectorBuilder$pushBuffers$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid buffersIterator"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final pushBuffersIncreasingHeightIfNeeded([Ljava/lang/Object;I[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "rootSize"    # I
    .param p3, "buffers"    # [[Ljava/lang/Object;

    .line 210
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 212
    .local v0, "buffersIterator":Ljava/util/Iterator;
    nop

    .line 213
    shr-int/lit8 v1, p2, 0x5

    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    if-ge v1, v2, :cond_0

    .line 215
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 212
    :goto_0
    nop

    .line 223
    .local v1, "mutableRoot":[Ljava/lang/Object;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 226
    invoke-direct {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 228
    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    shl-int v2, v3, v2

    iget v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, v1, v2, v4, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_1
    return-object v1
.end method

.method private final pushFilledTail([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "filledTail"    # [Ljava/lang/Object;
    .param p3, "newTail"    # [Ljava/lang/Object;

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-le v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    add-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v0, p2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushTail([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 127
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 128
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    goto :goto_0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 132
    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushTail([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 137
    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 140
    :goto_0
    return-void
.end method

.method private final pushTail([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "tail"    # [Ljava/lang/Object;
    .param p3, "shift"    # I

    .line 147
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v0

    .line 148
    .local v0, "index":I
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "mutableRoot":[Ljava/lang/Object;
    const/4 v2, 0x5

    if-ne p3, v2, :cond_0

    .line 151
    aput-object p2, v1, v0

    goto :goto_0

    .line 154
    :cond_0
    aget-object v2, v1, v0

    check-cast v2, [Ljava/lang/Object;

    add-int/lit8 v3, p3, -0x5

    invoke-direct {p0, v2, p2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushTail([Ljava/lang/Object;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 156
    :goto_0
    return-object v1
.end method

.method private final recyclableRemoveAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "buffer"    # [Ljava/lang/Object;
    .param p3, "bufferSize"    # I
    .param p4, "toBufferSize"    # I
    .param p5, "bufferRef"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    .param p6, "recyclableBuffers"    # Ljava/util/List;
    .param p7, "buffers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/Object;",
            "II",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 882
    invoke-direct {p0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->isMutable([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_0
    invoke-virtual {p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 889
    .local v0, "toBuffer":[Ljava/lang/Object;
    move-object v1, v0

    .line 890
    .local v1, "newToBuffer":[Ljava/lang/Object;
    move v2, p4

    .line 892
    .local v2, "newToBufferSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p3, :cond_4

    .line 894
    aget-object v4, p2, v3

    .line 896
    .local v4, "element":Ljava/lang/Object;
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 897
    const/16 v5, 0x20

    if-ne v2, v5, :cond_2

    .line 898
    move-object v5, p6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 899
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    goto :goto_1

    .line 901
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v5

    .line 898
    :goto_1
    move-object v1, v5

    .line 903
    const/4 v2, 0x0

    .line 906
    :cond_2
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "newToBufferSize":I
    .local v5, "newToBufferSize":I
    aput-object v4, v1, v2

    move v2, v5

    .line 892
    .end local v4    # "element":Ljava/lang/Object;
    .end local v5    # "newToBufferSize":I
    .restart local v2    # "newToBufferSize":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 910
    .end local v3    # "index":I
    :cond_4
    invoke-virtual {p5, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 912
    invoke-virtual {p5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_5

    .line 913
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_5
    return v2
.end method

.method private final removeAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I
    .locals 6
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "buffer"    # [Ljava/lang/Object;
    .param p3, "bufferSize"    # I
    .param p4, "bufferRef"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/Object;",
            "I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;",
            ")I"
        }
    .end annotation

    .line 837
    move-object v0, p2

    .line 838
    .local v0, "newBuffer":[Ljava/lang/Object;
    move v1, p3

    .line 840
    .local v1, "newBufferSize":I
    const/4 v2, 0x0

    .line 842
    .local v2, "anyRemoved":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 844
    aget-object v4, p2, v3

    .line 846
    .local v4, "element":Ljava/lang/Object;
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 847
    if-nez v2, :cond_1

    .line 848
    invoke-direct {p0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 849
    move v1, v3

    .line 851
    const/4 v2, 0x1

    goto :goto_1

    .line 853
    :cond_0
    if-eqz v2, :cond_1

    .line 854
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "newBufferSize":I
    .local v5, "newBufferSize":I
    aput-object v4, v0, v1

    move v1, v5

    .line 842
    .end local v4    # "element":Ljava/lang/Object;
    .end local v5    # "newBufferSize":I
    .restart local v1    # "newBufferSize":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 860
    return v1
.end method

.method private final removeAll(Lkotlin/jvm/functions/Function1;)Z
    .locals 20
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 684
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v10

    .line 685
    .local v10, "tailSize":I
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;-><init>(Ljava/lang/Object;)V

    move-object v12, v0

    .line 687
    .local v12, "bufferRef":Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    iget-object v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_1

    .line 688
    invoke-direct {v8, v9, v10, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAllFromTail(Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I

    move-result v0

    if-eq v0, v10, :cond_0

    move v1, v13

    :cond_0
    return v1

    .line 691
    :cond_1
    invoke-direct {v8, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->leafBufferIterator(I)Ljava/util/ListIterator;

    move-result-object v14

    .line 692
    .local v14, "leafIterator":Ljava/util/ListIterator;
    const/16 v0, 0x20

    .line 695
    .local v0, "bufferSize":I
    :goto_0
    const/16 v15, 0x20

    if-ne v0, v15, :cond_2

    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {v8, v9, v2, v15, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I

    move-result v0

    goto :goto_0

    .line 700
    :cond_2
    if-ne v0, v15, :cond_5

    .line 701
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    xor-int/2addr v2, v13

    invoke-static {v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->assert(Z)V

    .line 702
    invoke-direct {v8, v9, v10, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAllFromTail(Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I

    move-result v2

    .line 703
    .local v2, "newTailSize":I
    if-nez v2, :cond_3

    .line 705
    iget-object v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v4

    iget v5, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {v8, v3, v4, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pullLastBufferFromRoot([Ljava/lang/Object;II)V

    .line 707
    :cond_3
    if-eq v2, v10, :cond_4

    move v1, v13

    :cond_4
    return v1

    .line 711
    .end local v2    # "newTailSize":I
    :cond_5
    invoke-interface {v14}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    shl-int/lit8 v7, v1, 0x5

    .line 713
    .local v7, "unaffectedElementsCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/List;

    .line 714
    .local v16, "buffers":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/List;

    move/from16 v18, v0

    .line 716
    .end local v0    # "bufferSize":I
    .local v17, "recyclableBuffers":Ljava/util/List;
    .local v18, "bufferSize":I
    :goto_1
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 717
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/Object;

    .line 718
    .local v19, "leaf":[Ljava/lang/Object;
    const/16 v3, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v4, v18

    move-object v5, v12

    move-object/from16 v6, v17

    move v13, v7

    .end local v7    # "unaffectedElementsCount":I
    .local v13, "unaffectedElementsCount":I
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->recyclableRemoveAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;Ljava/util/List;Ljava/util/List;)I

    move-result v18

    move v7, v13

    const/4 v13, 0x1

    .end local v19    # "leaf":[Ljava/lang/Object;
    goto :goto_1

    .line 722
    .end local v13    # "unaffectedElementsCount":I
    .restart local v7    # "unaffectedElementsCount":I
    :cond_6
    move v13, v7

    .end local v7    # "unaffectedElementsCount":I
    .restart local v13    # "unaffectedElementsCount":I
    iget-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v10

    move/from16 v4, v18

    move-object v5, v12

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->recyclableRemoveAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 725
    .local v0, "newTailSize":I
    invoke-virtual {v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 726
    .local v1, "newTail":[Ljava/lang/Object;
    invoke-static {v1, v11, v0, v15}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 729
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    iget v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v8, v2, v13, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffers([Ljava/lang/Object;IILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    .line 730
    .local v2, "newRoot":[Ljava/lang/Object;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    add-int v7, v13, v3

    .line 732
    .local v7, "newRootSize":I
    invoke-direct {v8, v2, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->retainFirst([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 733
    iput-object v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 734
    add-int v3, v7, v0

    iput v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 736
    const/4 v3, 0x1

    return v3
.end method

.method private final removeAllFromTail(Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I
    .locals 4
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .param p2, "tailSize"    # I
    .param p3, "bufferRef"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;",
            ")I"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAll(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)I

    move-result v0

    .line 807
    .local v0, "newTailSize":I
    if-ne v0, p2, :cond_1

    .line 808
    invoke-virtual {p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->assert(Z)V

    .line 809
    return p2

    .line 813
    :cond_1
    invoke-virtual {p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 814
    .local v1, "newTail":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 816
    iput-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v2

    sub-int v3, p2, v0

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 819
    return v0
.end method

.method private final removeFromRootAt([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;
    .locals 9
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "shift"    # I
    .param p3, "index"    # I
    .param p4, "tailCarry"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    .line 583
    invoke-static {p3, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v0

    .line 585
    .local v0, "bufferIndex":I
    if-nez p2, :cond_0

    .line 586
    aget-object v1, p1, v0

    .line 587
    .local v1, "removedElement":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x20

    invoke-static {p1, v2, v0, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v2

    .line 588
    .local v2, "mutableRoot":[Ljava/lang/Object;
    const/16 v3, 0x1f

    invoke-virtual {p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 589
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 590
    return-object v2

    .line 593
    .end local v1    # "removedElement":Ljava/lang/Object;
    .end local v2    # "mutableRoot":[Ljava/lang/Object;
    :cond_0
    const/16 v1, 0x1f

    .line 594
    .local v1, "bufferLastIndex":I
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 595
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v1

    .line 598
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 599
    .restart local v2    # "mutableRoot":[Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x5

    .line 601
    .local v3, "lowerLevelShift":I
    move v4, v1

    .local v4, "i":I
    add-int/lit8 v5, v0, 0x1

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    if-gt v5, v4, :cond_2

    .line 603
    :goto_0
    aget-object v7, v2, v4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v3, v8, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeFromRootAt([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v4

    .line 601
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 606
    .end local v4    # "i":I
    :cond_2
    nop

    .line 607
    aget-object v4, v2, v0

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {p0, v4, v3, p3, p4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeFromRootAt([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 609
    return-object v2
.end method

.method private final removeFromTailAt([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 6
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "rootSize"    # I
    .param p3, "shift"    # I
    .param p4, "index"    # I

    .line 555
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    sub-int/2addr v0, p2

    .line 556
    .local v0, "tailSize":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p4, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->assert(Z)V

    .line 558
    const/4 v3, 0x0

    .line 559
    .local v3, "removedElement":Ljava/lang/Object;
    if-ne v0, v2, :cond_1

    .line 560
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    aget-object v1, v2, v1

    .line 561
    .end local v3    # "removedElement":Ljava/lang/Object;
    .local v1, "removedElement":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pullLastBufferFromRoot([Ljava/lang/Object;II)V

    goto :goto_1

    .line 563
    .end local v1    # "removedElement":Ljava/lang/Object;
    .restart local v3    # "removedElement":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    aget-object v1, v1, p4

    .line 564
    .end local v3    # "removedElement":Ljava/lang/Object;
    .restart local v1    # "removedElement":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    invoke-static {v3, v4, p4, v5, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "mutableTail":[Ljava/lang/Object;
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 566
    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 567
    iput-object v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 568
    add-int v4, p2, v0

    sub-int/2addr v4, v2

    iput v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 569
    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 571
    .end local v3    # "mutableTail":[Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method private final retainFirst([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 5
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 745
    and-int/lit8 v0, p2, 0x1f

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 747
    if-nez p2, :cond_1

    .line 748
    iput v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 749
    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 753
    .local v0, "lastIndex":I
    move-object v2, p1

    .line 754
    .local v2, "newRoot":[Ljava/lang/Object;
    :goto_1
    iget v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    shr-int v3, v0, v3

    if-nez v3, :cond_2

    .line 755
    iget v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    add-int/lit8 v3, v3, -0x5

    iput v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    .line 757
    aget-object v3, v2, v1

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    goto :goto_1

    .line 759
    :cond_2
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->nullifyAfter([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 992
    .end local v0    # "lastIndex":I
    .end local v2    # "newRoot":[Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 745
    .local v0, "$i$a$-require-PersistentVectorBuilder$retainFirst$1":I
    nop

    .end local v0    # "$i$a$-require-PersistentVectorBuilder$retainFirst$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid size"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final rootSize()I
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->rootSize(I)I

    move-result v0

    return v0
.end method

.method private final setInRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;
    .locals 10
    .param p1, "root"    # [Ljava/lang/Object;
    .param p2, "shift"    # I
    .param p3, "index"    # I
    .param p4, "e"    # Ljava/lang/Object;
    .param p5, "oldElementCarry"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "IITE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 943
    invoke-static {p3, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->indexSegment(II)I

    move-result v0

    .line 944
    .local v0, "bufferIndex":I
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, "mutableRoot":[Ljava/lang/Object;
    if-nez p2, :cond_1

    .line 951
    if-eq v1, p1, :cond_0

    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 953
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {p5, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->setValue(Ljava/lang/Object;)V

    .line 954
    aput-object p4, v1, v0

    .line 955
    return-object v1

    .line 958
    :cond_1
    nop

    .line 959
    aget-object v2, v1, v0

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    add-int/lit8 v6, p2, -0x5

    move-object v4, p0

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->setInRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 960
    return-object v1
.end method

.method private final shiftLeafBuffers(II[[Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "startLeafIndex"    # I
    .param p2, "rightShift"    # I
    .param p3, "buffers"    # [[Ljava/lang/Object;
    .param p4, "nullBuffers"    # I
    .param p5, "nextBuffer"    # [Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    .line 450
    .local v0, "leafCount":I
    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->leafBufferIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 451
    .local v1, "leafBufferIterator":Ljava/util/ListIterator;
    move v2, p4

    .line 452
    .local v2, "bufferIndex":I
    move-object v3, p5

    .line 454
    .local v3, "buffer":[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 455
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 457
    .local v4, "currentBuffer":[Ljava/lang/Object;
    rsub-int/lit8 v5, p2, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {v4, v3, v6, v5, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 458
    invoke-direct {p0, v4, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutableShiftingRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 459
    add-int/lit8 v2, v2, -0x1

    aput-object v3, p3, v2

    .end local v4    # "currentBuffer":[Ljava/lang/Object;
    goto :goto_0

    .line 462
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    return-object v4

    .line 992
    .end local v0    # "leafCount":I
    .end local v1    # "leafBufferIterator":Ljava/util/ListIterator;
    .end local v2    # "bufferIndex":I
    .end local v3    # "buffer":[Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 446
    .local v0, "$i$a$-checkNotNull-PersistentVectorBuilder$shiftLeafBuffers$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-PersistentVectorBuilder$shiftLeafBuffers$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "root is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final splitToBuffers(Ljava/util/Collection;I[Ljava/lang/Object;I[[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 15
    .param p1, "elements"    # Ljava/util/Collection;
    .param p2, "index"    # I
    .param p3, "startBuffer"    # [Ljava/lang/Object;
    .param p4, "startBufferSize"    # I
    .param p5, "buffers"    # [[Ljava/lang/Object;
    .param p6, "nullBuffers"    # I
    .param p7, "nextBuffer"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;I[",
            "Ljava/lang/Object;",
            "I[[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 479
    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_4

    .line 481
    move-object/from16 v5, p3

    invoke-direct {p0, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 482
    .local v6, "firstBuffer":[Ljava/lang/Object;
    aput-object v6, p5, v3

    .line 484
    move-object/from16 v7, p7

    .line 485
    .local v7, "newNextBuffer":[Ljava/lang/Object;
    move/from16 v8, p6

    .line 487
    .local v8, "newNullBuffers":I
    and-int/lit8 v9, p2, 0x1f

    .line 488
    .local v9, "startBufferStartIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v10

    add-int v10, p2, v10

    sub-int/2addr v10, v4

    and-int/lit8 v10, v10, 0x1f

    .line 490
    .local v10, "endBufferEndIndex":I
    sub-int v11, v1, v9

    .line 492
    .local v11, "elementsToShift":I
    add-int v12, v10, v11

    const/16 v13, 0x20

    if-ge v12, v13, :cond_1

    .line 493
    add-int/lit8 v4, v10, 0x1

    invoke-static {v6, v7, v4, v9, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-object/from16 v13, p7

    goto :goto_2

    .line 495
    :cond_1
    add-int v12, v10, v11

    sub-int/2addr v12, v13

    add-int/2addr v12, v4

    .line 496
    .local v12, "toCopyToLast":I
    if-ne v2, v4, :cond_2

    .line 497
    move-object v4, v6

    move-object v7, v4

    .end local v7    # "newNextBuffer":[Ljava/lang/Object;
    .local v4, "newNextBuffer":[Ljava/lang/Object;
    goto :goto_1

    .line 499
    .end local v4    # "newNextBuffer":[Ljava/lang/Object;
    .restart local v7    # "newNextBuffer":[Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v4

    .line 500
    .end local v7    # "newNextBuffer":[Ljava/lang/Object;
    .restart local v4    # "newNextBuffer":[Ljava/lang/Object;
    add-int/lit8 v8, v8, -0x1

    aput-object v4, p5, v8

    move-object v7, v4

    .line 502
    .end local v4    # "newNextBuffer":[Ljava/lang/Object;
    .restart local v7    # "newNextBuffer":[Ljava/lang/Object;
    :goto_1
    sub-int v4, v1, v12

    move-object/from16 v13, p7

    invoke-static {v6, v13, v3, v4, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 503
    add-int/lit8 v4, v10, 0x1

    sub-int v14, v1, v12

    invoke-static {v6, v7, v4, v9, v14}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 506
    .end local v12    # "toCopyToLast":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 508
    .local v4, "elementsIterator":Ljava/util/Iterator;
    invoke-direct {p0, v6, v9, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    .line 509
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_3
    if-ge v12, v8, :cond_3

    .line 510
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v14

    invoke-direct {p0, v14, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v14

    aput-object v14, p5, v12

    .line 509
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 512
    .end local v12    # "i":I
    :cond_3
    invoke-direct {p0, v7, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    .line 513
    return-void

    .line 992
    .end local v4    # "elementsIterator":Ljava/util/Iterator;
    .end local v6    # "firstBuffer":[Ljava/lang/Object;
    .end local v7    # "newNextBuffer":[Ljava/lang/Object;
    .end local v8    # "newNullBuffers":I
    .end local v9    # "startBufferStartIndex":I
    .end local v10    # "endBufferEndIndex":I
    .end local v11    # "elementsToShift":I
    :cond_4
    move-object/from16 v5, p3

    move-object/from16 v13, p7

    const/4 v3, 0x0

    .line 479
    .local v3, "$i$a$-require-PersistentVectorBuilder$splitToBuffers$1":I
    nop

    .end local v3    # "$i$a$-require-PersistentVectorBuilder$splitToBuffers$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "requires at least one nullBuffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final tailSize()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize(I)I

    move-result v0

    return v0
.end method

.method private final tailSize(I)I
    .locals 1
    .param p1, "size"    # I

    .line 56
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 57
    return p1

    .line 59
    :cond_0
    invoke-static {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->rootSize(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkPositionIndex$runtime_release(II)V

    .line 266
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 267
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->add(Ljava/lang/Object;)Z

    .line 268
    return-void

    .line 271
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 273
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    .line 274
    .local v0, "rootSize":I
    if-lt p1, v0, :cond_1

    .line 275
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    sub-int v2, p1, v0

    invoke-direct {p0, v1, v2, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoTail([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 276
    return-void

    .line 279
    :cond_1
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;-><init>(Ljava/lang/Object;)V

    .line 280
    .local v8, "elementCarry":Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, "newRest":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoTail([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 283
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 104
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 106
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v0

    .line 107
    .local v0, "tailSize":I
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 108
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "mutableTail":[Ljava/lang/Object;
    aput-object p1, v2, v0

    .line 110
    iput-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .end local v2    # "mutableTail":[Ljava/lang/Object;
    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 114
    .local v2, "newTail":[Ljava/lang/Object;
    iget-object v3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushFilledTail([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 116
    .end local v2    # "newTail":[Ljava/lang/Object;
    :goto_0
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 18
    .param p1, "index"    # I
    .param p2, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 337
    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {v9, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkPositionIndex$runtime_release(II)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    if-ne v9, v0, :cond_0

    .line 340
    move-object/from16 v10, p2

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 342
    :cond_0
    move-object/from16 v10, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 343
    return v1

    .line 346
    :cond_1
    iget v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    const/4 v11, 0x1

    add-int/2addr v0, v11

    iput v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 348
    shr-int/lit8 v0, v9, 0x5

    shl-int/lit8 v12, v0, 0x5

    .line 349
    .local v12, "unaffectedElementsCount":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v11

    div-int/lit8 v13, v0, 0x20

    .line 351
    .local v13, "buffersSize":I
    if-nez v13, :cond_3

    .line 352
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    if-lt v9, v0, :cond_2

    move v1, v11

    :cond_2
    invoke-static {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/CommonFunctionsKt;->assert(Z)V

    .line 354
    and-int/lit8 v0, v9, 0x1f

    .line 355
    .local v0, "startIndex":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v9

    sub-int/2addr v1, v11

    and-int/lit8 v1, v1, 0x1f

    .line 358
    .local v1, "endIndex":I
    iget-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    iget-object v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {v8, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v5

    invoke-static {v2, v3, v4, v0, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v2

    .line 360
    .local v2, "newTail":[Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v8, v2, v0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    .line 362
    iput-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 364
    return v11

    .line 367
    .end local v0    # "startIndex":I
    .end local v1    # "endIndex":I
    .end local v2    # "newTail":[Ljava/lang/Object;
    :cond_3
    new-array v14, v13, [[Ljava/lang/Object;

    .line 369
    .local v14, "buffers":[[Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v15

    .line 370
    .local v15, "tailSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v8, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize(I)I

    move-result v7

    .line 372
    .local v7, "newTailSize":I
    const/4 v0, 0x0

    .line 373
    .local v0, "newTail":[Ljava/lang/Object;
    nop

    .line 374
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v2

    if-lt v9, v2, :cond_4

    .line 375
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v16

    .line 376
    .end local v0    # "newTail":[Ljava/lang/Object;
    .local v16, "newTail":[Ljava/lang/Object;
    iget-object v3, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move v4, v15

    move-object v5, v14

    move v6, v13

    move v11, v7

    .end local v7    # "newTailSize":I
    .local v11, "newTailSize":I
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->splitToBuffers(Ljava/util/Collection;I[Ljava/lang/Object;I[[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object/from16 v0, v16

    goto :goto_0

    .line 378
    .end local v11    # "newTailSize":I
    .end local v16    # "newTail":[Ljava/lang/Object;
    .restart local v0    # "newTail":[Ljava/lang/Object;
    .restart local v7    # "newTailSize":I
    :cond_4
    move v11, v7

    .end local v7    # "newTailSize":I
    .restart local v11    # "newTailSize":I
    if-le v11, v15, :cond_5

    .line 379
    sub-int v7, v11, v15

    .line 380
    .local v7, "rightShift":I
    iget-object v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {v8, v1, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutableShiftingRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    .line 382
    .end local v0    # "newTail":[Ljava/lang/Object;
    .restart local v16    # "newTail":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move v3, v7

    move-object v4, v14

    move v5, v13

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoRoot(Ljava/util/Collection;II[[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object/from16 v0, v16

    .end local v7    # "rightShift":I
    goto :goto_0

    .line 385
    .end local v16    # "newTail":[Ljava/lang/Object;
    .restart local v0    # "newTail":[Ljava/lang/Object;
    :cond_5
    iget-object v2, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v3

    sub-int v4, v15, v11

    invoke-static {v2, v3, v1, v4, v15}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object v16

    .line 387
    .end local v0    # "newTail":[Ljava/lang/Object;
    .restart local v16    # "newTail":[Ljava/lang/Object;
    sub-int v0, v15, v11

    rsub-int/lit8 v7, v0, 0x20

    .line 388
    .restart local v7    # "rightShift":I
    iget-object v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {v8, v0, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutableShiftingRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v17

    .line 390
    .local v17, "lastBuffer":[Ljava/lang/Object;
    add-int/lit8 v0, v13, -0x1

    aput-object v17, v14, v0

    .line 392
    add-int/lit8 v5, v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move v3, v7

    move-object v4, v14

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->insertIntoRoot(Ljava/util/Collection;II[[Ljava/lang/Object;I[Ljava/lang/Object;)V

    move-object/from16 v0, v16

    .line 397
    .end local v7    # "rightShift":I
    .end local v16    # "newTail":[Ljava/lang/Object;
    .end local v17    # "lastBuffer":[Ljava/lang/Object;
    .restart local v0    # "newTail":[Ljava/lang/Object;
    :goto_0
    iget-object v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-direct {v8, v1, v12, v14}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffersIncreasingHeightIfNeeded([Ljava/lang/Object;I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 398
    iput-object v0, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v1

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 401
    const/4 v1, 0x1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 166
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tailSize()I

    move-result v0

    .line 167
    .local v0, "tailSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 169
    .local v3, "elementsIterator":Ljava/util/Iterator;
    rsub-int/lit8 v4, v0, 0x20

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 171
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    goto :goto_1

    .line 174
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x20

    .line 175
    .local v4, "buffersSize":I
    new-array v5, v4, [[Ljava/lang/Object;

    .line 178
    .local v5, "buffers":[[Ljava/lang/Object;
    iget-object v6, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v0, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 180
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 181
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7, v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    .end local v6    # "index":I
    :cond_2
    iget-object v6, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v7

    invoke-direct {p0, v6, v7, v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->pushBuffersIncreasingHeightIfNeeded([Ljava/lang/Object;I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->mutableBuffer()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->copyToBuffer([Ljava/lang/Object;ILjava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v1, v6

    iput v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    .line 192
    .end local v4    # "buffersSize":I
    .end local v5    # "buffers":[[Ljava/lang/Object;
    :goto_1
    return v2
.end method

.method public bridge synthetic build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 1

    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object v0
.end method

.method public build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "TE;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorRoot:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorTail:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    goto :goto_1

    .line 32
    :cond_0
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    invoke-direct {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->ownership:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;

    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorRoot:[Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vectorTail:[Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;->persistentVectorOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_2
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;-><init>([Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVector;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v3

    iget v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVector;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 29
    :goto_1
    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 45
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->vector:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkElementIndex$runtime_release(II)V

    .line 518
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->bufferFor(I)[Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "buffer":[Ljava/lang/Object;
    and-int/lit8 v1, p1, 0x1f

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final getModCount$runtime_release()I
    .locals 1

    .line 26
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    return v0
.end method

.method public final getRoot$runtime_release()[Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getRootShift$runtime_release()I
    .locals 1

    .line 17
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 23
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size:I

    return v0
.end method

.method public final getTail$runtime_release()[Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkPositionIndex$runtime_release(II)V

    .line 973
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 671
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder$removeAll$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder$removeAll$1;-><init>(Ljava/util/Collection;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAllWithPredicate(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public final removeAllWithPredicate(Lkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 675
    invoke-direct {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeAll(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 676
    .local v0, "anyRemoved":Z
    if-eqz v0, :cond_0

    .line 677
    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 679
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkElementIndex$runtime_release(II)V

    .line 540
    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 542
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    .line 543
    .local v0, "rootSize":I
    if-lt p1, v0, :cond_0

    .line 545
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    sub-int v3, p1, v0

    invoke-direct {p0, v1, v0, v2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeFromTailAt([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 547
    :cond_0
    new-instance v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;-><init>(Ljava/lang/Object;)V

    .line 548
    .local v1, "elementCarry":Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, v2, v4, p1, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeFromRootAt([Ljava/lang/Object;IILandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v2

    .line 549
    .local v2, "newRoot":[Ljava/lang/Object;
    iget v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    invoke-direct {p0, v2, v0, v4, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->removeFromTailAt([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 551
    invoke-virtual {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkElementIndex$runtime_release(II)V

    .line 922
    invoke-direct {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootSize()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 923
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->makeMutable([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 926
    .local v0, "mutableTail":[Ljava/lang/Object;
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->modCount:I

    .line 928
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    .line 929
    .local v1, "tailIndex":I
    aget-object v2, v0, v1

    .line 930
    .local v2, "oldElement":Ljava/lang/Object;
    aput-object p2, v0, v1

    .line 931
    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->tail:[Ljava/lang/Object;

    .line 933
    return-object v2

    .line 936
    .end local v0    # "mutableTail":[Ljava/lang/Object;
    .end local v1    # "tailIndex":I
    .end local v2    # "oldElement":Ljava/lang/Object;
    :cond_1
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;-><init>(Ljava/lang/Object;)V

    .line 937
    .local v8, "oldElementCarry":Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;
    iget-object v4, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->setInRoot([Ljava/lang/Object;IILjava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->root:[Ljava/lang/Object;

    .line 939
    invoke-virtual {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/ObjectRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setRootShift$runtime_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 17
    iput p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->rootShift:I

    return-void
.end method
