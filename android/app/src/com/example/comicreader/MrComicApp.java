package com.example.comicreader;

import java.io.File;
import java.io.File;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Scanner; // Added import

public class MrComicApp {

    public static void main(String[] args) {
        System.out.println("Starting MrComicApp...");
        Scanner scanner = new Scanner(System.in); // Create Scanner

        ComicUtils comicUtils = new ComicUtils();
        Map<String, ProgressManager.ComicProgressEntry> savedProgressMap = ProgressManager.loadProgress();
        System.out.println("Loaded " + savedProgressMap.size() + " progress entries.");

        String directoryToScan;

        if (args.length > 0) {
            directoryToScan = args[0];
            System.out.println("Using directory from command line argument: " + directoryToScan);
        } else {
            directoryToScan = ".";
            System.out.println("No directory specified, using current directory by default.");
        }

        // Ensure the chosen directory path is printed as absolute for clarity
        File directory = new File(directoryToScan);
        System.out.println("Scanning for comics in directory: " + directory.getAbsolutePath());

        List<String> foundItems = comicUtils.listComicFiles(directoryToScan);
        List<Comic> comicsList = new ArrayList<>(); // Renamed from comicObjects
        Map<String, ProgressManager.ComicProgressEntry> allProgressData = new HashMap<>(savedProgressMap);


        if (foundItems.isEmpty()) {
            System.out.println("No items (files or directories) found by ComicUtils in the directory: " + directoryToScan);
        } else {
            System.out.println("Listing comics found:");
            int comicIndex = 0;
            for (String itemName : foundItems) {
                File item = new File(directoryToScan, itemName);
                if (item.isFile()) {
                    String title = itemName;
                    int lastDot = itemName.lastIndexOf('.');
                    if (lastDot > 0) {
                        title = itemName.substring(0, lastDot);
                    }

                    String comicFilePath = item.getPath();
                    ComicUtils.ComicMetadata metadata = comicUtils.extractComicMetadata(comicFilePath);
                    String coverImageInfo = metadata.getCoverImagePath();
                    int pageCount = metadata.getPageCount();

                    int currentPage = 0;
                    double progress = 0.0;

                    if (savedProgressMap.containsKey(comicFilePath)) {
                        ProgressManager.ComicProgressEntry savedEntry = savedProgressMap.get(comicFilePath);
                        currentPage = savedEntry.getCurrentPage();
                        // progress will be recalculated by comic.updateProgress() using pageCount
                    }

                    Comic comic = new Comic(
                            title,
                            comicFilePath,
                            coverImageInfo,
                            pageCount,
                            currentPage,
                            0.0 // Initial progress, will be updated by comic.updateProgress()
                    );
                    comic.updateProgress(); // Calculate initial progress based on loaded/default currentPage and new pageCount

                    // Ensure allProgressData has the most current view, including defaults for new comics
                    allProgressData.put(comicFilePath, new ProgressManager.ComicProgressEntry(comic.getCurrentPage(), comic.getProgress()));

                    comicsList.add(comic);
                    System.out.printf("%d. %s (Pages: %d, Cover: %s, Read: %d, Progress: %.0f%%)%n",
                            ++comicIndex,
                            comic.getTitle(),
                            comic.getPageCount(),
                            comic.getCoverImage(),
                            comic.getCurrentPage(),
                            comic.getProgress() * 100);
                } else if (item.isDirectory()) {
                    // System.out.println("Found directory: " + itemName + " (Skipping for comic object creation)");
                }
            }
        }

        if (comicsList.isEmpty()) {
            System.out.println("No comic files processed into Comic objects in the directory: " + directoryToScan);
        } else {
            while (true) {
                System.out.print("Enter comic number to open (1-" + comicsList.size() + "), or 'q' to quit: ");
                String input = scanner.nextLine().trim();

                if ("q".equalsIgnoreCase(input)) {
                    break;
                }
                try {
                    int comicNumber = Integer.parseInt(input);
                    if (comicNumber >= 1 && comicNumber <= comicsList.size()) {
                        Comic selectedComic = comicsList.get(comicNumber - 1);
                        enterReadingMode(scanner, selectedComic, allProgressData);
                        // After returning from reading mode, re-list comics with updated progress
                        System.out.println("\nComics List (updated):");
                        int comicIndex = 0;
                        for(Comic comic : comicsList) {
                             System.out.printf("%d. %s (Pages: %d, Cover: %s, Read: %d, Progress: %.0f%%)%n",
                                ++comicIndex,
                                comic.getTitle(),
                                comic.getPageCount(),
                                comic.getCoverImage(),
                                comic.getCurrentPage(),
                                comic.getProgress() * 100);
                        }

                    } else {
                        System.out.println("Invalid comic number. Please try again.");
                    }
                } catch (NumberFormatException e) {
                    System.out.println("Invalid input. Please enter a number or 'q'.");
                }
            }
        }
        scanner.close(); // Close scanner
        System.out.println("MrComicApp finished.");
    }

    private static void enterReadingMode(Scanner scanner, Comic comic, Map<String, ProgressManager.ComicProgressEntry> allProgressData) {
        System.out.println("\n--- Reading: " + comic.getTitle() + " ---");

        while (true) {
            String pageInfo = comic.getPageCount() > 0 ? comic.getPageCount() + "" : "unknown";
            System.out.printf("Page: %d/%s (%.0f%%) | Commands: (n)ext, (p)revious, (s)et page <num>, (q)uit reader: ",
                    comic.getCurrentPage(), pageInfo, comic.getProgress() * 100);
            String commandInput = scanner.nextLine().trim().toLowerCase();
            String[] parts = commandInput.split("\\s+");
            String command = parts[0];

            boolean pageChanged = false;

            switch (command) {
                case "n":
                case "next":
                    if (comic.getPageCount() > 0) {
                        comic.setCurrentPage(Math.min(comic.getPageCount(), comic.getCurrentPage() + 1));
                    } else {
                        comic.setCurrentPage(comic.getCurrentPage() + 1);
                    }
                    pageChanged = true;
                    break;
                case "p":
                case "previous":
                    comic.setCurrentPage(Math.max(1, comic.getCurrentPage() - 1));
                    pageChanged = true;
                    break;
                case "s":
                case "set":
                    if (parts.length > 1) {
                        try {
                            int pageNumber = Integer.parseInt(parts[1]);
                            if (comic.getPageCount() > 0) {
                                comic.setCurrentPage(Math.max(1, Math.min(comic.getPageCount(), pageNumber)));
                            } else {
                                comic.setCurrentPage(Math.max(1, pageNumber));
                            }
                            pageChanged = true;
                        } catch (NumberFormatException e) {
                            System.out.println("Invalid page number for 's' command.");
                        }
                    } else {
                        System.out.println("'s' command requires a page number (e.g., 's 10').");
                    }
                    break;
                case "q":
                case "quit":
                    System.out.println("Exiting reader for: " + comic.getTitle());
                    // Ensure final progress is saved
                    allProgressData.put(comic.getFilePath(), new ProgressManager.ComicProgressEntry(comic.getCurrentPage(), comic.getProgress()));
                    ProgressManager.saveProgress(allProgressData);
                    return; // Exit reading mode
                default:
                    System.out.println("Unknown command. Please try again.");
            }

            if (pageChanged) {
                comic.updateProgress();
                allProgressData.put(comic.getFilePath(), new ProgressManager.ComicProgressEntry(comic.getCurrentPage(), comic.getProgress()));
                ProgressManager.saveProgress(allProgressData);
                // Display is handled by the loop's next iteration prompt
            }
        }
    }
}
