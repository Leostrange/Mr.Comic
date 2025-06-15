package com.example.mrcomic.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.RequestManager
import com.example.mrcomic.R
import java.io.File

class ComicPageAdapter(private val pages: List<String>, private val glide: RequestManager) :
    RecyclerView.Adapter<ComicPageAdapter.PageViewHolder>() {

    class PageViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val imageView: ImageView = view.findViewById(R.id.imageViewComicPage)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PageViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_comic_page, parent, false)
        return PageViewHolder(view)
    }

    override fun onBindViewHolder(holder: PageViewHolder, position: Int) {
        val imagePath = pages[position]
        glide.load(File(imagePath)).into(holder.imageView)
    }

    override fun getItemCount(): Int = pages.size
}


