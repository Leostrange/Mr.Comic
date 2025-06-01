package com.example.comicreader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Imports for junrar
import com.github.junrar.Archive;
import com.github.junrar.exception.RarException;

public class ComicUtils {

    public static FormatType detectComicFormat(File file) {
        if (file == null || !file.exists() || !file.isFile()) {
            return FormatType.UNKNOWN;
        }

        // Check for empty content first for all non-identified types.
        // Specific checks below might handle empty files differently if needed (e.g. empty ZIP is CBZ).
        // The junrar check will also apply to empty .cbr/.rar files.
        if (file.length() == 0) {
            // Re-evaluating: An empty .cbr or .rar detected by extension by CbrParser/ComicUtils
            // might still be Type.CBR_RAR for listing purposes, but UNKNOWN for content.
            // For now, let's keep it simple: if it's empty, it's UNKNOWN unless a specific
            // parser later says otherwise based on extension for listing.
            // The previous fix for CbrParser was to check extension *before* length.
            // Let's make CBR/RAR check by junrar also implicitly handle empty files
            // (junrar would likely throw an exception for an empty file if it's not valid RAR).
            // So, the file.length() == 0 check here is for files that are not identified by any content method.
            // The specific order will be: PDF, MOBI, ZIP, RAR. If all fail, then check length.
        }

        try {
            // Try PDF check first
            try (InputStream is = new FileInputStream(file)) {
                byte[] pdfSignature = new byte[5]; // %PDF-
                if (is.read(pdfSignature) == 5 && new String(pdfSignature, "ASCII").equals("%PDF-")) {
                    return FormatType.PDF;
                }
            } catch (IOException e) {
                // System.err.println("IOException during PDF check for " + file.getName() + ": " + e.getMessage());
            }

            // Try MOBI check
            try (InputStream is = new FileInputStream(file)) {
                if (file.length() > 60 + 8) {
                    byte[] mobiSignature = new byte[8];
                    is.skip(60);
                    if (is.read(mobiSignature) == 8 && new String(mobiSignature, "ASCII").equals("BOOKMOBI")) {
                        return FormatType.MOBI;
                    }
                }
            } catch (IOException e) {
                // System.err.println("IOException during MOBI check for " + file.getName() + ": " + e.getMessage());
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
                            byte[] mimetypeBytes = new byte[20];
                            int bytesRead = 0;
                            int currentRead;
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
                    }
                    // No need for explicit zis.closeEntry() here as getNextEntry() handles it.
                    if (isEpubMimetypeFound) break; // Optimization for EPUB
                }

                if (isEpubMimetypeFound || isEpubContainerXmlFound) {
                    return FormatType.EPUB;
                }

                if (hasAtLeastOneEntry) {
                    return FormatType.CBZ;
                }
                // If it opened as ZIP but had no entries (e.g. empty zip), let it fall through.
                // An empty ZIP is not a valid CBZ for our purposes.
            } catch (FileNotFoundException e) {
                // This should not happen if the initial file.exists() check passed.
                // System.err.println("FileNotFoundException for ZIP processing for " + file.getName() + ": " + e.getMessage());
                // Fall through, might be another type or UNKNOWN.
            } catch (IOException e) {
                // Not a valid ZIP archive, or other IO error. Fall through.
            }

            // Try CBR/RAR check using junrar
            // This is placed after ZIP check because some .cbz might be misidentified as .rar by extension
            // or some .cbr might actually be ZIP files. Content check is more reliable.
            // However, junrar will specifically look for RAR signature.
            try (Archive archive = new Archive(file)) {
                // Successfully opened as RAR.
                if (archive.getFileHeaders() != null && !archive.getFileHeaders().isEmpty()) {
                     if (archive.isEncrypted()) {
                         System.err.println("Warning: File is an encrypted RAR archive: " + file.getName());
                         // Treating encrypted RAR as UNKNOWN as we can't process its content.
                         return FormatType.UNKNOWN;
                     }
                     return FormatType.CBR_RAR;
                } else {
                    // Valid RAR archive structure but empty (no file headers).
                    // System.err.println("Warning: RAR archive is empty or has no file headers: " + file.getName());
                    // Treat as UNKNOWN if empty, not useful as a comic.
                }
            } catch (RarException e) {
                // Not a valid RAR file (e.g., wrong signature, corrupted).
                // System.err.println("RarException during CBR_RAR content detection for " + file.getName() + ": " + e.getMessage());
            } catch (IOException e) {
                // Other I/O errors trying to open/read the file as RAR.
                // System.err.println("IOException during CBR_RAR content detection for " + file.getName() + ": " + e.getMessage());
            }

            // If all specific checks fail, and the file is empty, it's UNKNOWN.
            // This check is now effectively for files that are not PDF, MOBI, EPUB, CBZ, or CBR_RAR.
            if (file.length() == 0) {
                return FormatType.UNKNOWN;
            }

            return FormatType.UNKNOWN;

        } catch (Exception e) {
            System.err.println("Unexpected error during file format detection for " + file.getName() + ": " + e.getMessage());
            return FormatType.UNKNOWN;
        }
    }

    public List<String> listComicFiles(String directoryPath) {
        File directory = new File(directoryPath);
        List<String> fileNames = new ArrayList<>();

        if (!directory.exists() || !directory.isDirectory()) {
            System.err.println("Error: Path is not a valid directory: " + directoryPath);
            return fileNames;
        }

        File[] files = directory.listFiles();
        if (files != null) {
            for (File fileEntry : files) { // Renamed to avoid conflict with outer 'file'
                if (fileEntry.isDirectory()) {
                    fileNames.add(fileEntry.getName());
                } else {
                    FormatType type = ComicUtils.detectComicFormat(fileEntry);
                    switch (type) {
                        case PDF:
                        case EPUB:
                        case CBZ:
                        case MOBI:
                        case CBR_RAR:
                            fileNames.add(fileEntry.getName());
                            break;
                        default:
                            // UNKNOWN or other types are not added
                            break;
                    }
                }
            }
        } else {
            System.err.println("Error: Could not list files in directory: " + directoryPath);
        }
        return fileNames;
    }

    public static void main(String[] args) {
        ComicUtils utils = new ComicUtils();
        String testDirPath = ".";
        System.out.println("\nFiles in '" + testDirPath + "' (using detectComicFormat logic):");
        List<String> files = utils.listComicFiles(testDirPath);
        if (files.isEmpty()) {
            System.out.println("No files found by listComicFiles or directory is empty/inaccessible.");
        } else {
            for (String fileName : files) {
                System.out.println(fileName + " -> Type: " + detectComicFormat(new File(testDirPath, fileName)));
            }
        }

        // Test with a specific file if needed for quick ad-hoc test
        // File specificTestFile = new File("path/to/your/test/file.cbr");
        // if (specificTestFile.exists()) {
        //     System.out.println("\nTesting specific file: " + specificTestFile.getPath());
        //     System.out.println(specificTestFile.getName() + " -> Type: " + detectComicFormat(specificTestFile));
        // }
    }
}
