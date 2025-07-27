package com.example.comicreader;

import android.Manifest;
import android.app.Activity; // Для Activity.RESULT_OK
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.UriPermission;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable; // Для @Nullable Uri directoryUri
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.documentfile.provider.DocumentFile; // Для DocumentFile
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.floatingactionbutton.FloatingActionButton; // Для FAB

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class MainActivity extends AppCompatActivity {

    private static final int LEGACY_PERMISSION_REQUEST_CODE = 100; // Оставим для старого API разрешений, если понадобится
    private static final String PREFS_NAME = "MrComicPrefs";
    private static final String KEY_COMICS_DIR_URI = "comics_directory_uri";
    private static final String TAG = "MainActivity";

    private RecyclerView comicsRecyclerView;
    private ComicAdapter comicAdapter;
    private ProgressBar loadingProgressBar;
    private FloatingActionButton fabSelectDirectory;

    private List<Comic> comicList = new ArrayList<>(); // Список для адаптера
    private Map<String, ProgressManager.ComicProgressEntry> allProgressData = new HashMap<>(); // Для хранения прогресса
    private Uri currentComicsDirUri = null; // URI выбранной директории

    private ComicUtils comicUtils;
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();
    private ActivityResultLauncher<Uri> openDirectoryLauncher;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        comicsRecyclerView = findViewById(R.id.comicsRecyclerView);
        loadingProgressBar = findViewById(R.id.loadingProgressBar);
        fabSelectDirectory = findViewById(R.id.fabSelectDirectory);

        comicsRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        comicAdapter = new ComicAdapter(comicList, comic -> { // comicList передается в адаптер
            Intent intent = new Intent(MainActivity.this, ComicReaderActivity.class);
            // Теперь comic.getFilePath() будет Uri.toString()
            intent.putExtra(ComicReaderActivity.EXTRA_FILE_PATH, comic.getFilePath());
            intent.putExtra(ComicReaderActivity.EXTRA_COMIC_TITLE, comic.getTitle());
            startActivity(intent);
        });
        comicsRecyclerView.setAdapter(comicAdapter);

        comicUtils = new ComicUtils();

        // Инициализация ActivityResultLauncher для выбора директории
        openDirectoryLauncher = registerForActivityResult(
            new ActivityResultContracts.OpenDocumentTree(),
            uri -> {
                if (uri != null) {
                    Log.d(TAG, "Directory selected: " + uri.toString());
                    final int takeFlags = Intent.FLAG_GRANT_READ_URI_PERMISSION;
                    try {
                        getContentResolver().takePersistableUriPermission(uri, takeFlags);
                        Log.d(TAG, "Persistable URI permission granted.");
                    } catch (SecurityException e) {
                        Log.e(TAG, "Failed to take persistable URI permission", e);
                        Toast.makeText(MainActivity.this, "Failed to get permanent access to the directory.", Toast.LENGTH_LONG).show();
                        return;
                    }

                    SharedPreferences.Editor editor = getSharedPreferences(PREFS_NAME, MODE_PRIVATE).edit();
                    editor.putString(KEY_COMICS_DIR_URI, uri.toString());
                    editor.apply();
                    Log.d(TAG, "Saved URI to SharedPreferences: " + uri.toString());

                    this.currentComicsDirUri = uri;
                    Toast.makeText(MainActivity.this, "Directory saved. Reloading comics...", Toast.LENGTH_SHORT).show();
                    loadComicsData(uri);
                } else {
                    Log.d(TAG, "No directory selected.");
                }
            }
        );

        fabSelectDirectory.setOnClickListener(view -> {
            Log.d(TAG, "FAB clicked, launching directory picker.");
            openDirectoryLauncher.launch(null); // Запуск без начальной директории
        });

        // Загрузка сохраненного URI и проверка разрешений
        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        String savedUriString = prefs.getString(KEY_COMICS_DIR_URI, null);
        if (savedUriString != null) {
            Log.d(TAG, "Found saved URI: " + savedUriString);
            Uri savedUri = Uri.parse(savedUriString);
            if (hasPersistedUriPermissions(savedUri)) {
                Log.d(TAG, "Permissions for saved URI are valid.");
                this.currentComicsDirUri = savedUri;
            } else {
                Log.w(TAG, "Permissions for URI " + savedUri + " were lost. Please reselect.");
                Toast.makeText(this, "Permissions for the saved directory were lost. Please reselect.", Toast.LENGTH_LONG).show();
                prefs.edit().remove(KEY_COMICS_DIR_URI).apply(); // Удаляем недействительный URI
                this.currentComicsDirUri = null;
            }
        } else {
            Log.d(TAG, "No saved URI found.");
        }

        checkAndRequestStoragePermission(); // Проверка разрешений на чтение (для общего случая, хотя SAF обходит это)
                                         // и запуск loadComicsData с currentComicsDirUri
    }

    private boolean hasPersistedUriPermissions(Uri uri) {
        List<UriPermission> persistedPermissions = getContentResolver().getPersistedUriPermissions();
        for (UriPermission p : persistedPermissions) {
            if (p.getUri().equals(uri) && p.isReadPermission()) {
                return true;
            }
        }
        Log.w(TAG, "No persisted read permission for URI: " + uri);
        return false;
    }

    private void checkAndRequestStoragePermission() {
        // Для SAF прямое разрешение READ_EXTERNAL_STORAGE не всегда нужно для доступа к выбранной папке,
        // но может быть полезно, если где-то есть фоллбэк на старые пути или для общего доступа.
        // Оставим проверку, но основной доступ будет через currentComicsDirUri.
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
            Log.d(TAG, "Requesting READ_EXTERNAL_STORAGE permission.");
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, LEGACY_PERMISSION_REQUEST_CODE);
        } else {
            Log.d(TAG, "READ_EXTERNAL_STORAGE permission already granted. Loading comics with URI: " + currentComicsDirUri);
            loadComicsData(currentComicsDirUri);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == LEGACY_PERMISSION_REQUEST_CODE) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                Log.d(TAG, "READ_EXTERNAL_STORAGE permission granted via request. Loading comics with URI: " + currentComicsDirUri);
                loadComicsData(currentComicsDirUri);
            } else {
                Log.w(TAG, "READ_EXTERNAL_STORAGE permission denied.");
                Toast.makeText(this, "Read permission denied. Cannot load comics from default paths.", Toast.LENGTH_LONG).show();
                loadingProgressBar.setVisibility(View.GONE);
                 if (currentComicsDirUri == null) { // Если и URI не выбран, и разрешения нет
                    comicAdapter.updateData(new ArrayList<>()); // Очищаем список
                } else {
                    // Если URI есть, SAF должен работать независимо от этого разрешения
                    loadComicsData(currentComicsDirUri);
                }
            }
        }
    }

    private void loadComicsData(@Nullable Uri directoryUri) {
        Log.d(TAG, "loadComicsData called with URI: " + directoryUri);
        if (directoryUri == null) {
            loadingProgressBar.setVisibility(View.GONE);
            Toast.makeText(this, "Comics directory not selected. Use the '+' button.", Toast.LENGTH_LONG).show();
            comicAdapter.updateData(new ArrayList<>());
            return;
        }

        loadingProgressBar.setVisibility(View.VISIBLE);
        executorService.execute(() -> {
            Map<String, ProgressManager.ComicProgressEntry> savedProgressMap = ProgressManager.loadProgress();
            allProgressData.clear();
            allProgressData.putAll(savedProgressMap);

            List<Comic> newComicList = new ArrayList<>();
            DocumentFile documentTree = DocumentFile.fromTreeUri(getApplicationContext(), directoryUri);

            if (documentTree != null && documentTree.isDirectory()) {
                Log.d(TAG, "Scanning directory: " + documentTree.getName());
                for (DocumentFile docFile : documentTree.listFiles()) {
                    if (docFile.isFile() && docFile.getName() != null) {
                        String fileName = docFile.getName();
                        if (fileName.toLowerCase().endsWith(".cbz") || fileName.toLowerCase().endsWith(".cbr") || fileName.toLowerCase().endsWith(".pdf")) {
                            Log.d(TAG, "Processing file: " + fileName);
                            File tempComicFileCopy = null; // Копия всего комикса для ComicUtils
                            try {
                                // Создаем временную копию в кэше, чтобы ComicUtils мог с ней работать
                                tempComicFileCopy = new File(getCacheDir(), fileName);
                                try (InputStream inputStream = getContentResolver().openInputStream(docFile.getUri());
                                     OutputStream outputStream = new FileOutputStream(tempComicFileCopy)) {
                                    if (inputStream == null) throw new IOException("Unable to open input stream for URI: " + docFile.getUri());

                                    byte[] buffer = new byte[8192]; // Увеличенный буфер
                                    int length;
                                    while ((length = inputStream.read(buffer)) > 0) {
                                        outputStream.write(buffer, 0, length);
                                    }
                                }
                                String tempPathForComicUtils = tempComicFileCopy.getAbsolutePath();
                                Log.d(TAG, "Copied " + fileName + " to cache: " + tempPathForComicUtils);

                                ComicUtils.ComicMetadata metadata = comicUtils.extractComicMetadata(tempPathForComicUtils);
                                Log.d(TAG, "Metadata for " + fileName + ": " + metadata.getPageCount() + " pages, Cover: " + metadata.getCoverImagePath());

                                // Используем URI документа как ключ для прогресса
                                String comicUriKey = docFile.getUri().toString();
                                ProgressManager.ComicProgressEntry progressEntry = savedProgressMap.get(comicUriKey);

                                int currentPage = 0;
                                double progress = 0.0;

                                if (progressEntry != null) {
                                    currentPage = progressEntry.getCurrentPage();
                                    progress = progressEntry.getProgress();
                                    Log.d(TAG, "Loaded progress for " + fileName + ": Page " + currentPage);
                                }

                                Comic comic = new Comic(
                                        stripExtension(fileName),
                                        comicUriKey, // Сохраняем URI как идентификатор/путь
                                        metadata.getCoverImagePath(), // Это путь к временному файлу обложки в кэше, созданному ComicUtils
                                        metadata.getPageCount(),
                                        currentPage,
                                        progress);
                                comic.updateProgress();
                                newComicList.add(comic);

                                allProgressData.put(comicUriKey, new ProgressManager.ComicProgressEntry(comic.getCurrentPage(), comic.getProgress()));

                            } catch (IOException e) {
                                Log.e(TAG, "Error processing comic file: " + fileName, e);
                            } finally {
                                if (tempComicFileCopy != null) {
                                    // Удаляем временную копию всего комикса после извлечения метаданных
                                    // Обложка (если извлеклась) - это отдельный временный файл, созданный ComicUtils
                                    Log.d(TAG, "Deleting temp copy from cache: " + tempComicFileCopy.getName());
                                    tempComicFileCopy.delete();
                                }
                            }
                        }
                    }
                }
            } else {
                 Log.w(TAG, "Document tree is null or not a directory for URI: " + directoryUri);
            }

            Log.d(TAG, "Saving all progress data. Size: " + allProgressData.size());
            ProgressManager.saveProgress(allProgressData);

            runOnUiThread(() -> {
                loadingProgressBar.setVisibility(View.GONE);
                Log.d(TAG, "Updating adapter with " + newComicList.size() + " comics.");
                comicAdapter.updateData(newComicList); // comicList в MainActivity также обновится, т.к. передается по ссылке
                if (newComicList.isEmpty() && directoryUri != null) {
                    Toast.makeText(MainActivity.this, "No comics found in selected directory.", Toast.LENGTH_LONG).show();
                }
            });
        });
    }

    private String stripExtension(String str) {
        if (str == null) return null;
        int pos = str.lastIndexOf(".");
        if (pos == -1) return str;
        return str.substring(0, pos);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy called, shutting down executorService.");
        executorService.shutdown();
    }
}
