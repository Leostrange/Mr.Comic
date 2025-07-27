package com.example.comicreader; // Use the same package name

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ComicUtilsTest {

    public static void main(String[] args) {
        System.out.println("Running ComicUtilsTest...");
        testListComicFiles();
        testExtractComicMetadata(); // Updated method name
        System.out.println("ComicUtilsTest completed.");
    }

    // Helper method to create a simple text file
    private static Path createTextFile(Path directory, String fileName, String content) throws IOException {
        Path filePath = directory.resolve(fileName);
        Files.writeString(filePath, content, StandardCharsets.UTF_8);
        return filePath;
    }

    // Helper method to create a zip file for testing
    private static void createTestZipFile(Path zipFilePath, String[] entryNames, byte[][] entryContents) throws IOException {
        try (ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(zipFilePath.toFile()))) {
            for (int i = 0; i < entryNames.length; i++) {
                ZipEntry entry = new ZipEntry(entryNames[i]);
                zos.putNextEntry(entry);
                if (entryContents != null && i < entryContents.length && entryContents[i] != null) {
                    zos.write(entryContents[i]);
                }
                zos.closeEntry();
            }
        }
    }


    public static void testListComicFiles() {
        System.out.println("Starting testListComicFiles...");
        ComicUtils comicUtils = new ComicUtils();
        Path tempDir = null;
        Path testFileCbz = null;
        Path testFilePdf = null;
        Path testFileCbr = null;
        Path testFileJpg = null;
        Path testFileTxt = null;
        Path subDir = null;

        try {
            // 1. Setup: Create a temporary directory and some files
            tempDir = Files.createTempDirectory("comicTestDir");
            testFileCbz = Files.createFile(tempDir.resolve("comic1.cbz")); // Should be included
            testFilePdf = Files.createFile(tempDir.resolve("document.pdf")); // Should be included
            testFileCbr = Files.createFile(tempDir.resolve("comic2.cbr")); // Should be included
            testFileJpg = Files.createFile(tempDir.resolve("image.jpg"));   // Should be filtered out
            testFileTxt = Files.createFile(tempDir.resolve("notes.txt"));   // Should be filtered out
            subDir = Files.createDirectory(tempDir.resolve("subdir"));      // Should be included

            System.out.println("Test directory created at: " + tempDir.toString());
            System.out.println("Test files created: comic1.cbz, document.pdf, comic2.cbr, image.jpg, notes.txt, subdir/");

            // 2. Test case: Valid directory
            System.out.println("Testing with valid directory...");
            List<String> files = comicUtils.listComicFiles(tempDir.toString());

            // Expected: comic1.cbz, document.pdf, comic2.cbr, subdir
            System.out.println("Files found by listComicFiles: " + files);
            assert files.size() == 4 : "Test Failed: Expected 4 items, got " + files.size() + ". Files: " + files;
            assert files.contains("comic1.cbz") : "Test Failed: Missing comic1.cbz. Files: " + files;
            assert files.contains("document.pdf") : "Test Failed: Missing document.pdf. Files: " + files;
            assert files.contains("comic2.cbr") : "Test Failed: Missing comic2.cbr. Files: " + files;
            assert files.contains("subdir") : "Test Failed: Missing subdir. Files: " + files;
            assert !files.contains("image.jpg") : "Test Failed: image.jpg should have been filtered out. Files: " + files;
            assert !files.contains("notes.txt") : "Test Failed: notes.txt should have been filtered out. Files: " + files;
            System.out.println("Valid directory test passed.");

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
                if (testFileCbz != null) Files.deleteIfExists(testFileCbz);
                if (testFilePdf != null) Files.deleteIfExists(testFilePdf);
                if (testFileCbr != null) Files.deleteIfExists(testFileCbr);
                if (testFileJpg != null) Files.deleteIfExists(testFileJpg);
                if (testFileTxt != null) Files.deleteIfExists(testFileTxt);
                if (subDir != null) Files.deleteIfExists(subDir); // Delete subdir before parent
                if (tempDir != null) {
                    Files.deleteIfExists(tempDir);
                }
                System.out.println("Test environment cleaned up.");
            } catch (IOException e) {
                System.err.println("Error during test cleanup: " + e.getMessage());
            }
        }
        System.out.println("Finished testListComicFiles.");
    }

    public static void testExtractComicMetadata() { // Renamed method
        System.out.println("Starting testExtractComicMetadata...");
        ComicUtils comicUtils = new ComicUtils();
        Path tempDir = null;
        List<Path> tempFilesToDelete = new ArrayList<>();

        try {
            tempDir = Files.createTempDirectory("metadataTestDir"); // Changed dir name for clarity
            System.out.println("Metadata test directory created at: " + tempDir.toString());

            // --- CBZ Test Cases ---
            System.out.println("Testing CBZ scenarios...");

            // a. Successful Extraction (with page count)
            Path cbzWithCoverAndPages = tempDir.resolve("comic_with_cover_and_pages.cbz");
            tempFilesToDelete.add(cbzWithCoverAndPages);
            // 3 image files (pages), 1 text file (not a page)
            String[] entries = {"img1.png", "cover.jpg", "subfolder/page3.jpeg", "notes.txt"};
            byte[][] contents = {
                "dummy png data".getBytes(StandardCharsets.UTF_8),
                "dummy jpg data".getBytes(StandardCharsets.UTF_8), // This should be chosen as cover
                "dummy jpeg data in subdir".getBytes(StandardCharsets.UTF_8),
                "some notes".getBytes(StandardCharsets.UTF_8)
            };
            createTestZipFile(cbzWithCoverAndPages, entries, contents);
            System.out.println("Created CBZ for successful metadata extraction: " + cbzWithCoverAndPages);

            ComicUtils.ComicMetadata metadata = comicUtils.extractComicMetadata(cbzWithCoverAndPages.toString());
            System.out.println("extractComicMetadata result for " + cbzWithCoverAndPages + ": " + metadata);

            String extractedCoverPath = metadata.getCoverImagePath();
            assert extractedCoverPath != null && !extractedCoverPath.startsWith("No cover") && !extractedCoverPath.startsWith("Unsupported") && !extractedCoverPath.startsWith("Error") && !extractedCoverPath.startsWith("Cover extraction for") : "Test Failed: Successful extraction expected a file path for cover, got: " + extractedCoverPath;
            Path coverFile = Path.of(extractedCoverPath);
            tempFilesToDelete.add(coverFile);
            assert Files.exists(coverFile) : "Test Failed: Extracted cover file does not exist at " + extractedCoverPath;
            assert Files.size(coverFile) > 0 : "Test Failed: Extracted cover file is empty.";
            assert metadata.getPageCount() == 3 : "Test Failed: Page count mismatch for CBZ with images. Expected 3, got " + metadata.getPageCount();
            System.out.println("Successful CBZ metadata extraction test passed. Cover: " + extractedCoverPath + ", Pages: " + metadata.getPageCount());

            // b. CBZ No Images
            Path cbzNoImages = tempDir.resolve("comic_no_images.cbz");
            tempFilesToDelete.add(cbzNoImages);
            createTestZipFile(cbzNoImages, new String[]{"notes.txt", "another.doc"}, new byte[][]{"text only".getBytes(StandardCharsets.UTF_8), "doc content".getBytes(StandardCharsets.UTF_8)});
            ComicUtils.ComicMetadata noImagesMetadata = comicUtils.extractComicMetadata(cbzNoImages.toString());
            assert "No cover found in CBZ".equals(noImagesMetadata.getCoverImagePath()) : "Test Failed: CBZ with no images cover. Expected 'No cover found in CBZ', got '" + noImagesMetadata.getCoverImagePath() + "'";
            assert noImagesMetadata.getPageCount() == 0 : "Test Failed: Page count for CBZ with no images. Expected 0, got " + noImagesMetadata.getPageCount();
            System.out.println("CBZ no images metadata test passed.");

            // c. Empty CBZ
            Path emptyCbz = tempDir.resolve("empty.cbz");
            tempFilesToDelete.add(emptyCbz);
            createTestZipFile(emptyCbz, new String[]{}, null);
            ComicUtils.ComicMetadata emptyCbzMetadata = comicUtils.extractComicMetadata(emptyCbz.toString());
            assert "No cover found in CBZ".equals(emptyCbzMetadata.getCoverImagePath()) : "Test Failed: Empty CBZ cover. Expected 'No cover found in CBZ', got '" + emptyCbzMetadata.getCoverImagePath() + "'";
            assert emptyCbzMetadata.getPageCount() == 0 : "Test Failed: Page count for empty CBZ. Expected 0, got " + emptyCbzMetadata.getPageCount();
            System.out.println("Empty CBZ metadata test passed.");

            // d. Non-existent CBZ
            ComicUtils.ComicMetadata nonExistentMetadata = comicUtils.extractComicMetadata(tempDir.resolve("non_existent.cbz").toString());
            assert "Unsupported file type for cover extraction".equals(nonExistentMetadata.getCoverImagePath()) : "Test Failed: Non-existent CBZ cover. Expected 'Unsupported file type for cover extraction', got '" + nonExistentMetadata.getCoverImagePath() + "'";
            assert nonExistentMetadata.getPageCount() == 0 : "Test Failed: Page count for non-existent CBZ. Expected 0, got " + nonExistentMetadata.getPageCount();
            System.out.println("Non-existent CBZ metadata test passed.");

            // --- CBR and PDF Test Cases (Stubs) ---
            System.out.println("Testing CBR and PDF stub scenarios...");
            Path testCbr = createTextFile(tempDir, "test.cbr", "dummy cbr content");
            tempFilesToDelete.add(testCbr);
            ComicUtils.ComicMetadata cbrMetadata = comicUtils.extractComicMetadata(testCbr.toString());
            assert "Cover extraction for CBR not yet implemented".equals(cbrMetadata.getCoverImagePath()) : "Test Failed: CBR stub cover. Expected 'Cover extraction for CBR not yet implemented', got '" + cbrMetadata.getCoverImagePath() + "'";
            assert cbrMetadata.getPageCount() == 0 : "Test Failed: Page count for CBR stub. Expected 0, got " + cbrMetadata.getPageCount();
            System.out.println("CBR stub metadata test passed.");

            Path testPdf = createTextFile(tempDir, "test.pdf", "dummy pdf content");
            tempFilesToDelete.add(testPdf);
            ComicUtils.ComicMetadata pdfMetadata = comicUtils.extractComicMetadata(testPdf.toString());
            assert "Cover extraction for PDF not yet implemented".equals(pdfMetadata.getCoverImagePath()) : "Test Failed: PDF stub cover. Expected 'Cover extraction for PDF not yet implemented', got '" + pdfMetadata.getCoverImagePath() + "'";
            assert pdfMetadata.getPageCount() == 0 : "Test Failed: Page count for PDF stub. Expected 0, got " + pdfMetadata.getPageCount();
            System.out.println("PDF stub metadata test passed.");

            // --- Unsupported File Type Test Case ---
            System.out.println("Testing unsupported file type scenario...");
            Path testTxt = createTextFile(tempDir, "test.txt", "dummy text content");
            tempFilesToDelete.add(testTxt);
            ComicUtils.ComicMetadata txtMetadata = comicUtils.extractComicMetadata(testTxt.toString());
            assert "Unsupported file type for cover extraction".equals(txtMetadata.getCoverImagePath()) : "Test Failed: TXT unsupported cover. Expected 'Unsupported file type for cover extraction', got '" + txtMetadata.getCoverImagePath() + "'";
            assert txtMetadata.getPageCount() == 0 : "Test Failed: Page count for TXT unsupported. Expected 0, got " + txtMetadata.getPageCount();
            System.out.println("Unsupported file type (TXT) metadata test passed.");

        } catch (IOException e) {
            System.err.println("IOException during testExtractComicMetadata setup or execution: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to IOException in testExtractComicMetadata.";
        } catch (AssertionError e) {
            System.err.println("AssertionError in testExtractComicMetadata: " + e.getMessage());
            assert false : "Test Failed due to AssertionError in testExtractComicMetadata: " + e.getMessage();
        }
        finally {
            System.out.println("Cleaning up files for testExtractComicMetadata...");
            for (Path p : tempFilesToDelete) {
                try {
                    Files.deleteIfExists(p);
                } catch (IOException e) {
                    System.err.println("Error cleaning up temp file " + p + ": " + e.getMessage());
                }
            }
            if (tempDir != null) {
                try {
                    Files.deleteIfExists(tempDir);
                } catch (IOException e) {
                    System.err.println("Error cleaning up temp directory " + tempDir + ": " + e.getMessage());
                }
            }
            System.out.println("Finished cleanup for testExtractComicMetadata.");
        }
        System.out.println("Finished testExtractComicMetadata.");
    }
}
