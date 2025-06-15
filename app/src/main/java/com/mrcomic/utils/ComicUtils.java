package com.example.mrcomic.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import com.github.junrar.Archive;
import com.github.junrar.rarfile.FileHeader;

public class ComicUtils {

    public static List<String> unpackComic(String comicFilePath, String destinationDirectory) throws IOException {
        File comicFile = new File(comicFilePath);
        if (!comicFile.exists()) {
            throw new IOException("Comic file does not exist: " + comicFilePath);
        }

        File destDir = new File(destinationDirectory);
        if (!destDir.exists()) {
            destDir.mkdirs();
        }

        List<String> imagePaths = new ArrayList<>();
        String fileExtension = getFileExtension(comicFilePath);

        if (fileExtension.equalsIgnoreCase("cbz") || fileExtension.equalsIgnoreCase("zip")) {
            imagePaths = unpackZip(comicFilePath, destinationDirectory);
        } else if (fileExtension.equalsIgnoreCase("cbr") || fileExtension.equalsIgnoreCase("rar")) {
            imagePaths = unpackRar(comicFilePath, destinationDirectory);
        } else {
            throw new IllegalArgumentException("Unsupported comic file format: " + fileExtension);
        }
        // Sort numerically
        Collections.sort(imagePaths, new Comparator<String>() {
            @Override
            public int compare(String s1, String s2) {
                return extractInt(s1) - extractInt(s2);
            }

            int extractInt(String s) {
                String num = s.replaceAll("[^\\d]", "");
                return num.isEmpty() ? 0 : Integer.parseInt(num);
            }
        });
        return imagePaths;
    }

    private static List<String> unpackZip(String zipFilePath, String destinationDirectory) throws IOException {
        List<String> imagePaths = new ArrayList<>();
        try (ZipFile zipFile = new ZipFile(zipFilePath)) {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                if (!entry.isDirectory() && isImageFile(entry.getName())) {
                    // Handle nested directories by preserving path structure
                    String entryName = entry.getName();
                    File newFile = new File(destinationDirectory, entryName);
                    new File(newFile.getParent()).mkdirs(); // Create parent directories if they don't exist

                    try (InputStream inputStream = zipFile.getInputStream(entry);
                         FileOutputStream outputStream = new FileOutputStream(newFile)) {
                        byte[] buffer = new byte[1024];
                        int len;
                        while ((len = inputStream.read(buffer)) > 0) {
                            outputStream.write(buffer, 0, len);
                        }
                    }
                    imagePaths.add(newFile.getAbsolutePath());
                }
            }
        }
        return imagePaths;
    }

    private static List<String> unpackRar(String rarFilePath, String destinationDirectory) throws IOException {
        List<String> imagePaths = new ArrayList<>();
        try (Archive archive = new Archive(new File(rarFilePath))) {
            FileHeader header = archive.nextFileHeader();
            while (header != null) {
                if (!header.isDirectory() && isImageFile(header.getFileNameString())) {
                    // Handle nested directories by preserving path structure
                    String entryName = header.getFileNameString();
                    File newFile = new File(destinationDirectory, entryName);
                    new File(newFile.getParent()).mkdirs(); // Create parent directories if they don't exist

                    try (FileOutputStream outputStream = new FileOutputStream(newFile)) {
                        archive.extractFile(header, outputStream);
                    }
                    imagePaths.add(newFile.getAbsolutePath());
                }
                header = archive.nextFileHeader();
            }
        } catch (Exception e) {
            throw new IOException("Error unpacking RAR file: " + e.getMessage(), e);
        }
        return imagePaths;
    }

    private static boolean isImageFile(String fileName) {
        String lowerCaseFileName = fileName.toLowerCase();
        return lowerCaseFileName.endsWith(".jpg") ||
               lowerCaseFileName.endsWith(".jpeg") ||
               lowerCaseFileName.endsWith(".png") ||
               lowerCaseFileName.endsWith(".gif") ||
               lowerCaseFileName.endsWith(".bmp") ||
               lowerCaseFileName.endsWith(".webp");
    }

    private static String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf(".");
        if (dotIndex == -1 || dotIndex == fileName.length() - 1) {
            return "";
        }
        return fileName.substring(dotIndex + 1);
    }
}


