package com.example.comicreader;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

public class ProgressManager {

    // Inner public static class for storing progress entry
    public static class ComicProgressEntry {
        private final int currentPage;
        private final double progress;

        public ComicProgressEntry(int currentPage, double progress) {
            this.currentPage = currentPage;
            this.progress = progress;
        }

        public int getCurrentPage() {
            return currentPage;
        }

        public double getProgress() {
            return progress;
        }

        @Override
        public String toString() { // Optional: for easier debugging
            return "ComicProgressEntry{" +
                    "currentPage=" + currentPage +
                    ", progress=" + progress +
                    '}';
        }
    }

    private static final String PROGRESS_FILE_PATH =
            Paths.get(System.getProperty("user.home"), ".mrcomic_progress.txt").toString();

    public static Map<String, ComicProgressEntry> loadProgress() {
        Map<String, ComicProgressEntry> progressData = new HashMap<>();
        File progressFile = new File(PROGRESS_FILE_PATH);

        if (!progressFile.exists() || !progressFile.canRead()) {
            if (progressFile.exists()) { // File exists but cannot be read
                 System.err.println("Warning: Progress file exists but cannot be read: " + PROGRESS_FILE_PATH);
            }
            // If it doesn't exist, it's normal on first run, no message needed.
            return progressData; // Return empty map
        }

        try (BufferedReader reader = new BufferedReader(new FileReader(progressFile, StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.trim().isEmpty()) {
                    continue; // Skip empty lines
                }
                String[] parts = line.split(";", 3); // Expect 3 parts
                if (parts.length == 3) {
                    try {
                        String filePath = URLDecoder.decode(parts[0], StandardCharsets.UTF_8.name());
                        int currentPage = Integer.parseInt(parts[1]);
                        double progress = Double.parseDouble(parts[2]);

                        if (currentPage < 0 || progress < 0.0 || progress > 1.0) {
                            System.err.println("Warning: Invalid progress data in line (values out of range): " + line);
                            continue;
                        }
                        progressData.put(filePath, new ComicProgressEntry(currentPage, progress));
                    } catch (UnsupportedEncodingException e) {
                        // This should not happen with StandardCharsets.UTF_8
                        System.err.println("Warning: Failed to decode file path due to unsupported encoding (should not happen): " + parts[0] + " - " + e.getMessage());
                    } catch (NumberFormatException e) {
                        System.err.println("Warning: Invalid number format in progress line: " + line + " - " + e.getMessage());
                    } catch (IllegalArgumentException e) { // For URLDecoder
                         System.err.println("Warning: Malformed encoding in progress line for filepath: " + parts[0] + " - " + e.getMessage());
                    }
                } else {
                    System.err.println("Warning: Malformed progress line (unexpected number of parts): " + line);
                }
            }
        } catch (IOException e) {
            System.err.println("Error loading progress from " + PROGRESS_FILE_PATH + ": " + e.getMessage());
            // Return whatever was loaded so far, or an empty map if error was on open
        }
        return progressData;
    }

    public static void saveProgress(Map<String, ComicProgressEntry> progressData) {
        if (progressData == null) {
            System.err.println("Warning: Progress data to save is null. Aborting save.");
            return;
        }

        File progressFile = new File(PROGRESS_FILE_PATH);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(progressFile, StandardCharsets.UTF_8, false))) { // false to overwrite
            for (Map.Entry<String, ComicProgressEntry> entry : progressData.entrySet()) {
                String filePath = entry.getKey();
                ComicProgressEntry progressEntry = entry.getValue();

                if (filePath == null || progressEntry == null) {
                    System.err.println("Warning: Skipping null filePath or progressEntry during save.");
                    continue;
                }

                try {
                    String encodedFilePath = URLEncoder.encode(filePath, StandardCharsets.UTF_8.name());
                    String line = String.format("%s;%d;%f",
                            encodedFilePath,
                            progressEntry.getCurrentPage(),
                            progressEntry.getProgress());
                    writer.write(line);
                    writer.newLine();
                } catch (UnsupportedEncodingException e) {
                    // This should not happen with StandardCharsets.UTF_8
                    System.err.println("Warning: Failed to encode file path (should not happen): " + filePath + " - " + e.getMessage());
                }
            }
        } catch (IOException e) {
            System.err.println("Error saving progress to " + PROGRESS_FILE_PATH + ": " + e.getMessage());
        }
    }
}
