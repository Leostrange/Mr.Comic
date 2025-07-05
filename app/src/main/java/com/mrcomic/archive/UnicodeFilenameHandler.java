package com.mrcomic.archive;

import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

public class UnicodeFilenameHandler {

    public static void printFilenames(String zipFilePath) {
        try {
            ZipFile zipFile = new ZipFile(zipFilePath);
            // zip4j handles unicode filenames by default
            List<FileHeader> fileHeaders = zipFile.getFileHeaders();
            System.out.println("Filenames in " + zipFilePath + ":");
            for (FileHeader fileHeader : fileHeaders) {
                System.out.println(fileHeader.getFileName());
            }
        } catch (ZipException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        // This is a placeholder for demonstration. In a real Android app,
        // you would use this class with actual zip files.
        System.out.println("UnicodeFilenameHandler is ready.");
    }
}


