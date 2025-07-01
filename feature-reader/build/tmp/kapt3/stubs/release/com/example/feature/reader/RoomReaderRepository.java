package com.example.feature.reader;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"}, d2 = {"Lcom/example/feature/reader/RoomReaderRepository;", "Lcom/example/feature/reader/ReaderRepository;", "dao", "Lcom/example/feature/reader/data/ReaderStateDao;", "(Lcom/example/feature/reader/data/ReaderStateDao;)V", "getCurrentComic", "", "feature-reader_release"})
public final class RoomReaderRepository implements com.example.feature.reader.ReaderRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.example.feature.reader.data.ReaderStateDao dao = null;
    
    @javax.inject.Inject()
    public RoomReaderRepository(@org.jetbrains.annotations.NotNull()
    com.example.feature.reader.data.ReaderStateDao dao) {
        super();
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public java.lang.String getCurrentComic() {
        return null;
    }
}