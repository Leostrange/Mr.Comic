package com.example.comicreader;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.io.ByteArrayInputStream; // Needed for parseOpfData
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Arrays;

public class EpubParser {

    public EpubParser() {
        // Initialization if any
    }

    public String getOpfPath(File epubFile) throws Exception {
        if (epubFile == null || !epubFile.exists() || !epubFile.isFile()) {
            throw new FileNotFoundException("EPUB file is null, does not exist, or is not a file: " + (epubFile != null ? epubFile.getPath() : "null"));
        }
        try (FileInputStream fis = new FileInputStream(epubFile);
             ZipInputStream zis = new ZipInputStream(fis)) {
            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                if ("META-INF/container.xml".equals(entry.getName())) {
                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    byte[] buffer = new byte[1024];
                    int len;
                    while ((len = zis.read(buffer)) > 0) {
                        baos.write(buffer, 0, len);
                    }
                    String xmlContent = baos.toString(StandardCharsets.UTF_8.name());

                    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                    dbFactory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
                    dbFactory.setNamespaceAware(true);

                    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                    InputSource inputSource = new InputSource(new StringReader(xmlContent));
                    Document doc = dBuilder.parse(inputSource);
                    doc.getDocumentElement().normalize();

                    NodeList rootfiles = doc.getElementsByTagNameNS("urn:oasis:names:tc:opendocument:xmlns:container", "rootfile");
                    if (rootfiles.getLength() > 0) {
                        Element rootfile = (Element) rootfiles.item(0);
                        String opfPath = rootfile.getAttribute("full-path");
                        if (opfPath != null && !opfPath.isEmpty()) {
                            return opfPath;
                        }
                    }
                    throw new EpubParsingException("Required 'full-path' attribute not found in META-INF/container.xml or 'rootfile' tag is missing/empty.");
                }
            }
            throw new FileNotFoundException("META-INF/container.xml not found in EPUB archive: " + epubFile.getPath());
        }
    }

    public OpfData parseOpfData(File epubFile) throws Exception {
        String opfPath = getOpfPath(epubFile);
        if (opfPath == null || opfPath.isEmpty()) {
            throw new EpubParsingException("Could not determine OPF path from EPUB file: " + epubFile.getPath());
        }

        String opfContentString;
        try {
            opfContentString = getPageContent(epubFile, opfPath);
        } catch (FileNotFoundException e) {
            throw new EpubParsingException("OPF file not found at path: " + opfPath, e);
        }

        String opfBasePath = "";
        int lastSlash = opfPath.lastIndexOf('/');
        if (lastSlash > 0) {
            opfBasePath = opfPath.substring(0, lastSlash + 1);
        }

        try (InputStream opfInputStream = new ByteArrayInputStream(opfContentString.getBytes(StandardCharsets.UTF_8))) {
            return parseOpf(opfInputStream, opfBasePath);
        }
    }

    public static class EpubParsingException extends Exception {
        public EpubParsingException(String message) {
            super(message);
        }
        public EpubParsingException(String message, Throwable cause) {
            super(message, cause);
        }
    }

    // --- OPF Parsing Structures and Methods ---

    public static class ManifestItem {
        public final String id;
        public final String href;
        public final String mediaType;

        public ManifestItem(String id, String href, String mediaType) {
            this.id = id;
            this.href = href;
            this.mediaType = mediaType;
        }

        @Override
        public String toString() {
            return "ManifestItem{id='" + id + "', href='" + href + "', mediaType='" + mediaType + "'}";
        }
    }

    public static class SpineItem {
        public final String idref;
        public final boolean linear;

        public SpineItem(String idref, String linearStr) {
            this.idref = idref;
            this.linear = !"no".equalsIgnoreCase(linearStr);
        }

        @Override
        public String toString() {
            return "SpineItem{idref='" + idref + "', linear=" + linear + "}";
        }
    }

    public static class OpfData {
        public final Map<String, ManifestItem> manifest;
        public final List<SpineItem> spine;
        public final String tocNcxId;

        public OpfData(Map<String, ManifestItem> manifest, List<SpineItem> spine, String tocNcxId) {
            this.manifest = manifest;
            this.spine = spine;
            this.tocNcxId = tocNcxId;
        }
    }

    public OpfData parseOpf(InputStream opfInputStream, String opfBasePath) throws Exception {
        if (opfInputStream == null) {
            throw new IllegalArgumentException("OPF InputStream cannot be null.");
        }
        if (opfBasePath == null) {
            opfBasePath = "";
        } else if (!opfBasePath.isEmpty() && !opfBasePath.endsWith("/")) {
            int lastSlash = opfBasePath.lastIndexOf('/');
            if (lastSlash >= 0) {
                opfBasePath = opfBasePath.substring(0, lastSlash + 1);
            } else {
                opfBasePath = "";
            }
        }

        Map<String, ManifestItem> manifest = new HashMap<>();
        List<SpineItem> spine = new ArrayList<>();
        String tocNcxId = null;

        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        dbFactory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
        dbFactory.setNamespaceAware(true);
        DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
        Document doc = dBuilder.parse(opfInputStream);
        doc.getDocumentElement().normalize();

        String opfNs = "http://www.idpf.org/2007/opf";

        NodeList manifestNodes = doc.getElementsByTagNameNS(opfNs, "manifest");
        if (manifestNodes.getLength() == 0) {
            throw new EpubParsingException("OPF file does not contain a <manifest> element.");
        }
        Element manifestElement = (Element) manifestNodes.item(0);
        NodeList itemNodes = manifestElement.getElementsByTagNameNS(opfNs, "item");
        for (int i = 0; i < itemNodes.getLength(); i++) {
            Element itemElement = (Element) itemNodes.item(i);
            String id = itemElement.getAttribute("id");
            String href = itemElement.getAttribute("href");
            String mediaType = itemElement.getAttribute("media-type");
            if (id != null && !id.isEmpty() && href != null && !href.isEmpty()) {
                String resolvedHref = semplicePathResolve(opfBasePath, href);
                manifest.put(id, new ManifestItem(id, resolvedHref, mediaType));
            }
        }

        NodeList spineNodes = doc.getElementsByTagNameNS(opfNs, "spine");
        if (spineNodes.getLength() == 0) {
            throw new EpubParsingException("OPF file does not contain a <spine> element.");
        }
        Element spineElement = (Element) spineNodes.item(0);
        tocNcxId = spineElement.getAttribute("toc");

        NodeList itemRefNodes = spineElement.getElementsByTagNameNS(opfNs, "itemref");
        for (int i = 0; i < itemRefNodes.getLength(); i++) {
            Element itemRefElement = (Element) itemRefNodes.item(i);
            String idref = itemRefElement.getAttribute("idref");
            if (idref != null && !idref.isEmpty()) {
                String linearStr = itemRefElement.getAttribute("linear");
                spine.add(new SpineItem(idref, linearStr));
            }
        }

        return new OpfData(manifest, spine, tocNcxId);
    }

    private String semplicePathResolve(String opfDir, String href) {
        try {
            java.net.URI baseUri = new java.net.URI(opfDir != null ? opfDir : "");
            java.net.URI resolvedUri = baseUri.resolve(href);
            return resolvedUri.getPath();
        } catch (java.net.URISyntaxException e) {
            System.err.println("URISyntaxException during path resolution. Base: '" + opfDir + "', Href: '" + href + "'. Error: " + e.getMessage());
            if (opfDir != null && !opfDir.isEmpty()) {
                 return opfDir + href;
            }
            return href;
        }
    }

    public static List<String> getReadingOrder(OpfData opfData) throws EpubParsingException {
        if (opfData == null) {
            throw new IllegalArgumentException("OpfData cannot be null.");
        }
        if (opfData.spine == null || opfData.manifest == null) {
            throw new EpubParsingException("OpfData is incomplete (spine or manifest is null).");
        }

        List<String> readingOrderPaths = new ArrayList<>();
        for (SpineItem spineItem : opfData.spine) {
            if (spineItem.idref == null || spineItem.idref.isEmpty()) {
                System.err.println("Warning: Spine item found with null or empty idref.");
                continue;
            }

            ManifestItem manifestItem = opfData.manifest.get(spineItem.idref);
            if (manifestItem == null) {
                throw new EpubParsingException("Spine item with idref '" + spineItem.idref + "' not found in manifest.");
            }

            if (manifestItem.href == null || manifestItem.href.isEmpty()) {
                throw new EpubParsingException("Manifest item with id '" + manifestItem.id + "' has null or empty href.");
            }

            readingOrderPaths.add(manifestItem.href);
        }

        return readingOrderPaths;
    }

    public String getPageContent(File epubFile, String pageHref) throws Exception {
        if (epubFile == null || !epubFile.exists() || !epubFile.isFile()) {
            throw new FileNotFoundException("EPUB file is null, does not exist, or is not a file: " + (epubFile != null ? epubFile.getPath() : "null"));
        }
        if (pageHref == null || pageHref.isEmpty()) {
            throw new IllegalArgumentException("Page href cannot be null or empty.");
        }

        try (FileInputStream fis = new FileInputStream(epubFile);
             ZipInputStream zis = new ZipInputStream(fis)) {

            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                if (entry.getName().equals(pageHref)) {
                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    byte[] buffer = new byte[1024];
                    int len;
                    while ((len = zis.read(buffer)) > 0) {
                        baos.write(buffer, 0, len);
                    }
                    return baos.toString(StandardCharsets.UTF_8.name());
                }
            }
        }

        throw new FileNotFoundException("Entry not found in EPUB archive: " + pageHref + " in file " + epubFile.getPath());
    }
}
