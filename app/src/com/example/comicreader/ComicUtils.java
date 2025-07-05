package com.example.comicreader; // Or a suitable package name

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Android specific imports - these are fine for a utility class if it's part of an Android module
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log; // For logging errors or info

// Junrar imports
import com.github.junrar.Archive;
import com.github.junrar.exception.RarException;
// import com.github.junrar.impl.FileVolumeManager; // Not directly used in provided snippet, but often relevant
import com.github.junrar.rarfile.FileHeader;


public class ComicUtils {

    private static final List<String> IMAGE_EXTENSIONS = List.of(".jpg", ".jpeg", ".png", ".gif");
    private static final String TAG = "ComicUtils"; // For Logcat

    // Public static inner class for comic metadata
    public static class ComicMetadata {
        private final String coverImagePath;
        private final int pageCount;

        public ComicMetadata(String coverImagePath, int pageCount) {
            this.coverImagePath = coverImagePath;
            this.pageCount = pageCount;
        }

        public String getCoverImagePath() {
            return coverImagePath;
        }

        public int getPageCount() {
            return pageCount;
        }

        @Override
        public String toString() {
            return "ComicMetadata{" +
                    "coverImagePath='" + coverImagePath + '\'' +
                    ", pageCount=" + pageCount +
                    '}';
        }
    }

