package com.example.comicreader;

import com.example.comicreader.Comic;

public class ComicTest {

    public static void main(String[] args) {
        System.out.println("Running ComicTest...");
        testConstructor();
        testSettersAndGetters();
        testUpdateProgress(); // Call the new test method
        System.out.println("ComicTest completed.");
    }

    public static void testConstructor() {
        System.out.println("Starting testConstructor...");
        String title = "Test Comic";
        String filePath = "/path/to/test.cbz";
        String coverImage = "/path/to/cover.jpg";
        int pageCount = 100;
        int currentPage = 10;
        double progress = 0.1;

        Comic comic = new Comic(title, filePath, coverImage, pageCount, currentPage, progress);

        assert title.equals(comic.getTitle()) : "Constructor Test Failed: Title mismatch";
        assert filePath.equals(comic.getFilePath()) : "Constructor Test Failed: FilePath mismatch";
        assert coverImage.equals(comic.getCoverImage()) : "Constructor Test Failed: CoverImage mismatch";
        assert pageCount == comic.getPageCount() : "Constructor Test Failed: PageCount mismatch";
        assert currentPage == comic.getCurrentPage() : "Constructor Test Failed: CurrentPage mismatch";
        assert progress == comic.getProgress() : "Constructor Test Failed: Progress mismatch";

        System.out.println("testConstructor passed.");
    }

    public static void testSettersAndGetters() {
        System.out.println("Starting testSettersAndGetters...");
        Comic comic = new Comic("Initial Title", "initial/path.cbz", "initial/cover.jpg", 50, 5, 0.05);

        // Test Title
        String newTitle = "Updated Test Comic";
        comic.setTitle(newTitle);
        assert newTitle.equals(comic.getTitle()) : "Setter/Getter Test Failed: Title mismatch";

        // Test FilePath
        String newFilePath = "/new/path/to/updated.cbz";
        comic.setFilePath(newFilePath);
        assert newFilePath.equals(comic.getFilePath()) : "Setter/Getter Test Failed: FilePath mismatch";

        // Test CoverImage
        String newCoverImage = "/new/path/to/updated_cover.jpg";
        comic.setCoverImage(newCoverImage);
        assert newCoverImage.equals(comic.getCoverImage()) : "Setter/Getter Test Failed: CoverImage mismatch";

        // Test PageCount
        int newPageCount = 150;
        comic.setPageCount(newPageCount);
        assert newPageCount == comic.getPageCount() : "Setter/Getter Test Failed: PageCount mismatch";

        // Test CurrentPage
        int newCurrentPage = 25;
        comic.setCurrentPage(newCurrentPage);
        assert newCurrentPage == comic.getCurrentPage() : "Setter/Getter Test Failed: CurrentPage mismatch";

        // Test Progress
        double newProgress = 0.25;
        comic.setProgress(newProgress);
        // Using a delta for double comparison
        assert Math.abs(newProgress - comic.getProgress()) < 0.00001 : "Setter/Getter Test Failed: Progress mismatch";

        System.out.println("testSettersAndGetters passed.");
    }

    public static void testUpdateProgress() {
        System.out.println("Starting testUpdateProgress...");
        Comic comic;

        // Case 1: pageCount = 100, currentPage = 0
        comic = new Comic("Test1", "path1", "cover1", 100, 0, 0.0);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 0.0) < 0.00001 : "Test Failed (1): currentPage=0. Expected progress 0.0, got " + comic.getProgress();
        System.out.println("Test Case 1 (currentPage=0) passed.");

        // Case 2: pageCount = 100, currentPage = 10
        comic.setCurrentPage(10); // Use setter which exists
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 0.1) < 0.00001 : "Test Failed (2): currentPage=10. Expected progress 0.1, got " + comic.getProgress();
        System.out.println("Test Case 2 (currentPage=10) passed.");

        // Case 3: pageCount = 100, currentPage = 50
        comic.setCurrentPage(50);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 0.5) < 0.00001 : "Test Failed (3): currentPage=50. Expected progress 0.5, got " + comic.getProgress();
        System.out.println("Test Case 3 (currentPage=50) passed.");

        // Case 4: pageCount = 100, currentPage = 100
        comic.setCurrentPage(100);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 1.0) < 0.00001 : "Test Failed (4): currentPage=100. Expected progress 1.0, got " + comic.getProgress();
        System.out.println("Test Case 4 (currentPage=100) passed.");

        // Case 5: pageCount = 100, currentPage = 110 (more than pageCount)
        comic.setCurrentPage(110);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 1.0) < 0.00001 : "Test Failed (5): currentPage=110 (capped). Expected progress 1.0, got " + comic.getProgress();
        System.out.println("Test Case 5 (currentPage=110, capped) passed.");

        // Case 6: pageCount = 0, currentPage = 10
        comic = new Comic("Test6", "path6", "cover6", 0, 10, 0.0);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 0.0) < 0.00001 : "Test Failed (6): pageCount=0. Expected progress 0.0, got " + comic.getProgress();
        System.out.println("Test Case 6 (pageCount=0) passed.");

        // Case 7: pageCount = 100, currentPage = -5 (less than 0)
        comic = new Comic("Test7", "path7", "cover7", 100, -5, 0.0);
        comic.updateProgress();
        assert Math.abs(comic.getProgress() - 0.0) < 0.00001 : "Test Failed (7): currentPage=-5. Expected progress 0.0, got " + comic.getProgress();
        System.out.println("Test Case 7 (currentPage=-5) passed.");

        System.out.println("testUpdateProgress passed.");
    }
}
