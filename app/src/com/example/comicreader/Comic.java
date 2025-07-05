package com.example.comicreader;

public class Comic {
    private String title;
    private String filePath;
    private String coverImage; // For now, a file path or placeholder string
    private int pageCount;
    private int currentPage;
    private double progress;

    // Constructor
    public Comic(String title, String filePath, String coverImage, int pageCount, int currentPage, double progress) {
        this.title = title;
        this.filePath = filePath;
        this.coverImage = coverImage;
        this.pageCount = pageCount;
        this.currentPage = currentPage;
        this.progress = progress;
    }

    // Getters
    public String getTitle() {
        return title;
    }

    public String getFilePath() {
        return filePath;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public int getPageCount() {
        return pageCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public double getProgress() {
        return progress;
    }

    // Setters
    public void setTitle(String title) {
        this.title = title;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setProgress(double progress) {
        this.progress = progress;
    }

    public void updateProgress() {
        if (this.pageCount > 0) {
            if (this.currentPage > 0) {
                this.progress = (double) this.currentPage / this.pageCount;
                // Ограничить прогресс максимальным значением 1.0, если currentPage вдруг станет > pageCount
                if (this.progress > 1.0) {
                    this.progress = 1.0;
                }
            } else {
                this.progress = 0.0; // Если текущая страница 0 или меньше
            }
        } else {
            // Если общее количество страниц неизвестно (<=0), прогресс не может быть вычислен точно.
            // Пока установим в 0, если pageCount неизвестен.
            this.progress = 0.0;
        }
    }

    @Override
    public String toString() {
        return "Comic{" +
                "title='" + title + '\'' +
                ", filePath='" + filePath + '\'' +
                ", coverImage='" + coverImage + '\'' +
                ", pageCount=" + pageCount +
                ", currentPage=" + currentPage +
                ", progress=" + String.format("%.2f", progress) + // Format progress to 2 decimal places
                '}';
    }
}
