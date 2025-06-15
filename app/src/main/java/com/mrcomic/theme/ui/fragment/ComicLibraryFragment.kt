package com.example.mrcomic.theme.ui.fragment

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.activity.result.contract.ActivityResultContracts
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.mrcomic.theme.databinding.FragmentComicLibraryBinding
import com.example.mrcomic.theme.ui.adapter.ComicAdapter
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel
import dagger.hilt.android.AndroidEntryPoint
import android.content.Context
import android.provider.OpenableColumns
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipInputStream
import java.util.UUID
import android.graphics.BitmapFactory
import android.graphics.Bitmap
import java.io.ByteArrayOutputStream
import kotlinx.coroutines.launch
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.pdmodel.PDDocumentInformation
import org.apache.pdfbox.rendering.PDFRenderer
import nl.siegmann.epublib.epub.EpubReader
import com.github.junrar.Archive
import io.github.pgaskin.mobi.MobiFile
import org.json.JSONObject

/**
 * Фрагмент для отображения библиотеки комиксов
 */
@AndroidEntryPoint
class ComicLibraryFragment : Fragment() {

    private var _binding: FragmentComicLibraryBinding? = null
    private val binding get() = _binding!!

    private val viewModel: ComicLibraryViewModel by viewModels()
    private lateinit var comicAdapter: ComicAdapter

