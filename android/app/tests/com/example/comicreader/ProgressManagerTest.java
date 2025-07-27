package com.example.comicreader;

import com.example.comicreader.ProgressManager.ComicProgressEntry;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.Map;

public class ProgressManagerTest {

    // Replicate the logic for PROGRESS_FILE_PATH for test use
    private static final String ACTUAL_PROGRESS_FILE_NAME = ".mrcomic_progress.txt";
    private static final Path testProgressFilePath = Paths.get(System.getProperty("user.home"), ACTUAL_PROGRESS_FILE_NAME);
    private static final Path backupProgressFilePath = Paths.get(System.getProperty("user.home"), ACTUAL_PROGRESS_FILE_NAME + ".backup");

    private static void backupOriginalProgressFile() {
        try {
            if (Files.exists(testProgressFilePath)) {
                Files.copy(testProgressFilePath, backupProgressFilePath, StandardCopyOption.REPLACE_EXISTING);
                System.out.println("Backed up original progress file to: " + backupProgressFilePath);
            }
        } catch (IOException e) {
            System.err.println("Failed to backup original progress file: " + e.getMessage());
            // Decide if tests should proceed or halt. For now, we'll proceed but log error.
        }
    }

    private static void restoreOriginalProgressFile() {
        try {
            if (Files.exists(backupProgressFilePath)) {
                Files.move(backupProgressFilePath, testProgressFilePath, StandardCopyOption.REPLACE_EXISTING);
                System.out.println("Restored original progress file from: " + backupProgressFilePath);
            } else {
                // If no backup, ensure the test file is deleted if it was created by tests
                // and no original existed.
                Files.deleteIfExists(testProgressFilePath);
            }
        } catch (IOException e) {
            System.err.println("Failed to restore original progress file: " + e.getMessage());
        }
    }

    private static void ensureTestFileDeleted() throws IOException {
        Files.deleteIfExists(testProgressFilePath);
    }

    public static void main(String[] args) {
        System.out.println("Starting ProgressManagerTest...");
        backupOriginalProgressFile();

        try {
            testSaveAndLoadProgress();
            testLoadWithNonExistentFile();
            testCorruptedLineHandling();
            testOverwriteOnSave();
        } catch (Exception e) {
            System.err.println("!!!!!!!!!! A test failed with an exception: " + e.getMessage() + " !!!!!!!!!!");
            e.printStackTrace();
        } finally {
            restoreOriginalProgressFile();
            System.out.println("ProgressManagerTest completed.");
        }
    }

    public static void testSaveAndLoadProgress() throws IOException {
        System.out.println("Starting testSaveAndLoadProgress...");
        ensureTestFileDeleted();

        Map<String, ComicProgressEntry> expectedProgress = new HashMap<>();
        expectedProgress.put("/path/to/Comic1.cbz", new ComicProgressEntry(10, 0.5));
        expectedProgress.put("/path/to/Другой Комикс.cbr", new ComicProgressEntry(25, 0.75));
        expectedProgress.put("/path with spaces/Comic Issue 3.pdf", new ComicProgressEntry(5, 0.1));

        ProgressManager.saveProgress(expectedProgress);
        System.out.println("Saved test progress data.");

        Map<String, ComicProgressEntry> actualProgress = ProgressManager.loadProgress();
        System.out.println("Loaded test progress data. Size: " + actualProgress.size());


        assert expectedProgress.size() == actualProgress.size() : "Test Failed: Size mismatch. Expected " + expectedProgress.size() + ", got " + actualProgress.size();
        for (Map.Entry<String, ComicProgressEntry> entry : expectedProgress.entrySet()) {
            String key = entry.getKey();
            ComicProgressEntry expectedEntry = entry.getValue();
            ComicProgressEntry actualEntry = actualProgress.get(key);

            assert actualEntry != null : "Test Failed: Missing key in loaded data: " + key;
            assert expectedEntry.getCurrentPage() == actualEntry.getCurrentPage() : "Test Failed: CurrentPage mismatch for " + key + ". Expected " + expectedEntry.getCurrentPage() + ", got " + actualEntry.getCurrentPage();
            // Using a delta for double comparison
            assert Math.abs(expectedEntry.getProgress() - actualEntry.getProgress()) < 0.00001 : "Test Failed: Progress mismatch for " + key + ". Expected " + expectedEntry.getProgress() + ", got " + actualEntry.getProgress();
        }
        System.out.println("Assertions passed for testSaveAndLoadProgress.");

        ensureTestFileDeleted();
        System.out.println("Finished testSaveAndLoadProgress.");
    }

    public static void testLoadWithNonExistentFile() throws IOException {
        System.out.println("Starting testLoadWithNonExistentFile...");
        ensureTestFileDeleted(); // Make sure file does not exist

        Map<String, ComicProgressEntry> progress = ProgressManager.loadProgress();
        assert progress != null : "Test Failed: Loaded progress map should not be null.";
        assert progress.isEmpty() : "Test Failed: Expected empty map for non-existent file, got size " + progress.size();
        System.out.println("testLoadWithNonExistentFile passed.");
    }

