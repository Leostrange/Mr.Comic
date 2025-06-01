package com.example.comicreader; // Use the same package name

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class ComicUtilsTest {

    public static void main(String[] args) {
        System.out.println("Running ComicUtilsTest...");
        testListComicFiles();
        System.out.println("ComicUtilsTest completed.");
    }

    public static void testListComicFiles() {
        System.out.println("Starting testListComicFiles...");
        ComicUtils comicUtils = new ComicUtils();
        Path tempDir = null;
        Path testFile1 = null;
        Path testFile2 = null;
        Path testFileCbr = null;
        Path testFileJpg = null;
        Path testFileTxt = null;
        Path testFileEpub = null;
        Path testFileMobi = null;

        try {
            // 1. Setup: Create a temporary directory and some files
            tempDir = Files.createTempDirectory("comicTestDir");
            testFile1 = Files.createFile(tempDir.resolve("comic1.cbz"));
            testFile2 = Files.createFile(tempDir.resolve("document.pdf"));
            testFileCbr = Files.createFile(tempDir.resolve("archive.cbr"));
            testFileJpg = Files.createFile(tempDir.resolve("image.jpg"));
            testFileTxt = Files.createFile(tempDir.resolve("textfile.txt"));
            testFileEpub = Files.createFile(tempDir.resolve("book.epub"));
            testFileMobi = Files.createFile(tempDir.resolve("anotherbook.mobi"));
            Files.createDirectory(tempDir.resolve("subdir")); // A subdirectory

            System.out.println("Test directory created at: " + tempDir.toString());
            System.out.println("Test files created: comic1.cbz, document.pdf, archive.cbr, image.jpg, textfile.txt, book.epub, anotherbook.mobi, subdir/");

            // 2. Test case: Valid directory
            System.out.println("Testing with valid directory...");
            List<String> files = comicUtils.listComicFiles(tempDir.toString());
            assert files.size() == 6 : "Test Failed: Expected 6 items, got " + files.size() + " -> " + files;
            assert files.contains("comic1.cbz") : "Test Failed: Missing comic1.cbz";
            assert files.contains("document.pdf") : "Test Failed: Missing document.pdf";
            assert files.contains("archive.cbr") : "Test Failed: Missing archive.cbr";
            assert files.contains("book.epub") : "Test Failed: Missing book.epub";
            assert files.contains("anotherbook.mobi") : "Test Failed: Missing anotherbook.mobi";
            assert files.contains("subdir") : "Test Failed: Missing subdir";
            assert !files.contains("image.jpg") : "Test Failed: image.jpg should have been filtered out";
            assert !files.contains("textfile.txt") : "Test Failed: textfile.txt should have been filtered out";
            System.out.println("Valid directory test passed. Found: " + files);

            // 3. Test case: Invalid directory
            System.out.println("Testing with invalid directory...");
            String invalidPath = tempDir.toString() + File.separator + "nonexistent_dir";
            List<String> noFiles = comicUtils.listComicFiles(invalidPath);
            assert noFiles.isEmpty() : "Test Failed: Expected empty list for invalid path, got " + noFiles.size() + " items.";
            System.out.println("Invalid directory test passed. Found: " + noFiles);

            // 4. Test case: Null path (optional, depends on how ComicUtils handles it, current impl would throw NPE before check)
            // For now, ComicUtils's File constructor would throw NullPointerException if null is passed.
            // A check for null could be added to ComicUtils if desired.
            // System.out.println("Testing with null path...");
            // List<String> nullPathFiles = comicUtils.listComicFiles(null);
            // assert nullPathFiles.isEmpty() : "Test Failed: Expected empty list for null path";
            // System.out.println("Null path test passed.");


        } catch (IOException e) {
            System.err.println("IOException during test setup: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to IOException during setup.";
        } catch (AssertionError e) {
            System.err.println("AssertionError in testListComicFiles: " + e.getMessage());
            // No need to re-assert false, just let it propagate or log
        }
        finally {
            // 4. Teardown: Clean up temporary files and directory
            try {
                if (testFile1 != null) Files.deleteIfExists(testFile1);
                if (testFile2 != null) Files.deleteIfExists(testFile2);
                if (testFileCbr != null) Files.deleteIfExists(testFileCbr);
                if (testFileJpg != null) Files.deleteIfExists(testFileJpg);
                if (testFileTxt != null) Files.deleteIfExists(testFileTxt);
                if (testFileEpub != null) Files.deleteIfExists(testFileEpub);
                if (testFileMobi != null) Files.deleteIfExists(testFileMobi);
                if (tempDir != null) {
                    Files.deleteIfExists(tempDir.resolve("subdir")); // delete subdir first
                    Files.deleteIfExists(tempDir);
                }
                System.out.println("Test environment cleaned up.");
            } catch (IOException e) {
                System.err.println("Error during test cleanup: " + e.getMessage());
            }
        }
        System.out.println("Finished testListComicFiles.");
    }
}
