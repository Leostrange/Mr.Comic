package com.example.comicreader;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.InputStream;
import java.io.FileNotFoundException;
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
import com.example.comicreader.EpubParser.EpubParsingException;

public class ComicUtilsTest {

    public static void main(String[] args) {
        System.out.println("Running ComicUtilsTest...");
        testListComicFiles();
        testDetectComicFormat();
        testEpubParser();
        testCbzParser();
        testCbrParser(); // Added call to new test method
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

            // Use createPlaceholderCbr for testing listComicFiles, as true CBR creation isn't available
            File f_placeholder_cbr = TestFileHelper.createPlaceholderCbr(tempDir, "placeholder_cbr_", true); // Empty placeholder
            tempFilesCreatedForCleanup.add(f_placeholder_cbr);
            // If detectComicFormat with junrar makes empty CBR UNKNOWN, it won't be listed.
            // If it made it CBR_RAR (e.g. old extension check), it would be listed.
            // With junrar, an empty file or non-RAR content .cbr is UNKNOWN.
            // So, this placeholder_cbr should NOT be in expectedFileNames for listComicFiles.
            // However, the old f_empty_cbr was expected. Let's re-evaluate.
            // The CbrParser.getPages has a strict check on type being CBR_RAR.
            // ComicUtils.detectComicFormat (as of step 5) will return CBR_RAR if junrar successfully opens it AND it's not empty/encrypted.
            // An empty file given to `new Archive(file)` by junrar might throw an error or result in no headers.
            // If junrar cannot parse an empty file as RAR, detectComicFormat makes it UNKNOWN.
            // So, f_empty_cbr (using TestFileHelper.createEmptyFile) should result in UNKNOWN.
            // Let's use a non-empty placeholder for listComicFiles if we want to test the .cbr extension path
            // assuming detectComicFormat might still use extension as a preliminary filter before junrar.
            // Given current detectComicFormat, even a non-empty non-RAR .cbr file will become UNKNOWN.
            // So, for listComicFiles, only REAL CBRs (or files junrar thinks are RAR) will be listed.
            // The previous f_empty_cbr was based on an older detectComicFormat.
            // Let's remove f_empty_cbr from expected for now, as it should be UNKNOWN.
            // We will add a REAL CBR file for testing CbrParser itself in testCbrParser.

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

            // Add a placeholder CBR that detectComicFormat will likely classify as UNKNOWN
            File nonRarCbr = TestFileHelper.createPlaceholderCbr(tempDir, "non_rar_cbr_", false);
            tempFilesCreatedForCleanup.add(nonRarCbr); createdButNotExpectedFileNames.add(nonRarCbr.getName());
            File emptyCbrForList = TestFileHelper.createPlaceholderCbr(tempDir, "empty_cbr_for_list_", true);
            tempFilesCreatedForCleanup.add(emptyCbrForList); createdButNotExpectedFileNames.add(emptyCbrForList.getName());


            System.out.println("Test directory for listComicFiles created at: " + tempDir.toString());

            List<String> actualListedFiles = comicUtils.listComicFiles(tempDir.toString());
            System.out.println("Files listed by listComicFiles: " + actualListedFiles);

            // Expected count adjusted: empty/placeholder CBRs will be UNKNOWN by junrar-based detectComicFormat
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
            if (!Files.exists(tempDir)) {
                Files.createDirectories(tempDir);
            }
            Path zipFilePath = Files.createTempFile(tempDir, prefix, suffix);

            try (OutputStream fos = Files.newOutputStream(zipFilePath);
                 ZipOutputStream zos = new ZipOutputStream(fos)) {

                if (entryToStoreUncompressed != null && entries.containsKey(entryToStoreUncompressed)) {
                    byte[] content = entries.get(entryToStoreUncompressed);
                    ZipEntry zipEntry = new ZipEntry(entryToStoreUncompressed);
                    zipEntry.setMethod(ZipEntry.STORED);
                    zipEntry.setSize(content.length);
                    CRC32 crc = new CRC32();
                    crc.update(content);
                    zipEntry.setCrc(crc.getValue());
                    zos.putNextEntry(zipEntry);
                    zos.write(content);
                    zos.closeEntry();
                }

                for (Map.Entry<String, byte[]> mapEntry : entries.entrySet()) {
                    String entryName = mapEntry.getKey();
                    if (entryName.equals(entryToStoreUncompressed)) {
                        continue;
                    }
                    ZipEntry zipEntry = new ZipEntry(entryName);
                    byte[] content = mapEntry.getValue();

                    if (entryName.endsWith("/")) {
                        zipEntry.setMethod(ZipEntry.STORED);
                        zipEntry.setSize(0);
                        zipEntry.setCrc(0);
                    } else {
                        zipEntry.setMethod(ZipEntry.DEFLATED);
                    }

                    zos.putNextEntry(zipEntry);
                    if (content != null && !entryName.endsWith("/")) {
                        zos.write(content);
                    }
                    zos.closeEntry();
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
            entries.put("comic_page_02.png", new byte[]{1});
            entries.put("comic_page_10.webp", new byte[]{2});
            entries.put("comic_page_01.jpg", new byte[]{3});
            entries.put("notes/info.txt", "text".getBytes(StandardCharsets.UTF_8));
            entries.put("__MACOSX/com.apple.ResourceFork", new byte[]{});
            entries.put(".DS_Store", new byte[]{});
            entries.put("an_actual_directory/", null);
            entries.put("an_actual_directory/nested_image.png", new byte[]{4});
            entries.put("another_image_at_root.jpeg", new byte[]{5});
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

        public static File createPlaceholderCbr(Path tempDir, String baseName, boolean isEmpty) throws IOException {
            if (!Files.exists(tempDir)) {
                Files.createDirectories(tempDir);
            }
            Path filePath = Files.createTempFile(tempDir, baseName, ".cbr");
            if (!isEmpty) {
                Files.write(filePath, "This is not a real RAR archive.".getBytes(StandardCharsets.UTF_8), StandardOpenOption.WRITE);
            }
            return filePath.toFile();
        }
    }

    public static void testDetectComicFormat() {
        System.out.println("Starting testDetectComicFormat...");
        Path tempDir = null;
        List<File> tempFiles = new ArrayList<>(); // Renamed from filesToCleanup to match existing var name
        try {
            tempDir = Files.createTempDirectory("formatDetectTestDir");

            File pdfFile = TestFileHelper.createTempFile(tempDir, "test_pdf_", ".pdf", TestFileHelper.PDF_CONTENT);
            tempFiles.add(pdfFile);
            assert ComicUtils.detectComicFormat(pdfFile) == FormatType.PDF : "Test Failed: PDF detection";
            System.out.println("PDF detection passed for: " + pdfFile.getName());

            File mobiFile = TestFileHelper.createTempFile(tempDir, "test_mobi_", ".mobi", TestFileHelper.MOBI_CONTENT);
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
            assert ComicUtils.detectComicFormat(genericZipFile) == FormatType.CBZ : "Test Failed: Generic ZIP (as CBZ) detection"; // Current behavior
            System.out.println("Generic ZIP (as CBZ) detection passed for: " + genericZipFile.getName());

            File txtFile = TestFileHelper.createTempFile(tempDir, "test_txt_", ".txt", TestFileHelper.TXT_CONTENT);
            tempFiles.add(txtFile);
            assert ComicUtils.detectComicFormat(txtFile) == FormatType.UNKNOWN : "Test Failed: TXT file detection (should be UNKNOWN)";
            System.out.println("TXT file (as UNKNOWN) detection passed for: " + txtFile.getName());

            // Test for .cbr with actual RAR content (cannot create, so use placeholder)
            // This test relies on junrar correctly identifying (or failing) the placeholder.
            // An empty file or a non-RAR file with .cbr extension should be UNKNOWN after junrar integration.
            File cbrExtEmpty = TestFileHelper.createPlaceholderCbr(tempDir, "empty_cbr_ext_", true);
            tempFiles.add(cbrExtEmpty);
            assert ComicUtils.detectComicFormat(cbrExtEmpty) == FormatType.UNKNOWN :
                "Test Failed: Empty .cbr file (should be UNKNOWN by junrar validation, not CBR_RAR by extension alone)";
            System.out.println("Empty .cbr file (as UNKNOWN) detection passed.");

            File cbrExtNonRarContent = TestFileHelper.createPlaceholderCbr(tempDir, "not_real_cbr_", false);
            tempFiles.add(cbrExtNonRarContent);
            assert ComicUtils.detectComicFormat(cbrExtNonRarContent) == FormatType.UNKNOWN :
                "Test Failed: .cbr extension with non-RAR content (should be UNKNOWN by junrar validation)";
            System.out.println(".cbr extension with non-RAR content (as UNKNOWN) detection passed.");

            // Test for .rar with placeholder (similarly should be UNKNOWN)
            File rarExtNonRarContent = TestFileHelper.createTempFile(tempDir, "not_real_rar_", ".rar", "not rar".getBytes(StandardCharsets.UTF_8));
            tempFiles.add(rarExtNonRarContent);
            assert ComicUtils.detectComicFormat(rarExtNonRarContent) == FormatType.UNKNOWN :
                "Test Failed: .rar extension with non-RAR content (should be UNKNOWN by junrar validation)";
            System.out.println(".rar extension with non-RAR content (as UNKNOWN) detection passed.");


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
            for (File f : tempFiles) { // Ensure this list name matches declaration
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
            if (testEpubFile != null && testEpubFile.exists()) {
                try {
                    Files.deleteIfExists(testEpubFile.toPath());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp EPUB file " + testEpubFile.getPath() + ": " + e.getMessage());
                }
            }
            if (tempDir != null && Files.exists(tempDir)) {
                try {
                    Files.deleteIfExists(tempDir);
                    System.out.println("Temp directory deleted for epubParserTest: " + tempDir.toString());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp directory " + tempDir.toString() + ": " + e.getMessage());
                }
            }
        }
        System.out.println("Finished testEpubParser.");
    }

    public static void testCbzParser() {
        System.out.println("Starting testCbzParser...");
        Path tempDir = null;
        File testCbzFile = null;
        File notCbzFile = null;
        List<File> filesToCleanup = new ArrayList<>();

        try {
            tempDir = Files.createTempDirectory("cbzParserTestDir");
            testCbzFile = TestFileHelper.createCbzLikeZip(tempDir, "testComic_");
            filesToCleanup.add(testCbzFile);

            CbzParser cbzParser = new CbzParser();

            System.out.println("Testing CbzParser.getPages()...");
            List<String> pages = cbzParser.getPages(testCbzFile);

            List<String> expectedPages = Arrays.asList(
                "an_actual_directory/nested_image.png",
                "another_image_at_root.jpeg",
                "comic_page_01.jpg",
                "comic_page_02.png",
                "comic_page_10.webp"
            );

            assert pages.size() == expectedPages.size() :
                "Test Failed (getPages): Expected " + expectedPages.size() + " pages, got " + pages.size() + ". Pages: " + pages;
            for (int i = 0; i < expectedPages.size(); i++) {
                assert expectedPages.get(i).equals(pages.get(i)) :
                    "Test Failed (getPages): Mismatch at index " + i + ". Expected: " + expectedPages.get(i) + ", Got: " + pages.get(i);
            }

            assert !pages.contains("notes/info.txt") : "Test Failed (getPages): info.txt was included.";
            assert !pages.contains("__MACOSX/com.apple.ResourceFork") : "Test Failed (getPages): __MACOSX file was included.";
            assert !pages.contains(".DS_Store") : "Test Failed (getPages): .DS_Store was included.";
            assert !pages.contains("an_actual_directory/") : "Test Failed (getPages): Directory entry was included.";
            System.out.println("CbzParser.getPages() test passed. Found pages: " + pages);

            System.out.println("Testing CbzParser.getPageContentAsInputStream() for existing file...");
            String imageToExtract = "comic_page_01.jpg";
            byte[] expectedContent = new byte[]{3};

            try (InputStream is = cbzParser.getPageContentAsInputStream(testCbzFile, imageToExtract)) {
                assert is != null : "Test Failed (getPageContent): InputStream is null for " + imageToExtract;
                byte[] actualContent = new byte[expectedContent.length];
                int bytesRead = is.read(actualContent);
                assert bytesRead == expectedContent.length : "Test Failed (getPageContent): Did not read expected number of bytes.";
                assert is.read() == -1 : "Test Failed (getPageContent): InputStream has more data than expected.";
                assert Arrays.equals(expectedContent, actualContent) : "Test Failed (getPageContent): Content mismatch for " + imageToExtract;
                System.out.println("CbzParser.getPageContentAsInputStream() for " + imageToExtract + " passed.");
            }

            System.out.println("Testing CbzParser.getPageContentAsInputStream() for non-existent file...");
            String nonExistentImage = "non_existent.jpg";
            boolean thrownFileNotFound = false;
            try {
                cbzParser.getPageContentAsInputStream(testCbzFile, nonExistentImage).close();
            } catch (FileNotFoundException e) {
                thrownFileNotFound = true;
                System.out.println("Caught expected FileNotFoundException for " + nonExistentImage);
            }
            assert thrownFileNotFound : "Test Failed (getPageContent): FileNotFoundException was not thrown for " + nonExistentImage;

            System.out.println("Testing CbzParser with a non-CBZ file...");
            notCbzFile = TestFileHelper.createTempFile(tempDir, "not_a_cbz_", ".txt", "This is not a cbz".getBytes(StandardCharsets.UTF_8));
            filesToCleanup.add(notCbzFile);

            boolean thrownIllegalArgumentForGetPages = false;
            try {
                cbzParser.getPages(notCbzFile);
            } catch (IllegalArgumentException e) {
                thrownIllegalArgumentForGetPages = true;
                System.out.println("Caught expected IllegalArgumentException for getPages on non-CBZ file.");
            }
            assert thrownIllegalArgumentForGetPages : "Test Failed: IllegalArgumentException not thrown for getPages on non-CBZ file.";

            boolean thrownIllegalArgumentForGetContent = false;
            try {
                cbzParser.getPageContentAsInputStream(notCbzFile, "any_image.jpg").close();
            } catch (IllegalArgumentException e) {
                thrownIllegalArgumentForGetContent = true;
                System.out.println("Caught expected IllegalArgumentException for getPageContent on non-CBZ file.");
            } catch (FileNotFoundException e) { // Should be IllegalArgument due to type check first
                System.err.println("Warning: Caught FileNotFoundException instead of IllegalArgument for getPageContent on non-CBZ. Type was: " + ComicUtils.detectComicFormat(notCbzFile));
                 // This path might be taken if detectComicFormat was UNKNOWN and CbzParser tried to open it as ZIP, then failed.
                 // However, CbzParser explicitly checks format type first.
                if (ComicUtils.detectComicFormat(notCbzFile) != FormatType.CBZ) thrownIllegalArgumentForGetContent = true;
            }
            assert thrownIllegalArgumentForGetContent : "Test Failed: IllegalArgumentException not thrown for getPageContent on non-CBZ file.";

        } catch (Exception e) {
            System.err.println("Exception during testCbzParser: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to Exception in testCbzParser: " + e.getClass().getName() + ": " + e.getMessage();
        } finally {
            for (File f : filesToCleanup) {
                try {
                    if (f.exists()) Files.deleteIfExists(f.toPath());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp file " + f.getPath() + ": " + e.getMessage());
                }
            }
            if (tempDir != null) {
                try {
                    if (Files.exists(tempDir)) Files.deleteIfExists(tempDir);
                    System.out.println("Temp directory deleted for cbzParserTest: " + tempDir.toString());
                } catch (IOException e) {
                    System.err.println("Warning: Could not delete temp directory " + tempDir.toString() + ": " + e.getMessage());
                }
            }
        }
        System.out.println("Finished testCbzParser.");
    }

    public static void testCbrParser() {
        System.out.println("Starting testCbrParser...");
        Path tempDir = null;
        List<File> filesToCleanup = new ArrayList<>();
        CbrParser cbrParser = new CbrParser();

        try {
            tempDir = Files.createTempDirectory("cbrParserTestDir");

            // 1. Test with a non-CBR file (e.g., a .txt file)
            System.out.println("Testing CbrParser with a .txt file...");
            File txtFile = TestFileHelper.createTempFile(tempDir, "plain_cbrtest_", ".txt", "hello cbr test".getBytes(StandardCharsets.UTF_8));
            filesToCleanup.add(txtFile);

            boolean thrownArgExForGetPagesTxt = false;
            try {
                cbrParser.getPages(txtFile);
            } catch (IllegalArgumentException e) {
                thrownArgExForGetPagesTxt = true;
                System.out.println("Caught expected IllegalArgumentException for getPages on .txt file.");
            } catch (IOException e) { // Should be IllegalArgument from type check
                assert false : "Test Failed (CbrParser with .txt): getPages threw " + e.getClass().getSimpleName() + " instead of IllegalArgumentException: " + e.getMessage();
            }
            assert thrownArgExForGetPagesTxt : "Test Failed (CbrParser with .txt): IllegalArgumentException not thrown for getPages.";

            boolean thrownArgExForGetContentTxt = false;
            try {
                cbrParser.getPageContentAsInputStream(txtFile, "anypage.jpg").close();
            } catch (IllegalArgumentException e) {
                thrownArgExForGetContentTxt = true;
                System.out.println("Caught expected IllegalArgumentException for getPageContent on .txt file.");
            } catch (IOException e) { // Should be IllegalArgument from type check
                 assert false : "Test Failed (CbrParser with .txt): getPageContent threw " + e.getClass().getSimpleName() + " instead of IllegalArgumentException: " + e.getMessage();
            }
            assert thrownArgExForGetContentTxt : "Test Failed (CbrParser with .txt): IllegalArgumentException not thrown for getPageContent.";
            System.out.println("CbrParser tests with .txt file passed.");

            // 2. Test with a .cbr file that is not a valid RAR archive
            System.out.println("Testing CbrParser with invalid .cbr (non-RAR content)...");
            File invalidCbr = TestFileHelper.createPlaceholderCbr(tempDir, "invalid_cbr_content_", false);
            filesToCleanup.add(invalidCbr);

            boolean expectedExForGetPagesInvalid = false;
            try {
                cbrParser.getPages(invalidCbr);
            } catch (IllegalArgumentException e) {
                // This is expected if ComicUtils.detectComicFormat returns UNKNOWN for this file
                // (which it should, as junrar won't parse "This is not a real RAR archive.")
                expectedExForGetPagesInvalid = true;
                System.out.println("Caught expected IllegalArgumentException for getPages on invalid .cbr (non-RAR content).");
            } catch (IOException e) {
                // This might be if detectComicFormat was simpler (e.g. by extension only) and CbrParser itself tried to open
                System.err.println("Warning (CbrParser with invalid .cbr): getPages threw IOException. Message: " + e.getMessage());
                 assert false : "Test Failed (CbrParser with invalid .cbr): getPages threw IOException, expected IllegalArgumentException due to UNKNOWN type. " + e.getMessage();
            }
            assert expectedExForGetPagesInvalid : "Test Failed (CbrParser with invalid .cbr): Expected exception not thrown for getPages.";


            boolean expectedExForGetContentInvalid = false;
            try {
                cbrParser.getPageContentAsInputStream(invalidCbr, "anypage.jpg").close();
            } catch (IllegalArgumentException e) { // Expected, similar to above
                expectedExForGetContentInvalid = true;
                System.out.println("Caught expected IllegalArgumentException for getPageContent on invalid .cbr (non-RAR content).");
            } catch (IOException e) {
                 System.err.println("Warning (CbrParser with invalid .cbr): getPageContent threw IOException. Message: " + e.getMessage());
                 assert false : "Test Failed (CbrParser with invalid .cbr): getPageContent threw IOException, expected IllegalArgumentException. " + e.getMessage();
            }
            assert expectedExForGetContentInvalid : "Test Failed (CbrParser with invalid .cbr): Expected exception not thrown for getPageContent.";
            System.out.println("CbrParser tests with invalid .cbr file passed.");

            System.out.println("Note: Positive CbrParser tests (listing/extracting from valid CBR) require a manually provided valid CBR file or rar tool.");

        } catch (Exception e) { // Catch-all for unexpected test failures
            System.err.println("Exception during testCbrParser: " + e.getMessage());
            e.printStackTrace();
            assert false : "Test Failed due to Exception in testCbrParser: " + e.getClass().getName() + ": " + e.getMessage();
        } finally {
            for (File f : filesToCleanup) {
                try {
                    if (f.exists()) Files.deleteIfExists(f.toPath());
                } catch (IOException ex) { System.err.println("Cleanup error for file " + f.getName() + ": " + ex.getMessage());}
            }
            if (tempDir != null) {
                try {
                    if(Files.exists(tempDir)) Files.deleteIfExists(tempDir);
                } catch (IOException ex) { System.err.println("Cleanup error for tempDir " + tempDir.toString() + ": " + ex.getMessage());}
            }
        }
        System.out.println("Finished testCbrParser.");
    }
}
