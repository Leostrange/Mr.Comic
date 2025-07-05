package com.mrcomic.archive;

import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class StreamUnzipper {

    public static void unzipLargeArchive(String zipFilePath, String destinationPath) throws ZipException, IOException {
        ZipFile zipFile = new ZipFile(zipFilePath);
        zipFile.setRunInThread(true); // Optional: run extraction in a separate thread

        List<FileHeader> fileHeaders = zipFile.getFileHeaders();

        for (FileHeader fileHeader : fileHeaders) {
            if (fileHeader.isDirectory()) {
                Files.createDirectories(Paths.get(destinationPath, fileHeader.getFileName()));
            } else {
                Path outputPath = Paths.get(destinationPath, fileHeader.getFileName());
                Files.createDirectories(outputPath.getParent());

                try (InputStream is = zipFile.getInputStream(fileHeader);
                     OutputStream os = Files.newOutputStream(outputPath)) {
                    byte[] buffer = new byte[4096]; // 4KB buffer
                    int bytesRead;
                    while ((bytesRead = is.read(buffer)) != -1) {
                        os.write(buffer, 0, bytesRead);
                    }
                }
            }
        }
    }

    // Example usage (for testing purposes, not for direct Android integration)
    public static void main(String[] args) {
        String zipFilePath = "large_test_archive.zip"; // Replace with your large zip file
        String destinationPath = "extracted_content";

        // Create a dummy large zip file for testing
        try {
            ZipFile dummyZipFile = new ZipFile(zipFilePath);
            dummyZipFile.addFolder(Paths.get("dummy_folder").toFile()); // Add a dummy folder
            System.out.println("Dummy large zip file created: " + zipFilePath);
        } catch (ZipException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            unzipLargeArchive(zipFilePath, destinationPath);
            System.out.println("Large archive unzipped successfully to: " + destinationPath);
        } catch (ZipException e) {
            System.err.println("ZipException: " + e.getMessage());
            e.printStackTrace();
        } catch (IOException e) {
            System.err.println("IOException: " + e.getMessage());
            e.printStackTrace();
        }
    }
}