    public static void testCorruptedLineHandling() throws IOException {
        System.out.println("Starting testCorruptedLineHandling...");
        ensureTestFileDeleted();

        // Create a corrupted progress file
        try (BufferedWriter writer = Files.newBufferedWriter(testProgressFilePath, StandardCharsets.UTF_8)) {
            writer.write("path/to/comic1.cbz;10;0.5"); writer.newLine(); // Correct
            writer.write("path/to/comic2.pdf;20"); writer.newLine(); // Not enough parts
            writer.write("path/to/comic3.cbr;abc;0.7"); writer.newLine(); // Non-numeric currentPage
            writer.write("path/to/comic4.cbz;30;xyz"); writer.newLine(); // Non-numeric progress
            writer.write("path/to/comic5.cbz;40;0.9"); writer.newLine(); // Correct
            writer.write(""); writer.newLine(); // Empty line
            writer.write("path/to/comic6.cbz;50;1.1"); writer.newLine(); // Invalid progress > 1.0
            writer.write("path/to/comic7.cbz;-5;0.5"); writer.newLine(); // Invalid currentPage < 0
            writer.write("malformed%;10;0.5"); writer.newLine(); // Malformed URI for path
        }
        System.out.println("Created corrupted progress file at: " + testProgressFilePath);

        // Redirect System.err to capture warnings (optional, advanced)
        // For now, we'll just check the count of loaded entries

        Map<String, ComicProgressEntry> progress = ProgressManager.loadProgress();
        System.out.println("Loaded " + progress.size() + " entries from corrupted file.");

        // Expected: comic1, comic5. malformed% might load or not depending on URLDecoder strictness,
        // but the prompt said to check for 2 correct entries, implying strictness.
        // The current ProgressManager URLDecoder is not overly strict on non-escaped chars unless they are '%'.
        // Let's assume 2 are correctly loaded based on the prompt.
        // However, the current ProgressManager code has specific checks for currentPage < 0 and progress > 1.0 or < 0.0
        // So comic6 and comic7 will also be filtered out.
        // Malformed% will likely cause an IllegalArgumentException from URLDecoder.
        assert progress.size() == 2 : "Test Failed: Expected 2 valid entries from corrupted file, got " + progress.size() + ". Loaded: " + progress.keySet();
        assert progress.containsKey("path/to/comic1.cbz") : "Test Failed: Missing comic1.cbz from corrupted file load.";
        assert progress.containsKey("path/to/comic5.cbz") : "Test Failed: Missing comic5.cbz from corrupted file load.";

        System.out.println("testCorruptedLineHandling passed (basic check).");
        ensureTestFileDeleted();
        System.out.println("Finished testCorruptedLineHandling.");
    }

    public static void testOverwriteOnSave() throws IOException {
        System.out.println("Starting testOverwriteOnSave...");
        ensureTestFileDeleted();

        // 1. Create file with initial data
        Map<String, ComicProgressEntry> initialData = new HashMap<>();
        initialData.put("/path/to/OldComic.cbz", new ComicProgressEntry(5, 0.25));
        ProgressManager.saveProgress(initialData);
        System.out.println("Saved initial data for overwrite test.");

        // 2. Create new map with different data
        Map<String, ComicProgressEntry> newData = new HashMap<>();
        newData.put("/path/to/NewComic.cbz", new ComicProgressEntry(15, 0.65));
        newData.put("/path/to/AnotherNew.pdf", new ComicProgressEntry(2, 0.1));

        // 3. Save new data (should overwrite)
        ProgressManager.saveProgress(newData);
        System.out.println("Saved new data for overwrite test.");

        // 4. Load and verify
        Map<String, ComicProgressEntry> loadedData = ProgressManager.loadProgress();
        System.out.println("Loaded data after overwrite. Size: " + loadedData.size());

        assert loadedData.size() == 2 : "Test Failed: Overwrite. Expected 2 entries, got " + loadedData.size();
        assert !loadedData.containsKey("/path/to/OldComic.cbz") : "Test Failed: Overwrite. Old data still present.";
        assert loadedData.containsKey("/path/to/NewComic.cbz") : "Test Failed: Overwrite. Missing NewComic.cbz.";
        assert loadedData.containsKey("/path/to/AnotherNew.pdf") : "Test Failed: Overwrite. Missing AnotherNew.pdf.";

        ComicProgressEntry newComicEntry = loadedData.get("/path/to/NewComic.cbz");
        assert newComicEntry.getCurrentPage() == 15 : "Test Failed: Overwrite. NewComic.cbz currentPage mismatch.";
        assert Math.abs(newComicEntry.getProgress() - 0.65) < 0.00001 : "Test Failed: Overwrite. NewComic.cbz progress mismatch.";

        System.out.println("testOverwriteOnSave passed.");
        ensureTestFileDeleted();
        System.out.println("Finished testOverwriteOnSave.");
    }
}
