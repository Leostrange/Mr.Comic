package com.example.comicreader;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.zip.ZipOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.CRC32;
import java.util.List;
import java.util.Arrays;
import java.util.stream.Collectors;

import com.example.comicreader.EpubParser.OpfData;
import com.example.comicreader.EpubParser.ManifestItem;
import com.example.comicreader.EpubParser.EpubParsingException; // Added for testEpubParser's catch block

public class ComicUtilsTest {

    public static void main(String[] args) {
        System.out.println("Running ComicUtilsTest...");
        testListComicFiles();
        testDetectComicFormat();
        testEpubParser();
        System.out.println("ComicUtilsTest completed.");
    }

    public static void testListComicFiles() {
        System.out.println("Starting testListComicFiles (with detectComicFormat integration and dynamic names)...");
        ComicUtils comicUtils = new ComicUtils();
        Path tempDir = null;
        List<File> tempFilesCreatedForCleanup = new ArrayList<>();
        List<String> expectedFileNames = new ArrayList<>();
        List<String> createdButNotExpectedFileNames = new ArrayList<>();

        try {
            tempDir = Files.createTempDirectory("listComicTestDir_Dyn");

            File f_valid_pdf = TestFileHelper.createTempFile(tempDir, "valid_doc_", ".pdf", TestFileHelper.PDF_CONTENT);
            tempFilesCreatedForCleanup.add(f_valid_pdf); expectedFileNames.add(f_valid_pdf.getName());

            File f_valid_epub = TestFileHelper.createEpubMinimal(tempDir, "valid_epub_");
            tempFilesCreatedForCleanup.add(f_valid_epub); expectedFileNames.add(f_valid_epub.getName());

            File f_valid_cbz = TestFileHelper.createCbzLikeZip(tempDir, "valid_cbz_");
            tempFilesCreatedForCleanup.add(f_valid_cbz); expectedFileNames.add(f_valid_cbz.getName());

            File f_valid_mobi = TestFileHelper.createTempFile(tempDir, "valid_mobi_", ".mobi", TestFileHelper.MOBI_CONTENT);
            tempFilesCreatedForCleanup.add(f_valid_mobi); expectedFileNames.add(f_valid_mobi.getName());

            File f_empty_cbr = TestFileHelper.createEmptyFile(tempDir, "empty_file_", ".cbr");
            tempFilesCreatedForCleanup.add(f_empty_cbr); expectedFileNames.add(f_empty_cbr.getName());

            Path subdirPath = tempDir.resolve("subdir");
            Files.createDirectory(subdirPath);
            expectedFileNames.add("subdir");

            File f_pdf_in_txt = TestFileHelper.createTempFile(tempDir, "pdf_content_in_", ".txt", TestFileHelper.PDF_CONTENT);
            tempFilesCreatedForCleanup.add(f_pdf_in_txt); expectedFileNames.add(f_pdf_in_txt.getName());

            File f_epub_orig_for_zip = TestFileHelper.createEpubMinimal(tempDir, "epub_orig_for_zip_");
            tempFilesCreatedForCleanup.add(f_epub_orig_for_zip);
            createdButNotExpectedFileNames.add(f_epub_orig_for_zip.getName());

            File f_epub_as_zip = new File(tempDir.toFile(), "epub_renamed_as.zip");
            Files.move(f_epub_orig_for_zip.toPath(), f_epub_as_zip.toPath());
            tempFilesCreatedForCleanup.add(f_epub_as_zip);
            expectedFileNames.add(f_epub_as_zip.getName());

            File f_invalid_pdf_ext = TestFileHelper.createTempFile(tempDir, "invalid_sig_", ".pdf", TestFileHelper.TXT_CONTENT);
            tempFilesCreatedForCleanup.add(f_invalid_pdf_ext); createdButNotExpectedFileNames.add(f_invalid_pdf_ext.getName());

            File f_text_file = TestFileHelper.createTempFile(tempDir, "plain_text_", ".txt", TestFileHelper.TXT_CONTENT);
            tempFilesCreatedForCleanup.add(f_text_file); createdButNotExpectedFileNames.add(f_text_file.getName());

            File f_empty_docx = TestFileHelper.createEmptyFile(tempDir, "empty_doc_", ".docx");
            tempFilesCreatedForCleanup.add(f_empty_docx); createdButNotExpectedFileNames.add(f_empty_docx.getName());

            System.out.println("Test directory for listComicFiles created at: " + tempDir.toString());

            List<String> actualListedFiles = comicUtils.listComicFiles(tempDir.toString());
            System.out.println("Files listed by listComicFiles: " + actualListedFiles);

            assert actualListedFiles.size() == expectedFileNames.size() : "Test Failed (listComicFiles): File count mismatch. Expected " + expectedFileNames.size() + " items, got " + actualListedFiles.size() + ".\nListed: " + actualListedFiles + "\nExpected: " + expectedFileNames;

            for (String expectedName : expectedFileNames) {
                assert actualListedFiles.contains(expectedName) : "Test Failed (listComicFiles): Missing expected file/dir: '" + expectedName + "' in listed files: " + actualListedFiles;
            }

            for (String unexpectedName : createdButNotExpectedFileNames) {
                assert !actualListedFiles.contains(unexpectedName) : "Test Failed (listComicFiles): Unexpectedly found file that should have been filtered: '" + unexpectedName + "' in listed files: " + actualListedFiles;
            }

            System.out.println("Valid directory listing test passed for listComicFiles (with content detection and dynamic names).");

            System.out.println("Testing listComicFiles with invalid directory...");
            String invalidPath = tempDir.toString() + File.separator + "nonexistent_dir";
            List<String> noFiles = comicUtils.listComicFiles(invalidPath);
            assert noFiles.isEmpty() : "Test Failed (listComicFiles): Expected empty list for invalid path, got " + noFiles.size() + " items.";
            System.out.println("Invalid directory test for listComicFiles passed.");

        } catch (IOException e) {
            System.err.println("IOException during testListComicFiles: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed (listComicFiles) due to IOException: " + e.getMessage();
        } catch (AssertionError e) {
            System.err.println("AssertionError in testListComicFiles: " + e.getMessage());
            throw e;
        }
        finally {
            for (File f : tempFilesCreatedForCleanup) {
                try {
                    if (f.exists()) Files.deleteIfExists(f.toPath());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp file " + f.getPath() + " in testListComicFiles: " + e.getMessage());
                }
            }
            if (tempDir != null) {
                try {
                    Path subdirP = tempDir.resolve("subdir");
                    if(Files.exists(subdirP)) Files.deleteIfExists(subdirP);
                    Files.deleteIfExists(tempDir);
                    System.out.println("Temp directory deleted for listComicFiles: " + tempDir.toString());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp directory " + tempDir.toString() + " in testListComicFiles: " + e.getMessage());
                }
            }
        }
        System.out.println("Finished testListComicFiles (with detectComicFormat integration and dynamic names).");
    }

    static class TestFileHelper {
        public static final byte[] PDF_CONTENT = new byte[] {
            0x25, 0x50, 0x44, 0x46, 0x2D, 0x31, 0x2E, 0x34, 0x0A, 0x25,
            (byte)0xE2, (byte)0xE3, (byte)0xCF, (byte)0xD3, 0x0A, 0x25,
            0x25, 0x45, 0x4F, 0x46
        };

        private static byte[] createMobiContentInternal() {
            byte[] mobiBytes = new byte[70];
            Arrays.fill(mobiBytes, 0, 60, (byte)'A');
            System.arraycopy("BOOKMOBI".getBytes(StandardCharsets.US_ASCII), 0, mobiBytes, 60, 8);
            Arrays.fill(mobiBytes, 68, 70, (byte)'Z');
            return mobiBytes;
        }
        public static final byte[] MOBI_CONTENT = createMobiContentInternal();

        public static final byte[] TXT_CONTENT = "This is a plain text file.".getBytes(StandardCharsets.UTF_8);

        public static File createTempFile(Path tempDir, String prefix, String suffix, byte[] content) throws IOException {
            if (!Files.exists(tempDir)) { Files.createDirectories(tempDir); }
            Path filePath = Files.createTempFile(tempDir, prefix, suffix);
            Files.write(filePath, content, StandardOpenOption.WRITE);
            return filePath.toFile();
        }

        public static File createTempZipFile(Path tempDir, String prefix, String suffix, Map<String, byte[]> entries, String entryToStoreUncompressed) throws IOException {
            if (!Files.exists(tempDir)) { Files.createDirectories(tempDir); }
            Path zipFilePath = Files.createTempFile(tempDir, prefix, suffix);
            try (OutputStream fos = Files.newOutputStream(zipFilePath); ZipOutputStream zos = new ZipOutputStream(fos)) {
                if (entryToStoreUncompressed != null && entries.containsKey(entryToStoreUncompressed)) {
                    byte[] content = entries.get(entryToStoreUncompressed);
                    ZipEntry zipEntry = new ZipEntry(entryToStoreUncompressed);
                    zipEntry.setMethod(ZipEntry.STORED);
                    zipEntry.setSize(content.length);
                    CRC32 crc = new CRC32(); crc.update(content); zipEntry.setCrc(crc.getValue());
                    zos.putNextEntry(zipEntry); zos.write(content); zos.closeEntry();
                }
                for (Map.Entry<String, byte[]> mapEntry : entries.entrySet()) {
                    if (mapEntry.getKey().equals(entryToStoreUncompressed)) continue;
                    ZipEntry zipEntry = new ZipEntry(mapEntry.getKey());
                    zipEntry.setMethod(ZipEntry.DEFLATED);
                    zos.putNextEntry(zipEntry); zos.write(mapEntry.getValue()); zos.closeEntry();
                }
            }
            return zipFilePath.toFile();
        }

        public static File createEpubMinimal(Path tempDir, String prefix) throws IOException {
            Map<String, byte[]> entries = new HashMap<>();
            entries.put("mimetype", "application/epub+zip".getBytes(StandardCharsets.US_ASCII));
            entries.put("META-INF/container.xml", "<?xml version=\"1.0\"?><container version=\"1.0\" xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\"><rootfiles><rootfile full-path=\"OEBPS/content.opf\" media-type=\"application/oebps-package+xml\"/></rootfiles></container>".getBytes(StandardCharsets.UTF_8));
            return createTempZipFile(tempDir, prefix, ".epub", entries, "mimetype");
        }

        public static File createStructuredEpub(Path tempDir, String baseName) throws IOException {
            Map<String, byte[]> entries = new HashMap<>();
            entries.put("mimetype", "application/epub+zip".getBytes(StandardCharsets.US_ASCII));
            String containerXmlContent = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<container version=\"1.0\" xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\">" +
                "  <rootfiles>" +
                "    <rootfile full-path=\"OEBPS/content.opf\" media-type=\"application/oebps-package+xml\"/>" +
                "  </rootfiles>" +
                "</container>";
            entries.put("META-INF/container.xml", containerXmlContent.getBytes(StandardCharsets.UTF_8));
            String opfContent = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<package xmlns=\"http://www.idpf.org/2007/opf\" unique-identifier=\"bookid\" version=\"2.0\">" +
                "  <metadata xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:opf=\"http://www.idpf.org/2007/opf\">" +
                "    <dc:identifier id=\"bookid\">urn:uuid:12345678-1234-5678-1234-567812345678</dc:identifier>" +
                "    <dc:title>Test EPUB Title</dc:title>" +
                "    <dc:language>en</dc:language>" +
                "  </metadata>" +
                "  <manifest>" +
                "    <item id=\"ncx\" href=\"toc.ncx\" media-type=\"application/x-dtbncx+xml\"/>" +
                "    <item id=\"page1\" href=\"page1.xhtml\" media-type=\"application/xhtml+xml\"/>" +
                "    <item id=\"page2\" href=\"page2.xhtml\" media-type=\"application/xhtml+xml\"/>" +
                "    <item id=\"css\" href=\"style.css\" media-type=\"text/css\"/>" +
                "  </manifest>" +
                "  <spine toc=\"ncx\">" +
                "    <itemref idref=\"page1\"/>" +
                "    <itemref idref=\"page2\"/>" +
                "  </spine>" +
                "</package>";
            entries.put("OEBPS/content.opf", opfContent.getBytes(StandardCharsets.UTF_8));
            String page1Content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" +
                "<html xmlns=\"http://www.w3.org/1999/xhtml\">" +
                "<head>" +
                "  <title>Page 1</title>" +
                "  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>" +
                "</head>" +
                "<body>" +
                "  <h1>Page 1 Content</h1>" +
                "  <p>This is the first page.</p>" +
                "</body>" +
                "</html>";
            entries.put("OEBPS/page1.xhtml", page1Content.getBytes(StandardCharsets.UTF_8));
            String page2Content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" +
                "<html xmlns=\"http://www.w3.org/1999/xhtml\">" +
                "<head>" +
                "  <title>Page 2</title>" +
                "  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>" +
                "</head>" +
                "<body>" +
                "  <h1>Page 2 Content</h1>" +
                "  <p>This is the second page.</p>" +
                "</body>" +
                "</html>";
            entries.put("OEBPS/page2.xhtml", page2Content.getBytes(StandardCharsets.UTF_8));
            String ncxContent = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<!DOCTYPE ncx PUBLIC \"-//NISO//DTD ncx 2005-1//EN\" \"http://www.daisy.org/z3986/2005/ncx-2005-1.dtd\">" +
                "<ncx xmlns=\"http://www.daisy.org/z3986/2005/ncx/\" version=\"2005-1\">" +
                "  <head>" +
                "    <meta name=\"dtb:uid\" content=\"urn:uuid:12345678-1234-5678-1234-567812345678\"/>" +
                "    <meta name=\"dtb:depth\" content=\"1\"/>" +
                "    <meta name=\"dtb:totalPageCount\" content=\"0\"/>" +
                "    <meta name=\"dtb:maxPageNumber\" content=\"0\"/>" +
                "  </head>" +
                "  <docTitle><text>Test EPUB Title</text></docTitle>" +
                "  <navMap>" +
                "    <navPoint id=\"navpoint1\" playOrder=\"1\">" +
                "      <navLabel><text>Page 1</text></navLabel>" +
                "      <content src=\"page1.xhtml\"/>" +
                "    </navPoint>" +
                "    <navPoint id=\"navpoint2\" playOrder=\"2\">" +
                "      <navLabel><text>Page 2</text></navLabel>" +
                "      <content src=\"page2.xhtml\"/>" +
                "    </navPoint>" +
                "  </navMap>" +
                "</ncx>";
            entries.put("OEBPS/toc.ncx", ncxContent.getBytes(StandardCharsets.UTF_8));
            String cssContent = "body { font-family: sans-serif; }";
            entries.put("OEBPS/style.css", cssContent.getBytes(StandardCharsets.UTF_8));
            return createTempZipFile(tempDir, baseName, ".epub", entries, "mimetype");
        }

        public static File createCbzLikeZip(Path tempDir, String prefix) throws IOException {
            Map<String, byte[]> entries = new HashMap<>();
            entries.put("image1.jpg", "dummy image data".getBytes(StandardCharsets.UTF_8));
            entries.put("page2.png", "more dummy data".getBytes(StandardCharsets.UTF_8));
            return createTempZipFile(tempDir, prefix, ".cbz", entries, null);
        }

        public static File createGenericZip(Path tempDir, String prefix) throws IOException {
            Map<String, byte[]> entries = new HashMap<>();
            entries.put("document.txt", "This is a generic zip file.".getBytes(StandardCharsets.UTF_8));
            return createTempZipFile(tempDir, prefix, ".zip", entries, null);
        }

        public static File createEmptyFile(Path tempDir, String prefix, String suffix) throws IOException {
            if (!Files.exists(tempDir)) { Files.createDirectories(tempDir); }
            Path filePath = Files.createTempFile(tempDir, prefix, suffix);
            return filePath.toFile();
        }
    }

    public static void testDetectComicFormat() {
        System.out.println("Starting testDetectComicFormat...");
        Path tempDir = null;
        List<File> tempFiles = new ArrayList<>();
        try {
            tempDir = Files.createTempDirectory("formatDetectTestDir");

            File pdfFile = TestFileHelper.createTempFile(tempDir, "test", ".pdf", TestFileHelper.PDF_CONTENT);
            tempFiles.add(pdfFile);
            assert ComicUtils.detectComicFormat(pdfFile) == FormatType.PDF : "Test Failed: PDF detection";
            System.out.println("PDF detection passed for: " + pdfFile.getName());

            File mobiFile = TestFileHelper.createTempFile(tempDir, "test", ".mobi", TestFileHelper.MOBI_CONTENT);
            tempFiles.add(mobiFile);
            assert ComicUtils.detectComicFormat(mobiFile) == FormatType.MOBI : "Test Failed: MOBI detection";
            System.out.println("MOBI detection passed for: " + mobiFile.getName());

            File epubFile = TestFileHelper.createEpubMinimal(tempDir, "test_epub_minimal_");
            tempFiles.add(epubFile);
            assert ComicUtils.detectComicFormat(epubFile) == FormatType.EPUB : "Test Failed: EPUB (minimal) detection";
            System.out.println("EPUB (minimal) detection passed for: " + epubFile.getName());

            File cbzFile = TestFileHelper.createCbzLikeZip(tempDir, "test_cbz_");
            tempFiles.add(cbzFile);
            assert ComicUtils.detectComicFormat(cbzFile) == FormatType.CBZ : "Test Failed: CBZ (from zip with images) detection";
            System.out.println("CBZ (from zip with images) detection passed for: " + cbzFile.getName());

            File genericZipFile = TestFileHelper.createGenericZip(tempDir, "test_generic_zip_");
            tempFiles.add(genericZipFile);
            assert ComicUtils.detectComicFormat(genericZipFile) == FormatType.CBZ : "Test Failed: Generic ZIP (as CBZ) detection";
            System.out.println("Generic ZIP (as CBZ) detection passed for: " + genericZipFile.getName());

            File txtFile = TestFileHelper.createTempFile(tempDir, "test_txt_", ".txt", TestFileHelper.TXT_CONTENT);
            tempFiles.add(txtFile);
            assert ComicUtils.detectComicFormat(txtFile) == FormatType.UNKNOWN : "Test Failed: TXT file detection (should be UNKNOWN)";
            System.out.println("TXT file (as UNKNOWN) detection passed for: " + txtFile.getName());

            File cbrFile = TestFileHelper.createEmptyFile(tempDir, "test_cbr_ext_", ".cbr");
            tempFiles.add(cbrFile);
            assert ComicUtils.detectComicFormat(cbrFile) == FormatType.CBR_RAR : "Test Failed: CBR (by extension) detection";
            System.out.println("CBR (by extension) detection passed for: " + cbrFile.getName());

            File rarFileExt = TestFileHelper.createEmptyFile(tempDir, "test_rar_ext_", ".rar");
            tempFiles.add(rarFileExt);
            assert ComicUtils.detectComicFormat(rarFileExt) == FormatType.CBR_RAR : "Test Failed: RAR (by extension) detection";
            System.out.println("RAR (by extension) detection passed for: " + rarFileExt.getName());

            File emptyFile = TestFileHelper.createEmptyFile(tempDir, "empty_dat_", ".dat");
            tempFiles.add(emptyFile);
            assert ComicUtils.detectComicFormat(emptyFile) == FormatType.UNKNOWN : "Test Failed: Empty file detection (should be UNKNOWN)";
            System.out.println("Empty file (as UNKNOWN) detection passed for: " + emptyFile.getName());

            File nonExistentFile = new File(tempDir.toString(), "nonexistent.file");
            assert ComicUtils.detectComicFormat(nonExistentFile) == FormatType.UNKNOWN : "Test Failed: Non-existent file detection";
            System.out.println("Non-existent file (as UNKNOWN) detection passed.");

            File pdfExtWrongContent = TestFileHelper.createTempFile(tempDir, "wrong_pdf_", ".pdf", TestFileHelper.TXT_CONTENT);
            tempFiles.add(pdfExtWrongContent);
            assert ComicUtils.detectComicFormat(pdfExtWrongContent) == FormatType.UNKNOWN : "Test Failed: PDF extension wrong content (should be UNKNOWN)";
            System.out.println("PDF extension wrong content (as UNKNOWN) detection passed.");

            File epubExtWrongContent = TestFileHelper.createTempFile(tempDir, "wrong_epub_", ".epub", TestFileHelper.TXT_CONTENT);
            tempFiles.add(epubExtWrongContent);
            assert ComicUtils.detectComicFormat(epubExtWrongContent) == FormatType.UNKNOWN : "Test Failed: EPUB extension wrong content (not zip) (should be UNKNOWN)";
            System.out.println("EPUB extension wrong content (not zip) (as UNKNOWN) detection passed.");

            Map<String, byte[]> epubEntries = new HashMap<>();
            epubEntries.put("mimetype", "application/epub+zip".getBytes(StandardCharsets.US_ASCII));
            epubEntries.put("META-INF/container.xml", "<container/>".getBytes(StandardCharsets.UTF_8));
            File epubInCbzExt = TestFileHelper.createTempZipFile(tempDir, "epub_in_cbz_", ".cbz", epubEntries, "mimetype");
            tempFiles.add(epubInCbzExt);
            assert ComicUtils.detectComicFormat(epubInCbzExt) == FormatType.EPUB : "Test Failed: EPUB content with .cbz extension (should be EPUB)";
            System.out.println("EPUB content with .cbz extension (as EPUB) detection passed.");

        } catch (IOException e) {
            System.err.println("IOException during testDetectComicFormat setup: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to IOException during setup in testDetectComicFormat.";
        } catch (AssertionError e) {
            System.err.println("AssertionError in testDetectComicFormat: " + e.getMessage());
            throw e;
        }
        finally {
            for (File f : tempFiles) {
                try { Files.deleteIfExists(f.toPath()); } catch (IOException e) { System.err.println("Warning: Could not delete temp file " + f.getPath() + ": " + e.getMessage()); }
            }
            if (tempDir != null) {
                try { Files.deleteIfExists(tempDir); System.out.println("Temp directory for format detection deleted: " + tempDir.toString()); } catch (IOException e) { System.err.println("Warning: Could not delete temp directory " + tempDir.toString() + ": " + e.getMessage());}
            }
        }
        System.out.println("Finished testDetectComicFormat.");
    }

    public static void testEpubParser() {
        System.out.println("Starting testEpubParser...");
        Path tempDir = null;
        File testEpubFile = null;

        try {
            tempDir = Files.createTempDirectory("epubParserTestDir");
            // Use a distinct base name to avoid potential conflicts if tests run in parallel or temp dir isn't fully cleaned
            testEpubFile = TestFileHelper.createStructuredEpub(tempDir, "structured_test_book_");

            EpubParser epubParser = new EpubParser();

            System.out.println("Testing getOpfPath...");
            String opfPath = epubParser.getOpfPath(testEpubFile);
            assert "OEBPS/content.opf".equals(opfPath) : "Test Failed: getOpfPath returned wrong path. Got: " + opfPath;
            System.out.println("getOpfPath successfully returned: " + opfPath);

            System.out.println("Testing parseOpfData and getReadingOrder...");
            OpfData opfData = epubParser.parseOpfData(testEpubFile);

            assert opfData != null : "Test Failed: parseOpfData returned null";
            assert opfData.manifest != null : "Test Failed: opfData.manifest is null";
            assert opfData.spine != null : "Test Failed: opfData.spine is null";

            ManifestItem page1Manifest = opfData.manifest.get("page1");
            assert page1Manifest != null : "Test Failed: Manifest item 'page1' not found.";
            assert "OEBPS/page1.xhtml".equals(page1Manifest.href) : "Test Failed: page1 href incorrect. Got: " + page1Manifest.href;
            assert "application/xhtml+xml".equals(page1Manifest.mediaType) : "Test Failed: page1 media-type incorrect.";

            ManifestItem ncxManifest = opfData.manifest.get("ncx");
            assert ncxManifest != null : "Test Failed: Manifest item 'ncx' (for toc.ncx) not found.";
            assert "OEBPS/toc.ncx".equals(ncxManifest.href) : "Test Failed: ncx href incorrect.";

            assert "ncx".equals(opfData.tocNcxId) : "Test Failed: Spine toc attribute incorrect. Got: " + opfData.tocNcxId;

            List<String> readingOrder = EpubParser.getReadingOrder(opfData);
            assert readingOrder != null : "Test Failed: getReadingOrder returned null";
            assert readingOrder.size() == 2 : "Test Failed: Expected 2 items in reading order, got " + readingOrder.size();
            assert "OEBPS/page1.xhtml".equals(readingOrder.get(0)) : "Test Failed: First item in reading order incorrect.";
            assert "OEBPS/page2.xhtml".equals(readingOrder.get(1)) : "Test Failed: Second item in reading order incorrect.";
            System.out.println("parseOpfData and getReadingOrder tests passed. Reading order: " + readingOrder);

            System.out.println("Testing getPageContent for page1.xhtml...");
            String page1Href = readingOrder.get(0);
            String page1Content = epubParser.getPageContent(testEpubFile, page1Href);
            assert page1Content != null && !page1Content.isEmpty() : "Test Failed: page1 content is null or empty.";
            assert page1Content.contains("<h1>Page 1 Content</h1>") : "Test Failed: page1 content verification failed.";
            System.out.println("getPageContent for page1.xhtml passed.");

            System.out.println("Testing getPageContent for page2.xhtml...");
            String page2Href = readingOrder.get(1);
            String page2Content = epubParser.getPageContent(testEpubFile, page2Href);
            assert page2Content != null && !page2Content.isEmpty() : "Test Failed: page2 content is null or empty.";
            assert page2Content.contains("<h1>Page 2 Content</h1>") : "Test Failed: page2 content verification failed.";
            System.out.println("getPageContent for page2.xhtml passed.");

            System.out.println("Testing getPageContent for content.opf...");
            String opfFileContent = epubParser.getPageContent(testEpubFile, opfPath);
            assert opfFileContent != null && opfFileContent.contains("<package xmlns=\"http://www.idpf.org/2007/opf\"") : "Test Failed: OPF content verification failed.";
            System.out.println("getPageContent for content.opf passed.");

        } catch (Exception e) {
            System.err.println("Exception during testEpubParser: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to Exception in testEpubParser: " + e.getClass().getName() + ": " + e.getMessage();
        } finally {
            if (testEpubFile != null && testEpubFile.exists()) { // Check exists before deleting
                try {
                    Files.deleteIfExists(testEpubFile.toPath());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp EPUB file " + testEpubFile.getPath() + ": " + e.getMessage());
                }
            }
            if (tempDir != null && Files.exists(tempDir)) { // Check exists before deleting
                try {
                    // Simple directory delete; assumes it's empty or Files.delete can handle it.
                    // For robustness, one might need to walk the file tree and delete contents first.
                    Files.deleteIfExists(tempDir);
                    System.out.println("Temp directory deleted for epubParserTest: " + tempDir.toString());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp directory " + tempDir.toString() + ": " + e.getMessage());
                }
            }
        }
        System.out.println("Finished testEpubParser.");
    }
}
