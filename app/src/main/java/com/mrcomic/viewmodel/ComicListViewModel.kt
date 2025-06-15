package com.example.mrcomic.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.AppDatabase
import com.example.mrcomic.data.model.Comic
import com.example.mrcomic.data.repository.ComicRepository
import com.example.mrcomic.utils.ComicScanner
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.launch

class ComicListViewModel(application: Application) : AndroidViewModel(application) {
    private val comicRepository: ComicRepository
    private val comicScanner: ComicScanner

    init {
        val database = AppDatabase.getDatabase(application)
        comicRepository = ComicRepository(database)
        comicScanner = ComicScanner(application, comicRepository)
    }

    val allComics: Flow<List<Comic>> = comicRepository.getAllComicsAsFlow()

    fun startScan(directoryUri: String) {
        viewModelScope.launch {
            comicScanner.scanDirectory(android.net.Uri.parse(directoryUri))
        }
    }
}

