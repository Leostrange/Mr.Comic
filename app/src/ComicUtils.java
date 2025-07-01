package com.example.comicreader; // Or a suitable package name

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ComicUtils {

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
                fileNames.add(file.getName());
            }
        } else {
            System.err.println("Error: Could not list files in directory: " + directoryPath);
            // This can happen due to permission issues, etc.
        }
        return fileNames;
    }

    // Main method for basic testing (optional, can be removed later)
    public static void main(String[] args) {
        ComicUtils utils = new ComicUtils();
        String testDirPath = "."; // Test with current directory
        System.out.println("Files in '" + testDirPath + "':");
        List<String> files = utils.listComicFiles(testDirPath);
        for (String fileName : files) {
            System.out.println(fileName);
        }

        String testInvalidPath = "./nonexistent_directory";
        System.out.println("\nFiles in '" + testInvalidPath + "':");
        List<String> filesInvalid = utils.listComicFiles(testInvalidPath);
        // Expected: Error message and empty list
    }
}
