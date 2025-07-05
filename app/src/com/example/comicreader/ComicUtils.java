package com.example.comicreader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets; // Added for PDF signature check
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Imports for junrar
import com.github.junrar.Archive;
import com.github.junrar.exception.RarException;

// Imports for PDFBox
import org.apache.pdfbox.Loader;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException;

public class ComicUtils {

    public static FormatType detectComicFormat(File file) {
        if (file == null || !file.exists() || !file.isFile()) {
            return FormatType.UNKNOWN;
        }

        // Order of checks:
        // 1. PDF (Signature + PDFBox validation)
        // 2. MOBI (Signature)
        // 3. ZIP-based (EPUB/CBZ)
        // 4. RAR-based (CBR_RAR using junrar)
        // 5. Empty file check (if not caught by specific parsers like junrar for empty RARs)
        // 6. Unknown

        // Try PDF check (Signature + PDFBox validation)
        if (file.length() > 8) { // Min length for "%PDF-x.y" + a bit more
            try (InputStream is = new FileInputStream(file)) {
                byte[] pdfSignatureBytes = new byte[5]; // For "%PDF-"
                int bytesRead = is.read(pdfSignatureBytes);
                if (bytesRead == 5) {
                    String signature = new String(pdfSignatureBytes, StandardCharsets.US_ASCII);
                    if ("%PDF-".equals(signature)) {
                        // Signature matches, now try to parse with PDFBox for confirmation
                        try (PDDocument document = Loader.loadPDF(file)) {
                            // Successfully loaded by PDFBox, it's a PDF.
                            return FormatType.PDF;
                        } catch (InvalidPasswordException e) {
                            System.err.println("Info: File " + file.getName() + " is a password-protected PDF. Detected as PDF.");
                            return FormatType.PDF; // Still classify as PDF
                        } catch (IOException e_pdfbox) {
                            // PDFBox failed to load/parse it despite signature.
                            System.err.println("Warning: PDF signature matched for " + file.getName() +
                                               ", but PDFBox failed to parse it. Error: " + e_pdfbox.getMessage());
                            // Fall through to other detections.
                        }
                    }
                }
            } catch (IOException e_io) {
                // Error reading initial bytes for signature.
                 System.err.println("IOException during PDF signature pre-check for " + file.getName() + ": " + e_io.getMessage());
                // Fall through.
            }
        }

        // Try MOBI check
        // This check should ideally be after PDFBox check because PDFBox is more robust for PDFs.
        // A MOBI file's initial bytes are not "%PDF-".
        if (file.length() > 60 + 8) { // Ensure file is long enough for "BOOKMOBI" at offset 60
            try (InputStream is = new FileInputStream(file)) {
                byte[] mobiSignature = new byte[8];
                is.skip(60);
                if (is.read(mobiSignature) == 8 && new String(mobiSignature, StandardCharsets.US_ASCII).equals("BOOKMOBI")) {
                    return FormatType.MOBI;
                }
            } catch (IOException e) {
                // System.err.println("IOException during MOBI check for " + file.getName() + ": " + e.getMessage());
                // Fall through
            }
        }

        // Try ZIP-based formats (EPUB, CBZ)
        try (FileInputStream fis = new FileInputStream(file); // Need separate FIS for ZipInputStream if file is read multiple times
             ZipInputStream zis = new ZipInputStream(fis)) {
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
                            String mimetypeContent = new String(mimetypeBytes, 0, bytesRead, StandardCharsets.US_ASCII).trim();
                            if ("application/epub+zip".equals(mimetypeContent)) {
                                isEpubMimetypeFound = true;
                            }
                        }
                    } else if ("META-INF/container.xml".equals(entryName)) {
                        isEpubContainerXmlFound = true;
                    }
                }
                if (isEpubMimetypeFound) break;
            }

            if (isEpubMimetypeFound || isEpubContainerXmlFound) {
                return FormatType.EPUB;
            }

            if (hasAtLeastOneEntry) {
                return FormatType.CBZ;
            }
        } catch (FileNotFoundException e) {
            // Should not happen if initial file.exists() passed.
        } catch (IOException e) {
            // Not a valid ZIP archive. Fall through.
        }

        // Try CBR/RAR check using junrar
        try (Archive archive = new Archive(file)) {
            if (archive.getFileHeaders() != null && !archive.getFileHeaders().isEmpty()) {
                 if (archive.isEncrypted()) {
                     System.err.println("Warning: File is an encrypted RAR archive: " + file.getName());
                     return FormatType.UNKNOWN;
                 }
                 return FormatType.CBR_RAR;
            }
        } catch (RarException e) {
            // Not a valid RAR file.
        } catch (IOException e) {
            // Other I/O errors.
        }

        // If all specific checks fail, and the file is empty.
        if (file.length() == 0) {
            return FormatType.UNKNOWN;
        }

        return FormatType.UNKNOWN;
        // No outer try-catch(Exception e) needed here as each block handles its specific IO/format exceptions.
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
            for (File fileEntry : files) {
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
                // Need to construct full path for detectComicFormat if testDirPath is not current dir for File objects
                File testFile = new File(testDirPath, fileName);
                if (!testFile.isDirectory()){ // Avoid calling detect on subdirectories if they are listed
                     System.out.println(fileName + " -> Type: " + detectComicFormat(testFile));
                } else {
                     System.out.println(fileName + " -> Type: DIRECTORY");
                }
            }
        }
    }
}