    /**
     * Lists files in a given directory, attempting to identify comic book files.
     * For now, it will just list all files and directories.
     * Later, filtering for CBZ, CBR, PDF will be added.
     *
     * @param directoryPath The path to the directory.
     * @return A list of file names in the directory.
     *         Returns an empty list if the path is invalid or an error occurs.
     */
    public List<String> listComicFiles(String directoryPath) {
        File directory = new File(directoryPath);
        List<String> fileNames = new ArrayList<>();

        if (!directory.exists() || !directory.isDirectory()) {
            System.err.println("Error: Path is not a valid directory: " + directoryPath);
            return fileNames; // Return empty list
        }

        File[] files = directory.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    fileNames.add(file.getName());
                } else {
                    String fileName = file.getName().toLowerCase();
                    if (fileName.endsWith(".cbz") || fileName.endsWith(".cbr") || fileName.endsWith(".pdf")) {
                        fileNames.add(file.getName());
                    }
                }
            }
        } else {
            System.err.println("Error: Could not list files in directory: " + directoryPath);
            // This can happen due to permission issues, etc.
        }
        return fileNames;
    }

    private String getFileExtension(String filePath) {
        if (filePath == null || filePath.lastIndexOf('.') == -1) {
            return "";
        }
        return filePath.substring(filePath.lastIndexOf('.')).toLowerCase();
    }

    private boolean isImageFile(String fileName) {
        String lowerName = fileName.toLowerCase();
        for (String ext : IMAGE_EXTENSIONS) {
            if (lowerName.endsWith(ext)) {
                return true;
            }
        }
        return false;
    }

    public ComicMetadata extractComicMetadata(String comicFilePath) {
        File comicFile = new File(comicFilePath);
        if (!comicFile.exists() || !comicFile.isFile()) {
            return new ComicMetadata("Unsupported file type for cover extraction", 0);
        }

        String extension = getFileExtension(comicFilePath);
        String coverPath = "No cover found"; // Default cover path
        int pageCount = 0;

        switch (extension) {
            case ".cbz":
                // First pass: Determine cover image and count total image entries (pages)
                List<ZipEntry> potentialCoverEntries = new ArrayList<>();
                try (FileInputStream fis = new FileInputStream(comicFile);
                     ZipInputStream zis = new ZipInputStream(fis)) {
                    ZipEntry entry;
                    while ((entry = zis.getNextEntry()) != null) {
                        if (!entry.isDirectory() && isImageFile(entry.getName())) {
                            potentialCoverEntries.add(entry); // Add for cover selection
                            pageCount++; // Count as a page
                        }
                        zis.closeEntry();
                    }
                } catch (IOException e) {
                    System.err.println("Error during initial scan of CBZ file '" + comicFilePath + "': " + e.getMessage());
                    e.printStackTrace();
                    // Return with page count found so far, but cover error
                    return new ComicMetadata("Error processing CBZ (initial scan)", pageCount);
                }

                if (potentialCoverEntries.isEmpty()) {
                    coverPath = "No cover found in CBZ";
                    // pageCount is already 0 or correctly counted if some non-image files were there
                } else {
                    // Sort entries to find the best cover
                    Collections.sort(potentialCoverEntries, new Comparator<ZipEntry>() {
                        @Override
                        public int compare(ZipEntry z1, ZipEntry z2) {
                            String name1 = z1.getName().toLowerCase();
                            String name2 = z2.getName().toLowerCase();
                            int depth1 = (int) name1.chars().filter(ch -> ch == '/').count();
                            if (name1.endsWith("/")) depth1--;
                            int depth2 = (int) name2.chars().filter(ch -> ch == '/').count();
                            if (name2.endsWith("/")) depth2--;
                            if (depth1 < depth2) return -1;
                            if (depth1 > depth2) return 1;
                            return name1.compareTo(name2);
                        }
                    });

                    ZipEntry coverEntry = potentialCoverEntries.get(0);

                    // Extract the chosen cover entry to a temp file
                    try (FileInputStream fisRetry = new FileInputStream(comicFile);
                         ZipInputStream zisRetry = new ZipInputStream(fisRetry)) {
                        ZipEntry currentEntry;
                        while((currentEntry = zisRetry.getNextEntry()) != null) {
                            if (currentEntry.getName().equals(coverEntry.getName())) {
                                String coverFileExtension = getFileExtension(coverEntry.getName());
                                if (coverFileExtension.isEmpty()) coverFileExtension = ".img";
                                Path tempCoverFile = Files.createTempFile("comic_cover_", coverFileExtension);
                                try (OutputStream os = Files.newOutputStream(tempCoverFile)) {
                                    zisRetry.transferTo(os);
                                }
                                coverPath = tempCoverFile.toAbsolutePath().toString();
                                break; // Found and extracted cover
                            }
                            zisRetry.closeEntry();
                        }
                    } catch (IOException e) {
                        System.err.println("Error extracting cover from CBZ file '" + comicFilePath + "': " + e.getMessage());
                        e.printStackTrace();
                        coverPath = "Error extracting cover from CBZ"; // Keep pageCount
                    }
                }
                return new ComicMetadata(coverPath, pageCount);

            case ".cbr":
                Archive cbrArchive = null;
                try {
                    cbrArchive = new Archive(new File(comicFilePath)); // Use File directly
                    List<FileHeader> imageHeaders = new ArrayList<>();
                    for (FileHeader fh : cbrArchive.getFileHeaders()) {
                        if (!fh.isDirectory() && isImageFile(fh.getFileNameString())) {
                            imageHeaders.add(fh);
                        }
                    }
                    pageCount = imageHeaders.size();

                    if (!imageHeaders.isEmpty()) {
                        // Sort by name for consistency
                        Collections.sort(imageHeaders, Comparator.comparing(fh -> fh.getFileNameString().toLowerCase()));
                        FileHeader coverHeader = imageHeaders.get(0); // First image as cover

                        String coverFileExtension = getFileExtension(coverHeader.getFileNameString());
                        if (coverFileExtension.isEmpty()) coverFileExtension = ".img";
                        Path tempCoverFile = Files.createTempFile("cbr_cover_", coverFileExtension);

                        try (OutputStream os = Files.newOutputStream(tempCoverFile)) {
                            cbrArchive.extractFile(coverHeader, os); // Extract file
                            coverPath = tempCoverFile.toAbsolutePath().toString();
                        } catch (RarException | IOException e) {
                            Log.e(TAG, "Error extracting cover from CBR: " + comicFilePath, e);
                            coverPath = "Error extracting cover from CBR";
                            try { Files.deleteIfExists(tempCoverFile); } catch (IOException ignored) {}
                        }
                    } else {
                        coverPath = "No cover found in CBR";
                    }
                } catch (RarException | IOException e) {
                    Log.e(TAG, "Error reading CBR archive: " + comicFilePath, e);
                    coverPath = "Error processing CBR";
                    pageCount = 0; // Reset if archive couldn't be read
                } finally {
                    if (cbrArchive != null) {
                        try {
                            cbrArchive.close();
                        } catch (IOException e) {
                            Log.e(TAG, "Error closing CBR archive: " + comicFilePath, e);
                        }
                    }
                }
                return new ComicMetadata(coverPath, pageCount);
            case ".pdf":
                return new ComicMetadata("Cover extraction for PDF not yet implemented", 0);
            default:
                return new ComicMetadata("Unsupported file type for cover extraction", 0);
        }
    }

    public Bitmap getPageAtIndex(String cbzFilePath, int pageIndex) {
        File comicFile = new File(cbzFilePath);
        if (!comicFile.exists() || !comicFile.isFile() || !cbzFilePath.toLowerCase().endsWith(".cbz")) {
            Log.e(TAG, "Invalid CBZ file path: " + cbzFilePath);
            return null;
        }

        List<ZipEntry> imageEntries = new ArrayList<>();
        try (FileInputStream fis = new FileInputStream(comicFile);
             ZipInputStream zis = new ZipInputStream(fis)) {
            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                if (!entry.isDirectory() && isImageFile(entry.getName())) {
                    imageEntries.add(entry);
                }
                zis.closeEntry();
            }
        } catch (IOException e) {
            Log.e(TAG, "Error listing image entries in CBZ: " + cbzFilePath, e);
            return null; // Error during initial scan
        }

        if (imageEntries.isEmpty() || pageIndex < 0 || pageIndex >= imageEntries.size()) {
            Log.w(TAG, "Page index " + pageIndex + " out of bounds or no images found. Total images: " + imageEntries.size());
            return null;
        }

        // Sort entries alphabetically by name to ensure consistent page order
        Collections.sort(imageEntries, (ze1, ze2) -> ze1.getName().compareToIgnoreCase(ze2.getName()));

        ZipEntry targetEntry = imageEntries.get(pageIndex);

        // Re-open the stream to read the selected entry's content
        try (FileInputStream fisRetry = new FileInputStream(comicFile);
             ZipInputStream zisRetry = new ZipInputStream(fisRetry)) {
            ZipEntry currentEntry;
            while ((currentEntry = zisRetry.getNextEntry()) != null) {
                if (currentEntry.getName().equals(targetEntry.getName())) {
                    // Directly decode the stream for the target entry
                    // Consider BitmapFactory.Options for large images in production (inSampleSize)
                    Bitmap pageBitmap = BitmapFactory.decodeStream(zisRetry);
                    if (pageBitmap == null) {
                        Log.e(TAG, "Failed to decode bitmap for entry: " + targetEntry.getName());
                    }
                    // It's crucial not to close zisRetry here if BitmapFactory.decodeStream needs it open.
                    // However, try-with-resources will close it eventually.
                    // For some stream types, BitmapFactory might read partially.
                    // But for ZipInputStream entry, it should consume the entry's stream.
                    zisRetry.closeEntry(); // Close current entry after processing
                    return pageBitmap;
                }
                zisRetry.closeEntry();
            }
        } catch (IOException e) {
            Log.e(TAG, "Error reading specific page entry from CBZ: " + targetEntry.getName(), e);
        } catch (OutOfMemoryError oom) {
            Log.e(TAG, "OutOfMemoryError decoding page: " + targetEntry.getName(), oom);
            // Suggest garbage collection and maybe try a smaller sample size next time (not implemented here)
            System.gc();
        }

        return null; // Should not be reached if entry was found, or if an error occurred
    }


    // Main method for basic testing (optional, can be removed later)
    public static void main(String[] args) {
        ComicUtils utils = new ComicUtils();
        String testDirPath = ".";
        System.out.println("Files in '" + testDirPath + "':");
        List<String> files = utils.listComicFiles(testDirPath);
        for (String fileName : files) {
            System.out.println(fileName);
        }

        String testInvalidPath = "./nonexistent_directory";
        System.out.println("\nFiles in '" + testInvalidPath + "':");
        List<String> filesInvalid = utils.listComicFiles(testInvalidPath);

        // Test CBZ
        String testCbzPath = "test.cbz";
        File testCbzFile = new File(testCbzPath);
        if (!testCbzFile.exists()) {
            System.out.println("\nTest CBZ file '" + testCbzPath + "' not found. Skipping CBZ tests.");
        } else {
            System.out.println("\n--- Testing CBZ: " + testCbzPath + " ---");
            ComicMetadata cbzMetadata = utils.extractComicMetadata(testCbzPath);
            System.out.println("CBZ Metadata: " + cbzMetadata);
            if (cbzMetadata.getCoverImagePath() != null && !cbzMetadata.getCoverImagePath().startsWith("No cover") && !cbzMetadata.getCoverImagePath().startsWith("Error") && !cbzMetadata.getCoverImagePath().startsWith("Unsupported")) {
                try { Files.deleteIfExists(Path.of(cbzMetadata.getCoverImagePath())); System.out.println("Deleted temp CBZ cover."); } catch (IOException ignored) {}
            }
            if (cbzMetadata.getPageCount() > 0) {
                Bitmap cbzPage = utils.getPageAtIndex(testCbzPath, 0);
                if (cbzPage != null) {
                    System.out.println("CBZ Page 0 loaded. Dimensions: " + cbzPage.getWidth() + "x" + cbzPage.getHeight());
                    cbzPage.recycle();
                } else { System.out.println("Failed to load page 0 from CBZ."); }
            }
        }

        // Test CBR
        String testCbrPath = "test.cbr";
        File testCbrFile = new File(testCbrPath);
        if (!testCbrFile.exists()) {
            System.out.println("\nTest CBR file '" + testCbrPath + "' not found. Skipping CBR tests.");
            System.out.println("To test CBR: Create a dummy 'test.cbr' file with some images (e.g., using WinRAR or 7-Zip, choose RAR format, store without compression).");
        } else {
            System.out.println("\n--- Testing CBR: " + testCbrPath + " ---");
            ComicMetadata cbrMetadata = utils.extractComicMetadata(testCbrPath);
            System.out.println("CBR Metadata: " + cbrMetadata);
            if (cbrMetadata.getCoverImagePath() != null && !cbrMetadata.getCoverImagePath().startsWith("No cover") && !cbrMetadata.getCoverImagePath().startsWith("Error") && !cbrMetadata.getCoverImagePath().startsWith("Unsupported")) {
                try { Files.deleteIfExists(Path.of(cbrMetadata.getCoverImagePath())); System.out.println("Deleted temp CBR cover."); } catch (IOException ignored) {}
            }
            if (cbrMetadata.getPageCount() > 0) {
                Bitmap cbrPage = utils.getPageAtIndexCbr(testCbrPath, 0); // Use getPageAtIndexCbr
                if (cbrPage != null) {
                    System.out.println("CBR Page 0 loaded. Dimensions: " + cbrPage.getWidth() + "x" + cbrPage.getHeight());
                    cbrPage.recycle();
                } else { System.out.println("Failed to load page 0 from CBR."); }
            }
        }
    }

    public Bitmap getPageAtIndexCbr(String cbrFilePath, int pageIndex) {
        File comicFile = new File(cbrFilePath);
        if (!comicFile.exists() || !comicFile.isFile() || !cbrFilePath.toLowerCase().endsWith(".cbr")) {
            Log.e(TAG, "Invalid CBR file path: " + cbrFilePath);
            return null;
        }

        Archive archive = null;
        try {
            archive = new Archive(new File(cbrFilePath));
            List<FileHeader> imageHeaders = new ArrayList<>();
            for (FileHeader fh : archive.getFileHeaders()) {
                if (!fh.isDirectory() && isImageFile(fh.getFileNameString())) {
                    imageHeaders.add(fh);
                }
            }

            if (imageHeaders.isEmpty() || pageIndex < 0 || pageIndex >= imageHeaders.size()) {
                Log.w(TAG, "Page index " + pageIndex + " out of bounds or no images found in CBR. Total images: " + imageHeaders.size());
                return null;
            }

            // Sort by name for consistent page order
            Collections.sort(imageHeaders, Comparator.comparing(fh -> fh.getFileNameString().toLowerCase()));

            FileHeader targetHeader = imageHeaders.get(pageIndex);

            Path tempPageFile = null;
            try {
                String pageFileExtension = getFileExtension(targetHeader.getFileNameString());
                if (pageFileExtension.isEmpty()) pageFileExtension = ".img";
                tempPageFile = Files.createTempFile("cbr_page_", pageFileExtension);

                try (OutputStream os = Files.newOutputStream(tempPageFile)) {
                    archive.extractFile(targetHeader, os);
                }

                Bitmap pageBitmap = BitmapFactory.decodeFile(tempPageFile.toAbsolutePath().toString());
                if (pageBitmap == null) {
                    Log.e(TAG, "Failed to decode bitmap for CBR entry: " + targetHeader.getFileNameString());
                }
                return pageBitmap;

            } catch (IOException | RarException e) {
                Log.e(TAG, "Error extracting or decoding page from CBR: " + targetHeader.getFileNameString(), e);
            } catch (OutOfMemoryError oom) {
                Log.e(TAG, "OutOfMemoryError decoding CBR page: " + targetHeader.getFileNameString(), oom);
                System.gc();
            } finally {
                if (tempPageFile != null) {
                    try {
                        Files.deleteIfExists(tempPageFile);
                    } catch (IOException e) {
                        Log.w(TAG, "Could not delete temp CBR page file: " + tempPageFile, e);
                    }
                }
            }

        } catch (RarException | IOException e) {
            Log.e(TAG, "Error reading CBR archive for getPageAtIndexCbr: " + cbrFilePath, e);
        } finally {
            if (archive != null) {
                try {
                    archive.close();
                } catch (IOException e) {
                    Log.e(TAG, "Error closing CBR archive in getPageAtIndexCbr: " + cbrFilePath, e);
                }
            }
        }
        return null;
    }
}
// FileInputStream import is already at the top of the class
