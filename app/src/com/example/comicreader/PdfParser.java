package com.example.comicreader;

// PDFBox imports
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.pdfbox.Loader; // For PDFBox 3.x
import org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException; // For specific error

// Java AWT and ImageIO for image manipulation
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

// Standard Java imports
import java.io.File;
import java.io.InputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.FileNotFoundException;

// Project-specific imports
import com.example.comicreader.ComicUtils;
import com.example.comicreader.FormatType;

public class PdfParser {

    public PdfParser() {
        // Constructor
    }

    public int getPageCount(File pdfFile) throws IOException, IllegalArgumentException {
        if (pdfFile == null || !pdfFile.exists() || !pdfFile.isFile()) {
            throw new FileNotFoundException("PDF file is null, does not exist, or is not a file: " +
                                            (pdfFile != null ? pdfFile.getPath() : "null"));
        }

        FormatType type = ComicUtils.detectComicFormat(pdfFile);
        if (type != FormatType.PDF) {
            throw new IllegalArgumentException("File is not identified as a PDF by ComicUtils.detectComicFormat. Detected: " + type +
                                               " for file: " + pdfFile.getPath());
        }

        try (PDDocument document = Loader.loadPDF(pdfFile)) {
            return document.getNumberOfPages();
        } catch (InvalidPasswordException e) {
            throw new IOException("Could not open PDF: file is password protected. Path: " + pdfFile.getPath() + " Original error: " + e.getMessage(), e);
        }
    }

    public InputStream getPageAsInputStream(File pdfFile, int pageIndex, int dpi)
        throws IOException, IllegalArgumentException {

        if (pdfFile == null || !pdfFile.exists() || !pdfFile.isFile()) {
            throw new FileNotFoundException("PDF file is null, does not exist, or is not a file: " +
                                            (pdfFile != null ? pdfFile.getPath() : "null"));
        }
        if (dpi <= 0) {
            throw new IllegalArgumentException("DPI must be positive. Received: " + dpi);
        }

        FormatType type = ComicUtils.detectComicFormat(pdfFile);
        if (type != FormatType.PDF) {
            throw new IllegalArgumentException("File is not identified as a PDF by ComicUtils.detectComicFormat. Detected: " + type +
                                               " for file: " + pdfFile.getPath());
        }

        try (PDDocument document = Loader.loadPDF(pdfFile)) {
            if (pageIndex < 0 || pageIndex >= document.getNumberOfPages()) {
                throw new IllegalArgumentException("Page index " + pageIndex + " is out of bounds. PDF has " +
                                                   document.getNumberOfPages() + " pages. File: " + pdfFile.getPath());
            }

            PDFRenderer renderer = new PDFRenderer(document);
            BufferedImage image = renderer.renderImageWithDPI(pageIndex, dpi);

            if (image == null) {
                throw new IOException("Failed to render page " + pageIndex + " for PDF: " + pdfFile.getPath() +
                                      ". renderImageWithDPI returned null.");
            }

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            boolean writerFound = ImageIO.write(image, "PNG", baos);
            if (!writerFound) {
                throw new IOException("No suitable ImageIO writer found for PNG format when processing PDF: " + pdfFile.getPath());
            }

            return new ByteArrayInputStream(baos.toByteArray());

        } catch (InvalidPasswordException e) {
            throw new IOException("Could not open PDF: file is password protected. Path: " + pdfFile.getPath() + " Original error: " + e.getMessage(), e);
        }
        // Other IOExceptions from PDFBox (loading, rendering) will propagate.
    }
}
