.class final Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedPreferencesMigration.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->getMigrationFunction()Lkotlin/jvm/functions/Function3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/datastore/preferences/core/Preferences;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferencesMigration.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,157:1\n1549#2:158\n1620#2,3:159\n515#3:162\n500#3,6:163\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1\n*L\n108#1:158\n108#1:159,3\n111#1:162\n111#1:163,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/datastore/preferences/core/Preferences;",
        "sharedPrefs",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "currentData"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1"
    f = "SharedPreferencesMigration.android.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/datastore/migrations/SharedPreferencesView;Landroidx/datastore/preferences/core/Preferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/migrations/SharedPreferencesView;",
            "Landroidx/datastore/preferences/core/Preferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;

    invoke-direct {v0, p3}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/datastore/migrations/SharedPreferencesView;

    check-cast p2, Landroidx/datastore/preferences/core/Preferences;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->invoke(Landroidx/datastore/migrations/SharedPreferencesView;Landroidx/datastore/preferences/core/Preferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 105
    iget v0, p0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/migrations/SharedPreferencesView;

    .local v1, "sharedPrefs":Landroidx/datastore/migrations/SharedPreferencesView;
    iget-object v2, v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/preferences/core/Preferences;

    .line 108
    .local v2, "currentData":Landroidx/datastore/preferences/core/Preferences;
    invoke-virtual {v2}, Landroidx/datastore/preferences/core/Preferences;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 158
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 159
    .local v6, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Landroidx/datastore/preferences/core/Preferences$Key;

    .local v8, "it":Landroidx/datastore/preferences/core/Preferences$Key;
    const/4 v9, 0x0

    .line 108
    .local v9, "$i$a$-map-SharedPreferencesMigrationKt$getMigrationFunction$1$currentKeys$1":I
    invoke-virtual {v8}, Landroidx/datastore/preferences/core/Preferences$Key;->getName()Ljava/lang/String;

    move-result-object v8

    .line 160
    .end local v8    # "it":Landroidx/datastore/preferences/core/Preferences$Key;
    .end local v9    # "$i$a$-map-SharedPreferencesMigrationKt$getMigrationFunction$1$currentKeys$1":I
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v3    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapTo":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 158
    nop

    .line 108
    .end local v4    # "$i$f$map":I
    nop

    .line 111
    .local v3, "currentKeys":Ljava/util/List;
    invoke-virtual {v1}, Landroidx/datastore/migrations/SharedPreferencesView;->getAll()Ljava/util/Map;

    move-result-object v1

    .local v1, "$this$filter$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 162
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .local v1, "$this$filterTo$iv$iv":Ljava/util/Map;
    .local v5, "destination$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 163
    .local v6, "$i$f$filterTo":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "$this$filterTo$iv$iv":Ljava/util/Map;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$a$-filter-SharedPreferencesMigrationKt$getMigrationFunction$1$filteredSharedPreferences$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    .end local v9    # "key":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 164
    .end local v8    # "$i$a$-filter-SharedPreferencesMigrationKt$getMigrationFunction$1$filteredSharedPreferences$1":I
    :goto_2
    if-eqz v10, :cond_1

    .line 165
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    .end local v3    # "currentKeys":Ljava/util/List;
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_3
    nop

    .line 162
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$filterTo":I
    nop

    .line 111
    .end local v4    # "$i$f$filter":I
    nop

    .line 110
    move-object v1, v5

    .line 113
    .local v1, "filteredSharedPreferences":Ljava/util/Map;
    invoke-virtual {v2}, Landroidx/datastore/preferences/core/Preferences;->toMutablePreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    move-result-object v2

    .line 114
    .local v2, "mutablePreferences":Landroidx/datastore/preferences/core/MutablePreferences;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "filteredSharedPreferences":Ljava/util/Map;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 115
    .local v3, "value":Ljava/lang/Object;
    nop

    .line 116
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 117
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 118
    .end local v4    # "key":Ljava/lang/String;
    nop

    .line 116
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 119
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_5
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 120
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->floatKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 121
    .end local v4    # "key":Ljava/lang/String;
    nop

    .line 119
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 122
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_6
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 123
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->intKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 124
    .end local v4    # "key":Ljava/lang/String;
    nop

    .line 122
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 125
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_7
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_8

    .line 126
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 127
    .end local v4    # "key":Ljava/lang/String;
    nop

    .line 125
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 128
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_8
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 129
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 130
    .end local v4    # "key":Ljava/lang/String;
    nop

    .line 128
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 131
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_9
    instance-of v5, v3, Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 133
    nop

    .line 134
    invoke-static {v4}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringSetKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    .line 135
    .end local v4    # "key":Ljava/lang/String;
    const-string/jumbo v5, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Set;

    .line 133
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v4, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 140
    :cond_a
    invoke-virtual {v2}, Landroidx/datastore/preferences/core/MutablePreferences;->toPreferences()Landroidx/datastore/preferences/core/Preferences;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
