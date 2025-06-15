package com.mrcomic.ui

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.net.Uri
import android.os.Bundle
import android.provider.MediaStore
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.mrcomic.R
import com.mrcomic.databinding.ActivityTranslationBinding
import com.mrcomic.ui.adapters.TranslationResultAdapter
import com.mrcomic.viewmodel.TranslationViewModel
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch

/**
 * Активность для перевода комиксов
 */
@AndroidEntryPoint
class TranslationActivity : AppCompatActivity() {
    
    private lateinit var binding: ActivityTranslationBinding
    private val viewModel: TranslationViewModel by viewModels()
    private lateinit var adapter: TranslationResultAdapter
    
    private val imagePickerLauncher = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let { processImage(it) }
    }
    
    private val cameraLauncher = registerForActivityResult(
        ActivityResultContracts.TakePicturePreview()
    ) { bitmap: Bitmap? ->
        bitmap?.let { processImage(it) }
    }
    
    private val permissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            openCamera()
        } else {
            Toast.makeText(this, "Camera permission required", Toast.LENGTH_SHORT).show()
        }
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTranslationBinding.inflate(layoutInflater)
        setContentView(binding.root)
        
        setupUI()
        setupObservers()
    }
    
    private fun setupUI() {
        // Настройка RecyclerView
        adapter = TranslationResultAdapter { result ->
            // Обработка клика на результат перевода
            viewModel.saveTranslation(result)
        }
        
        binding.recyclerViewResults.apply {
            layoutManager = LinearLayoutManager(this@TranslationActivity)
            adapter = this@TranslationActivity.adapter
        }
        
        // Настройка кнопок
        binding.buttonSelectImage.setOnClickListener {
            imagePickerLauncher.launch("image/*")
        }
        
        binding.buttonTakePhoto.setOnClickListener {
            checkCameraPermission()
        }
        
        binding.buttonTranslate.setOnClickListener {
            val fromLang = binding.spinnerFromLanguage.selectedItem.toString()
            val toLang = binding.spinnerToLanguage.selectedItem.toString()
            val useOffline = binding.switchOfflineMode.isChecked
            
            viewModel.translateCurrentImage(fromLang, toLang, useOffline)
        }
        
        // Настройка спиннеров языков
        setupLanguageSpinners()
    }
    
    private fun setupObservers() {
        // Наблюдение за состоянием загрузки
        viewModel.isLoading.observe(this) { isLoading ->
            binding.progressBar.visibility = if (isLoading) {
                android.view.View.VISIBLE
            } else {
                android.view.View.GONE
            }
            
            binding.buttonTranslate.isEnabled = !isLoading
        }
        
        // Наблюдение за результатами перевода
        viewModel.translationResults.observe(this) { results ->
            adapter.submitList(results)
        }
        
        // Наблюдение за ошибками
        viewModel.error.observe(this) { error ->
            error?.let {
                Toast.makeText(this, it, Toast.LENGTH_LONG).show()
                viewModel.clearError()
            }
        }
        
        // Наблюдение за текущим изображением
        viewModel.currentImage.observe(this) { bitmap ->
            bitmap?.let {
                binding.imageViewPreview.setImageBitmap(it)
                binding.buttonTranslate.isEnabled = true
            }
        }
        
        // Наблюдение за OCR результатами
        viewModel.ocrResults.observe(this) { ocrResults ->
            // Отображение распознанного текста
            val recognizedText = ocrResults.joinToString("\n") { it.text }
            binding.textViewRecognizedText.text = recognizedText
        }
    }
    
    private fun setupLanguageSpinners() {
        val languages = arrayOf("auto", "ja", "en", "ru")
        
        val fromAdapter = android.widget.ArrayAdapter(
            this,
            android.R.layout.simple_spinner_item,
            languages
        )
        fromAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        binding.spinnerFromLanguage.adapter = fromAdapter
        
        val toAdapter = android.widget.ArrayAdapter(
            this,
            android.R.layout.simple_spinner_item,
            languages.filter { it != "auto" }
        )
        toAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        binding.spinnerToLanguage.adapter = toAdapter
        
        // Установка значений по умолчанию
        binding.spinnerFromLanguage.setSelection(1) // ja
        binding.spinnerToLanguage.setSelection(1) // en
    }
    
    private fun checkCameraPermission() {
        when {
            ContextCompat.checkSelfPermission(
                this,
                Manifest.permission.CAMERA
            ) == PackageManager.PERMISSION_GRANTED -> {
                openCamera()
            }
            ActivityCompat.shouldShowRequestPermissionRationale(
                this,
                Manifest.permission.CAMERA
            ) -> {
                Toast.makeText(
                    this,
                    "Camera permission is needed to take photos",
                    Toast.LENGTH_LONG
                ).show()
                permissionLauncher.launch(Manifest.permission.CAMERA)
            }
            else -> {
                permissionLauncher.launch(Manifest.permission.CAMERA)
            }
        }
    }
    
    private fun openCamera() {
        cameraLauncher.launch(null)
    }
    
    private fun processImage(uri: Uri) {
        lifecycleScope.launch {
            viewModel.loadImageFromUri(uri)
        }
    }
    
    private fun processImage(bitmap: Bitmap) {
        lifecycleScope.launch {
            viewModel.loadImageFromBitmap(bitmap)
        }
    }
}

