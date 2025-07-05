package com.example.comicreader;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipEntry;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.ByteArrayInputStream; // Added for getPageContentAsInputStream
import java.io.ByteArrayOutputStream; // Added for getPageContentAsInputStream

// Imports for detectComicFormat
import com.example.comicreader.ComicUtils;
import com.example.comicreader.FormatType;

public class CbzParser {

    public CbzParser() {
        // Constructor, if state is needed.
    }

    public List<String> getPages(File cbzFile) throws IOException, IllegalArgumentException {
        if (cbzFile == null || !cbzFile.exists() || !cbzFile.isFile()) {
            throw new FileNotFoundException("CBZ file is null, does not exist, or is not a file: " +
                                            (cbzFile != null ? cbzFile.getPath() : "null"));
        }

        FormatType type = ComicUtils.detectComicFormat(cbzFile);
        if (type != FormatType.CBZ) {
            throw new IllegalArgumentException("File is not considered a CBZ archive by ComicUtils.detectComicFormat. Detected format: " + type + ". Path: " + cbzFile.getPath());
        }

        List<String> imagePaths = new ArrayList<>();

        try (FileInputStream fis = new FileInputStream(cbzFile);
             ZipInputStream zis = new ZipInputStream(fis)) {

            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                if (entry.isDirectory()) {
                    continue;
                }

                String entryName = entry.getName();

                // Using startsWith for __MACOSX and exact match for .DS_Store
                if (entryName.startsWith("__MACOSX/") || entryName.equals(".DS_Store")) {
                    continue;
                }

                String lowerEntryName = entryName.toLowerCase();
                if (lowerEntryName.endsWith(".jpg") ||
                    lowerEntryName.endsWith(".jpeg") ||
                    lowerEntryName.endsWith(".png") ||
                    lowerEntryName.endsWith(".gif") ||
                    lowerEntryName.endsWith(".webp")) {
                    imagePaths.add(entryName);
                }
            }
        }

        Collections.sort(imagePaths);
        return imagePaths;
    }

    public InputStream getPageContentAsInputStream(File cbzFile, String imagePathInArchive)
        throws IOException, FileNotFoundException, IllegalArgumentException {

        if (cbzFile == null || !cbzFile.exists() || !cbzFile.isFile()) {
            throw new FileNotFoundException("CBZ file is null, does not exist, or is not a file: " +
                                            (cbzFile != null ? cbzFile.getPath() : "null"));
        }
        if (imagePathInArchive == null || imagePathInArchive.isEmpty()) {
            throw new IllegalArgumentException("Image path in archive cannot be null or empty.");
        }

        FormatType type = ComicUtils.detectComicFormat(cbzFile);
        if (type != FormatType.CBZ) {
            throw new IllegalArgumentException("File is not a valid CBZ archive. Detected format: " + type +
                                               " for file: " + cbzFile.getPath());
        }

        try (FileInputStream fis = new FileInputStream(cbzFile);
             ZipInputStream zis = new ZipInputStream(fis)) {

            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                if (entry.getName().equals(imagePathInArchive)) {
                    if (entry.isDirectory()) {
                        // zis.closeEntry(); // Not strictly necessary before throwing, as zis will be closed by try-with-resources
                        throw new FileNotFoundException("Requested path is a directory, not a file: " + imagePathInArchive + " in file: " + cbzFile.getPath());
                    }

                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    byte[] buffer = new byte[4096];
                    int len;
                    while ((len = zis.read(buffer)) > 0) {
                        baos.write(buffer, 0, len);
                    }
                    // zis.closeEntry(); // Not strictly necessary here, as we are returning and zis will be closed.
                    return new ByteArrayInputStream(baos.toByteArray());
                }
                // zis.closeEntry(); // Not needed, getNextEntry() handles closing the previous entry.
            }
        }

        throw new FileNotFoundException("Entry not found in CBZ archive: " + imagePathInArchive +
                                        " in file: " + cbzFile.getPath());
    }
}
