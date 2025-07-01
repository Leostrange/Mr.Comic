package com.example.feature.reader.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\'J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0002\u0010\b\u00a8\u0006\t"}, d2 = {"Lcom/example/feature/reader/data/ReaderStateDao;", "", "getState", "Lkotlinx/coroutines/flow/Flow;", "Lcom/example/feature/reader/data/ReaderStateEntity;", "setState", "", "state", "(Lcom/example/feature/reader/data/ReaderStateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "feature-reader_release"})
@androidx.room.Dao()
public abstract interface ReaderStateDao {
    
    @androidx.room.Query(value = "SELECT * FROM reader_state WHERE id = 0")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<com.example.feature.reader.data.ReaderStateEntity> getState();
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object setState(@org.jetbrains.annotations.NotNull()
    com.example.feature.reader.data.ReaderStateEntity state, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
}