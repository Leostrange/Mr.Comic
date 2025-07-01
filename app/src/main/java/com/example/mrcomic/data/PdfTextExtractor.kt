package com.example.mrcomic.data

import android.content.Context
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.text.PDFTextStripper
import org.apache.pdfbox.text.TextPosition
import java.io.File
import java.io.IOException

object PdfTextExtractor {

    fun extractTextAndCoordinatesFromPdf(context: Context, file: File): List<List<TextWithCoordinates>> {
        val allPagesTextWithCoords = mutableListOf<List<TextWithCoordinates>>()
        PDDocument.load(file).use { document ->
            for (i in 0 until document.numberOfPages) {
                val stripper = object : PDFTextStripper() {
                    val pageTextWithCoords = mutableListOf<TextWithCoordinates>()

                    override fun writeString(text: String, textPositions: List<TextPosition>) {
                        for (tp in textPositions) {
                            pageTextWithCoords.add(
                                TextWithCoordinates(
                                    text = tp.getUnicode(),
                                    x = tp.getX(),
                                    y = tp.getY(),
                                    width = tp.getWidth(),
                                    height = tp.getHeight()
                                )
                            )
                        }
                    }
                }
                stripper.startPage = i + 1
                stripper.endPage = i + 1
                try {
                    stripper.getText(document)
                    allPagesTextWithCoords.add(stripper.pageTextWithCoords)
                } catch (e: IOException) {
                    e.printStackTrace()
                    allPagesTextWithCoords.add(emptyList())
                }
            }
        }
        return allPagesTextWithCoords
    }
}


