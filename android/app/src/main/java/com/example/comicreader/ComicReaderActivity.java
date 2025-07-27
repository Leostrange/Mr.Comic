package com.example.comicreader;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View; // Added import
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ProgressBar;

import androidx.appcompat.app.AppCompatActivity;

import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;
import com.github.barteksc.pdfviewer.listener.OnErrorListener;
import com.github.barteksc.pdfviewer.listener.OnPageChangeListener;

import android.net.Uri;
import java.io.File; // Added import
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


public class ComicReaderActivity extends AppCompatActivity {

    public static final String EXTRA_FILE_PATH = "com.example.comicreader.EXTRA_FILE_PATH";
    public static final String EXTRA_COMIC_TITLE = "com.example.comicreader.EXTRA_COMIC_TITLE";

    private ImageView pageImageView;
    private com.github.barteksc.pdfviewer.PDFView pdfView;
    private Button prevPageButton, nextPageButton;
    private TextView pageInfoTextViewReader;
    private ProgressBar pageLoadingProgressBar; // Added ProgressBar field

    private String comicFilePath;
    private Uri comicFileUri;
    private File localComicFile;
    private String comicTitle;
    private ComicUtils comicUtils;
    private ProgressManager.ComicProgressEntry currentProgressEntry;
    private int totalPages = 0; // Будет загружено из ComicUtils или ProgressManager
    private int currentPage = 1;  // Начинаем с первой страницы

