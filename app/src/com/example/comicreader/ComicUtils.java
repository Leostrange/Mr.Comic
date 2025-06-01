package com.example.comicreader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException; // Added for specific catch
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList; // Keep existing import
import java.util.Arrays;    // For byte array comparisons
import java.util.List;    // Keep existing import
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class ComicUtils {

    public static FormatType detectComicFormat(File file) {
        if (file == null || !file.exists() || !file.isFile()) {
            return FormatType.UNKNOWN;
        }

        // CBR/RAR check (by extension first, even for empty files)
        String fileNameLower = file.getName().toLowerCase();
        if (fileNameLower.endsWith(".cbr") || fileNameLower.endsWith(".rar")) {
            // This is a simplified check. Real RAR detection needs a library
            // or more complex parsing of the RAR format.
            return FormatType.CBR_RAR;
        }

        // Now check for empty content for non-CBR/RAR files
        if (file.length() == 0) {
            return FormatType.UNKNOWN;
        }

        try {
            // Try PDF check first
            try (InputStream is = new FileInputStream(file)) {
                byte[] pdfSignature = new byte[5]; // %PDF-
                if (is.read(pdfSignature) == 5 && new String(pdfSignature, "ASCII").equals("%PDF-")) {
                    return FormatType.PDF;
                }
            } catch (IOException e) {
                System.err.println("IOException during PDF check for " + file.getName() + ": " + e.getMessage());
            }

            // Try MOBI check
            // The "BOOKMOBI" signature is at offset 60 of the PDB header.
            try (InputStream is = new FileInputStream(file)) {
                if (file.length() > 60 + 8) { // Ensure file is long enough for "BOOKMOBI" at offset 60
                    byte[] mobiSignature = new byte[8]; // Length of "BOOKMOBI"
                    is.skip(60); // Skip to offset 60
                    if (is.read(mobiSignature) == 8 && new String(mobiSignature, "ASCII").equals("BOOKMOBI")) {
                        return FormatType.MOBI;
                    }
                }
            } catch (IOException e) {
                System.err.println("IOException during MOBI check for " + file.getName() + ": " + e.getMessage());
            }

            // Try ZIP-based formats (EPUB, CBZ)
            try (ZipInputStream zis = new ZipInputStream(new FileInputStream(file))) {
                ZipEntry entry;
                boolean isEpubMimetypeFound = false;
                boolean isEpubContainerXmlFound = false;
                boolean hasAtLeastOneEntry = false;

                while ((entry = zis.getNextEntry()) != null) {
                    hasAtLeastOneEntry = true;
                    if (!entry.isDirectory()) {
                        String entryName = entry.getName();
                        if ("mimetype".equals(entryName)) {
                            byte[] mimetypeBytes = new byte[20]; // "application/epub+zip" is 20 bytes
                            int bytesRead = 0;
                            int currentRead;
                            // Ensure all bytes are read if possible, up to the buffer size
                            while(bytesRead < mimetypeBytes.length && (currentRead = zis.read(mimetypeBytes, bytesRead, mimetypeBytes.length - bytesRead)) != -1) {
                                bytesRead += currentRead;
                            }
                            if (bytesRead > 0) {
                                String mimetypeContent = new String(mimetypeBytes, 0, bytesRead, "ASCII").trim();
                                if ("application/epub+zip".equals(mimetypeContent)) {
                                    isEpubMimetypeFound = true;
                                }
                            }
                        } else if ("META-INF/container.xml".equals(entryName)) {
                            isEpubContainerXmlFound = true;
                        }
                        // For more robust CBZ: check for image file extensions
                        // String nameLower = entryName.toLowerCase();
                        // if (nameLower.endsWith(".jpg") || nameLower.endsWith(".jpeg") ||
                        //     nameLower.endsWith(".png") || nameLower.endsWith(".gif") ||
                        //     nameLower.endsWith(".webp")) {
                        //     hasImages = true;
                        // }
                    }
                    zis.closeEntry();
                    // If EPUB is confirmed early, no need to check further entries.
                    if (isEpubMimetypeFound) break;
                }

                if (isEpubMimetypeFound || isEpubContainerXmlFound) {
                    return FormatType.EPUB;
                }

                if (hasAtLeastOneEntry) { // Only if it had entries and wasn't EPUB
                    return FormatType.CBZ;
                }
                // If it opened as ZIP but had no entries, or was not EPUB and had no entries,
                // let it fall through to UNKNOWN.

            } catch (FileNotFoundException e) {
                System.err.println("FileNotFoundException for ZIP processing for " + file.getName() + ": " + e.getMessage());
                return FormatType.UNKNOWN;
            } catch (IOException e) {
                // This is expected if the file is not a valid ZIP archive.
                // We don't log this as an error, just fall through to UNKNOWN.
            }

            return FormatType.UNKNOWN; // Default if no format is detected

        } catch (Exception e) {
            // Catch any other unexpected error during detection to prevent crashes
            System.err.println("Unexpected error during file format detection for " + file.getName() + ": " + e.getMessage());
            // e.printStackTrace(); // Consider logging the stack trace for debugging
            return FormatType.UNKNOWN;
        }
    }

    // --- Existing listComicFiles method ---
    // This method will be updated in a later step to use detectComicFormat.
    public List<String> listComicFiles(String directoryPath) {
        File directory = new File(directoryPath);
        List<String> fileNames = new ArrayList<>();

        if (!directory.exists() || !directory.isDirectory()) {
            System.err.println("Error: Path is not a valid directory: " + directoryPath);
            return fileNames;
        }

        File[] files = directory.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    fileNames.add(file.getName());
                } else {
                    FormatType type = ComicUtils.detectComicFormat(file);
                    switch (type) {
                        case PDF:
                        case EPUB:
                        case CBZ:
                        case MOBI:
                        case CBR_RAR:
                            fileNames.add(file.getName());
                            break;
                        // default:
                            // Optionally log or handle UNKNOWN or ZIP_GENERIC files if needed
                            // For now, we just don't add them to the list.
                    }
                }
            }
        } else {
            System.err.println("Error: Could not list files in directory: " + directoryPath);
        }
        return fileNames;
    }
    // --- End of existing listComicFiles method ---


    // Main method for basic testing (optional, can be removed or adapted)
    public static void main(String[] args) {
        // This main method is primarily for developer ad-hoc testing.
        // Proper unit tests should be created in ComicUtilsTest.java.

        // Example: Create dummy files for rudimentary testing.
        // Note: These dummy files will likely not pass content-based checks,
        // only extension-based or very simple signature checks if any.
        // String[] testFiles = {"dummy.pdf", "dummy.epub", "dummy.cbz", "dummy.mobi", "dummy.cbr", "dummy.txt", "archive.rar"};
        // for (String fName : testFiles) {
        //     try {
        //         File testFile = new File(fName);
        //         testFile.createNewFile(); // Create an empty file
        //         // For ZIP based formats, you'd need to create actual ZIPs with minimal structure.
        //         // For PDF/MOBI, you'd need files with correct headers.
        //         System.out.println(fName + ": " + detectComicFormat(testFile));
        //         // testFile.delete(); // Clean up
        //     } catch (IOException e) {
        //         System.err.println("Could not create or test dummy file: " + fName);
        //         e.printStackTrace();
        //     }
        // }

        // The existing listComicFiles test can remain for now.
        ComicUtils utils = new ComicUtils();
        String testDirPath = "."; // Test with current directory
        System.out.println("\nFiles in '" + testDirPath + "' (using old listComicFiles logic):");
        List<String> files = utils.listComicFiles(testDirPath);
        if (files.isEmpty()) {
            System.out.println("No files found by listComicFiles or directory is empty/inaccessible.");
        } else {
            for (String fileName : files) {
                System.out.println(fileName);
            }
        }
    }
}
