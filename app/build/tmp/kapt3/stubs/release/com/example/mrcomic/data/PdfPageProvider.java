package com.example.mrcomic.data;

@kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \f2\u00020\u0001:\u0001\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"}, d2 = {"Lcom/example/mrcomic/data/PdfPageProvider;", "Lcom/example/mrcomic/data/PageProvider;", "pdfRenderer", "Landroid/graphics/pdf/PdfRenderer;", "(Landroid/graphics/pdf/PdfRenderer;)V", "pageCount", "", "getPageCount", "()I", "getPage", "Landroid/graphics/Bitmap;", "index", "Companion", "app_release"})
public final class PdfPageProvider implements com.example.mrcomic.data.PageProvider {
    @org.jetbrains.annotations.NotNull()
    private final android.graphics.pdf.PdfRenderer pdfRenderer = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "PdfPageProvider";
    @org.jetbrains.annotations.NotNull()
    public static final com.example.mrcomic.data.PdfPageProvider.Companion Companion = null;
    
    public PdfPageProvider(@org.jetbrains.annotations.NotNull()
    android.graphics.pdf.PdfRenderer pdfRenderer) {
        super();
    }
    
    @java.lang.Override()
    public int getPageCount() {
        return 0;
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.Nullable()
    public android.graphics.Bitmap getPage(int index) {
        return null;
    }
    
    @kotlin.Metadata(mv = {1, 9, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"}, d2 = {"Lcom/example/mrcomic/data/PdfPageProvider$Companion;", "", "()V", "TAG", "", "app_release"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}