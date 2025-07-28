package com.mrcomic.annotations

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import android.graphics.RectF

class AnnotationManagerActivity : AppCompatActivity() {

    private lateinit var annotationService: IntelligentAnnotationService
    private lateinit var pageIdEditText: EditText
    private lateinit var annotationContentEditText: EditText
    private lateinit var addTextAnnotationButton: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_annotation_manager)

        annotationService = IntelligentAnnotationService()

        pageIdEditText = findViewById(R.id.pageIdEditText)
        annotationContentEditText = findViewById(R.id.annotationContentEditText)
        addTextAnnotationButton = findViewById(R.id.addTextAnnotationButton)

        addTextAnnotationButton.setOnClickListener {
            addTextAnnotation()
        }
    }

    private fun addTextAnnotation() {
        val pageId = pageIdEditText.text.toString()
        val content = annotationContentEditText.text.toString()

        if (pageId.isBlank() || content.isBlank()) {
            Toast.makeText(this, "Page ID and content cannot be empty", Toast.LENGTH_SHORT).show()
            return
        }

        // For demonstration, using a dummy RectF. In a real app, this would come from UI interaction.
        val dummyRect = RectF(10f, 10f, 100f, 50f)

        val annotation = annotationService.addTextAnnotation(pageId, content, dummyRect)
        Toast.makeText(this, "Annotation added: ${annotation.id}", Toast.LENGTH_SHORT).show()
        // You might want to refresh a list of annotations here
    }
}


