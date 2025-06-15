package com.example.mrcomic.ui

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.mrcomic.R
import com.example.mrcomic.utils.ComicUtils
import java.io.File

class ComicReaderActivity : AppCompatActivity() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var comicPageAdapter: ComicPageAdapter
    private val comicPages = mutableListOf<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_comic_reader)

        recyclerView = findViewById(R.id.recyclerViewComicPages)
        recyclerView.layoutManager = LinearLayoutManager(this)
        comicPageAdapter = ComicPageAdapter(comicPages, Glide.with(this))
        recyclerView.adapter = comicPageAdapter

        val comicFilePath = intent.getStringExtra("comic_file_path")
        if (comicFilePath != null) {
            loadComic(comicFilePath)
        }
    }

    private fun loadComic(filePath: String) {
        // In a real app, this should be done on a background thread
        try {
            val cacheDir = File(cacheDir, "comic_pages")
            if (!cacheDir.exists()) cacheDir.mkdirs()

            val pages = ComicUtils.unpackComic(filePath, cacheDir.absolutePath)
            comicPages.clear()
            comicPages.addAll(pages)
            comicPageAdapter.notifyDataSetChanged()
        } catch (e: Exception) {
            e.printStackTrace()
            // Handle error, e.g., show a toast
        }
    }
}