    // Для загрузки страниц в фоновом потоке
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_comic_reader);

        pageImageView = findViewById(R.id.pageImageView);
        pdfView = findViewById(R.id.pdfView);
        pageLoadingProgressBar = findViewById(R.id.pageLoadingProgressBar); // Initialize ProgressBar
        prevPageButton = findViewById(R.id.prevPageButton);
        nextPageButton = findViewById(R.id.nextPageButton);
        pageInfoTextViewReader = findViewById(R.id.pageInfoTextViewReader);

        comicUtils = new ComicUtils();

        Intent intent = getIntent();
        if (intent != null && intent.hasExtra(EXTRA_FILE_PATH)) {
            comicFilePath = intent.getStringExtra(EXTRA_FILE_PATH);
            comicFileUri = Uri.parse(comicFilePath);
            comicTitle = intent.getStringExtra(EXTRA_COMIC_TITLE); // Получаем название
            if (comicTitle != null) {
                setTitle(comicTitle); // Устанавливаем заголовок Activity
            }
        } else {
            Toast.makeText(this, "Error: Comic file path not provided.", Toast.LENGTH_LONG).show();
            finish(); // Закрыть Activity, если путь не передан
            return;
        }

        loadInitialState();

        prevPageButton.setOnClickListener(v -> showPreviousPage());
        nextPageButton.setOnClickListener(v -> showNextPage());
    }

    private void loadInitialState() {
        // 1. Загрузить метаданные (общее количество страниц)
        // Это может быть сделано асинхронно, если extractComicMetadata работает долго
        executorService.execute(() -> {
            try {
                String name = "tempComic";
                try {
                    name = androidx.documentfile.provider.DocumentFile.fromSingleUri(this, comicFileUri).getName();
                } catch (Exception ignored) {}
                String extension = "";
                int idx = name.lastIndexOf('.');
                if (idx != -1) extension = name.substring(idx);
                localComicFile = File.createTempFile("reader_", extension, getCacheDir());
                try (InputStream in = getContentResolver().openInputStream(comicFileUri);
                     FileOutputStream out = new FileOutputStream(localComicFile)) {
                    byte[] buf = new byte[8192];
                    int len;
                    while ((len = in.read(buf)) != -1) {
                        out.write(buf, 0, len);
                    }
                }
            } catch (Exception e) {
                Log.e("ComicReaderActivity", "Failed to copy comic", e);
                runOnUiThread(() -> {
                    Toast.makeText(this, "Error opening comic", Toast.LENGTH_LONG).show();
                    finish();
                });
                return;
            }

            ComicUtils.ComicMetadata metadata = comicUtils.extractComicMetadata(localComicFile.getAbsolutePath());
            totalPages = metadata.getPageCount();

            // 2. Загрузить прогресс (текущую страницу)
            Map<String, ProgressManager.ComicProgressEntry> progressMap = ProgressManager.loadProgress();
            currentProgressEntry = progressMap.get(comicFilePath);

            if (currentProgressEntry != null) {
                currentPage = currentProgressEntry.getCurrentPage();
                // Убедимся, что текущая страница в допустимых пределах
                if (totalPages > 0 && currentPage > totalPages) {
                    currentPage = totalPages;
                }
                if (currentPage < 1) {
                    currentPage = 1;
                }
            } else {
                currentPage = 1; // Начать с первой страницы, если нет сохраненного прогресса
                // Создадим новую запись о прогрессе, если ее не было
                currentProgressEntry = new ProgressManager.ComicProgressEntry(currentPage, 0.0);
                // The following line attempts to modify a final field if ComicProgressEntry.progress is final
                // and setProgress is not provided. This was handled differently in Turn 29.
                // For now, adhering to the provided code for this turn.
                if (totalPages > 0) { // Рассчитать начальный прогресс, если есть страницы
                   // currentProgressEntry.setProgress((double)currentPage / totalPages); // This would require setProgress or non-final field
                   // Re-creating the object as a workaround if fields are final:
                   double initialProgressCalc = (totalPages > 0 && currentPage > 0) ? Math.min(1.0, (double)currentPage / totalPages) : 0.0;
                   currentProgressEntry = new ProgressManager.ComicProgressEntry(currentPage, initialProgressCalc);
                }
            }

            runOnUiThread(() -> {
                String lowerPath = localComicFile.getName().toLowerCase();
                if (lowerPath.endsWith(".pdf")) {
                    pageImageView.setVisibility(View.GONE);
                    pdfView.setVisibility(View.VISIBLE);
                    prevPageButton.setVisibility(View.GONE);
                    nextPageButton.setVisibility(View.GONE);
                    pageInfoTextViewReader.setVisibility(View.VISIBLE);
                    pageLoadingProgressBar.setVisibility(View.GONE); // No separate progress for PDF pages for now

                    File pdfFile = localComicFile;
                    if (pdfFile.exists()) {
                        int initialPdfPage = Math.max(0, currentPage - 1);
                        pdfView.fromFile(pdfFile)
                            .defaultPage(initialPdfPage)
                            .onPageChange(this::onPdfPageChanged)
                            .onLoad(this::onPdfLoadComplete)
                            .onError(this::onPdfError)
                            .load();
                    } else {
                        Toast.makeText(this, "PDF file not found", Toast.LENGTH_LONG).show();
                        onPdfError(new Throwable("PDF file not found at specified path."));
                    }
                } else if (lowerPath.endsWith(".cbz") || lowerPath.endsWith(".cbr")) {
                    pdfView.setVisibility(View.GONE);
                    pageImageView.setVisibility(View.VISIBLE);
                    prevPageButton.setVisibility(View.VISIBLE);
                    nextPageButton.setVisibility(View.VISIBLE);
                    pageInfoTextViewReader.setVisibility(View.VISIBLE);
                    // pageLoadingProgressBar will be managed by loadAndDisplayPage
                    loadAndDisplayPage(currentPage);
                } else {
                    // Unsupported format
                    pageLoadingProgressBar.setVisibility(View.GONE);
                    Toast.makeText(this, "Unsupported file format: " + comicFilePath, Toast.LENGTH_LONG).show();
                    finish();
                }
            });
        });
    }

    private void loadAndDisplayPage(int pageNumber) {
        if (comicFilePath == null || localComicFile == null) {
            Log.e("ComicReaderActivity", "Cannot load page, file path is null.");
            return;
        }
        // If it's a PDF, PDFView handles it, this method should not be called.
        if (localComicFile.getName().toLowerCase().endsWith(".pdf")){
             Log.w("ComicReaderActivity", "loadAndDisplayPage called for PDF, should be handled by PDFView. Path: " + comicFilePath);
             return;
        }

        // Handling for CBZ/CBR files
        // Ensure pageNumber is valid if totalPages is known and positive
        if (totalPages > 0 && (pageNumber < 1 || pageNumber > totalPages)) {
             Log.w("ComicReaderActivity", "Attempted to load invalid page number: " + pageNumber + " for totalPages: " + totalPages);
             // Optionally, clamp pageNumber or show a Toast
             // For now, we'll let it try and potentially fail if getPageAtIndex handles out of bounds
        }
        // If totalPages is 0 (e.g. for CBR if metadata failed or for a new comic), still attempt to load page 1.
        if (totalPages == 0 && pageNumber > 1) {
            Log.w("ComicReaderActivity", "Attempted to load page " + pageNumber + " but total pages is 0 or unknown. Only page 1 allowed.");
            // Optionally, show a toast or prevent loading.
            // For now, if it's not page 1, and totalPages is 0, we don't proceed.
            // However, the getPageAtIndex/Cbr should handle empty or out-of-bounds requests.
        }

        pageLoadingProgressBar.setVisibility(View.VISIBLE);
        executorService.execute(() -> {
            final Bitmap pageBitmap;
            String lowerPath = localComicFile.getName().toLowerCase();

            if (lowerPath.endsWith(".cbz")) {
                pageBitmap = comicUtils.getPageAtIndex(localComicFile.getAbsolutePath(), pageNumber - 1);
            } else if (lowerPath.endsWith(".cbr")) {
                pageBitmap = comicUtils.getPageAtIndexCbr(localComicFile.getAbsolutePath(), pageNumber - 1);
            } else {
                pageBitmap = null;
                Log.e("ComicReaderActivity", "Unsupported file type for image page loading: " + comicFilePath);
            }

            runOnUiThread(() -> {
                pageLoadingProgressBar.setVisibility(View.GONE);
                if (pageBitmap != null) {
                    pageImageView.setImageBitmap(pageBitmap);
                } else {
                    pageImageView.setImageResource(R.drawable.ic_placeholder_cover);
                    Toast.makeText(ComicReaderActivity.this, "Error loading page " + pageNumber, Toast.LENGTH_SHORT).show();
                }
                this.currentPage = pageNumber;
                updatePageInfo();
                saveCurrentProgress();
            });
        });
    }

    // Callbacks for PDFView
    void onPdfPageChanged(int page, int pageCount) { // page is 0-based
        this.currentPage = page + 1; // Store as 1-based
        this.totalPages = pageCount; // Update total pages from PDFView
        updatePageInfo();
        saveCurrentProgress();
    }

    void onPdfLoadComplete(int nbPages) {
        this.totalPages = nbPages;
        if (this.currentPage > nbPages && nbPages > 0) { // if current page from progress was too high
            this.currentPage = nbPages;
        } else if (this.currentPage < 1 && nbPages > 0) {
            this.currentPage = 1;
        } else if (nbPages == 0) { // No pages in PDF
            this.currentPage = 0;
        }
        updatePageInfo();
        // Progress is typically saved in onPdfPageChanged, which is called for the defaultPage.
        // pdfView.jumpTo(currentPage - 1, false); // Ensure correct page if needed, but defaultPage should handle.
        Log.d("ComicReaderActivity", "PDF Load Complete. Total Pages: " + nbPages + ". Current Page: " + this.currentPage);
    }

    void onPdfError(Throwable t) {
        Log.e("ComicReaderActivity", "Error loading PDF: " + t.getMessage(), t);
        pageLoadingProgressBar.setVisibility(View.GONE); // Hide progress bar on error
        Toast.makeText(this, "Error loading PDF: " + t.getMessage(), Toast.LENGTH_LONG).show();
        pageImageView.setVisibility(View.VISIBLE);
        pdfView.setVisibility(View.GONE);
        pageImageView.setImageResource(R.drawable.ic_placeholder_cover);
        // pageInfoTextViewReader.setText(R.string.pdf_load_error); // Assuming string resource
        pageInfoTextViewReader.setText("Error loading PDF"); // Fallback if string resource not set
        prevPageButton.setVisibility(View.GONE);
        nextPageButton.setVisibility(View.GONE);
    }

    private void showPreviousPage() {
        // This method now primarily serves CBZ/CBR. PDF navigation is via PDFView's internal gestures or its own UI.
        if (currentPage > 1) {
            loadAndDisplayPage(currentPage - 1);
        } else {
            Toast.makeText(this, "Already on the first page.", Toast.LENGTH_SHORT).show();
        }
    }

    private void showNextPage() {
        if (totalPages > 0 && currentPage < totalPages) {
            loadAndDisplayPage(currentPage + 1);
        } else if (totalPages == 0) { // Если страницы не подсчитаны (например, для PDF/CBR заглушек)
             // Позволяем листать вперед условно, если это не CBZ
            if (!comicFilePath.toLowerCase().endsWith(".cbz")) { // Logic from this subtask's code
                 loadAndDisplayPage(currentPage + 1);
            } else {
                 Toast.makeText(this, "Already on the last page (or page count unknown).", Toast.LENGTH_SHORT).show();
            }
        }
         else { // totalPages > 0 and currentPage == totalPages
            Toast.makeText(this, "Already on the last page.", Toast.LENGTH_SHORT).show();
        }
    }

    private void updatePageInfo() {
        if (totalPages > 0) {
            pageInfoTextViewReader.setText(String.format(Locale.getDefault(), "%d / %d", currentPage, totalPages));
        } else {
            pageInfoTextViewReader.setText(String.format(Locale.getDefault(), "Page %d / ?", currentPage));
        }
    }

    private void saveCurrentProgress() {
        if (comicFilePath == null) return;

        double progressValue = 0.0;
        if (totalPages > 0) {
            progressValue = (double) currentPage / totalPages;
            if (progressValue > 1.0) progressValue = 1.0; // Ограничение
        } else if (currentPage > 1) {
            // Если общее кол-во страниц неизвестно, но мы пролистали >1 страницы,
            // можно сохранить некий условный прогресс или просто текущую страницу.
            // Для простоты пока оставим прогресс 0.0 если totalPages == 0,
            // но сохраним currentPage.
        }


        Map<String, ProgressManager.ComicProgressEntry> progressMap = ProgressManager.loadProgress();
        // Обновляем или создаем запись для текущего комикса
        currentProgressEntry = new ProgressManager.ComicProgressEntry(currentPage, progressValue);
        progressMap.put(comicFilePath, currentProgressEntry);
        ProgressManager.saveProgress(progressMap);
        Log.d("ComicReaderActivity", "Progress saved: Page " + currentPage + ", Progress " + progressValue); // Log from this subtask
    }

    @Override
    protected void onPause() {
        super.onPause();
        // Сохраняем прогресс при приостановке Activity
        saveCurrentProgress(); // Раскомментировано
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        executorService.shutdown();
        if (localComicFile != null) {
            localComicFile.delete();
        }
    }
}
