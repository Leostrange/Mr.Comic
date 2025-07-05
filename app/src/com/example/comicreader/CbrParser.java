package com.example.comicreader;

// junrar imports
import com.github.junrar.Archive;
import com.github.junrar.exception.RarException;
import com.github.junrar.rarfile.FileHeader;

// Standard Java imports
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.FileOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

// Project-specific imports
import com.example.comicreader.ComicUtils;
import com.example.comicreader.FormatType;

public class CbrParser {

    public CbrParser() {
        // Constructor
    }

    public List<String> getPages(File cbrFile) throws IOException, IllegalArgumentException {
        if (cbrFile == null || !cbrFile.exists() || !cbrFile.isFile()) {
            throw new FileNotFoundException("CBR file is null, does not exist, or is not a file: " +
                                            (cbrFile != null ? cbrFile.getPath() : "null"));
        }

        FormatType type = ComicUtils.detectComicFormat(cbrFile);
        if (type != FormatType.CBR_RAR) {
            throw new IllegalArgumentException("File is not identified as a CBR/RAR archive by ComicUtils.detectComicFormat. Detected: " + type +
                                               " for file: " + cbrFile.getPath());
        }

        List<String> imagePaths = new ArrayList<>();
        try (Archive archive = new Archive(cbrFile)) {
            for (FileHeader header : archive.getFileHeaders()) {
                if (header.isDirectory()) {
                    continue;
                }

                String entryName = header.getFileName();
                if (entryName == null || entryName.isEmpty()) {
                    continue;
                }

                if (entryName.startsWith("__MACOSX/") || ".DS_Store".equals(entryName)) {
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
        } catch (RarException e) {
            throw new IOException("Error reading RAR archive (junrar RarException): " + e.getMessage(), e);
        } catch (Exception e) {
            if (e instanceof IOException) {
                throw (IOException) e;
            }
            throw new IOException("Error processing CBR file: " + e.getMessage(), e);
        }

        Collections.sort(imagePaths);
        return imagePaths;
    }

    public InputStream getPageContentAsInputStream(File cbrFile, String imagePathInArchive)
        throws IOException, FileNotFoundException, IllegalArgumentException {

        if (cbrFile == null || !cbrFile.exists() || !cbrFile.isFile()) {
            throw new FileNotFoundException("CBR file is null, does not exist, or is not a file: " +
                                            (cbrFile != null ? cbrFile.getPath() : "null"));
        }
        if (imagePathInArchive == null || imagePathInArchive.isEmpty()) {
            throw new IllegalArgumentException("Image path in archive cannot be null or empty.");
        }

        FormatType type = ComicUtils.detectComicFormat(cbrFile);
        if (type != FormatType.CBR_RAR) {
            throw new IllegalArgumentException("File is not identified as a CBR/RAR archive by ComicUtils.detectComicFormat. Detected: " + type +
                                               " for file: " + cbrFile.getPath());
        }

        try (Archive archive = new Archive(cbrFile)) {
            for (FileHeader header : archive.getFileHeaders()) {
                // Using header.getFileName() consistent with getPages()
                String currentEntryName = header.getFileName();
                if (currentEntryName == null) continue; // Defensive check

                if (currentEntryName.equals(imagePathInArchive)) {
                    if (header.isDirectory()) {
                        throw new FileNotFoundException("Requested path is a directory, not a file, in CBR archive: " + imagePathInArchive + " in file: " + cbrFile.getPath());
                    }

                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    // Ensure the header is the one we are extracting, archive.extractFile might not use the header for selection
                    // but for information. The iteration already selected the correct header.
                    archive.extractFile(header, baos);

                    return new ByteArrayInputStream(baos.toByteArray());
                }
            }
        } catch (RarException e) {
            throw new IOException("Error reading RAR archive for entry '" + imagePathInArchive + "': " + e.getMessage(), e);
        } catch (Exception e) {
            if (e instanceof IOException) {
                throw (IOException) e;
            }
            throw new IOException("Error processing CBR file for entry '" + imagePathInArchive + "': " + e.getMessage(), e);
        }

        throw new FileNotFoundException("Entry '" + imagePathInArchive + "' not found in CBR archive: " + cbrFile.getPath());
    }
}
