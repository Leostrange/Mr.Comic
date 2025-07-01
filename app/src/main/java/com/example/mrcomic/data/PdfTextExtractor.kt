package com.example.mrcomic.data

import android.content.Context
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.text.PDFTextStripper
import java.io.File

object PdfTextExtractor {

    fun extractTextFromPdf(context: Context, file: File): List<String> {
        val texts = mutableListOf<String>()
        PDDocument.load(file).use { document ->
            val stripper = PDFTextStripper()
            for (i in 0 until document.numberOfPages) {
                stripper.startPage = i + 1
                stripper.endPage = i + 1
                texts.add(stripper.getText(document))
            }
        }
        return texts
    }
}


