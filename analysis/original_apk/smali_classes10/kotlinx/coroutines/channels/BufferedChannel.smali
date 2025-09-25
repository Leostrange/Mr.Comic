.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;,
        Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3086:1\n273#1,6:3089\n280#1,68:3096\n397#1,18:3187\n244#1:3205\n269#1,10:3206\n280#1,48:3217\n418#1:3265\n334#1,14:3266\n422#1,3:3281\n244#1:3294\n269#1,10:3295\n280#1,68:3306\n244#1:3384\n269#1,10:3385\n280#1,68:3396\n244#1:3468\n269#1,10:3469\n280#1,68:3480\n244#1:3549\n269#1,10:3550\n280#1,68:3561\n909#1,52:3631\n987#1,8:3687\n881#1:3695\n905#1,33:3696\n997#1:3729\n939#1,14:3730\n958#1,3:3745\n1002#1,6:3748\n909#1,52:3762\n987#1,8:3818\n881#1:3826\n905#1,33:3827\n997#1:3860\n939#1,14:3861\n958#1,3:3876\n1002#1,6:3879\n881#1:3894\n905#1,48:3895\n958#1,3:3944\n881#1:3947\n905#1,48:3948\n958#1,3:3997\n244#1:4009\n269#1,10:4010\n280#1,68:4021\n881#1:4090\n905#1,48:4091\n958#1,3:4140\n1#2:3087\n3069#3:3088\n3069#3:3095\n3069#3:3216\n3069#3:3305\n3069#3:3395\n3069#3:3467\n3069#3:3479\n3069#3:3560\n3069#3:3630\n3069#3:3893\n3069#3:4000\n3069#3:4001\n3083#3:4002\n3083#3:4003\n3082#3:4004\n3082#3:4005\n3082#3:4006\n3083#3:4007\n3082#3:4008\n3069#3:4020\n3070#3:4143\n3069#3:4144\n3069#3:4145\n3069#3:4146\n3070#3:4147\n3069#3:4148\n3070#3:4171\n3069#3:4172\n3069#3:4173\n3070#3:4174\n3069#3:4224\n3070#3:4225\n3070#3:4226\n3070#3:4244\n3070#3:4245\n318#4,9:3164\n327#4,2:3181\n336#4,4:3183\n340#4,8:3284\n318#4,9:3375\n327#4,2:3465\n336#4,4:3683\n340#4,8:3754\n336#4,4:3814\n340#4,8:3885\n216#5:3173\n217#5:3176\n216#5:3177\n217#5:3180\n57#6,2:3174\n57#6,2:3178\n57#6,2:3292\n269#7:3280\n269#7:3374\n269#7:3464\n269#7:3548\n269#7:3629\n269#7:4089\n905#8:3744\n905#8:3875\n905#8:3943\n905#8:3996\n905#8:4139\n33#9,11:4149\n33#9,11:4160\n68#10,3:4175\n42#10,8:4178\n68#10,3:4186\n42#10,8:4189\n42#10,8:4197\n68#10,3:4205\n42#10,8:4208\n42#10,8:4216\n766#11:4227\n857#11,2:4228\n2310#11,14:4230\n766#11:4246\n857#11,2:4247\n2310#11,14:4249\n766#11:4263\n857#11,2:4264\n2310#11,14:4266\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3089,6\n113#1:3096,68\n154#1:3187,18\n154#1:3205\n154#1:3206,10\n154#1:3217,48\n154#1:3265\n154#1:3266,14\n154#1:3281,3\n194#1:3294\n194#1:3295,10\n194#1:3306,68\n225#1:3384\n225#1:3385,10\n225#1:3396,68\n356#1:3468\n356#1:3469,10\n356#1:3480,68\n414#1:3549\n414#1:3550,10\n414#1:3561,68\n690#1:3631,52\n719#1:3687,8\n719#1:3695\n719#1:3696,33\n719#1:3729\n719#1:3730,14\n719#1:3745,3\n719#1:3748,6\n755#1:3762,52\n771#1:3818,8\n771#1:3826\n771#1:3827,33\n771#1:3860\n771#1:3861,14\n771#1:3876,3\n771#1:3879,6\n804#1:3894\n804#1:3895,48\n804#1:3944,3\n994#1:3947\n994#1:3948,48\n994#1:3997,3\n1487#1:4009\n1487#1:4010,10\n1487#1:4021,68\n1535#1:4090\n1535#1:4091,48\n1535#1:4140,3\n70#1:3088\n113#1:3095\n154#1:3216\n194#1:3305\n225#1:3395\n278#1:3467\n356#1:3479\n414#1:3560\n629#1:3630\n794#1:3893\n1030#1:4000\n1079#1:4001\n1397#1:4002\n1399#1:4003\n1429#1:4004\n1439#1:4005\n1448#1:4006\n1449#1:4007\n1456#1:4008\n1487#1:4020\n1896#1:4143\n1898#1:4144\n1900#1:4145\n1913#1:4146\n1924#1:4147\n1925#1:4148\n2227#1:4171\n2240#1:4172\n2250#1:4173\n2253#1:4174\n2570#1:4224\n2572#1:4225\n2597#1:4226\n2659#1:4244\n2660#1:4245\n134#1:3164,9\n134#1:3181,2\n153#1:3183,4\n153#1:3284,8\n221#1:3375,9\n221#1:3465,2\n718#1:3683,4\n718#1:3754,8\n769#1:3814,4\n769#1:3885,8\n138#1:3173\n138#1:3176\n141#1:3177\n141#1:3180\n138#1:3174,2\n141#1:3178,2\n183#1:3292,2\n154#1:3280\n194#1:3374\n225#1:3464\n356#1:3548\n414#1:3629\n1487#1:4089\n719#1:3744\n771#1:3875\n804#1:3943\n994#1:3996\n1535#1:4139\n2129#1:4149,11\n2184#1:4160,11\n2392#1:4175,3\n2392#1:4178,8\n2447#1:4186,3\n2447#1:4189,8\n2466#1:4197,8\n2496#1:4205,3\n2496#1:4208,8\n2557#1:4216,8\n2606#1:4227\n2606#1:4228,2\n2607#1:4230,14\n2671#1:4246\n2671#1:4247,2\n2672#1:4249,14\n2712#1:4263\n2712#1:4264,2\n2713#1:4266,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008$\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0004\u00e0\u0001\u00e1\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\"\u0008\u0002\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010P\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020\u0010H\u0002J\u0006\u0010R\u001a\u00020\u0007J\u0010\u0010R\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016J\u0016\u0010R\u001a\u00020\u00072\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UJ\u0017\u0010V\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016H\u0010\u00a2\u0006\u0002\u0008WJ\u001e\u0010X\u001a\u00020\u00072\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010K\u001a\u00020\u0010H\u0002J\u0006\u0010Z\u001a\u00020\u0007J\u0012\u0010[\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016H\u0016J\u000e\u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u001a\u0010]\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u00162\u0006\u0010R\u001a\u00020\u001cH\u0014J\u0010\u0010^\u001a\u00020\u00072\u0006\u0010_\u001a\u00020\u0010H\u0002J\u0016\u0010`\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010_\u001a\u00020\u0010H\u0002J\u0008\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u0010H\u0004J\u0008\u0010d\u001a\u00020\u0007H\u0002J.\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010h\u001a\u00020\u0010H\u0002J&\u0010i\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J&\u0010j\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\r\u0010k\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008lJ\u0012\u0010m\u001a\u00020\u00072\u0008\u0008\u0002\u0010n\u001a\u00020\u0010H\u0002J\u0008\u0010o\u001a\u00020\u0007H\u0002J-\u0010p\u001a\u00020\u00072#\u0010q\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J&\u0010r\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u0010H\u0002J\u0018\u0010v\u001a\u00020\u001c2\u0006\u0010w\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u000f\u0010x\u001a\u0008\u0012\u0004\u0012\u00028\u00000yH\u0096\u0002J\u0016\u0010z\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0008\u0010{\u001a\u00020\u0007H\u0002J\u0008\u0010|\u001a\u00020\u0007H\u0002J\u0008\u0010}\u001a\u00020\u0007H\u0002J\u001e\u0010~\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0008\u0010\u007f\u001a\u00020\u0007H\u0014J\u001f\u0010\u0080\u0001\u001a\u00020\u00072\u0014\u0010\u0081\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000,0\u0082\u0001H\u0002J\u0019\u0010\u0083\u0001\u001a\u00020\u00072\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0082\u0001H\u0002J\u0015\u0010\u0084\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u000309H\u0002J$\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\n\u0010<\u001a\u0006\u0012\u0002\u0008\u000309H\u0002\u00a2\u0006\u0003\u0010\u0087\u0001J\u0019\u0010\u0088\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0082@\u00a2\u0006\u0003\u0010\u0089\u0001J(\u0010\u008a\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0082\u0001H\u0002\u00a2\u0006\u0003\u0010\u008b\u0001J\t\u0010\u008c\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u008d\u0001\u001a\u00020\u0007H\u0014J!\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J\u0010\u0010\u0094\u0001\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0003\u0010\u0095\u0001J\u001f\u0010\u0096\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0095\u0001J>\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u008c\u0002\u0010\u009c\u0001\u001a\u0003H\u009d\u0001\"\u0005\u0008\u0001\u0010\u009d\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2$\u0010\u009f\u0001\u001a\u001f\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00062V\u0010\u00a0\u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u0001082\u000f\u0010\u00a3\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012X\u0008\u0002\u0010\u00a5\u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u000108H\u0082\u0008\u00a2\u0006\u0003\u0010\u00a6\u0001Jh\u0010\u00a7\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\u0008\u0010\u009e\u0001\u001a\u00030\u00a8\u00012#\u0010\u009f\u0001\u001a\u001e\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\u00a3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u0001H\u0082\u0008J/\u0010\u00a9\u0001\u001a\u00028\u00002\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0003\u0010\u009b\u0001J \u0010\u00aa\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u0003092\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J \u0010\u00ab\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u0003092\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000cH\u0014J\u0017\u0010\u00ac\u0001\u001a\u00020\u00072\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0019\u0010\u00ad\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0003\u0010\u0089\u0001J\u001c\u0010\u00ae\u0001\u001a\u00020\u001c2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0090@\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u0089\u0001J\u0082\u0002\u0010\u00b0\u0001\u001a\u0003H\u009d\u0001\"\u0005\u0008\u0001\u0010\u009d\u00012\u0007\u0010\u0086\u0001\u001a\u00028\u00002\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u000f\u0010\u00b1\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012A\u0010\u00a0\u0001\u001a<\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00b2\u00012\u000f\u0010\u00a3\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012o\u0008\u0002\u0010\u00a5\u0001\u001ah\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00b4\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00b3\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00b5\u0001Jb\u0010\u00b6\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\u0008\u0010\u009e\u0001\u001a\u00030\u00a8\u00012\u000e\u0010\u00b1\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u00012\u000e\u0010\u00a3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00b7\u0001J8\u0010\u00b8\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0003\u0010\u00b9\u0001J\u000f\u0010\u00ba\u0001\u001a\u00020\u001cH\u0010\u00a2\u0006\u0003\u0008\u00bb\u0001J\u0012\u0010\u00ba\u0001\u001a\u00020\u001c2\u0007\u0010\u00bc\u0001\u001a\u00020\u0010H\u0003J\n\u0010\u00bd\u0001\u001a\u00030\u00be\u0001H\u0016J\u0010\u0010\u00bf\u0001\u001a\u00030\u00be\u0001H\u0000\u00a2\u0006\u0003\u0008\u00c0\u0001J\u001e\u0010\u00c1\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001J\'\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070,2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J\'\u0010\u00c7\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070,2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c6\u0001J(\u0010\u00c9\u0001\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u00ca\u0001\u001a\u00020\u0010H\u0002J(\u0010\u00cb\u0001\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u00ca\u0001\u001a\u00020\u0010H\u0002J5\u0010\u00cc\u0001\u001a\u0004\u0018\u00010\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J5\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000cH\u0002JK\u0010\u00ce\u0001\u001a\u00020\u00042\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u0007\u0010\u00cf\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0003\u0010\u00d0\u0001JK\u0010\u00d1\u0001\u001a\u00020\u00042\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u0007\u0010\u00cf\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0003\u0010\u00d0\u0001J\u0012\u0010\u00d2\u0001\u001a\u00020\u00072\u0007\u0010\u00d3\u0001\u001a\u00020\u0010H\u0002J\u0012\u0010\u00d4\u0001\u001a\u00020\u00072\u0007\u0010\u00d3\u0001\u001a\u00020\u0010H\u0002J\u0017\u0010\u00d5\u0001\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00d6\u0001J$\u0010\u00d7\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J$\u0010\u00d8\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J\u000e\u0010\u00d9\u0001\u001a\u00020\u0007*\u00030\u00a8\u0001H\u0002J\u000e\u0010\u00da\u0001\u001a\u00020\u0007*\u00030\u00a8\u0001H\u0002J\u0017\u0010\u00db\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u0007\u0010\u00dc\u0001\u001a\u00020\u001cH\u0002J\u001c\u0010\u00dd\u0001\u001a\u00020\u001c*\u00020\u000c2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0002\u00a2\u0006\u0003\u0010\u00de\u0001J#\u0010\u00df\u0001\u001a\u00020\u001c*\u00020\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004R\t\u0010\r\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004R\t\u0010\u001a\u001a\u00020\u000eX\u0082\u0004R\u001a\u0010\u001b\u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001fR\u001a\u0010 \u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u001e\u001a\u0004\u0008 \u0010\u001fR\u0014\u0010\"\u001a\u00020\u001c8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u001a\u0010#\u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010\u001e\u001a\u0004\u0008#\u0010\u001fR\u0014\u0010%\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR \u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\'8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008(\u0010\u001e\u001a\u0004\u0008)\u0010*R&\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000,0\'8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008-\u0010\u001e\u001a\u0004\u0008.\u0010*R\"\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\'8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u00080\u0010\u001e\u001a\u0004\u00081\u0010*R,\u00102\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000038VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u00084\u0010\u001e\u001a\u0004\u00085\u00106R*\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00088\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000Ru\u00107\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u000309\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(<\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(=\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(>\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u000108j\u0004\u0018\u0001`?X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008@\u0010\u001eR\u0014\u0010A\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u0018R\u0015\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010D\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010E\u001a\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010\u0012R\u0014\u0010G\u001a\u00020\u00168DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\u0018R\u0015\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010J\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010K\u001a\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u0012R\u0018\u0010M\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0018\u0010O\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010N\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u00e2\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "E",
        "Lkotlinx/coroutines/channels/Channel;",
        "capacity",
        "",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(ILkotlin/jvm/functions/Function1;)V",
        "_closeCause",
        "Lkotlinx/atomicfu/AtomicRef;",
        "",
        "bufferEnd",
        "Lkotlinx/atomicfu/AtomicLong;",
        "bufferEndCounter",
        "",
        "getBufferEndCounter",
        "()J",
        "bufferEndSegment",
        "Lkotlinx/coroutines/channels/ChannelSegment;",
        "closeCause",
        "",
        "getCloseCause",
        "()Ljava/lang/Throwable;",
        "closeHandler",
        "completedExpandBuffersAndPauseFlag",
        "isClosedForReceive",
        "",
        "isClosedForReceive$annotations",
        "()V",
        "()Z",
        "isClosedForSend",
        "isClosedForSend$annotations",
        "isConflatedDropOldest",
        "isEmpty",
        "isEmpty$annotations",
        "isRendezvousOrUnlimited",
        "onReceive",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive$annotations",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onReceiveCatching",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "getOnReceiveCatching$annotations",
        "getOnReceiveCatching",
        "onReceiveOrNull",
        "getOnReceiveOrNull$annotations",
        "getOnReceiveOrNull",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend$annotations",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "onUndeliveredElementReceiveCancellationConstructor",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "Lkotlin/ParameterName;",
        "name",
        "select",
        "param",
        "internalResult",
        "Lkotlinx/coroutines/selects/OnCancellationConstructor;",
        "getOnUndeliveredElementReceiveCancellationConstructor$annotations",
        "receiveException",
        "getReceiveException",
        "receiveSegment",
        "receivers",
        "receiversCounter",
        "getReceiversCounter$kotlinx_coroutines_core",
        "sendException",
        "getSendException",
        "sendSegment",
        "sendersAndCloseStatus",
        "sendersCounter",
        "getSendersCounter$kotlinx_coroutines_core",
        "isClosedForReceive0",
        "(J)Z",
        "isClosedForSend0",
        "bufferOrRendezvousSend",
        "curSenders",
        "cancel",
        "cause",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelImpl",
        "cancelImpl$kotlinx_coroutines_core",
        "cancelSuspendedReceiveRequests",
        "lastSegment",
        "checkSegmentStructureInvariants",
        "close",
        "closeLinkedList",
        "closeOrCancelImpl",
        "completeCancel",
        "sendersCur",
        "completeClose",
        "completeCloseOrCancel",
        "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer",
        "globalCellIndex",
        "expandBuffer",
        "findSegmentBufferEnd",
        "id",
        "startFrom",
        "currentBufferEndCounter",
        "findSegmentReceive",
        "findSegmentSend",
        "hasElements",
        "hasElements$kotlinx_coroutines_core",
        "incCompletedExpandBufferAttempts",
        "nAttempts",
        "invokeCloseHandler",
        "invokeOnClose",
        "handler",
        "isCellNonEmpty",
        "segment",
        "index",
        "globalIndex",
        "isClosed",
        "sendersAndCloseStatusCur",
        "iterator",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "markAllEmptyCellsAsClosed",
        "markCancellationStarted",
        "markCancelled",
        "markClosed",
        "moveSegmentBufferEndToSpecifiedOrLast",
        "onClosedIdempotent",
        "onClosedReceiveCatchingOnNoWaiterSuspend",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "onClosedReceiveOnNoWaiterSuspend",
        "onClosedSelectOnReceive",
        "onClosedSelectOnSend",
        "element",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V",
        "onClosedSend",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onClosedSendOnNoWaiterSuspend",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V",
        "onReceiveDequeued",
        "onReceiveEnqueued",
        "processResultSelectReceive",
        "ignoredParam",
        "selectResult",
        "processResultSelectReceiveCatching",
        "processResultSelectReceiveOrNull",
        "processResultSelectSend",
        "receive",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveCatching",
        "receiveCatching-JP2dKIU",
        "receiveCatchingOnNoWaiterSuspend",
        "r",
        "receiveCatchingOnNoWaiterSuspend-GKJJFZk",
        "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveImpl",
        "R",
        "waiter",
        "onElementRetrieved",
        "onSuspend",
        "segm",
        "i",
        "onClosed",
        "Lkotlin/Function0;",
        "onNoWaiterSuspend",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "receiveImplOnNoWaiter",
        "Lkotlinx/coroutines/Waiter;",
        "receiveOnNoWaiterSuspend",
        "registerSelectForReceive",
        "registerSelectForSend",
        "removeUnprocessedElements",
        "send",
        "sendBroadcast",
        "sendBroadcast$kotlinx_coroutines_core",
        "sendImpl",
        "onRendezvousOrBuffered",
        "Lkotlin/Function2;",
        "Lkotlin/Function4;",
        "s",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "sendImplOnNoWaiter",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "sendOnNoWaiterSuspend",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldSendSuspend",
        "shouldSendSuspend$kotlinx_coroutines_core",
        "curSendersAndCloseStatus",
        "toString",
        "",
        "toStringDebug",
        "toStringDebug$kotlinx_coroutines_core",
        "tryReceive",
        "tryReceive-PtdJZtk",
        "()Ljava/lang/Object;",
        "trySend",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySendDropOldest",
        "trySendDropOldest-JP2dKIU",
        "updateCellExpandBuffer",
        "b",
        "updateCellExpandBufferSlow",
        "updateCellReceive",
        "updateCellReceiveSlow",
        "updateCellSend",
        "closed",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I",
        "updateCellSendSlow",
        "updateReceiversCounterIfLower",
        "value",
        "updateSendersCounterIfLower",
        "waitExpandBufferCompletion",
        "waitExpandBufferCompletion$kotlinx_coroutines_core",
        "prepareReceiverForSuspension",
        "prepareSenderForSuspension",
        "resumeReceiverOnClosedChannel",
        "resumeSenderOnCancelledChannel",
        "resumeWaiterOnClosedChannel",
        "receiver",
        "tryResumeReceiver",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "tryResumeSender",
        "BufferedChannelIterator",
        "SendBroadcast",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _closeCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic bufferEnd$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic bufferEndSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic closeHandler$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic completedExpandBuffersAndPauseFlag$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic receiveSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic receivers$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic sendSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic sendersAndCloseStatus$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private final capacity:I

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "sendersAndCloseStatus$volatile"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string/jumbo v0, "receivers$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v2, "sendSegment$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v2, "receiveSegment$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "bufferEndSegment$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_closeCause$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "closeHandler$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "capacity"    # I
    .param p2, "onUndeliveredElement"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    .line 42
    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 45
    nop

    .line 46
    iget v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 48
    nop

    .line 68
    iget v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-static {v0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$initialBufferEnd(I)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile:J

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile:J

    .line 96
    nop

    .line 98
    new-instance v0, Lkotlinx/coroutines/channels/ChannelSegment;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 99
    .local v0, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile:Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile:Ljava/lang/Object;

    .line 106
    .end local v0    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    nop

    .line 1564
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v1, 0x0

    .line 1565
    .local v1, "$i$a$-let-BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1":I
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1564
    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$i$a$-let-BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1":I
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1752
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile:Ljava/lang/Object;

    .line 36
    return-void

    .line 3087
    :cond_3
    const/4 v0, 0x0

    .line 46
    .local v0, "$i$a$-require-BufferedChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should be >=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferedChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 43
    const/4 p2, 0x0

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 2764
    return-void
.end method

.method public static final synthetic access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentSend(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;

    .line 36
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 36
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 36
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 36
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 36
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # J

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$onClosedSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSendOnNoWaiterSuspend(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->prepareReceiverForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    return-void
.end method

.method public static final synthetic access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->prepareSenderForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    return-void
.end method

.method public static final synthetic access$processResultSelectReceive(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectReceiveCatching(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectReceiveOrNull(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$registerSelectForReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p6}, Lkotlinx/coroutines/channels/BufferedChannel;->sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z

    .line 36
    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method private final bufferOrRendezvousSend(J)Z
    .locals 4
    .param p1, "curSenders"    # J

    .line 637
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final cancelSuspendedReceiveRequests(Lkotlinx/coroutines/channels/ChannelSegment;J)V
    .locals 9
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "sendersCounter"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;J)V"
        }
    .end annotation

    .line 2146
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v0

    .line 2147
    .local v0, "suspendedReceivers":Ljava/lang/Object;
    move-object v2, p1

    .line 2148
    .local v2, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 2149
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    sub-int/2addr v4, v1

    .local v4, "index":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 2151
    iget-wide v5, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v7, v7

    mul-long/2addr v5, v7

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v5, v5, p2

    if-ltz v5, :cond_6

    .line 2153
    :cond_0
    nop

    .line 2154
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v5

    .line 2155
    .local v5, "state":Ljava/lang/Object;
    nop

    .line 2156
    if-eqz v5, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 2162
    :cond_1
    instance-of v6, v5, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v6, :cond_2

    .line 2163
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2164
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v6, v6, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    invoke-static {v0, v6}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2165
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 2166
    goto :goto_3

    .line 2169
    :cond_2
    instance-of v6, v5, Lkotlinx/coroutines/Waiter;

    if-eqz v6, :cond_3

    .line 2170
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2171
    invoke-static {v0, v5}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2172
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 2173
    goto :goto_3

    .line 2176
    :cond_3
    goto :goto_3

    .line 2157
    :cond_4
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2158
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2159
    nop

    .line 2149
    .end local v5    # "state":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2181
    .end local v4    # "index":I
    :cond_5
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    goto :goto_0

    .line 2184
    :cond_6
    const/4 v4, 0x0

    .line 4160
    .local v4, "$i$f$forEachReversed-impl":I
    nop

    .line 4161
    if-eqz v0, :cond_9

    .line 4162
    instance-of v5, v0, Ljava/util/ArrayList;

    if-nez v5, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Waiter;

    .local v1, "it":Lkotlinx/coroutines/Waiter;
    const/4 v3, 0x0

    .line 2184
    .local v3, "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4162
    .end local v1    # "it":Lkotlinx/coroutines/Waiter;
    .end local v3    # "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    goto :goto_5

    .line 4164
    :cond_7
    const-string/jumbo v5, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    .line 4165
    .local v5, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "i$iv":I
    :goto_4
    if-ge v3, v6, :cond_8

    .line 4166
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Waiter;

    .restart local v1    # "it":Lkotlinx/coroutines/Waiter;
    const/4 v7, 0x0

    .line 2184
    .local v7, "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4166
    .end local v1    # "it":Lkotlinx/coroutines/Waiter;
    .end local v7    # "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    nop

    .line 4165
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 4170
    .end local v5    # "list$iv":Ljava/util/ArrayList;
    .end local v6    # "i$iv":I
    :cond_8
    :goto_5
    nop

    .line 2185
    .end local v4    # "$i$f$forEachReversed-impl":I
    :cond_9
    return-void
.end method

.method private final closeLinkedList()Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    .line 1984
    const/4 v0, 0x0

    .local v0, "lastSegment":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 1985
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3087
    .local v1, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 1985
    .local v2, "$i$a$-let-BufferedChannel$closeLinkedList$1":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object v0, v1

    .end local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-let-BufferedChannel$closeLinkedList$1":I
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 1986
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3087
    .restart local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 1986
    .local v2, "$i$a$-let-BufferedChannel$closeLinkedList$2":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    move-object v0, v1

    .line 1989
    .end local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-let-BufferedChannel$closeLinkedList$2":I
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    return-object v1
.end method

.method private final completeCancel(J)V
    .locals 1
    .param p1, "sendersCur"    # J

    .line 1973
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    .line 1976
    .local v0, "lastSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->removeUnprocessedElements(Lkotlinx/coroutines/channels/ChannelSegment;)V

    .line 1977
    return-void
.end method

.method private final completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 5
    .param p1, "sendersCur"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    .line 1944
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeLinkedList()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    .line 1954
    .local v0, "lastSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->markAllEmptyCellsAsClosed(Lkotlinx/coroutines/channels/ChannelSegment;)J

    move-result-wide v1

    .line 1956
    .local v1, "lastBufferedCellGlobalIndex":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1957
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 1961
    .end local v1    # "lastBufferedCellGlobalIndex":J
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelSuspendedReceiveRequests(Lkotlinx/coroutines/channels/ChannelSegment;J)V

    .line 1964
    return-object v0
.end method

.method private final completeCloseOrCancel()V
    .locals 0

    .line 1933
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 1934
    return-void
.end method

.method private final expandBuffer()V
    .locals 18

    .line 1196
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1199
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    move-object v7, v0

    .line 1201
    .local v7, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEnd$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 1204
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    .line 1205
    .local v8, "b":J
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    div-long v10, v8, v0

    .line 1213
    .local v10, "id":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v12

    .line 1214
    .local v12, "s":J
    cmp-long v0, v12, v8

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v4, 0x0

    if-gtz v0, :cond_2

    .line 1216
    iget-wide v0, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_1

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1217
    invoke-direct {v6, v10, v11, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 1219
    :cond_1
    invoke-static {v6, v4, v5, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1220
    return-void

    .line 1224
    :cond_2
    iget-wide v0, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_4

    .line 1225
    move-object/from16 v0, p0

    move-wide v1, v10

    move-object v3, v7

    move-wide/from16 v16, v10

    move-wide v10, v4

    .end local v10    # "id":J
    .local v16, "id":J
    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentBufferEnd(JLkotlinx/coroutines/channels/ChannelSegment;J)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1232
    goto :goto_0

    .line 1225
    :cond_3
    move-object v7, v0

    .end local v7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_1

    .line 1224
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v16    # "id":J
    .restart local v7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "id":J
    :cond_4
    move-wide/from16 v16, v10

    move-wide v10, v4

    .line 1236
    .end local v10    # "id":J
    .restart local v16    # "id":J
    :goto_1
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    rem-long v0, v8, v0

    long-to-int v0, v0

    .line 1237
    .local v0, "i":I
    invoke-direct {v6, v7, v0, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellExpandBuffer(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1245
    invoke-static {v6, v10, v11, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1246
    return-void

    .line 1251
    :cond_5
    invoke-static {v6, v10, v11, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1252
    goto :goto_0
.end method

.method private final findSegmentBufferEnd(JLkotlinx/coroutines/channels/ChannelSegment;J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 17
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p4, "currentBufferEndCounter"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;J)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2496
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 4205
    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v1, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    :cond_0
    move-object/from16 v2, p3

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 4206
    invoke-static {v2, v7, v8, v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    .line 4207
    .local v2, "s$iv":Ljava/lang/Object;
    invoke-static {v2}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v3

    .local v3, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_0
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    .local v5, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v10, 0x0

    .line 4208
    .local v10, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    iget-wide v11, v5, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v13, v3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1

    move v3, v9

    goto :goto_1

    .line 4209
    :cond_1
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-nez v11, :cond_2

    move v3, v4

    goto :goto_1

    .line 4210
    :cond_2
    invoke-static {v0, v6, v5, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4211
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4212
    :cond_3
    move v3, v9

    .line 4207
    .end local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v5    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    .line 4214
    .restart local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v5    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v10    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4215
    :cond_5
    nop

    .end local v5    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    goto :goto_0

    .line 2496
    .end local v0    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "s$iv":Ljava/lang/Object;
    .end local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_6
    :goto_2
    move-object v10, v2

    .local v10, "it":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 2497
    .local v11, "$i$a$-let-BufferedChannel$findSegmentBufferEnd$1":I
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    if-eqz v0, :cond_7

    .line 2502
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2505
    invoke-direct/range {p0 .. p3}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 2508
    invoke-static {v6, v12, v13, v9, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 2509
    move-object/from16 v16, v10

    goto :goto_5

    .line 2512
    :cond_7
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2514
    .local v15, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    iget-wide v0, v15, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_9

    .line 2520
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEnd$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/16 v1, 0x1

    add-long v2, p4, v1

    iget-wide v4, v15, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move-object/from16 v16, v10

    .end local v10    # "it":Ljava/lang/Object;
    .local v16, "it":Ljava/lang/Object;
    int-to-long v9, v1

    mul-long/2addr v4, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2521
    iget-wide v0, v15, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sub-long v0, v0, p4

    invoke-direct {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    goto :goto_3

    .line 2523
    :cond_8
    const/4 v0, 0x1

    invoke-static {v6, v12, v13, v0, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 2526
    :goto_3
    goto :goto_5

    .line 2528
    .end local v16    # "it":Ljava/lang/Object;
    .restart local v10    # "it":Ljava/lang/Object;
    :cond_9
    move v0, v9

    move-object/from16 v16, v10

    .end local v10    # "it":Ljava/lang/Object;
    .restart local v16    # "it":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3087
    const/4 v1, 0x0

    .line 2528
    .local v1, "$i$a$-assert-BufferedChannel$findSegmentBufferEnd$1$1":I
    iget-wide v2, v15, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_a

    move v4, v0

    .end local v1    # "$i$a$-assert-BufferedChannel$findSegmentBufferEnd$1$1":I
    :cond_a
    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2530
    :cond_c
    :goto_4
    move-object v14, v15

    .line 2497
    .end local v15    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    nop

    .line 2496
    .end local v11    # "$i$a$-let-BufferedChannel$findSegmentBufferEnd$1":I
    .end local v16    # "it":Ljava/lang/Object;
    nop

    .line 2533
    return-object v14
.end method

.method private final findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 16
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    .line 2447
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 4186
    .local v4, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v5, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    :cond_0
    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    .line 4187
    invoke-static {v6, v1, v2, v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v6

    .line 4188
    .local v6, "s$iv":Ljava/lang/Object;
    invoke-static {v6}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-nez v7, :cond_6

    invoke-static {v6}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v7

    .local v7, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/internal/Segment;

    .local v10, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v11, 0x0

    .line 4189
    .local v11, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    iget-wide v12, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v14, v7, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_1

    move v7, v9

    goto :goto_1

    .line 4190
    :cond_1
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 4191
    :cond_2
    invoke-static {v4, v0, v10, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4192
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4193
    :cond_3
    move v7, v9

    .line 4188
    .end local v7    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :goto_1
    if-eqz v7, :cond_0

    goto :goto_2

    .line 4195
    .restart local v7    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :cond_4
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4196
    :cond_5
    nop

    .end local v10    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    goto :goto_0

    .line 2447
    .end local v4    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "s$iv":Ljava/lang/Object;
    .end local v7    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_6
    :goto_2
    move-object v4, v6

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2448
    .local v5, "$i$a$-let-BufferedChannel$findSegmentReceive$1":I
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2453
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2459
    iget-wide v8, v3, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v6

    mul-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2461
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 2464
    :cond_8
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2466
    .local v6, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v10

    sget v12, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    cmp-long v10, v1, v10

    if-gtz v10, :cond_c

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    .local v10, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    :goto_3
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v12, 0x0

    .line 4197
    .local v12, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    iget-wide v13, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v15, v6

    check-cast v15, Lkotlinx/coroutines/internal/Segment;

    iget-wide v7, v15, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v7, v13, v7

    if-gez v7, :cond_c

    .line 4198
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4199
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v10, v0, v11, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4200
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4201
    :cond_9
    goto :goto_4

    .line 4203
    :cond_a
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4204
    :cond_b
    nop

    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    goto :goto_3

    .line 2470
    .end local v10    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    :cond_c
    :goto_4
    iget-wide v7, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v7, v7, v1

    if-lez v7, :cond_e

    .line 2474
    iget-wide v7, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    invoke-direct {v0, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->updateReceiversCounterIfLower(J)V

    .line 2480
    iget-wide v7, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_d

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2482
    :cond_d
    const/4 v7, 0x0

    goto :goto_7

    .line 2484
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 3087
    const/4 v7, 0x0

    .line 2484
    .local v7, "$i$a$-assert-BufferedChannel$findSegmentReceive$1$1":I
    iget-wide v10, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v8, v10, v1

    if-nez v8, :cond_f

    move v8, v9

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    .end local v7    # "$i$a$-assert-BufferedChannel$findSegmentReceive$1$1":I
    :goto_5
    if-eqz v8, :cond_10

    goto :goto_6

    :cond_10
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2486
    :cond_11
    :goto_6
    move-object v7, v6

    .line 2448
    .end local v6    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_7
    nop

    .line 2447
    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-BufferedChannel$findSegmentReceive$1":I
    nop

    .line 2489
    return-object v7
.end method

.method private final findSegmentSend(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 12
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2392
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 4175
    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v1, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    :cond_0
    move-object v2, p3

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 4176
    invoke-static {v2, p1, p2, v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    .line 4177
    .local v2, "s$iv":Ljava/lang/Object;
    invoke-static {v2}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v3

    .local v3, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    .local v6, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v7, 0x0

    .line 4178
    .local v7, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    iget-wide v8, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v10, v3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    move v3, v5

    goto :goto_1

    .line 4179
    :cond_1
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v8

    if-nez v8, :cond_2

    move v3, v4

    goto :goto_1

    .line 4180
    :cond_2
    invoke-static {v0, p0, v6, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4181
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4182
    :cond_3
    move v3, v5

    .line 4177
    .end local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    .line 4184
    .restart local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v7    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4185
    :cond_5
    nop

    .end local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv$iv":I
    goto :goto_0

    .line 2392
    .end local v0    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "s$iv":Ljava/lang/Object;
    .end local v3    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    :cond_6
    :goto_2
    move-object v0, v2

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2393
    .local v1, "$i$a$-let-BufferedChannel$findSegmentSend$1":I
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 2398
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2404
    iget-wide v4, p3, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v2

    mul-long/2addr v4, v6

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_7

    invoke-virtual {p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2406
    :cond_7
    goto :goto_4

    .line 2409
    :cond_8
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2411
    .local v2, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    iget-wide v6, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_a

    .line 2415
    iget-wide v4, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateSendersCounterIfLower(J)V

    .line 2421
    iget-wide v4, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2423
    :cond_9
    goto :goto_4

    .line 2425
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3087
    const/4 v3, 0x0

    .line 2425
    .local v3, "$i$a$-assert-BufferedChannel$findSegmentSend$1$1":I
    iget-wide v6, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_b

    move v4, v5

    .end local v3    # "$i$a$-assert-BufferedChannel$findSegmentSend$1$1":I
    :cond_b
    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2427
    :cond_d
    :goto_3
    move-object v3, v2

    .line 2393
    .end local v2    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_4
    nop

    .line 2392
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-BufferedChannel$findSegmentSend$1":I
    return-object v3
.end method

.method private final synthetic getAndUpdate$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private final synthetic getBufferEnd$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile:J

    return-wide v0
.end method

.method private static final synthetic getBufferEnd$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final getBufferEndCounter()J
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEnd$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic getBufferEndSegment$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic getCloseHandler$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getCloseHandler$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic getCompletedExpandBuffersAndPauseFlag$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile:J

    return-wide v0
.end method

.method private static final synthetic getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static synthetic getOnReceive$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveCatching$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveOrNull$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnSend$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getOnUndeliveredElementReceiveCancellationConstructor$annotations()V
    .locals 0

    return-void
.end method

.method private final getReceiveException()Ljava/lang/Throwable;
    .locals 2

    .line 1760
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method private final synthetic getReceiveSegment$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic getReceivers$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$volatile:J

    return-wide v0
.end method

.method private static final synthetic getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final synthetic getSendSegment$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic getSendersAndCloseStatus$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$volatile:J

    return-wide v0
.end method

.method private static final synthetic getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_closeCause$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_closeCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final incCompletedExpandBufferAttempts(J)V
    .locals 18
    .param p1, "nAttempts"    # J

    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 1393
    move-wide/from16 v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v4

    .local v4, "it":J
    const/4 v1, 0x0

    .line 1397
    .local v1, "$i$a$-also-BufferedChannel$incCompletedExpandBufferAttempts$1":I
    move-wide v6, v4

    .local v6, "$this$ebPauseExpandBuffers$iv":J
    const/4 v8, 0x0

    .line 4002
    .local v8, "$i$f$getEbPauseExpandBuffers":I
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    and-long v11, v6, v9

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    const/4 v15, 0x0

    if-eqz v11, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v15

    .line 1397
    .end local v6    # "$this$ebPauseExpandBuffers$iv":J
    .end local v8    # "$i$f$getEbPauseExpandBuffers":I
    :goto_0
    if-eqz v6, :cond_3

    .line 1399
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    .restart local v6    # "$this$ebPauseExpandBuffers$iv":J
    const/4 v8, 0x0

    .line 4003
    .restart local v8    # "$i$f$getEbPauseExpandBuffers":I
    and-long v16, v6, v9

    cmp-long v11, v16, v13

    if-eqz v11, :cond_2

    move v6, v12

    goto :goto_1

    :cond_2
    move v6, v15

    .end local v6    # "$this$ebPauseExpandBuffers$iv":J
    .end local v8    # "$i$f$getEbPauseExpandBuffers":I
    :goto_1
    if-nez v6, :cond_1

    .line 1401
    :cond_3
    nop

    .line 1393
    .end local v1    # "$i$a$-also-BufferedChannel$incCompletedExpandBufferAttempts$1":I
    .end local v4    # "it":J
    nop

    .line 1402
    return-void
.end method

.method static synthetic incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V
    .locals 0

    .line 1391
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final invokeCloseHandler()V
    .locals 6

    .line 1840
    nop

    .line 1839
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseHandler$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1841
    .local v4, "$i$a$-getAndUpdate$atomicfu-BufferedChannel$invokeCloseHandler$closeHandler$1":I
    if-nez v3, :cond_1

    .line 1844
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    goto :goto_0

    .line 1848
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    .line 1841
    :goto_0
    nop

    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-getAndUpdate$atomicfu-BufferedChannel$invokeCloseHandler$closeHandler$1":I
    invoke-static {v0, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1839
    .end local v0    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    nop

    .line 1840
    if-nez v2, :cond_2

    .line 1850
    return-void

    .line 1840
    :cond_2
    move-object v0, v2

    .line 1853
    .local v0, "closeHandler":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1854
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    return-void
.end method

.method private final isCellNonEmpty(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "globalIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 2324
    nop

    :cond_0
    nop

    .line 2326
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 2327
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 2329
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2340
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    return v3

    .line 2342
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_3

    return v1

    .line 2344
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_4

    return v1

    .line 2347
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return v1

    .line 2350
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_6

    return v1

    .line 2354
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_7

    return v3

    .line 2358
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_8

    return v1

    .line 2369
    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v4

    cmp-long v2, p3, v4

    if-nez v2, :cond_9

    move v1, v3

    :cond_9
    return v1

    .line 2331
    :cond_a
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2335
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 2336
    return v1
.end method

.method private final isClosed(JZ)Z
    .locals 8
    .param p1, "sendersAndCloseStatusCur"    # J
    .param p3, "isClosedForReceive"    # Z

    .line 2227
    move-wide v0, p1

    .local v0, "$this$sendersCloseStatus$iv":J
    const/4 v2, 0x0

    .line 4171
    .local v2, "$i$f$getSendersCloseStatus":I
    const/16 v3, 0x3c

    shr-long v4, v0, v3

    long-to-int v0, v4

    .line 2227
    .end local v0    # "$this$sendersCloseStatus$iv":J
    .end local v2    # "$i$f$getSendersCloseStatus":I
    const-wide v1, 0xfffffffffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected close status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, p1

    .local v1, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4174
    .local v4, "$i$f$getSendersCloseStatus":I
    shr-long v5, v1, v3

    long-to-int v1, v5

    .line 2253
    .end local v1    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2250
    :pswitch_0
    move-wide v5, p1

    .local v5, "$this$sendersCounter$iv":J
    const/4 v0, 0x0

    .line 4173
    .local v0, "$i$f$getSendersCounter":I
    and-long v0, v5, v1

    .line 2250
    .end local v0    # "$i$f$getSendersCounter":I
    .end local v5    # "$this$sendersCounter$iv":J
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCancel(J)V

    .line 2251
    goto :goto_0

    .line 2240
    :pswitch_1
    move-wide v6, p1

    .local v6, "$this$sendersCounter$iv":J
    const/4 v0, 0x0

    .line 4172
    .restart local v0    # "$i$f$getSendersCounter":I
    and-long v0, v6, v1

    .line 2240
    .end local v0    # "$i$f$getSendersCounter":I
    .end local v6    # "$this$sendersCounter$iv":J
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2244
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_0

    .line 2233
    :pswitch_2
    move v4, v5

    goto :goto_0

    .line 2229
    :pswitch_3
    move v4, v5

    .line 2254
    :cond_1
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic isClosedForReceive$annotations()V
    .locals 0

    return-void
.end method

.method private final isClosedForReceive0(J)Z
    .locals 1
    .param p1, "$this$isClosedForReceive0"    # J

    .line 2222
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic isClosedForSend$annotations()V
    .locals 0

    return-void
.end method

.method private final isClosedForSend0(J)Z
    .locals 1
    .param p1, "$this$isClosedForSend0"    # J

    .line 2215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic isEmpty$annotations()V
    .locals 0

    return-void
.end method

.method private final isRendezvousOrUnlimited()Z
    .locals 5

    .line 90
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    .line 3087
    .local v0, "it":J
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$-let-BufferedChannel$isRendezvousOrUnlimited$1":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-BufferedChannel$isRendezvousOrUnlimited$1":I
    :goto_1
    return v3
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final markAllEmptyCellsAsClosed(Lkotlinx/coroutines/channels/ChannelSegment;)J
    .locals 8
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)J"
        }
    .end annotation

    .line 2003
    move-object v0, p1

    .line 2004
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 2005
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_1
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ge v4, v1, :cond_4

    .line 2007
    iget-wide v4, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 2008
    .local v4, "globalIndex":J
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    return-wide v2

    .line 2010
    :cond_0
    nop

    .line 2011
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v2

    .line 2012
    .local v2, "state":Ljava/lang/Object;
    nop

    .line 2014
    if-eqz v2, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 2022
    :cond_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_2

    return-wide v4

    .line 2024
    :cond_2
    goto :goto_3

    .line 2016
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2017
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2018
    nop

    .line 2005
    .end local v2    # "state":Ljava/lang/Object;
    .end local v4    # "globalIndex":J
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2029
    .end local v1    # "index":I
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_5

    return-wide v2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private final markCancellationStarted()V
    .locals 12

    .line 1922
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    .local v6, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1924
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    move-wide v8, v0

    .local v8, "$this$sendersCloseStatus$iv":J
    const/4 v5, 0x0

    .line 4147
    .local v5, "$i$f$getSendersCloseStatus":I
    const/16 v10, 0x3c

    shr-long v10, v8, v10

    long-to-int v5, v10

    .line 1924
    .end local v5    # "$i$f$getSendersCloseStatus":I
    .end local v8    # "$this$sendersCloseStatus$iv":J
    if-nez v5, :cond_1

    .line 1925
    move-wide v8, v0

    .local v8, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4148
    .local v5, "$i$f$getSendersCounter":I
    const-wide v10, 0xfffffffffffffffL

    and-long/2addr v8, v10

    .line 1925
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v8    # "$this$sendersCounter$iv":J
    const/4 v5, 0x1

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v8

    .line 1924
    nop

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    move-object v0, v6

    move-object v1, p0

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    .end local v6    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    return-void

    .line 1926
    .restart local v0    # "cur":J
    .restart local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    .restart local v6    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_1
    return-void
.end method

.method private final markCancelled()V
    .locals 12

    .line 1911
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    .local v6, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1913
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markCancelled$1":I
    move-wide v8, v0

    .local v8, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4146
    .local v5, "$i$f$getSendersCounter":I
    const-wide v10, 0xfffffffffffffffL

    and-long/2addr v8, v10

    .line 1913
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v8    # "$this$sendersCounter$iv":J
    const/4 v5, 0x3

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v4

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancelled$1":I
    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    .end local v6    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    return-void
.end method

.method private final markClosed()V
    .locals 12

    .line 1894
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    .local v6, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1896
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markClosed$1":I
    move-wide v8, v0

    .local v8, "$this$sendersCloseStatus$iv":J
    const/4 v5, 0x0

    .line 4143
    .local v5, "$i$f$getSendersCloseStatus":I
    const/16 v10, 0x3c

    shr-long v10, v8, v10

    long-to-int v5, v10

    .line 1896
    .end local v5    # "$i$f$getSendersCloseStatus":I
    .end local v8    # "$this$sendersCloseStatus$iv":J
    const-wide v8, 0xfffffffffffffffL

    packed-switch v5, :pswitch_data_0

    .line 1901
    return-void

    .line 1900
    :pswitch_0
    move-wide v10, v0

    .local v10, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4145
    .local v5, "$i$f$getSendersCounter":I
    and-long/2addr v8, v10

    .line 1900
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v10    # "$this$sendersCounter$iv":J
    const/4 v5, 0x3

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v8

    goto :goto_0

    .line 1898
    :pswitch_1
    move-wide v10, v0

    .restart local v10    # "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4144
    .restart local v5    # "$i$f$getSendersCounter":I
    and-long/2addr v8, v10

    .line 1898
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v10    # "$this$sendersCounter$iv":J
    const/4 v5, 0x2

    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v8

    .line 1896
    :goto_0
    nop

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markClosed$1":I
    move-object v0, v6

    move-object v1, p0

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    .end local v6    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)V"
        }
    .end annotation

    .line 2543
    move-object v0, p3

    .line 2544
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 2545
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 2550
    :cond_1
    :goto_1
    nop

    .line 2551
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2552
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 2557
    :cond_3
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .local v1, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    :goto_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .local v2, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v3, 0x0

    .line 4216
    .local v3, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    iget-wide v4, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    iget-wide v6, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-ltz v4, :cond_4

    goto :goto_5

    .line 4217
    :cond_4
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    .line 4218
    :cond_5
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v1, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4219
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4220
    :cond_6
    nop

    .line 2557
    .end local v1    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v2    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v3    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    :goto_5
    if-eqz v5, :cond_1

    return-void

    .line 4222
    .restart local v1    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .restart local v2    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v3    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    :cond_7
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4223
    :cond_8
    nop

    .end local v2    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v3    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    goto :goto_4
.end method

.method private final onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 3
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 782
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 783
    return-void
.end method

.method private final onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 2
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TE;>;)V"
        }
    .end annotation

    .line 744
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 745
    return-void
.end method

.method private final onClosedSelectOnReceive(Lkotlinx/coroutines/selects/SelectInstance;)V
    .locals 1
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)V"
        }
    .end annotation

    .line 1543
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 1544
    return-void
.end method

.method private final onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)V"
        }
    .end annotation

    .line 1497
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 1498
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 1499
    return-void
.end method

.method private final onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 3164
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 3165
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 3171
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3172
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$a$-suspendCancellableCoroutine-BufferedChannel$onClosedSend$2":I
    iget-object v6, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, p1, v8, v7, v8}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v6

    if-eqz v6, :cond_2

    .local v6, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$a$-let-BufferedChannel$onClosedSend$2$1":I
    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 138
    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 3173
    .local v9, "$i$f$resumeWithStackTrace":I
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v10, 0x0

    .line 3174
    .local v10, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v11

    if-eqz v11, :cond_1

    instance-of v11, v8, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v11, :cond_0

    goto :goto_0

    .line 3175
    :cond_0
    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    move-object v12, v8

    check-cast v12, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v11, v12}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v11

    goto :goto_1

    .line 3174
    :cond_1
    :goto_0
    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    .line 3173
    .end local v10    # "$i$f$recoverStackTrace":I
    :goto_1
    invoke-static {v11}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3176
    nop

    .line 139
    .end local v8    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$f$resumeWithStackTrace":I
    goto :goto_4

    .line 141
    .end local v6    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v7    # "$i$a$-let-BufferedChannel$onClosedSend$2$1":I
    :cond_2
    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v7

    .local v7, "exception$iv":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 3177
    .local v8, "$i$f$resumeWithStackTrace":I
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v9, 0x0

    .line 3178
    .local v9, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v10

    if-eqz v10, :cond_4

    instance-of v10, v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v10, :cond_3

    goto :goto_2

    .line 3179
    :cond_3
    move-object v10, v6

    check-cast v10, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v7, v10}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v10

    goto :goto_3

    .line 3178
    :cond_4
    :goto_2
    move-object v10, v7

    .line 3177
    .end local v9    # "$i$f$recoverStackTrace":I
    :goto_3
    invoke-static {v10}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3180
    nop

    .line 142
    .end local v6    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v7    # "exception$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$f$resumeWithStackTrace":I
    nop

    .line 3172
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$onClosedSend$2":I
    :goto_4
    nop

    .line 3181
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 3164
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6

    return-object v1

    .line 3182
    :cond_6
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    return-object v0
.end method

.method private final onClosedSendOnNoWaiterSuspend(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 183
    :cond_0
    move-object v0, p2

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "exception$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 3292
    .local v2, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    instance-of v3, v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v3, :cond_1

    goto :goto_0

    .line 3293
    :cond_1
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v3

    move-object v1, v3

    .line 183
    .end local v1    # "exception$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$recoverStackTrace":I
    :cond_2
    :goto_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private final prepareReceiverForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 1
    .param p1, "$this$prepareReceiverForSuspension"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)V"
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveEnqueued()V

    .line 740
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    invoke-interface {p1, v0, p3}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 741
    return-void
.end method

.method private final prepareSenderForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 2
    .param p1, "$this$prepareSenderForSuspension"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)V"
        }
    .end annotation

    .line 178
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    add-int/2addr v1, p3

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 179
    return-void
.end method

.method private final processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1548
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 1549
    return-object p2

    .line 1548
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private final processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1560
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p2, v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1561
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v0

    return-object v0
.end method

.method private final processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1553
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 1554
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1555
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 1556
    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method private final processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1503
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 1504
    return-object p0

    .line 1503
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method static synthetic receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 690
    nop

    .line 693
    nop

    .line 690
    move-object/from16 v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v5, 0x0

    .local v5, "waiter$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3631
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3632
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3635
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 704
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3638
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v14

    .line 3640
    .local v14, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v8, v14, v1

    .line 3641
    .local v8, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v13, v1

    .line 3644
    .local v13, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_1

    .line 3646
    invoke-static {v6, v8, v9, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3650
    goto :goto_0

    .line 3646
    :cond_0
    move-object v0, v1

    move-object/from16 v16, v0

    goto :goto_1

    .line 3644
    :cond_1
    move-object/from16 v16, v0

    .line 3653
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, v6

    move-object/from16 v1, v16

    move v2, v13

    move-wide v3, v14

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3654
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3655
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 3661
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 3668
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-gez v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3669
    :cond_2
    move-object/from16 v0, v16

    goto :goto_0

    .line 3671
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 3674
    move-object/from16 v1, v16

    .local v1, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v10, v13

    .local v10, "i":I
    move-wide v11, v14

    move-wide v2, v8

    .end local v8    # "id$iv":J
    .local v2, "id$iv":J
    .local v11, "r":J
    move-object v9, v1

    .end local v1    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v1, 0x0

    .line 708
    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$5":I
    move-object/from16 v8, p0

    move v4, v13

    .end local v13    # "i$iv":I
    .local v4, "i$iv":I
    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 3674
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receive$5":I
    .end local v9    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i":I
    .end local v11    # "r":J
    nop

    .line 3654
    nop

    .line 709
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v2    # "id$iv":J
    .end local v4    # "i$iv":I
    .end local v5    # "waiter$iv":Ljava/lang/Object;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v7    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    return-object v1

    .line 3680
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v5    # "waiter$iv":Ljava/lang/Object;
    .restart local v6    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v7    # "$i$f$receiveImpl":I
    .restart local v8    # "id$iv":J
    .restart local v13    # "i$iv":I
    .restart local v14    # "r$iv":J
    .restart local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_4
    move-wide v2, v8

    .end local v8    # "id$iv":J
    .restart local v2    # "id$iv":J
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3682
    move-object v1, v0

    .local v1, "element":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 699
    .local v8, "$i$a$-receiveImpl-BufferedChannel$receive$2":I
    return-object v1

    .line 3658
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "id$iv":J
    .local v8, "id$iv":J
    :cond_5
    move-wide v2, v8

    .line 3659
    .end local v8    # "id$iv":J
    .restart local v2    # "id$iv":J
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$3":I
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 702
    const-string/jumbo v9, "unexpected"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3635
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receive$3":I
    .end local v2    # "id$iv":J
    .end local v13    # "i$iv":I
    .end local v14    # "r$iv":J
    .end local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    const/4 v1, 0x0

    .line 704
    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$4":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method static synthetic receiveCatching-JP2dKIU$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    iget v2, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 754
    iget v3, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "$i$f$receiveImpl":I
    const/4 v3, 0x0

    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2

    .end local v2    # "$i$f$receiveImpl":I
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .line 755
    .local v2, "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    move-object v3, v2

    .line 756
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v4, 0x0

    .line 755
    .local v4, "waiter$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    .line 3762
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3763
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3766
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v3, 0x0

    .line 761
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$4":I
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 3766
    .end local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$4":I
    goto/16 :goto_4

    .restart local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v4    # "waiter$iv":Ljava/lang/Object;
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    .line 3769
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    .line 3771
    .local v6, "r$iv":J
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    div-long v9, v6, v9

    .line 3772
    .local v9, "id$iv":J
    sget v11, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v11, v11

    rem-long v11, v6, v11

    long-to-int v14, v11

    .line 3775
    .local v14, "i$iv":I
    iget-wide v11, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_3

    .line 3777
    invoke-static {v3, v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v11

    if-nez v11, :cond_2

    .line 3781
    .end local v6    # "r$iv":J
    .end local v9    # "id$iv":J
    .end local v14    # "i$iv":I
    goto :goto_1

    .line 3777
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v6    # "r$iv":J
    .restart local v14    # "i$iv":I
    :cond_2
    move-object v5, v11

    .line 3784
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_3
    move-object v9, v3

    move-object v10, v5

    move v11, v14

    move-wide v12, v6

    move/from16 v16, v14

    .end local v14    # "i$iv":I
    .local v16, "i$iv":I
    move-object v14, v4

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3785
    .local v9, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3786
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 3792
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 3799
    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    .end local v16    # "i$iv":I
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-gez v9, :cond_4

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3800
    .end local v6    # "r$iv":J
    :cond_4
    goto :goto_1

    .line 3802
    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    .restart local v6    # "r$iv":J
    .restart local v9    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v16    # "i$iv":I
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v9, v3, :cond_7

    .line 3805
    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    move-object v3, v5

    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "r$iv":J
    .end local v16    # "i$iv":I
    .local v3, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move/from16 v4, v16

    .local v4, "i":I
    move-wide v5, v6

    .local v5, "r":J
    const/4 v9, 0x0

    .line 762
    .local v9, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v3    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v4    # "i":I
    .end local v5    # "r":J
    if-ne v4, v8, :cond_6

    .line 754
    return-object v8

    .line 762
    :cond_6
    move v3, v9

    move v2, v15

    .end local v9    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    .end local v15    # "$i$f$receiveImpl":I
    .local v2, "$i$f$receiveImpl":I
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    :goto_2
    nop

    .line 3805
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    move v15, v2

    move-object v2, v4

    goto :goto_3

    .line 3811
    .end local v2    # "$i$f$receiveImpl":I
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "updCellResult$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$receiveImpl":I
    :cond_7
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3813
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v9

    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    .local v2, "element":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 758
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$2":I
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 3813
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$2":I
    :goto_3
    nop

    .line 3785
    nop

    .line 763
    .end local v15    # "$i$f$receiveImpl":I
    :goto_4
    return-object v2

    .line 3789
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v4, "waiter$iv":Ljava/lang/Object;
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v6    # "r$iv":J
    .restart local v15    # "$i$f$receiveImpl":I
    .restart local v16    # "i$iv":I
    :cond_8
    nop

    .line 3790
    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    nop

    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "r$iv":J
    .end local v16    # "i$iv":I
    const/4 v2, 0x0

    .local v2, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$3":I
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 760
    const-string/jumbo v4, "unexpected"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    iget v2, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 765
    iget v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    iget-wide v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->J$0:J

    iget v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->I$0:I

    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p5, v3

    move-object/from16 v2, p5

    goto/16 :goto_4

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/coroutines/channels/BufferedChannel;
    move/from16 v11, p2

    .local v11, "index":I
    move-object/from16 v12, p1

    .local v12, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide/from16 v13, p3

    .line 769
    .local v13, "r":J
    const/4 v15, 0x0

    .line 3814
    .local v15, "$i$f$suspendCancellableCoroutineReusable":I
    iput-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    iput v11, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->I$0:I

    iput-wide v13, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v16, 0x0

    .line 3815
    .local v16, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v17

    .line 3816
    .end local v5    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v17, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3817
    move-object/from16 v10, v17

    .local v10, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/16 v18, 0x0

    .line 770
    .local v18, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2":I
    :try_start_0
    new-instance v5, Lkotlinx/coroutines/channels/ReceiveCatching;

    const-string/jumbo v6, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Lkotlinx/coroutines/channels/ReceiveCatching;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    move-object/from16 v19, v5

    .line 771
    .local v19, "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    move-object v8, v4

    .local v8, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/16 v26, 0x0

    .line 3818
    .local v26, "$i$f$receiveImplOnNoWaiter":I
    move-object/from16 v20, v19

    check-cast v20, Lkotlinx/coroutines/Waiter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v8

    move-object v6, v12

    move v7, v11

    move-object v2, v8

    .end local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    move-wide v8, v13

    move-object/from16 p5, v3

    move-object v3, v10

    .end local v10    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v3, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local p5, "$result":Ljava/lang/Object;
    move-object/from16 v10, v20

    :try_start_1
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3819
    .local v5, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3820
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 3821
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    .end local v13    # "r":J
    move-object/from16 v3, v19

    check-cast v3, Lkotlinx/coroutines/Waiter;

    invoke-static {v2, v3, v12, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto/16 :goto_3

    .line 3823
    .end local v11    # "index":I
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v5    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v13    # "r":J
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_d

    .line 3824
    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v5

    cmp-long v5, v13, v5

    if-gez v5, :cond_2

    invoke-virtual {v12}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3825
    .end local v12    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v13    # "r":J
    :cond_2
    nop

    .line 3826
    nop

    .line 3827
    nop

    .line 3826
    const/4 v5, 0x0

    .local v5, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    .line 3831
    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3832
    .local v6, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3835
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    .line 777
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    .local v2, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$2":I
    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v4, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3835
    .end local v2    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$2":I
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    goto/16 :goto_3

    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v8

    .line 3838
    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    .line 3840
    .local v8, "r$iv$iv":J
    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v10

    div-long v10, v8, v10

    .line 3841
    .local v10, "id$iv$iv":J
    sget v12, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v12, v12

    rem-long v12, v8, v12

    long-to-int v12, v12

    .line 3844
    .local v12, "i$iv$iv":I
    iget-wide v13, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v13, v13, v10

    if-eqz v13, :cond_5

    .line 3846
    invoke-static {v2, v10, v11, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v13

    if-nez v13, :cond_4

    .line 3850
    .end local v8    # "r$iv$iv":J
    .end local v10    # "id$iv$iv":J
    .end local v12    # "i$iv$iv":I
    goto :goto_1

    .line 3846
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v12    # "i$iv$iv":I
    :cond_4
    move-object v6, v13

    .line 3853
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_5
    move-object/from16 v25, v19

    check-cast v25, Lkotlinx/coroutines/Waiter;

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move/from16 v22, v12

    move-wide/from16 v23, v8

    invoke-static/range {v20 .. v25}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 3854
    .local v10, "updCellResult$iv$iv":Ljava/lang/Object;
    nop

    .line 3855
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_8

    .line 3858
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v19

    check-cast v3, Lkotlinx/coroutines/Waiter;

    instance-of v3, v3, Lkotlinx/coroutines/Waiter;

    if-eqz v3, :cond_6

    move-object/from16 v7, v19

    check-cast v7, Lkotlinx/coroutines/Waiter;

    nop

    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_6
    if-eqz v7, :cond_7

    invoke-static {v2, v7, v6, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    nop

    .line 3859
    .end local v2    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_7
    const/4 v2, 0x0

    .line 3860
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    nop

    .line 3859
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    goto :goto_2

    .line 3861
    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v12    # "i$iv$iv":I
    .restart local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_a

    .line 3868
    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .end local v12    # "i$iv$iv":I
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3869
    .end local v8    # "r$iv$iv":J
    :cond_9
    goto :goto_1

    .line 3871
    .end local v2    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    .restart local v8    # "r$iv$iv":J
    .restart local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v12    # "i$iv$iv":I
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v10, v2, :cond_c

    .line 3876
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3878
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v10

    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .local v2, "element":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 775
    .local v6, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    sget-object v8, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v8, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v8

    iget-object v9, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    nop

    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_b
    invoke-virtual {v3, v8, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 776
    nop

    .line 3878
    .end local v6    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    :goto_2
    nop

    .line 3854
    nop

    .end local v5    # "$i$f$receiveImpl":I
    goto :goto_3

    .line 3874
    .restart local v5    # "$i$f$receiveImpl":I
    .local v6, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v12    # "i$iv$iv":I
    :cond_c
    const/4 v0, 0x0

    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    .local v0, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3875
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local p5    # "$result":Ljava/lang/Object;
    throw v2

    .line 3879
    .end local v0    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v5, "updCellResult$iv":Ljava/lang/Object;
    .local v12, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local p5    # "$result":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v12}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3881
    .end local v12    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v5

    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v2    # "element":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 775
    .local v5, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    sget-object v6, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v6, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v6

    iget-object v8, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_e

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v8, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    nop

    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_e
    invoke-virtual {v3, v6, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    nop

    .line 3881
    .end local v5    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    nop

    .line 3884
    :goto_3
    nop

    .line 779
    .end local v26    # "$i$f$receiveImplOnNoWaiter":I
    nop

    .line 3817
    .end local v18    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2":I
    nop

    .line 3891
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 3814
    .end local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_f

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_f
    if-ne v2, v0, :cond_10

    .line 765
    return-object v0

    .line 3814
    :cond_10
    move v0, v15

    .line 3892
    .end local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    :goto_4
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    check-cast v2, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    .line 779
    return-object v0

    .line 3885
    .restart local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local p5    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object/from16 p5, v3

    .line 3888
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local p5    # "$result":Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3889
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final receiveImpl(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 15
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onSuspend"    # Lkotlin/jvm/functions/Function3;
    .param p4, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;)TR;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .local v8, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 909
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 910
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 913
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 916
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    .line 918
    .local v9, "r":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v11, v9, v1

    .line 919
    .local v11, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v9, v1

    long-to-int v13, v1

    .line 922
    .local v13, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_2

    .line 924
    invoke-static {p0, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 928
    goto :goto_0

    .line 924
    :cond_1
    move-object v0, v1

    move-object v14, v0

    goto :goto_1

    .line 922
    :cond_2
    move-object v14, v0

    .line 931
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v14, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, p0

    move-object v1, v14

    move v2, v13

    move-wide v3, v9

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, "updCellResult":Ljava/lang/Object;
    nop

    .line 933
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 936
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_3

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    invoke-static {p0, v1, v14, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 937
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v14, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, p5

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 939
    :cond_5
    move-object/from16 v3, p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 946
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_6

    invoke-virtual {v14}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 947
    :cond_6
    move-object v0, v14

    goto :goto_0

    .line 949
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 952
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v4, p5

    invoke-interface {v4, v14, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 958
    :cond_8
    move-object/from16 v4, p5

    invoke-virtual {v14}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 960
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 932
    :goto_3
    return-object v2
.end method

.method static synthetic receiveImpl$default(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onSuspend"    # Lkotlin/jvm/functions/Function3;
    .param p4, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function3;

    .line 881
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez p7, :cond_a

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object v8, v0

    .end local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .local v0, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 881
    .end local v0    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .restart local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v8, p5

    .end local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .local v8, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :goto_0
    const/4 v9, 0x0

    .local v9, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 909
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 910
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 913
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 916
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    .line 918
    .local v10, "r":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v12, v10, v1

    .line 919
    .local v12, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v10, v1

    long-to-int v14, v1

    .line 922
    .local v14, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3

    .line 924
    invoke-static {v6, v12, v13, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 928
    goto :goto_1

    .line 924
    :cond_2
    move-object v0, v1

    move-object v15, v0

    goto :goto_2

    .line 922
    :cond_3
    move-object v15, v0

    .line 931
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v15, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-wide v3, v10

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, "updCellResult":Ljava/lang/Object;
    nop

    .line 933
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 936
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_4

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    invoke-static {v6, v1, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 937
    :cond_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v15, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 939
    :cond_6
    move-object/from16 v3, p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 946
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_7

    invoke-virtual {v15}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 947
    :cond_7
    move-object v0, v15

    goto :goto_1

    .line 949
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 952
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v15, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 958
    :cond_9
    invoke-virtual {v15}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 960
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 932
    :goto_4
    return-object v2

    .line 881
    .end local v0    # "updCellResult":Ljava/lang/Object;
    .end local v8    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .end local v9    # "$i$f$receiveImpl":I
    .end local v10    # "r":J
    .end local v12    # "id":J
    .end local v14    # "i":I
    .end local v15    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :cond_a
    move-object/from16 v1, p2

    move-object/from16 v3, p3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Super calls with default arguments not supported in this target, function: receiveImpl"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final receiveImplOnNoWaiter(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 19
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Lkotlinx/coroutines/Waiter;
    .param p6, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p7, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const/4 v9, 0x0

    .line 987
    .local v9, "$i$f$receiveImplOnNoWaiter":I
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 988
    .local v10, "updCellResult":Ljava/lang/Object;
    nop

    .line 989
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v10, v0, :cond_0

    .line 990
    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-static {v6, v7, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    move/from16 v16, v9

    goto/16 :goto_5

    .line 992
    :cond_0
    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v10, v0, :cond_b

    .line 993
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 994
    :cond_1
    nop

    .line 3947
    nop

    .line 3948
    nop

    .line 3947
    const/4 v13, 0x0

    .local v13, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3952
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3953
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3956
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move/from16 v16, v9

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3959
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v14

    .line 3961
    .local v14, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v14, v1

    .line 3962
    .local v3, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v5, v1

    .line 3965
    .local v5, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 3967
    invoke-static {v6, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3971
    goto :goto_0

    .line 3967
    :cond_3
    move-object v0, v1

    move-object v2, v0

    goto :goto_1

    .line 3965
    :cond_4
    move-object v2, v0

    .line 3974
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    move/from16 v16, v9

    move-object v9, v2

    .end local v2    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "$i$f$receiveImplOnNoWaiter":I
    move v2, v5

    move-wide/from16 v17, v3

    .end local v3    # "id$iv":J
    .local v17, "id$iv":J
    move-wide v3, v14

    move v11, v5

    .end local v5    # "i$iv":I
    .local v11, "i$iv":I
    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3975
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3976
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3979
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_5

    move-object v1, v7

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v6, v1, v9, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3980
    :cond_6
    const/4 v1, 0x0

    .line 997
    .local v1, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1":I
    nop

    .end local v1    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3980
    goto :goto_3

    .line 3982
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 3989
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-gez v1, :cond_8

    invoke-virtual {v9}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3990
    :cond_8
    move-object/from16 v11, p1

    move-object v0, v9

    move/from16 v9, v16

    goto :goto_0

    .line 3992
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 3997
    invoke-virtual {v9}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3999
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3975
    :goto_3
    nop

    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v9    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "i$iv":I
    .end local v13    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v17    # "id$iv":J
    :goto_4
    goto :goto_5

    .line 3995
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v9    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "i$iv":I
    .restart local v13    # "$i$f$receiveImpl":I
    .restart local v14    # "r$iv":J
    .restart local v17    # "id$iv":J
    :cond_a
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3996
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    .end local v11    # "i$iv":I
    .end local v13    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v16    # "$i$f$receiveImplOnNoWaiter":I
    .end local v17    # "id$iv":J
    .local v9, "$i$f$receiveImplOnNoWaiter":I
    :cond_b
    move/from16 v16, v9

    .end local v9    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v16    # "$i$f$receiveImplOnNoWaiter":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 1004
    invoke-interface {v8, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    :goto_5
    return-void
.end method

.method private final receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 718
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 3683
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v3, p5

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 3684
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v5

    .line 3685
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3686
    move-object v0, v5

    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v6, 0x0

    .line 719
    .local v6, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    move-object/from16 v13, p0

    .local v13, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v14, 0x0

    .line 3687
    .local v14, "$i$f$receiveImplOnNoWaiter":I
    :try_start_0
    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/Waiter;

    move-object v7, v13

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    .line 3688
    .local v15, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3689
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v15, v7, :cond_0

    .line 3690
    :try_start_1
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/Waiter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p1

    move/from16 v10, p2

    :try_start_2
    invoke-static {v13, v7, v12, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_4

    .line 3754
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v10, p2

    :goto_0
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_5

    .line 3692
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v14    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v15    # "updCellResult$iv":Ljava/lang/Object;
    :cond_0
    move-object/from16 v12, p1

    move/from16 v10, p2

    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    const/16 v16, 0x0

    if-ne v15, v7, :cond_c

    .line 3693
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    cmp-long v7, p3, v7

    if-gez v7, :cond_1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3694
    :cond_1
    nop

    .line 3695
    nop

    .line 3696
    nop

    .line 3695
    const/16 v17, 0x0

    .local v17, "$i$f$receiveImpl":I
    :try_start_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    .line 3700
    invoke-virtual {v7, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3701
    .local v7, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3704
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    .line 734
    .local v8, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$2":I
    :try_start_6
    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3704
    .end local v8    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$2":I
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_4

    :cond_2
    :try_start_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v8

    .line 3707
    invoke-virtual {v8, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    move-wide/from16 v18, v8

    .line 3709
    .local v18, "r$iv$iv":J
    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v8, v8

    div-long v8, v18, v8

    .line 3710
    .local v8, "id$iv$iv":J
    sget v11, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v20, "$i$f$suspendCancellableCoroutineReusable":I
    .local v21, "uCont$iv":Lkotlin/coroutines/Continuation;
    int-to-long v2, v11

    :try_start_8
    rem-long v2, v18, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    long-to-int v2, v2

    .line 3713
    .local v2, "i$iv$iv":I
    move/from16 v22, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v22, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :try_start_9
    iget-wide v3, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_4

    .line 3715
    invoke-static {v13, v8, v9, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3719
    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto :goto_1

    .line 3715
    .end local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v3, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_3
    goto :goto_2

    .line 3713
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_4
    move-object v3, v7

    .line 3722
    .end local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/Waiter;

    move-object v7, v13

    move-wide/from16 v23, v8

    .end local v8    # "id$iv$iv":J
    .local v23, "id$iv$iv":J
    move-object v8, v3

    move v9, v2

    move-wide/from16 v10, v18

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3723
    .local v4, "updCellResult$iv$iv":Ljava/lang/Object;
    nop

    .line 3724
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v4, v7, :cond_7

    .line 3727
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/Waiter;

    instance-of v7, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v7, :cond_5

    move-object/from16 v16, v0

    check-cast v16, Lkotlinx/coroutines/Waiter;

    :cond_5
    move-object/from16 v7, v16

    if-eqz v7, :cond_6

    invoke-static {v13, v7, v3, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3728
    :cond_6
    const/4 v7, 0x0

    .line 3729
    .local v7, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    nop

    .line 3728
    .end local v7    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    goto :goto_3

    .line 3730
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v4, v7, :cond_9

    .line 3737
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v7

    cmp-long v7, v18, v7

    if-gez v7, :cond_8

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3738
    :cond_8
    move-object/from16 v12, p1

    move/from16 v10, p2

    move-object v7, v3

    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto/16 :goto_1

    .line 3740
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-eq v4, v7, :cond_b

    .line 3745
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3747
    move-object v7, v4

    .local v7, "element":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 731
    .local v8, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    iget-object v9, v1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v16

    :cond_a
    move-object/from16 v9, v16

    .line 732
    .local v9, "onCancellation":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v0, v7, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 733
    nop

    .line 3747
    .end local v7    # "element":Ljava/lang/Object;
    .end local v8    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    .end local v9    # "onCancellation":Lkotlin/jvm/functions/Function1;
    :goto_3
    nop

    .line 3723
    nop

    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v23    # "id$iv$iv":J
    goto :goto_4

    .line 3743
    .restart local v2    # "i$iv$iv":I
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$receiveImpl":I
    .restart local v18    # "r$iv$iv":J
    .restart local v23    # "id$iv$iv":J
    :cond_b
    const/4 v7, 0x0

    .local v7, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 3744
    const-string/jumbo v9, "unexpected"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "r":J
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    throw v8

    .line 3754
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .end local v7    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v23    # "id$iv$iv":J
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "r":J
    .restart local p5    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move/from16 v22, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    goto :goto_5

    .line 3748
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v14    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v15    # "updCellResult$iv":Ljava/lang/Object;
    :cond_c
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3750
    move-object v2, v15

    .local v2, "element":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 731
    .local v3, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v4, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v16

    :cond_d
    move-object/from16 v4, v16

    .line 732
    .local v4, "onCancellation":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v0, v2, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 733
    nop

    .line 3750
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    .end local v4    # "onCancellation":Lkotlin/jvm/functions/Function1;
    nop

    .line 3753
    :goto_4
    nop

    .line 736
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3686
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    nop

    .line 3760
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3683
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_e

    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 3761
    :cond_e
    nop

    .line 736
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    return-object v0

    .line 3754
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_4
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    .line 3757
    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :goto_5
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3758
    throw v0
.end method

.method private final registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 13
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1535
    nop

    .line 4090
    nop

    .line 4091
    nop

    .line 4090
    const/4 v0, 0x0

    .local v0, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 4095
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 4096
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 4099
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1539
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$3":I
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnReceive(Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 4099
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$3":I
    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 4102
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    .line 4104
    .local v9, "r$iv":J
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v11, v9, v2

    .line 4105
    .local v11, "id$iv":J
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    rem-long v2, v9, v2

    long-to-int v2, v2

    .line 4108
    .local v2, "i$iv":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v11

    if-eqz v3, :cond_2

    .line 4110
    invoke-static {p0, v11, v12, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4114
    goto :goto_0

    .line 4110
    :cond_1
    move-object v1, v3

    .line 4117
    :cond_2
    move-object v3, p0

    move-object v4, v1

    move v5, v2

    move-wide v6, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4118
    .local v3, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 4119
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 4122
    instance-of v4, p1, Lkotlinx/coroutines/Waiter;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/Waiter;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-static {p0, v4, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 4123
    :cond_4
    const/4 v4, 0x0

    .line 1538
    .local v4, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$2":I
    nop

    .line 4123
    .end local v4    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$2":I
    goto :goto_2

    .line 4125
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 4132
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v4

    cmp-long v4, v9, v4

    if-gez v4, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4133
    :cond_6
    goto :goto_0

    .line 4135
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 4140
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4142
    move-object v4, v3

    .local v4, "elem":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1537
    .local v5, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$1":I
    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 4142
    .end local v4    # "elem":Ljava/lang/Object;
    .end local v5    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$1":I
    :goto_2
    nop

    .line 4118
    nop

    .line 1540
    .end local v0    # "$i$f$receiveImpl":I
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "i$iv":I
    .end local v3    # "updCellResult$iv":Ljava/lang/Object;
    .end local v9    # "r$iv":J
    .end local v11    # "id$iv":J
    :goto_3
    return-void

    .line 4138
    .restart local v0    # "$i$f$receiveImpl":I
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v2    # "i$iv":I
    .restart local v3    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v9    # "r$iv":J
    .restart local v11    # "id$iv":J
    :cond_8
    const/4 v4, 0x0

    .local v4, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 4139
    const-string/jumbo v6, "unexpected"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private final removeUnprocessedElements(Lkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 12
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)V"
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2045
    .local v0, "onUndeliveredElement":Lkotlin/jvm/functions/Function1;
    const/4 v1, 0x0

    .line 2052
    .local v1, "undeliveredElementException":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v2

    .line 2053
    .local v2, "suspendedSenders":Ljava/lang/Object;
    move-object v4, p1

    .line 2054
    .local v4, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 2055
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    sub-int/2addr v5, v3

    .local v5, "index":I
    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_a

    .line 2057
    iget-wide v7, v4, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v5

    add-long/2addr v7, v9

    .line 2059
    .local v7, "globalIndex":J
    :cond_0
    nop

    .line 2061
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v9

    .line 2062
    .local v9, "state":Ljava/lang/Object;
    nop

    .line 2064
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_b

    .line 2066
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v9, v10, :cond_2

    .line 2068
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-ltz v10, :cond_b

    .line 2070
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    invoke-virtual {v4, v5, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2072
    if-eqz v0, :cond_1

    .line 2073
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v6

    .line 2074
    .local v6, "element":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    .line 2078
    .end local v6    # "element":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 2079
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2080
    goto/16 :goto_5

    .line 2084
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_9

    if-nez v9, :cond_3

    goto :goto_4

    .line 2093
    :cond_3
    instance-of v10, v9, Lkotlinx/coroutines/Waiter;

    if-nez v10, :cond_6

    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_4

    goto :goto_2

    .line 2117
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_b

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-ne v9, v10, :cond_5

    goto :goto_6

    .line 2120
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_0

    .line 2121
    goto :goto_5

    .line 2095
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-ltz v10, :cond_b

    .line 2097
    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v10, v10, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_3

    .line 2098
    :cond_7
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/Waiter;

    .line 2097
    :goto_3
    nop

    .line 2100
    .local v10, "sender":Lkotlinx/coroutines/Waiter;
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    invoke-virtual {v4, v5, v9, v11}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2102
    if-eqz v0, :cond_8

    .line 2103
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v6

    .line 2104
    .restart local v6    # "element":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    .line 2107
    .end local v6    # "element":Ljava/lang/Object;
    :cond_8
    invoke-static {v2, v10}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2110
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 2111
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2112
    goto :goto_5

    .line 2086
    .end local v10    # "sender":Lkotlinx/coroutines/Waiter;
    :cond_9
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    invoke-virtual {v4, v5, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2088
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2089
    nop

    .line 2055
    .end local v7    # "globalIndex":J
    .end local v9    # "state":Ljava/lang/Object;
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 2126
    .end local v5    # "index":I
    :cond_a
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v5, :cond_10

    .line 2129
    :cond_b
    :goto_6
    const/4 v5, 0x0

    .line 4149
    .local v5, "$i$f$forEachReversed-impl":I
    nop

    .line 4150
    if-eqz v2, :cond_e

    .line 4151
    instance-of v7, v2, Ljava/util/ArrayList;

    if-nez v7, :cond_c

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Waiter;

    .local v3, "it":Lkotlinx/coroutines/Waiter;
    const/4 v6, 0x0

    .line 2129
    .local v6, "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4151
    .end local v3    # "it":Lkotlinx/coroutines/Waiter;
    .end local v6    # "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    goto :goto_8

    .line 4153
    :cond_c
    const-string/jumbo v7, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    .line 4154
    .local v7, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "i$iv":I
    :goto_7
    if-ge v6, v8, :cond_d

    .line 4155
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Waiter;

    .restart local v3    # "it":Lkotlinx/coroutines/Waiter;
    const/4 v9, 0x0

    .line 2129
    .local v9, "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4155
    .end local v3    # "it":Lkotlinx/coroutines/Waiter;
    .end local v9    # "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    nop

    .line 4154
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 4159
    .end local v7    # "list$iv":Ljava/util/ArrayList;
    .end local v8    # "i$iv":I
    :cond_d
    :goto_8
    nop

    .line 2131
    .end local v5    # "$i$f$forEachReversed-impl":I
    :cond_e
    if-nez v1, :cond_f

    .line 2132
    return-void

    .line 2131
    :cond_f
    move-object v3, v1

    .line 3087
    .local v3, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v5, 0x0

    .line 2131
    .local v5, "$i$a$-let-BufferedChannel$removeUnprocessedElements$2":I
    throw v3

    .line 2126
    .end local v3    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v5    # "$i$a$-let-BufferedChannel$removeUnprocessedElements$2":I
    :cond_10
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private final resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V
    .locals 1
    .param p1, "$this$resumeReceiverOnClosedChannel"    # Lkotlinx/coroutines/Waiter;

    .line 2191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    return-void
.end method

.method private final resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V
    .locals 1
    .param p1, "$this$resumeSenderOnCancelledChannel"    # Lkotlinx/coroutines/Waiter;

    .line 2197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    return-void
.end method

.method private final resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V
    .locals 3
    .param p1, "$this$resumeWaiterOnClosedChannel"    # Lkotlinx/coroutines/Waiter;
    .param p2, "receiver"    # Z

    .line 2200
    nop

    .line 2201
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;->getCont()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2202
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2203
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2204
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->tryResumeHasNextOnClosedChannel()V

    goto :goto_1

    .line 2205
    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2208
    :goto_1
    return-void

    .line 2205
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected waiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic send$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    nop

    .line 117
    nop

    .line 113
    const/4 v6, 0x0

    .local v6, "waiter$iv":Ljava/lang/Object;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v9, 0x0

    .local v9, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3089
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3090
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3093
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    .line 3094
    .local v10, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v10

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3095
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3094
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide/from16 v19, v1

    .line 3096
    .local v19, "s$iv":J
    invoke-static {v8, v10, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v21

    .line 3098
    .local v21, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v12, v19, v1

    .line 3099
    .local v12, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v19, v1

    long-to-int v15, v1

    .line 3102
    .local v15, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3

    .line 3104
    invoke-static {v8, v12, v13, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3111
    if-eqz v21, :cond_1

    .line 3112
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    return-object v2

    .line 3112
    :cond_0
    nop

    .end local v1    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto/16 :goto_2

    .line 3114
    :cond_1
    goto :goto_0

    .line 3104
    :cond_2
    move-object v0, v1

    move-object/from16 v22, v0

    goto :goto_1

    .line 3102
    :cond_3
    move-object/from16 v22, v0

    .line 3120
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v22, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, v8

    move-object/from16 v1, v22

    move v2, v15

    move-object/from16 v3, p1

    move-wide/from16 v4, v19

    move/from16 v7, v21

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-wide v1, v12

    move v0, v15

    .line 3163
    .end local v10    # "sendersAndCloseStatusCur$iv":J
    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .end local v19    # "s$iv":J
    .end local v21    # "closed$iv":Z
    goto/16 :goto_3

    .line 3157
    .restart local v10    # "sendersAndCloseStatusCur$iv":J
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    .restart local v19    # "s$iv":J
    .restart local v21    # "closed$iv":Z
    :pswitch_0
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3158
    goto/16 :goto_3

    .line 3150
    :pswitch_1
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v19, v0

    if-gez v0, :cond_4

    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3151
    :cond_4
    const/4 v0, 0x0

    .line 126
    .local v0, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    return-object v1

    .line 3151
    :cond_5
    nop

    .end local v0    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto :goto_2

    .line 3163
    :pswitch_2
    move-object/from16 v0, v22

    .local v0, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v14, v15

    move-wide v1, v12

    .end local v12    # "id$iv":J
    .local v1, "id$iv":J
    .local v14, "i":I
    move-object v13, v0

    .end local v0    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v13, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide/from16 v16, v19

    move v0, v15

    .end local v15    # "i$iv":I
    .local v0, "i$iv":I
    .local v16, "s":J
    move-object/from16 v15, p1

    .local v15, "elem":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$5":I
    move-object/from16 v12, p0

    move-object/from16 v18, p2

    invoke-direct/range {v12 .. v18}, Lkotlinx/coroutines/channels/BufferedChannel;->sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    return-object v4

    .line 3163
    :cond_6
    nop

    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$5":I
    .end local v13    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v14    # "i":I
    .end local v15    # "elem":Ljava/lang/Object;
    .end local v16    # "s":J
    goto :goto_2

    .line 3138
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .restart local v12    # "id$iv":J
    .local v15, "i$iv":I
    :pswitch_3
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    if-eqz v21, :cond_8

    .line 3139
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3140
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_7

    return-object v4

    .line 3140
    :cond_7
    nop

    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto :goto_2

    .line 3142
    :cond_8
    nop

    .line 3143
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$3":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3143
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    goto :goto_2

    .line 3087
    .restart local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    :cond_9
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$a$-assert-BufferedChannel$send$3$1":I
    nop

    .end local v4    # "$i$a$-assert-BufferedChannel$send$3$1":I
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3131
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    :pswitch_4
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3131
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    goto :goto_2

    .line 3126
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    :pswitch_5
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3127
    const/4 v3, 0x0

    .line 120
    .restart local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3127
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3163
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .end local v6    # "waiter$iv":Ljava/lang/Object;
    .end local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v9    # "$i$f$sendImpl":I
    .end local v10    # "sendersAndCloseStatusCur$iv":J
    .end local v19    # "s$iv":J
    .end local v21    # "closed$iv":Z
    .end local v22    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    return-object v0

    .line 3090
    .restart local v6    # "waiter$iv":Ljava/lang/Object;
    .restart local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v9    # "$i$f$sendImpl":I
    .restart local v22    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    move-object/from16 v0, v22

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    move-object/from16 v8, p0

    const/4 v9, 0x0

    .line 3375
    .local v9, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v10, p2

    .local v10, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v11, 0x0

    .line 3376
    .local v11, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v10}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v12, 0x1

    invoke-direct {v0, v1, v12}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v13, v0

    .line 3382
    .local v13, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3383
    move-object v14, v13

    check-cast v14, Lkotlinx/coroutines/CancellableContinuation;

    .local v14, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v15, 0x0

    .line 222
    .local v15, "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    iget-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    if-eqz v0, :cond_9

    .line 227
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-direct {v0, v14}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 225
    move-object v7, v0

    .line 3384
    .local v7, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3385
    nop

    .line 3384
    const/16 v17, 0x0

    .local v17, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3389
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3390
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3393
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    .line 3394
    .local v4, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v4

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3395
    .local v3, "$i$f$getSendersCounter":I
    const-wide v18, 0xfffffffffffffffL

    and-long v1, v1, v18

    .line 3394
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide/from16 v18, v1

    .line 3396
    .local v18, "s$iv":J
    invoke-static {v8, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v20

    .line 3398
    .local v20, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v2, v18, v1

    .line 3399
    .local v2, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move-object/from16 v21, v13

    .end local v13    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v21, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    int-to-long v12, v1

    rem-long v12, v18, v12

    long-to-int v12, v12

    .line 3402
    .local v12, "i$iv":I
    move-wide/from16 v22, v4

    .end local v4    # "sendersAndCloseStatusCur$iv":J
    .local v22, "sendersAndCloseStatusCur$iv":J
    iget-wide v4, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 3404
    invoke-static {v8, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3411
    if-eqz v20, :cond_1

    .line 3412
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v4, v14

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3412
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move/from16 v26, v9

    goto/16 :goto_4

    .line 3414
    :cond_1
    move-object/from16 v13, v21

    const/4 v12, 0x1

    goto :goto_1

    .line 3404
    :cond_2
    move-object v0, v1

    move-object v13, v0

    goto :goto_2

    .line 3402
    :cond_3
    move-object v13, v0

    .line 3420
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v13, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v24, v2

    .end local v2    # "id$iv":J
    .local v24, "id$iv":J
    move v2, v12

    move-object/from16 v3, p1

    move-wide/from16 v4, v18

    move-object v6, v7

    move/from16 v26, v9

    move-object v9, v7

    .end local v7    # "waiter$iv":Ljava/lang/Object;
    .local v9, "waiter$iv":Ljava/lang/Object;
    .local v26, "$i$f$suspendCancellableCoroutine":I
    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x1

    .line 3464
    .end local v12    # "i$iv":I
    .end local v18    # "s$iv":J
    .end local v20    # "closed$iv":Z
    .end local v22    # "sendersAndCloseStatusCur$iv":J
    .end local v24    # "id$iv":J
    goto/16 :goto_5

    .line 3457
    .restart local v12    # "i$iv":I
    .restart local v18    # "s$iv":J
    .restart local v20    # "closed$iv":Z
    .restart local v22    # "sendersAndCloseStatusCur$iv":J
    .restart local v24    # "id$iv":J
    :pswitch_0
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3458
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 3450
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v18, v0

    if-gez v0, :cond_4

    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3451
    :cond_4
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3451
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    goto :goto_4

    .line 3463
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3464
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3438
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v20, :cond_5

    .line 3439
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3440
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3440
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    goto :goto_4

    .line 3442
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v8, v0, v13, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3443
    :cond_7
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$3":I
    nop

    .line 3443
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$3":I
    goto :goto_4

    .line 3431
    :pswitch_4
    const/4 v0, 0x0

    .line 228
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3431
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    goto :goto_4

    .line 3426
    :pswitch_5
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3427
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3427
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    nop

    .line 232
    .end local v9    # "waiter$iv":Ljava/lang/Object;
    .end local v12    # "i$iv":I
    .end local v13    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v17    # "$i$f$sendImpl":I
    .end local v18    # "s$iv":J
    .end local v20    # "closed$iv":Z
    .end local v22    # "sendersAndCloseStatusCur$iv":J
    .end local v24    # "id$iv":J
    :goto_4
    nop

    .line 3383
    .end local v14    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v15    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    nop

    .line 3465
    invoke-virtual/range {v21 .. v21}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3375
    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v11    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_8

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 3466
    :cond_8
    nop

    .line 232
    .end local v26    # "$i$f$suspendCancellableCoroutine":I
    return-object v0

    .line 3390
    .restart local v9    # "waiter$iv":Ljava/lang/Object;
    .restart local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v11    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v13    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v14    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v15    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    .restart local v17    # "$i$f$sendImpl":I
    .restart local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v26    # "$i$f$suspendCancellableCoroutine":I
    :goto_5
    move v12, v2

    move-object v7, v9

    move-object v0, v13

    move-object/from16 v13, v21

    move/from16 v9, v26

    goto/16 :goto_1

    .line 222
    .end local v17    # "$i$f$sendImpl":I
    .end local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v26    # "$i$f$suspendCancellableCoroutine":I
    .local v9, "$i$f$suspendCancellableCoroutine":I
    .local v13, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_9
    const/4 v0, 0x0

    .line 223
    .local v0, "$i$a$-check-BufferedChannel$sendBroadcast$2$1":I
    nop

    .line 222
    .end local v0    # "$i$a$-check-BufferedChannel$sendBroadcast$2$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final sendImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "waiter"    # Ljava/lang/Object;
    .param p3, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onSuspend"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Ljava/lang/Long;",
            "+TR;>;)TR;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 274
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 278
    .local v11, "sendersAndCloseStatusCur":J
    move-wide v1, v11

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3467
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 278
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v13, v1

    .line 280
    .local v13, "s":J
    invoke-static {v8, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 282
    .local v15, "closed":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v13, v1

    .line 283
    .local v6, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v13, v1

    long-to-int v4, v1

    .line 286
    .local v4, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 288
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 295
    if-eqz v15, :cond_0

    .line 296
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 298
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 286
    :cond_2
    move-object v5, v0

    .line 304
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "i":I
    .end local v5    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "i":I
    .local v17, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "id":J
    .local v18, "id":J
    move-object/from16 v6, p2

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v1, v16

    move-object/from16 v4, v17

    .line 347
    .end local v11    # "sendersAndCloseStatusCur":J
    .end local v13    # "s":J
    .end local v15    # "closed":Z
    .end local v16    # "i":I
    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id":J
    .local v4, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_4

    .line 341
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "sendersAndCloseStatusCur":J
    .restart local v13    # "s":J
    .restart local v15    # "closed":Z
    .restart local v16    # "i":I
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 342
    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    goto :goto_4

    .line 334
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 335
    :cond_3
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface {v3, v4, v0, v2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 322
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_3
    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    if-eqz v15, :cond_4

    .line 323
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 324
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 326
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move/from16 v1, v16

    .end local v16    # "i":I
    .local v1, "i":I
    invoke-static {v8, v0, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v1, v16

    .line 327
    .end local v16    # "i":I
    .restart local v1    # "i":I
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, p4

    invoke-interface {v5, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 315
    .end local v1    # "i":I
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v16    # "i":I
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_5
    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 311
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "sendersAndCloseStatusCur":J
    .end local v13    # "s":J
    .end local v15    # "closed":Z
    .end local v16    # "i":I
    .end local v18    # "id":J
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_4
    move-object v0, v4

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic sendImpl$default(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "waiter"    # Ljava/lang/Object;
    .param p3, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onSuspend"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function4;

    .line 244
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    if-nez p8, :cond_8

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$sendImpl$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$sendImpl$1;

    check-cast v0, Lkotlin/jvm/functions/Function4;

    move-object v10, v0

    .end local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .local v0, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    goto :goto_0

    .line 244
    .end local v0    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .restart local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :cond_0
    move-object/from16 v10, p6

    .end local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .local v10, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :goto_0
    const/4 v11, 0x0

    .local v11, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 274
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    .line 278
    .local v12, "sendersAndCloseStatusCur":J
    move-wide v1, v12

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3467
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 278
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v14, v1

    .line 280
    .local v14, "s":J
    invoke-static {v8, v12, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v16

    .line 282
    .local v16, "closed":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v14, v1

    .line 283
    .local v6, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v4, v1

    .line 286
    .local v4, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 288
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 295
    if-eqz v16, :cond_1

    .line 296
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 298
    :cond_1
    goto :goto_1

    .line 288
    :cond_2
    move-object v0, v1

    move-object v5, v0

    goto :goto_2

    .line 286
    :cond_3
    move-object v5, v0

    .line 304
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move/from16 p6, v4

    move-object/from16 p7, v5

    .end local v4    # "i":I
    .end local v5    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local p6, "i":I
    .local p7, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v14

    move-wide/from16 v17, v6

    .end local v6    # "id":J
    .local v17, "id":J
    move-object/from16 v6, p2

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move/from16 v1, p6

    move-object/from16 v3, p7

    .line 347
    .end local v12    # "sendersAndCloseStatusCur":J
    .end local v14    # "s":J
    .end local v16    # "closed":Z
    .end local v17    # "id":J
    .end local p6    # "i":I
    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v3, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_5

    .line 341
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v12    # "sendersAndCloseStatusCur":J
    .restart local v14    # "s":J
    .restart local v16    # "closed":Z
    .restart local v17    # "id":J
    .restart local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_0
    invoke-virtual/range {p7 .. p7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 342
    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v3, p7

    goto :goto_5

    .line 334
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    invoke-virtual/range {p7 .. p7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 335
    :cond_4
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_2
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface {v10, v3, v0, v2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 322
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_3
    move-object/from16 v2, p1

    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    if-eqz v16, :cond_5

    .line 323
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 324
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 326
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    move/from16 v1, p6

    .end local p6    # "i":I
    .local v1, "i":I
    invoke-static {v8, v0, v3, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_4

    .end local v1    # "i":I
    .restart local p6    # "i":I
    :cond_7
    move/from16 v1, p6

    .line 327
    .end local p6    # "i":I
    .restart local v1    # "i":I
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-interface {v4, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 315
    .end local v1    # "i":I
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_5
    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 311
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "sendersAndCloseStatusCur":J
    .end local v14    # "s":J
    .end local v16    # "closed":Z
    .end local v17    # "id":J
    .end local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v3

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_1

    .line 244
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .end local v11    # "$i$f$sendImpl":I
    .local p6, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: sendImpl"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final sendImplOnNoWaiter(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 22
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Lkotlinx/coroutines/Waiter;
    .param p7, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p8, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    const/4 v10, 0x0

    .line 397
    .local v10, "$i$f$sendImplOnNoWaiter":I
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    const-string/jumbo v11, "unexpected"

    packed-switch v0, :pswitch_data_0

    .line 3629
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 422
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 414
    nop

    .line 3549
    nop

    .line 3550
    nop

    .line 3549
    const/4 v12, 0x0

    .local v12, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3554
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3555
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3558
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v13

    .line 3559
    .local v13, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v13

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3560
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3559
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v15, v1

    .line 3561
    .local v15, "s$iv":J
    invoke-static {v8, v13, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v17

    .line 3563
    .local v17, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v15, v1

    .line 3564
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v15, v1

    long-to-int v4, v1

    .line 3567
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 3569
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3576
    if-eqz v17, :cond_0

    .line 3577
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move/from16 v18, v10

    goto/16 :goto_4

    .line 3579
    :cond_0
    goto :goto_0

    .line 3569
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3567
    :cond_2
    move-object v5, v0

    .line 3585
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p3

    move-object/from16 v19, v5

    move/from16 v18, v10

    move v10, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v18, "$i$f$sendImplOnNoWaiter":I
    .local v19, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v15

    move-wide/from16 v20, v6

    .end local v6    # "id$iv":J
    .local v20, "id$iv":J
    move-object/from16 v6, p6

    move/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object/from16 v1, v19

    .line 3629
    .end local v10    # "i$iv":I
    .end local v13    # "sendersAndCloseStatusCur$iv":J
    .end local v15    # "s$iv":J
    .end local v17    # "closed$iv":Z
    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v20    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_5

    .line 3622
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v13    # "sendersAndCloseStatusCur$iv":J
    .restart local v15    # "s$iv":J
    .restart local v17    # "closed$iv":Z
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v20    # "id$iv":J
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3623
    move-object/from16 v1, v19

    goto :goto_5

    .line 3615
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v15, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3616
    :cond_3
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 3628
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3629
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3603
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_5
    if-eqz v17, :cond_4

    .line 3604
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3605
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 3607
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v1, v19

    .line 3608
    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v0, 0x0

    .line 418
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1":I
    nop

    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3608
    move-object v1, v0

    goto :goto_4

    .line 3596
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_6
    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 3591
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_7
    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3592
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 3629
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i$iv":I
    .end local v12    # "$i$f$sendImpl":I
    .end local v13    # "sendersAndCloseStatusCur$iv":J
    .end local v15    # "s$iv":J
    .end local v17    # "closed$iv":Z
    .end local v20    # "id$iv":J
    :goto_4
    check-cast v1, Lkotlin/Unit;

    move-object/from16 v0, p1

    move/from16 v1, p2

    goto :goto_6

    .line 3555
    .restart local v12    # "$i$f$sendImpl":I
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v10, v18

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    .line 409
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$f$sendImpl":I
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .local v10, "$i$f$sendImplOnNoWaiter":I
    :pswitch_8
    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 410
    :cond_7
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-object/from16 v0, p1

    move/from16 v1, p2

    goto :goto_6

    .line 406
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_9
    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v8, v9, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_6

    .line 403
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    .line 399
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 400
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 424
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 153
    move-object/from16 v1, p0

    move-object/from16 v10, p3

    const/4 v11, 0x0

    .line 3183
    .local v11, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v12, p6

    .local v12, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v13, 0x0

    .line 3184
    .local v13, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v12}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v14

    .line 3185
    .local v14, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3186
    move-object v0, v14

    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v15, 0x0

    .line 154
    .local v15, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    move-object/from16 v9, p0

    .local v9, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/16 v16, 0x0

    .line 3187
    .local v16, "$i$f$sendImplOnNoWaiter":I
    :try_start_0
    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/Waiter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v17, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v18, v11

    move-object v11, v9

    .end local v9    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v11, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v18, "$i$f$suspendCancellableCoroutineReusable":I
    move/from16 v9, v17

    :try_start_1
    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string/jumbo v17, "unexpected"

    packed-switch v2, :pswitch_data_0

    .line 3280
    :pswitch_0
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v25, "uCont$iv":Lkotlin/coroutines/Continuation;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/16 :goto_6

    .line 3203
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3204
    nop

    .line 3205
    nop

    .line 3206
    nop

    .line 3205
    const/16 v19, 0x0

    .local v19, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 3210
    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3211
    .local v2, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 3214
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    move-wide v8, v3

    .line 3215
    .local v8, "sendersAndCloseStatusCur$iv$iv":J
    nop

    .local v3, "$this$sendersCounter$iv$iv$iv":J
    const/4 v5, 0x0

    .line 3216
    .local v5, "$i$f$getSendersCounter":I
    const-wide v6, 0xfffffffffffffffL

    and-long/2addr v3, v6

    .line 3215
    .end local v3    # "$this$sendersCounter$iv$iv$iv":J
    .end local v5    # "$i$f$getSendersCounter":I
    move-wide/from16 v20, v3

    .line 3217
    .local v20, "s$iv$iv":J
    invoke-static {v11, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v3

    move/from16 v22, v3

    .line 3219
    .local v22, "closed$iv$iv":Z
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    div-long v3, v20, v3

    move-wide v6, v3

    .line 3220
    .local v6, "id$iv$iv":J
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    rem-long v3, v20, v3

    long-to-int v5, v3

    .line 3223
    .local v5, "i$iv$iv":I
    iget-wide v3, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    .line 3225
    :try_start_4
    invoke-static {v11, v6, v7, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3232
    if-eqz v22, :cond_0

    .line 3233
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3233
    .end local v3    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    goto/16 :goto_5

    .line 3235
    :cond_0
    goto :goto_0

    .line 3225
    :cond_1
    move-object v2, v3

    move-object v4, v2

    goto :goto_1

    .line 3284
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v5    # "i$iv$iv":I
    .end local v6    # "id$iv$iv":J
    .end local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .end local v19    # "$i$f$sendImpl":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    goto/16 :goto_8

    .line 3223
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v5    # "i$iv$iv":I
    .restart local v6    # "id$iv$iv":J
    .restart local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    .restart local v19    # "$i$f$sendImpl":I
    .restart local v20    # "s$iv$iv":J
    .restart local v22    # "closed$iv$iv":Z
    :cond_2
    move-object v4, v2

    .line 3241
    .end local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v4, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    :try_start_5
    move-object/from16 v23, v0

    check-cast v23, Lkotlinx/coroutines/Waiter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v11

    move-object v3, v4

    move-object/from16 v24, v4

    .end local v4    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v24, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move v4, v5

    move-object/from16 v25, v12

    move v12, v5

    .end local v5    # "i$iv$iv":I
    .local v12, "i$iv$iv":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object/from16 v5, p3

    move-wide/from16 v26, v6

    .end local v6    # "id$iv$iv":J
    .local v26, "id$iv$iv":J
    move-wide/from16 v6, v20

    move-wide/from16 v28, v8

    .end local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .local v28, "sendersAndCloseStatusCur$iv$iv":J
    move-object/from16 v8, v23

    move/from16 v9, v22

    :try_start_6
    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v3, v24

    .line 3280
    .end local v12    # "i$iv$iv":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v26    # "id$iv$iv":J
    .end local v28    # "sendersAndCloseStatusCur$iv$iv":J
    .local v3, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_4

    .line 3273
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v12    # "i$iv$iv":I
    .restart local v20    # "s$iv$iv":J
    .restart local v22    # "closed$iv$iv":Z
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v26    # "id$iv$iv":J
    .restart local v28    # "sendersAndCloseStatusCur$iv$iv":J
    :pswitch_2
    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3274
    move-object/from16 v3, v24

    goto/16 :goto_4

    .line 3266
    :pswitch_3
    invoke-virtual {v11}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_3

    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3267
    :cond_3
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3267
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3279
    :pswitch_4
    const/4 v2, 0x0

    .local v2, "$i$a$-sendImpl-BufferedChannel$sendImpl$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 3280
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "element":Ljava/lang/Object;
    .end local p4    # "s":J
    .end local p6    # "$completion":Lkotlin/coroutines/Continuation;
    throw v3

    .line 3259
    .end local v2    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1$iv":I
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "element":Ljava/lang/Object;
    .restart local p4    # "s":J
    .restart local p6    # "$completion":Lkotlin/coroutines/Continuation;
    :pswitch_5
    if-eqz v22, :cond_4

    .line 3260
    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3261
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3261
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3263
    :cond_4
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    instance-of v2, v2, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v11, v2, v3, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v3, v24

    .line 3264
    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v2, 0x0

    .line 3265
    .local v2, "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1$iv":I
    nop

    .line 3264
    .end local v2    # "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1$iv":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3252
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_6
    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3252
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3247
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_7
    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3248
    const/4 v2, 0x0

    .line 162
    .restart local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3248
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3211
    .end local v12    # "i$iv$iv":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    .end local v26    # "id$iv$iv":J
    .end local v28    # "sendersAndCloseStatusCur$iv$iv":J
    :goto_4
    move-object v2, v3

    move-object/from16 v12, v25

    goto/16 :goto_0

    .line 3284
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .end local v19    # "$i$f$sendImpl":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v12, "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_7

    .line 3199
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_8
    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual {v11}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3200
    :cond_7
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3200
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto :goto_5

    .line 3196
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_9
    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v3, p1

    move/from16 v4, p2

    :try_start_7
    invoke-static {v11, v2, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_5

    .line 3284
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    goto :goto_8

    .line 3193
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_a
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3193
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    goto :goto_5

    .line 3189
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_b
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3190
    const/4 v2, 0x0

    .line 162
    .restart local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3190
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    nop

    .line 3283
    :goto_5
    nop

    .line 167
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    nop

    .line 3186
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    nop

    .line 3290
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3183
    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_8

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_9

    return-object v0

    .line 3291
    :cond_9
    nop

    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 167
    return-object v0

    .line 3284
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 3281
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :goto_6
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "element":Ljava/lang/Object;
    .end local p4    # "s":J
    .end local p6    # "$completion":Lkotlin/coroutines/Continuation;
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3284
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "element":Ljava/lang/Object;
    .restart local p4    # "s":J
    .restart local p6    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :goto_7
    goto :goto_8

    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v11, "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v11

    move-object/from16 v25, v12

    .line 3287
    .end local v11    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :goto_8
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3288
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final synthetic setBufferEnd$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile:J

    return-void
.end method

.method private final synthetic setBufferEndSegment$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic setCloseHandler$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic setCompletedExpandBuffersAndPauseFlag$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile:J

    return-void
.end method

.method private final synthetic setReceiveSegment$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic setReceivers$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$volatile:J

    return-void
.end method

.method private final synthetic setSendSegment$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic setSendersAndCloseStatus$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$volatile:J

    return-void
.end method

.method private final synthetic set_closeCause$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final shouldSendSuspend(J)Z
    .locals 5
    .param p1, "curSendersAndCloseStatus"    # J

    .line 627
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 629
    :cond_0
    move-wide v0, p1

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3630
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 629
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "$this$tryResumeReceiver"    # Ljava/lang/Object;
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)Z"
        }
    .end annotation

    .line 655
    nop

    .line 656
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_0

    .line 657
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {v0, p0, p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 659
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/channels/ReceiveCatching;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 660
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    .line 661
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v1, v1, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v3, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_1
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_0

    .line 663
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    if-eqz v0, :cond_3

    .line 664
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 665
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->tryResumeHasNext(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 667
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_5

    .line 668
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 669
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v2, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_4
    invoke-static {v0, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 669
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected receiver type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z
    .locals 4
    .param p1, "$this$tryResumeSender"    # Ljava/lang/Object;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)Z"
        }
    .end annotation

    .line 1170
    nop

    .line 1171
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1173
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 1174
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v3, v2, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1176
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1177
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 1178
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object v0

    .line 1181
    .local v0, "trySelectResult":Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    sget-object v1, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 1183
    :cond_1
    sget-object v1, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    .end local v0    # "trySelectResult":Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;->getCont()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    .line 1187
    :goto_0
    return v0

    .line 1185
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected waiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final synthetic update$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private final updateCellExpandBuffer(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 3
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "b"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1268
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1269
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_1

    .line 1277
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    .line 1283
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1284
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1288
    const/4 v1, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1292
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1293
    nop

    .line 1284
    :goto_0
    return v1

    .line 1298
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellExpandBufferSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    return v1
.end method

.method private final updateCellExpandBufferSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "b"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1312
    nop

    :cond_0
    :goto_0
    nop

    .line 1314
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1315
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1317
    instance-of v1, v0, Lkotlinx/coroutines/Waiter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1325
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    .line 1336
    new-instance v1, Lkotlinx/coroutines/channels/WaiterEB;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/WaiterEB;-><init>(Lkotlinx/coroutines/Waiter;)V

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    return v3

    .line 1344
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1348
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1349
    move v2, v3

    goto :goto_1

    .line 1352
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1353
    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1354
    nop

    .line 1345
    :goto_1
    return v2

    .line 1360
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return v2

    .line 1362
    :cond_4
    if-nez v0, :cond_5

    .line 1366
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 1369
    :cond_5
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_6

    return v3

    .line 1371
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 1374
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    return v3

    .line 1378
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    :cond_a
    :goto_2
    return v3
.end method

.method private final updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1022
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1025
    if-nez v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 1030
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 4000
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 1030
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    nop

    .line 1031
    .local v1, "senders":J
    cmp-long v3, p3, v1

    if-ltz v3, :cond_2

    .line 1033
    if-nez p5, :cond_0

    .line 1036
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1039
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1042
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1043
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1048
    .end local v1    # "senders":J
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1051
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1054
    :cond_2
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceiveSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private final updateCellReceiveSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1069
    nop

    :cond_0
    nop

    .line 1071
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1072
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1074
    if-eqz v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 1108
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1111
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1114
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1117
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1119
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 1123
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1124
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1131
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1138
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    instance-of v1, v0, Lkotlinx/coroutines/channels/WaiterEB;

    .line 1142
    .local v1, "helpExpandBuffer":Z
    instance-of v2, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v2, v2, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_0

    :cond_6
    move-object v2, v0

    .line 1143
    .local v2, "sender":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1151
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1152
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1153
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 1159
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1160
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1161
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1162
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    .line 1143
    :goto_1
    return-object v3

    .line 1074
    .end local v1    # "helpExpandBuffer":Z
    .end local v2    # "sender":Ljava/lang/Object;
    :cond_9
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 1079
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 4001
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 1079
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    nop

    .line 1080
    .local v1, "senders":J
    cmp-long v3, p3, v1

    if-gez v3, :cond_a

    .line 1084
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v0, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1088
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1089
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1093
    :cond_a
    if-nez p5, :cond_b

    .line 1096
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1099
    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1103
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3
.end method

.method private final updateCellSend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 445
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->storeElement$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 446
    if-eqz p7, :cond_0

    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 448
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 451
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 455
    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 457
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v3, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 459
    return v1

    .line 466
    :cond_1
    if-nez p6, :cond_2

    .line 468
    const/4 v1, 0x3

    return v1

    .line 471
    :cond_2
    invoke-virtual {p1, p2, v3, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    return v1

    .line 476
    :cond_3
    instance-of v2, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_6

    .line 479
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 481
    invoke-direct {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 484
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 485
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 492
    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 494
    :cond_5
    const/4 v1, 0x5

    .line 481
    :goto_0
    return v1

    .line 498
    :cond_6
    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    return v1
.end method

.method private final updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 520
    nop

    :cond_0
    nop

    .line 522
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 523
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 525
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 529
    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez p7, :cond_1

    .line 531
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v5, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    return v3

    .line 540
    :cond_1
    nop

    .line 542
    if-eqz p7, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v5, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 544
    return v1

    .line 547
    :cond_2
    if-nez p6, :cond_3

    const/4 v1, 0x3

    return v1

    .line 549
    :cond_3
    invoke-virtual {p1, p2, v5, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    return v1

    .line 554
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 556
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    return v3

    .line 562
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    const/4 v5, 0x5

    if-ne v0, v4, :cond_6

    .line 564
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 565
    return v5

    .line 568
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_7

    .line 570
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 571
    return v5

    .line 574
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_8

    .line 578
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 579
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 580
    return v1

    .line 584
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3087
    const/4 v1, 0x0

    .line 584
    .local v1, "$i$a$-assert-BufferedChannel$updateCellSendSlow$1":I
    instance-of v4, v0, Lkotlinx/coroutines/Waiter;

    if-nez v4, :cond_a

    instance-of v4, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    :goto_0
    move v1, v3

    .end local v1    # "$i$a$-assert-BufferedChannel$updateCellSendSlow$1":I
    :goto_1
    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 587
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 591
    instance-of v1, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v1, v1, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_d
    move-object v1, v0

    .line 593
    .local v1, "receiver":Ljava/lang/Object;
    :goto_3
    invoke-direct {p0, v1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 595
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 596
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 597
    goto :goto_4

    .line 603
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v2, v4, :cond_f

    .line 604
    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 606
    :cond_f
    move v2, v5

    .line 593
    :goto_4
    return v2
.end method

.method private final updateReceiversCounterIfLower(J)V
    .locals 11
    .param p1, "value"    # J

    .line 2583
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    .local v8, "cur":J
    const/4 v10, 0x0

    .line 2585
    .local v10, "$i$a$-loop$atomicfu-BufferedChannel$updateReceiversCounterIfLower$1":I
    cmp-long v2, v8, p1

    if-ltz v2, :cond_0

    return-void

    .line 2586
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    move-object v3, p0

    move-wide v4, v8

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 2587
    :cond_1
    nop

    .end local v8    # "cur":J
    .end local v10    # "$i$a$-loop$atomicfu-BufferedChannel$updateReceiversCounterIfLower$1":I
    goto :goto_0
.end method

.method private final updateSendersCounterIfLower(J)V
    .locals 16
    .param p1, "value"    # J

    .line 2568
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_0
    move-object/from16 v8, p0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v9

    .local v9, "cur":J
    const/4 v11, 0x0

    .line 2570
    .local v11, "$i$a$-loop$atomicfu-BufferedChannel$updateSendersCounterIfLower$1":I
    move-wide v2, v9

    .local v2, "$this$sendersCounter$iv":J
    const/4 v4, 0x0

    .line 4224
    .local v4, "$i$f$getSendersCounter":I
    const-wide v5, 0xfffffffffffffffL

    and-long/2addr v2, v5

    .line 2570
    .end local v2    # "$this$sendersCounter$iv":J
    .end local v4    # "$i$f$getSendersCounter":I
    move-wide v12, v2

    .line 2571
    .local v12, "curCounter":J
    cmp-long v2, v12, p1

    if-ltz v2, :cond_0

    return-void

    .line 2572
    :cond_0
    move-wide v2, v9

    .local v2, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4225
    .local v4, "$i$f$getSendersCloseStatus":I
    const/16 v5, 0x3c

    shr-long v5, v2, v5

    long-to-int v2, v5

    .line 2572
    .end local v2    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    invoke-static {v12, v13, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v14

    .line 2573
    .local v14, "update":J
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    move-object/from16 v3, p0

    move-wide v4, v9

    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 2574
    :cond_1
    nop

    .end local v9    # "cur":J
    .end local v11    # "$i$a$-loop$atomicfu-BufferedChannel$updateSendersCounterIfLower$1":I
    .end local v12    # "curCounter":J
    .end local v14    # "update":J
    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 1793
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1788
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1796
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel was cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public final checkSegmentStructureInvariants()V
    .locals 12

    .line 2700
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2701
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2702
    .local v0, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2703
    nop

    .line 2702
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2701
    .end local v0    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2706
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v3, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_20

    .line 2711
    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2712
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4263
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 4264
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v9, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v10, 0x0

    .line 2712
    .local v10, "$i$a$-filter-BufferedChannel$checkSegmentStructureInvariants$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v11

    if-eq v9, v11, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v1

    .line 4264
    .end local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "$i$a$-filter-BufferedChannel$checkSegmentStructureInvariants$firstSegment$1":I
    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4265
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 4263
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 2713
    move-object v0, v4

    .local v0, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4266
    .local v3, "$i$f$minByOrThrow":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4267
    .local v4, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 4268
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4269
    .local v5, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    .line 4270
    :cond_7
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v6, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v7, 0x0

    .line 2713
    .local v7, "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    iget-wide v6, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4270
    .end local v6    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v7    # "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    nop

    .line 4272
    .local v6, "minValue$iv":J
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4273
    .local v8, "e$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .restart local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v10, 0x0

    .line 2713
    .local v10, "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    iget-wide v9, v9, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4273
    .end local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    nop

    .line 4274
    .local v9, "v$iv":J
    cmp-long v11, v6, v9

    if-lez v11, :cond_9

    .line 4275
    move-object v5, v8

    .line 4276
    move-wide v6, v9

    .line 4278
    .end local v8    # "e$iv":Ljava/lang/Object;
    .end local v9    # "v$iv":J
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 4279
    nop

    .line 2713
    .end local v0    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    .end local v5    # "minElem$iv":Ljava/lang/Object;
    .end local v6    # "minValue$iv":J
    :goto_5
    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2711
    move-object v0, v5

    .line 2714
    .local v0, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    if-eqz v3, :cond_1e

    .line 2720
    move-object v3, v0

    .line 2721
    .local v3, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_7
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 2723
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-ne v4, v3, :cond_b

    goto :goto_8

    :cond_b
    move v4, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v4, v2

    :goto_9
    if-eqz v4, :cond_1c

    .line 2729
    const/4 v4, 0x0

    .line 2730
    .local v4, "interruptedOrClosedCells":I
    const/4 v5, 0x0

    .local v5, "i":I
    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    :goto_a
    if-ge v5, v6, :cond_17

    .line 2731
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v7

    .line 2732
    .local v7, "state":Ljava/lang/Object;
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2733
    instance-of v8, v7, Lkotlinx/coroutines/Waiter;

    if-nez v8, :cond_16

    .line 2734
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v2

    goto :goto_b

    :cond_d
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_b
    if-eqz v8, :cond_e

    move v8, v2

    goto :goto_c

    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_c
    const-string v9, "Check failed."

    if-eqz v8, :cond_11

    .line 2739
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    move v8, v2

    goto :goto_d

    :cond_f
    move v8, v1

    :goto_d
    if-eqz v8, :cond_10

    .line 2740
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2739
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2742
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v2

    goto :goto_e

    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_e
    if-eqz v8, :cond_15

    .line 2745
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_13

    move v8, v2

    goto :goto_f

    :cond_13
    move v8, v1

    :goto_f
    if-eqz v8, :cond_14

    goto :goto_10

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected segment cell state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".\nChannel state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2730
    .end local v7    # "state":Ljava/lang/Object;
    :cond_16
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 2755
    .end local v5    # "i":I
    :cond_17
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-ne v4, v5, :cond_1b

    .line 2756
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_19

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_19

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_18

    goto :goto_11

    :cond_18
    move v5, v1

    goto :goto_12

    :cond_19
    :goto_11
    move v5, v2

    :goto_12
    if-eqz v5, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v1, 0x0

    .line 2757
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$5":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logically removed segment is reachable.\nChannel state: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2756
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$5":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2761
    :cond_1b
    :goto_13
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    .end local v4    # "interruptedOrClosedCells":I
    goto/16 :goto_7

    .line 2723
    :cond_1c
    const/4 v1, 0x0

    .line 2724
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$4":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The `segment.next.prev === segment` invariant is violated.\nChannel state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2725
    nop

    .line 2724
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2723
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$4":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2763
    :cond_1d
    return-void

    .line 2714
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_1e
    const/4 v1, 0x0

    .line 2715
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$3":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2716
    nop

    .line 2715
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2714
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$3":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4267
    .local v0, "$this$minBy$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$minByOrThrow":I
    .local v4, "iterator$iv":Ljava/util/Iterator;
    :cond_1f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2706
    .end local v0    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    :cond_20
    const/4 v0, 0x0

    .line 2707
    .local v0, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferEndSegment should not have lower id than receiveSegment.\nChannel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2708
    nop

    .line 2707
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2706
    .end local v0    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method protected closeOrCancelImpl(Ljava/lang/Throwable;Z)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "cancel"    # Z

    .line 1819
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markCancellationStarted()V

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->get_closeCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1822
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1824
    .local v0, "closedByThisOperation":Z
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markCancelled()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markClosed()V

    .line 1826
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 1829
    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 1830
    .local v2, "$i$a$-also-BufferedChannel$closeOrCancelImpl$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedIdempotent()V

    .line 1831
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->invokeCloseHandler()V

    .line 1832
    :cond_2
    nop

    .line 1829
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-BufferedChannel$closeOrCancelImpl$1":I
    return v0
.end method

.method protected final dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V
    .locals 12
    .param p1, "globalCellIndex"    # J

    .line 830
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3087
    const/4 v0, 0x0

    .line 830
    .local v0, "$i$a$-assert-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    move-result v0

    .end local v0    # "$i$a$-assert-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 833
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 834
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 837
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    .line 838
    .local v8, "r":J
    iget v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v1, v1

    add-long/2addr v1, v8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    return-void

    .line 841
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    const-wide/16 v3, 0x1

    add-long v6, v8, v3

    move-object v3, p0

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v10, v8, v1

    .line 844
    .local v10, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v8, v1

    long-to-int v1, v1

    .line 847
    .local v1, "i":I
    iget-wide v2, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    .line 849
    invoke-direct {p0, v10, v11, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_4

    .line 856
    goto :goto_1

    .line 849
    :cond_4
    move-object v0, v2

    .line 859
    :cond_5
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 860
    .local v2, "updCellResult":Ljava/lang/Object;
    nop

    .line 861
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 865
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    goto :goto_1

    .line 870
    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 872
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4, v5}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 3087
    .local v3, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    :cond_7
    const/4 v4, 0x0

    .line 872
    .local v4, "$i$a$-let-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$2":I
    throw v3
.end method

.method protected final getCloseCause()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->get_closeCause$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 1754
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 1508
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1509
    nop

    .line 1510
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1511
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1512
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1508
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1513
    return-object v0
.end method

.method public getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "TE;>;>;"
        }
    .end annotation

    .line 1517
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1518
    nop

    .line 1519
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1520
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1521
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1517
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1522
    return-object v0
.end method

.method public getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 1526
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1527
    nop

    .line 1528
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$1;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1529
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$2;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1530
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1526
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1531
    return-object v0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;>;"
        }
    .end annotation

    .line 1479
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause2Impl;

    .line 1480
    nop

    .line 1481
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onSend$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onSend$1;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1482
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onSend$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onSend$2;

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 1479
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/selects/SelectClause2Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lkotlinx/coroutines/selects/SelectClause2;

    .line 1483
    return-object v7
.end method

.method public final getReceiversCounter$kotlinx_coroutines_core()J
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getSendException()Ljava/lang/Throwable;
    .locals 2

    .line 1757
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final getSendersCounter$kotlinx_coroutines_core()J
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3088
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 70
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    return-wide v0
.end method

.method public final hasElements$kotlinx_coroutines_core()Z
    .locals 14

    .line 2278
    nop

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2280
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2282
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v7

    .line 2283
    .local v7, "r":J
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v9

    .line 2285
    .local v9, "s":J
    cmp-long v1, v9, v7

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    return v2

    .line 2289
    :cond_1
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v1

    div-long v11, v7, v3

    .line 2290
    .local v11, "id":J
    iget-wide v3, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v3, v11

    if-eqz v1, :cond_3

    .line 2292
    invoke-direct {p0, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2298
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v3, v11

    if-gez v1, :cond_0

    return v2

    .line 2292
    :cond_2
    move-object v0, v1

    .line 2300
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2302
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v7, v1

    long-to-int v13, v1

    .line 2303
    .local v13, "i":I
    invoke-direct {p0, v0, v13, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->isCellNonEmpty(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 2305
    const-wide/16 v2, 0x1

    add-long v5, v7, v2

    move-object v2, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1859
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseHandler$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    return-void

    .line 1857
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseHandler$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "cur":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1869
    .local v3, "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    nop

    .line 1870
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 1874
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseHandler$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-static {v4, p0, v5, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1875
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    return-void

    .line 1882
    :cond_1
    nop

    .end local v2    # "cur":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    goto :goto_0

    .line 1879
    .restart local v2    # "cur":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v2, v4, :cond_3

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Another handler was already registered and successfully invoked"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Another handler is already registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isClosedForReceive()Z
    .locals 2

    .line 2219
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive0(J)Z

    move-result v0

    return v0
.end method

.method public isClosedForSend()Z
    .locals 2

    .line 2212
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    return v0
.end method

.method protected isConflatedDropOldest()Z
    .locals 1

    .line 1936
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 2260
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2262
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2265
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1574
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->offer(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onClosedIdempotent()V
    .locals 0

    .line 1782
    return-void
.end method

.method protected onReceiveDequeued()V
    .locals 0

    .line 687
    return-void
.end method

.method protected onReceiveEnqueued()V
    .locals 0

    .line 681
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->poll(Lkotlinx/coroutines/channels/Channel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatching-JP2dKIU$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->receiveOrNull(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 21
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1488
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1487
    move-object/from16 v3, p2

    .line 4009
    .local v3, "element$iv":Ljava/lang/Object;
    nop

    .line 4010
    nop

    .line 4009
    const/4 v11, 0x0

    .local v11, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 4014
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 4015
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 4018
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    .line 4019
    .local v12, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v12

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v4, 0x0

    .line 4020
    .local v4, "$i$f$getSendersCounter":I
    const-wide v5, 0xfffffffffffffffL

    and-long/2addr v1, v5

    .line 4019
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v4    # "$i$f$getSendersCounter":I
    move-wide v14, v1

    .line 4021
    .local v14, "s$iv":J
    invoke-static {v8, v12, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v16

    .line 4023
    .local v16, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v14, v1

    .line 4024
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v4, v1

    .line 4027
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 4029
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4036
    if-eqz v16, :cond_0

    .line 4037
    const/4 v1, 0x0

    .line 1492
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 4037
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto/16 :goto_4

    .line 4039
    :cond_0
    goto :goto_0

    .line 4029
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 4027
    :cond_2
    move-object v5, v0

    .line 4045
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v18, v5

    move/from16 v17, v11

    move v11, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v11, "i$iv":I
    .local v17, "$i$f$sendImpl":I
    .local v18, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v14

    move-wide/from16 v19, v6

    .end local v6    # "id$iv":J
    .local v19, "id$iv":J
    move-object/from16 v6, p1

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, v18

    .line 4089
    .end local v11    # "i$iv":I
    .end local v12    # "sendersAndCloseStatusCur$iv":J
    .end local v14    # "s$iv":J
    .end local v16    # "closed$iv":Z
    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v19    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_5

    .line 4082
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "i$iv":I
    .restart local v12    # "sendersAndCloseStatusCur$iv":J
    .restart local v14    # "s$iv":J
    .restart local v16    # "closed$iv":Z
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4083
    move-object/from16 v1, v18

    goto :goto_5

    .line 4075
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4076
    :cond_3
    const/4 v0, 0x0

    .line 1492
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 4076
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto :goto_4

    .line 4088
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4089
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4063
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v16, :cond_4

    .line 4064
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 4065
    const/4 v0, 0x0

    .line 1492
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 4065
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto :goto_4

    .line 4067
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v1, v18

    .line 4068
    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v0, 0x0

    .line 1491
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$2":I
    nop

    .line 4068
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$2":I
    goto :goto_4

    .line 4056
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v0, 0x0

    .line 1490
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9, v2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 4056
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    goto :goto_4

    .line 4051
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4052
    const/4 v0, 0x0

    .line 1490
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9, v2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 4052
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    nop

    .line 1493
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v11    # "i$iv":I
    .end local v12    # "sendersAndCloseStatusCur$iv":J
    .end local v14    # "s$iv":J
    .end local v16    # "closed$iv":Z
    .end local v17    # "$i$f$sendImpl":I
    .end local v19    # "id$iv":J
    :goto_4
    return-void

    .line 4015
    .restart local v3    # "element$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$sendImpl":I
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v11, v17

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->send$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBroadcast$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendSuspend$kotlinx_coroutines_core()Z
    .locals 2

    .line 648
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->shouldSendSuspend(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 2595
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 2597
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4226
    .local v4, "$i$f$getSendersCloseStatus":I
    const/16 v5, 0x3c

    shr-long v5, v2, v5

    long-to-int v2, v5

    .line 2597
    .end local v2    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2599
    :pswitch_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2598
    :pswitch_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    const/4 v2, 0x3

    new-array v2, v2, [Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v2, v7

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2606
    nop

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 4227
    .local v4, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v2

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 4228
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v12, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v13, 0x0

    .line 2606
    .local v13, "$i$a$-filter-BufferedChannel$toString$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v14

    if-eq v12, v14, :cond_1

    move v12, v6

    goto :goto_2

    :cond_1
    move v12, v5

    .line 4228
    .end local v12    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v13    # "$i$a$-filter-BufferedChannel$toString$firstSegment$1":I
    :goto_2
    if-eqz v12, :cond_0

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4229
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 4227
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 2607
    move-object v2, v5

    .local v2, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 4230
    .local v4, "$i$f$minByOrThrow":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4231
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 4232
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4233
    .local v7, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 4234
    :cond_3
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v8, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v9, 0x0

    .line 2607
    .local v9, "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    iget-wide v8, v8, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4234
    .end local v8    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v9    # "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    nop

    .line 4236
    .local v8, "minValue$iv":J
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 4237
    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v11, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v12, 0x0

    .line 2607
    .local v12, "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    iget-wide v11, v11, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4237
    .end local v11    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    nop

    .line 4238
    .local v11, "v$iv":J
    cmp-long v13, v8, v11

    if-lez v13, :cond_4

    .line 4239
    move-object v7, v10

    .line 4240
    move-wide v8, v11

    .line 4242
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "v$iv":J
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 4243
    nop

    .line 2607
    .end local v2    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$minByOrThrow":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v7    # "minElem$iv":Ljava/lang/Object;
    .end local v8    # "minValue$iv":J
    :goto_4
    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2605
    move-object v10, v7

    .line 2608
    .local v10, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v11

    .line 2609
    .local v11, "r":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v13

    .line 2610
    .local v13, "s":J
    move-object v2, v10

    .line 2611
    .local v2, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    nop

    .line 2612
    const/4 v4, 0x0

    .local v4, "i":I
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    :goto_6
    if-ge v4, v5, :cond_19

    .line 2613
    iget-wide v7, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move-object v15, v10

    .end local v10    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v15, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 2614
    .local v7, "globalCellIndex":J
    cmp-long v9, v7, v13

    if-ltz v9, :cond_5

    cmp-long v9, v7, v11

    if-gez v9, :cond_1a

    .line 2615
    :cond_5
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v9

    .line 2616
    .local v9, "cellState":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v10

    .line 2617
    .local v10, "element":Ljava/lang/Object;
    nop

    .line 2618
    instance-of v6, v9, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v6, :cond_8

    .line 2619
    nop

    .line 2620
    cmp-long v6, v7, v11

    if-gez v6, :cond_6

    cmp-long v6, v7, v13

    if-ltz v6, :cond_6

    const-string/jumbo v6, "receive"

    goto/16 :goto_e

    .line 2621
    :cond_6
    cmp-long v6, v7, v13

    if-gez v6, :cond_7

    cmp-long v6, v7, v11

    if-ltz v6, :cond_7

    const-string/jumbo v6, "send"

    goto/16 :goto_e

    .line 2622
    :cond_7
    const-string v6, "cont"

    goto/16 :goto_e

    .line 2625
    :cond_8
    instance-of v6, v9, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v6, :cond_b

    .line 2626
    nop

    .line 2627
    cmp-long v6, v7, v11

    if-gez v6, :cond_9

    cmp-long v6, v7, v13

    if-ltz v6, :cond_9

    const-string/jumbo v6, "onReceive"

    goto/16 :goto_e

    .line 2628
    :cond_9
    cmp-long v6, v7, v13

    if-gez v6, :cond_a

    cmp-long v6, v7, v11

    if-ltz v6, :cond_a

    const-string/jumbo v6, "onSend"

    goto/16 :goto_e

    .line 2629
    :cond_a
    const-string/jumbo v6, "select"

    goto/16 :goto_e

    .line 2632
    :cond_b
    instance-of v6, v9, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v6, :cond_c

    const-string/jumbo v6, "receiveCatching"

    goto/16 :goto_e

    .line 2633
    :cond_c
    instance-of v6, v9, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v6, :cond_d

    const-string/jumbo v6, "sendBroadcast"

    goto/16 :goto_e

    .line 2634
    :cond_d
    instance-of v6, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EB("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    .line 2635
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_7
    if-eqz v3, :cond_10

    const-string/jumbo v6, "resuming_sender"

    goto :goto_e

    .line 2636
    :cond_10
    if-nez v9, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_a
    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_b
    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_c
    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_d
    if-nez v3, :cond_18

    .line 2637
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2617
    :goto_e
    move-object v3, v6

    .line 2639
    .local v3, "cellStateString":Ljava/lang/String;
    if-eqz v10, :cond_17

    .line 2640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "),"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 2642
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    .end local v3    # "cellStateString":Ljava/lang/String;
    .end local v7    # "globalCellIndex":J
    .end local v9    # "cellState":Ljava/lang/Object;
    .end local v10    # "element":Ljava/lang/Object;
    :cond_18
    :goto_f
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x2c

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v10, v15

    goto/16 :goto_6

    .end local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_19
    move-object v15, v10

    .line 2646
    .end local v4    # "i":I
    .end local v10    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v0, :cond_1c

    .line 2648
    :cond_1a
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "deleteCharAt(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2649
    :cond_1b
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2646
    :cond_1c
    const/16 v3, 0x2c

    const/4 v6, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v10, v15

    goto/16 :goto_5

    .line 4242
    .end local v11    # "r":J
    .end local v13    # "s":J
    .end local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "$this$minBy$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$minByOrThrow":I
    .restart local v5    # "iterator$iv":Ljava/util/Iterator;
    .local v7, "minElem$iv":Ljava/lang/Object;
    .restart local v8    # "minValue$iv":J
    :cond_1d
    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 4231
    .end local v7    # "minElem$iv":Ljava/lang/Object;
    .end local v8    # "minValue$iv":J
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toStringDebug$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 15

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2659
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",B\'="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",C="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4244
    .local v4, "$i$f$getSendersCloseStatus":I
    const/16 v5, 0x3c

    shr-long v6, v2, v5

    long-to-int v2, v6

    .line 2659
    .end local v2    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 2660
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    .local v3, "$this$sendersCloseStatus$iv":J
    const/4 v1, 0x0

    .line 4245
    .local v1, "$i$f$getSendersCloseStatus":I
    shr-long v5, v3, v5

    long-to-int v1, v5

    .line 2660
    .end local v1    # "$i$f$getSendersCloseStatus":I
    .end local v3    # "$this$sendersCloseStatus$iv":J
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2663
    :pswitch_0
    const-string v1, "CANCELLED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2662
    :pswitch_1
    const-string v1, "CLOSED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2661
    :pswitch_2
    const-string v1, "CANCELLATION_STARTED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",RCV_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",EB_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 2671
    nop

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4246
    .local v3, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v1

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 4247
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v11, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v12, 0x0

    .line 2671
    .local v12, "$i$a$-filter-BufferedChannel$toStringDebug$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v13

    if-eq v11, v13, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    move v11, v4

    .line 4247
    .end local v11    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$a$-filter-BufferedChannel$toStringDebug$firstSegment$1":I
    :goto_2
    if-eqz v11, :cond_1

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4248
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    move-object v5, v6

    check-cast v5, Ljava/util/List;

    .line 4246
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 2672
    move-object v1, v5

    .local v1, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4249
    .local v3, "$i$f$minByOrThrow":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4250
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4251
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4252
    .local v6, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 4253
    :cond_4
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v7, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v8, 0x0

    .line 2672
    .local v8, "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    iget-wide v7, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4253
    .end local v7    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    nop

    .line 4255
    .local v7, "minValue$iv":J
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 4256
    .local v9, "e$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v10, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v11, 0x0

    .line 2672
    .local v11, "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    iget-wide v10, v10, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4256
    .end local v10    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    nop

    .line 4257
    .local v10, "v$iv":J
    cmp-long v12, v7, v10

    if-lez v12, :cond_6

    .line 4258
    move-object v6, v9

    .line 4259
    move-wide v7, v10

    .line 4261
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "v$iv":J
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 4262
    nop

    .line 2672
    .end local v1    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":J
    :goto_3
    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2670
    move-object v9, v6

    .line 2673
    .local v9, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v1, 0x0

    .local v1, "segment":Ljava/lang/Object;
    move-object v1, v9

    .line 2674
    :goto_4
    nop

    .line 2675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "*"

    goto :goto_5

    :cond_7
    const-string v5, ""

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",prev="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    move-object v5, v6

    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_e

    move v7, v5

    .local v7, "i":I
    const/4 v8, 0x0

    .line 2677
    .local v8, "$i$a$-repeat-BufferedChannel$toStringDebug$1":I
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v10

    .line 2678
    .local v10, "cellState":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v11

    .line 2679
    .local v11, "element":Ljava/lang/Object;
    nop

    .line 2680
    instance-of v12, v10, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v12, :cond_9

    const-string v12, "cont"

    goto :goto_8

    .line 2681
    :cond_9
    instance-of v12, v10, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v12, :cond_a

    const-string/jumbo v12, "select"

    goto :goto_8

    .line 2682
    :cond_a
    instance-of v12, v10, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v12, :cond_b

    const-string/jumbo v12, "receiveCatching"

    goto :goto_8

    .line 2683
    :cond_b
    instance-of v12, v10, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v12, :cond_c

    const-string/jumbo v12, "send(broadcast)"

    goto :goto_8

    .line 2684
    :cond_c
    instance-of v12, v10, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EB("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 2685
    :cond_d
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2679
    :goto_8
    nop

    .line 2687
    .local v12, "cellStateString":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x5b

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "),"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    nop

    .line 2676
    .end local v7    # "i":I
    .end local v8    # "$i$a$-repeat-BufferedChannel$toStringDebug$1":I
    .end local v10    # "cellState":Ljava/lang/Object;
    .end local v11    # "element":Ljava/lang/Object;
    .end local v12    # "cellStateString":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2689
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "next="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    if-eqz v5, :cond_f

    invoke-static {v5}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v3, :cond_10

    .line 2694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2691
    :cond_10
    move-object v1, v3

    goto/16 :goto_4

    .line 4250
    .end local v9    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v1, "$this$minBy$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$minByOrThrow":I
    .restart local v5    # "iterator$iv":Ljava/util/Iterator;
    :cond_11
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 21

    move-object/from16 v6, p0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 787
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    .local v7, "r":J
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 788
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v9

    .line 790
    .local v9, "sendersAndCloseStatusCur":J
    invoke-direct {v6, v9, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 794
    :cond_0
    move-wide v0, v9

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3893
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 794
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    move-wide v11, v0

    .line 795
    .local v11, "s":J
    cmp-long v0, v7, v11

    if-ltz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 806
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .line 804
    move-object v13, v0

    .line 3894
    .local v13, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3895
    nop

    .line 3894
    const/4 v14, 0x0

    .local v14, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3899
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3900
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3903
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 819
    .local v1, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$3":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3903
    .end local v1    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$3":I
    move-wide/from16 v17, v7

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3906
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v15

    .line 3908
    .local v15, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v15, v1

    .line 3909
    .local v3, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v15, v1

    long-to-int v5, v1

    .line 3912
    .local v5, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 3914
    invoke-static {v6, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3918
    goto :goto_0

    .line 3914
    :cond_3
    move-object v0, v1

    move-object v2, v0

    goto :goto_1

    .line 3912
    :cond_4
    move-object v2, v0

    .line 3921
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v17, v7

    move-object v7, v2

    .end local v2    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v7, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v17, "r":J
    move v2, v5

    move-wide/from16 v19, v3

    .end local v3    # "id$iv":J
    .local v19, "id$iv":J
    move-wide v3, v15

    move v8, v5

    .end local v5    # "i$iv":I
    .local v8, "i$iv":I
    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3922
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3923
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3926
    instance-of v1, v13, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_5

    move-object v1, v13

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v6, v1, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3927
    :cond_6
    move-object v1, v7

    .local v1, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v2, v15

    .local v2, "globalIndex":J
    const/4 v4, 0x0

    .line 814
    .local v4, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$2":I
    invoke-virtual {v6, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    .line 815
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 816
    sget-object v5, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v1

    .line 3927
    .end local v1    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "globalIndex":J
    .end local v4    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$2":I
    goto :goto_3

    .line 3929
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 3936
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v15, v1

    if-gez v1, :cond_8

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3937
    :cond_8
    move-object v0, v7

    move-wide/from16 v7, v17

    goto/16 :goto_0

    .line 3939
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 3944
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3946
    move-object v1, v0

    .local v1, "element":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 808
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$1":I
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 3946
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$1":I
    :goto_3
    nop

    .line 3922
    nop

    .line 804
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v7    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "i$iv":I
    .end local v13    # "waiter$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$receiveImpl":I
    .end local v15    # "r$iv":J
    .end local v19    # "id$iv":J
    :goto_4
    return-object v1

    .line 3942
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v7    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "i$iv":I
    .restart local v13    # "waiter$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$receiveImpl":I
    .restart local v15    # "r$iv":J
    .restart local v19    # "id$iv":J
    :cond_a
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3943
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    move-object/from16 v8, p0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->shouldSendSuspend(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .line 194
    move-object v9, v0

    .line 3294
    .local v9, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3295
    nop

    .line 3294
    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3299
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3300
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3303
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 3304
    .local v11, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v11

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3305
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3304
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v13, v1

    .line 3306
    .local v13, "s$iv":J
    invoke-static {v8, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 3308
    .local v15, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v13, v1

    .line 3309
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v13, v1

    long-to-int v4, v1

    .line 3312
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 3314
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3321
    if-eqz v15, :cond_1

    .line 3322
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3322
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto/16 :goto_4

    .line 3324
    :cond_1
    goto :goto_0

    .line 3314
    :cond_2
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3312
    :cond_3
    move-object v5, v0

    .line 3330
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move/from16 v16, v10

    move v10, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v16, "$i$f$sendImpl":I
    .local v17, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "id$iv":J
    .local v18, "id$iv":J
    move-object v6, v9

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, v17

    .line 3374
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_5

    .line 3367
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v11    # "sendersAndCloseStatusCur$iv":J
    .restart local v13    # "s$iv":J
    .restart local v15    # "closed$iv":Z
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3368
    move-object/from16 v1, v17

    goto/16 :goto_5

    .line 3360
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_4

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3361
    :cond_4
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3361
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto :goto_4

    .line 3373
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3374
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3348
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v15, :cond_5

    .line 3349
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3350
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3350
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto :goto_4

    .line 3352
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_7
    move-object/from16 v1, v17

    .line 3353
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    move-object v0, v1

    .local v0, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$a$-sendImpl$default-BufferedChannel$trySend$2":I
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 206
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    .line 3353
    .end local v0    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-sendImpl$default-BufferedChannel$trySend$2":I
    move-object v1, v0

    goto :goto_4

    .line 3341
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3341
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    move-object v1, v0

    goto :goto_4

    .line 3336
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3337
    const/4 v0, 0x0

    .line 200
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3337
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    move-object v1, v0

    .line 194
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v9    # "waiter$iv":Ljava/lang/Object;
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v16    # "$i$f$sendImpl":I
    .end local v18    # "id$iv":J
    :goto_4
    return-object v1

    .line 3300
    .restart local v9    # "waiter$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$sendImpl":I
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v10, v16

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final trySendDropOldest-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 361
    move-object/from16 v8, p0

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 356
    move-object v9, v0

    .line 3468
    .local v9, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3469
    nop

    .line 3468
    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3473
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3474
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3477
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 3478
    .local v11, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v11

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3479
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3478
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v13, v1

    .line 3480
    .local v13, "s$iv":J
    invoke-static {v8, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 3482
    .local v15, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v13, v1

    .line 3483
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v13, v1

    long-to-int v4, v1

    .line 3486
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 3488
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3495
    if-eqz v15, :cond_0

    .line 3496
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3498
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    :cond_0
    goto :goto_0

    .line 3488
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3486
    :cond_2
    move-object v5, v0

    .line 3504
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move/from16 v16, v10

    move v10, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v16, "$i$f$sendImpl":I
    .local v17, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "id$iv":J
    .local v18, "id$iv":J
    move-object v6, v9

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, v17

    .line 3548
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_6

    .line 3541
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v11    # "sendersAndCloseStatusCur$iv":J
    .restart local v13    # "s$iv":J
    .restart local v15    # "closed$iv":Z
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3542
    move-object/from16 v1, v17

    goto :goto_6

    .line 3534
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3535
    :cond_3
    const/4 v0, 0x0

    .line 373
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    :goto_2
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 3547
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3548
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3522
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v15, :cond_4

    .line 3523
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3524
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    goto :goto_2

    .line 3526
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$3":I
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_4

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v1, v17

    .line 3527
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_4
    move-object v0, v1

    .local v0, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v2, v10

    .local v2, "i":I
    const/4 v3, 0x0

    .line 369
    .local v3, "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$2":I
    iget-wide v4, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 370
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 3515
    .end local v0    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "i":I
    .end local v3    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$2":I
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v0, 0x0

    .line 364
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$1":I
    :goto_5
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3510
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$1":I
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3511
    const/4 v0, 0x0

    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$1":I
    goto :goto_5

    .line 3474
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySendDropOldest$1":I
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v18    # "id$iv":J
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_6
    move-object v0, v1

    move/from16 v10, v16

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final waitExpandBufferCompletion$kotlinx_coroutines_core(J)V
    .locals 23
    .param p1, "globalIndex"    # J

    .line 1416
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1420
    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 1425
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I

    move-result v0

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v1, v0, :cond_2

    move v2, v1

    .local v2, "it":I
    const/4 v3, 0x0

    .line 1427
    .local v3, "$i$a$-repeat-BufferedChannel$waitExpandBufferCompletion$1":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v4

    .local v4, "b":J
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v10

    .line 1429
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "$this$ebCompletedCounter$iv":J
    const/4 v12, 0x0

    .line 4004
    .local v12, "$i$f$getEbCompletedCounter":I
    and-long/2addr v8, v10

    .line 1429
    .end local v10    # "$this$ebCompletedCounter$iv":J
    .end local v12    # "$i$f$getEbCompletedCounter":I
    nop

    .line 1435
    .local v8, "ebCompleted":J
    cmp-long v10, v4, v8

    if-nez v10, :cond_1

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    return-void

    .line 1436
    :cond_1
    nop

    .line 1425
    .end local v2    # "it":I
    .end local v3    # "$i$a$-repeat-BufferedChannel$waitExpandBufferCompletion$1":I
    .end local v4    # "b":J
    .end local v8    # "ebCompleted":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v10

    .local v10, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_1
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "it":J
    const/4 v4, 0x0

    .line 1439
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$2":I
    move-wide v12, v0

    .local v12, "$this$ebCompletedCounter$iv":J
    const/4 v5, 0x0

    .line 4005
    .local v5, "$i$f$getEbCompletedCounter":I
    and-long/2addr v12, v8

    .line 1439
    .end local v5    # "$i$f$getEbCompletedCounter":I
    .end local v12    # "$this$ebCompletedCounter$iv":J
    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v4

    .end local v0    # "it":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$2":I
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1442
    .end local v10    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_2
    nop

    .line 1444
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v10

    .local v10, "b":J
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 1447
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v12

    .line 1448
    .local v12, "ebCompletedAndBit":J
    move-wide v0, v12

    .local v0, "$this$ebCompletedCounter$iv":J
    const/4 v2, 0x0

    .line 4006
    .local v2, "$i$f$getEbCompletedCounter":I
    and-long/2addr v0, v8

    .line 1448
    .end local v0    # "$this$ebCompletedCounter$iv":J
    .end local v2    # "$i$f$getEbCompletedCounter":I
    move-wide v4, v0

    .line 1449
    .local v4, "ebCompleted":J
    move-wide v0, v12

    .local v0, "$this$ebPauseExpandBuffers$iv":J
    const/4 v2, 0x0

    .line 4007
    .local v2, "$i$f$getEbPauseExpandBuffers":I
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    and-long/2addr v15, v0

    const-wide/16 v17, 0x0

    cmp-long v3, v15, v17

    if-eqz v3, :cond_3

    move v0, v14

    goto :goto_3

    :cond_3
    move v0, v7

    .line 1449
    .end local v0    # "$this$ebPauseExpandBuffers$iv":J
    .end local v2    # "$i$f$getEbPauseExpandBuffers":I
    :goto_3
    move v15, v0

    .line 1453
    .local v15, "pauseExpandBuffers":Z
    cmp-long v0, v10, v4

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-nez v0, :cond_5

    .line 1413
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v14

    .local v14, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v16, p0

    .local v16, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :goto_4
    invoke-virtual {v14, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "it":J
    const/16 v17, 0x0

    .line 1456
    .local v17, "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$3":I
    move-wide/from16 v18, v0

    .local v18, "$this$ebCompletedCounter$iv":J
    const/16 v20, 0x0

    .line 4008
    .local v20, "$i$f$getEbCompletedCounter":I
    move-wide/from16 v21, v0

    .end local v0    # "it":J
    .local v21, "it":J
    and-long v0, v18, v8

    .line 1456
    .end local v18    # "$this$ebCompletedCounter$iv":J
    .end local v20    # "$i$f$getEbCompletedCounter":I
    invoke-static {v0, v1, v7}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v17

    .end local v17    # "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$3":I
    .end local v21    # "it":J
    move-object v0, v14

    move-object/from16 v1, p0

    move-wide v7, v4

    .end local v4    # "ebCompleted":J
    .local v7, "ebCompleted":J
    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1458
    .end local v14    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    return-void

    .line 1456
    .restart local v14    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_4
    move-wide v4, v7

    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_4

    .line 1453
    .end local v7    # "ebCompleted":J
    .end local v14    # "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v4    # "ebCompleted":J
    :cond_5
    move-wide v7, v4

    .line 1463
    .end local v4    # "ebCompleted":J
    .restart local v7    # "ebCompleted":J
    if-nez v15, :cond_6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->getCompletedExpandBuffersAndPauseFlag$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 1464
    nop

    .line 1465
    nop

    .line 1466
    invoke-static {v7, v8, v14}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_2

    .line 1463
    :cond_6
    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_2

    .line 1439
    .end local v7    # "ebCompleted":J
    .end local v12    # "ebCompletedAndBit":J
    .end local v15    # "pauseExpandBuffers":Z
    .local v10, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_7
    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto/16 :goto_1
.end method