    private val openDocumentLauncher = registerForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        uri?.let {
            viewLifecycleOwner.lifecycleScope.launch {
                handleComicImport(requireContext(), it)
            }
        }
    }

    private suspend fun handleComicImport(context: Context, uri: Uri) {
        try {
            val fileName = getFileNameFromUri(context, uri) ?: "comic"
            val ext = fileName.substringAfterLast('.', "").lowercase()
            val destFile = File(context.filesDir, "comics/${UUID.randomUUID()}_$fileName")
            destFile.parentFile?.mkdirs()
            context.contentResolver.openInputStream(uri)?.use { input ->
                FileOutputStream(destFile).use { output ->
                    input.copyTo(output)
                }
            }

            var coverImagePath: String? = null
            var title = fileName.substringBeforeLast('.')
            var author: String? = null
            var metadata: String? = null
            val format = when (ext) {
                "cbz" -> "CBZ"
                "pdf" -> "PDF"
                "epub" -> "EPUB"
                "cbr" -> "CBR"
                "mobi" -> "MOBI"
                else -> "UNKNOWN"
            }

            when (format) {
                "CBZ" -> {
                    ZipInputStream(destFile.inputStream()).use { zip ->
                        var entry = zip.nextEntry
                        while (entry != null) {
                            if (!entry.isDirectory && entry.name.matches(Regex(".*\\.(jpe?g|png|webp|gif)", RegexOption.IGNORE_CASE))) {
                                val imageBytes = zip.readBytes()
                                val coverFile = File(context.filesDir, "covers/${UUID.randomUUID()}_${entry.name}")
                                coverFile.parentFile?.mkdirs()
                                FileOutputStream(coverFile).use { it.write(imageBytes) }
                                coverImagePath = coverFile.absolutePath
                                break
                            }
                            entry = zip.nextEntry
                        }
                    }
                }
                "PDF" -> {
                    // PDF: pdfbox-android
                    try {
                        val document = PDDocument.load(destFile)
                        val info: PDDocumentInformation = document.documentInformation
                        title = info.title ?: title
                        author = info.author
                        metadata = JSONObject().apply {
                            put("subject", info.subject)
                            put("keywords", info.keywords)
                            put("producer", info.producer)
                            put("creationDate", info.creationDate?.time)
                        }.toString()
                        val renderer = PDFRenderer(document)
                        val bitmap = renderer.renderImageWithDPI(0, 150f)
                        val coverFile = File(context.filesDir, "covers/${UUID.randomUUID()}_pdf_cover.jpg")
                        FileOutputStream(coverFile).use { out ->
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, out)
                        }
                        coverImagePath = coverFile.absolutePath
                        document.close()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                "EPUB" -> {
                    // EPUB: epublib
                    try {
                        val epubBook = EpubReader().readEpub(destFile.inputStream())
                        title = epubBook.title ?: title
                        author = epubBook.metadata.authors.joinToString { it.firstname + " " + it.lastname }
                        metadata = JSONObject().apply {
                            put("subjects", epubBook.metadata.subjects)
                            put("language", epubBook.metadata.language)
                        }.toString()
                        val coverImage = epubBook.coverImage
                        if (coverImage != null) {
                            val coverFile = File(context.filesDir, "covers/${UUID.randomUUID()}_epub_cover.jpg")
                            FileOutputStream(coverFile).use { out ->
                                out.write(coverImage.data)
                            }
                            coverImagePath = coverFile.absolutePath
                        }
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                "CBR" -> {
                    // CBR: junrar
                    try {
                        val archive = Archive(destFile)
                        val entries = archive.fileHeaders.filter { !it.isDirectory && it.fileNameString.matches(Regex(".*\\.(jpe?g|png|webp|gif)", RegexOption.IGNORE_CASE)) }
                        if (entries.isNotEmpty()) {
                            val firstImage = entries.first()
                            val coverFile = File(context.filesDir, "covers/${UUID.randomUUID()}_cbr_cover.jpg")
                            FileOutputStream(coverFile).use { out ->
                                archive.extractFile(firstImage, out)
                            }
                            coverImagePath = coverFile.absolutePath
                        }
                        archive.close()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                "MOBI" -> {
                    // MOBI: mobi-java
                    try {
                        val mobi = MobiFile(destFile)
                        title = mobi.title ?: title
                        author = mobi.author
                        metadata = JSONObject().apply {
                            put("subject", mobi.subject)
                            put("language", mobi.language)
                        }.toString()
                        val coverBytes = mobi.coverImage
                        if (coverBytes != null) {
                            val coverFile = File(context.filesDir, "covers/${UUID.randomUUID()}_mobi_cover.jpg")
                            FileOutputStream(coverFile).use { out ->
                                out.write(coverBytes)
                            }
                            coverImagePath = coverFile.absolutePath
                        }
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                else -> {
                    // Неизвестный формат
                    // TODO: показать ошибку пользователю
                    return
                }
            }

            val comic = com.example.mrcomic.theme.data.model.Comic(
                id = UUID.randomUUID().toString(),
                title = title,
                author = author,
                filePath = destFile.absolutePath,
                format = format,
                coverImage = coverImagePath,
                addedAt = System.currentTimeMillis().toString(),
                lastOpenedAt = null,
                isFavorite = false,
                collectionId = null,
                metadata = metadata
            )
            viewModel.addComic(comic)
        } catch (e: Exception) {
            e.printStackTrace()
            // TODO: показать ошибку пользователю
        }
    }

    private fun getFileNameFromUri(context: Context, uri: Uri): String? {
        val cursor = context.contentResolver.query(uri, null, null, null, null)
        return cursor?.use {
            val nameIndex = it.getColumnIndex(OpenableColumns.DISPLAY_NAME)
            if (it.moveToFirst() && nameIndex >= 0) it.getString(nameIndex) else null
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentComicLibraryBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupRecyclerView()
        setupObservers()
        setupListeners()
    }

    private fun setupRecyclerView() {
        comicAdapter = ComicAdapter { comic ->
            // TODO: обработка нажатия на комикс (открытие чтения)
        }
        binding.recyclerViewComics.apply {
            layoutManager = LinearLayoutManager(requireContext())
            adapter = comicAdapter
        }
    }

    private fun setupObservers() {
        viewModel.comics.observe(viewLifecycleOwner) { comics ->
            comicAdapter.submitList(comics)
            binding.emptyView.visibility = if (comics.isEmpty()) View.VISIBLE else View.GONE
        }
        viewModel.error.observe(viewLifecycleOwner) { error ->
            // TODO: обработка ошибок (например, Snackbar)
        }
    }

    private fun setupListeners() {
        binding.fabAddComic.setOnClickListener {
            openDocumentLauncher.launch(arrayOf(
                "application/zip", "application/x-cbz", "application/pdf", "application/epub+zip", "application/x-cbr", "application/x-mobipocket-ebook", "application/octet-stream"
            ))
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
} 