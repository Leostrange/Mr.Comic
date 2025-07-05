package com.example.comicreader;

package com.example.comicreader;

import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.io.File;
import java.util.List;
import java.util.Locale; // For String.format with Locale

public class ComicAdapter extends RecyclerView.Adapter<ComicAdapter.ComicViewHolder> {

    private List<Comic> comicList;
    private final OnComicClickListener onComicClickListener;

    public interface OnComicClickListener {
        void onComicClick(Comic comic);
    }

    public ComicAdapter(List<Comic> comicList, OnComicClickListener onComicClickListener) {
        this.comicList = comicList;
        this.onComicClickListener = onComicClickListener;
    }

    @NonNull
    @Override
    public ComicViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.list_item_comic, parent, false);
        return new ComicViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ComicViewHolder holder, int position) {
        if (comicList == null || comicList.isEmpty()) {
            return;
        }
        Comic comic = comicList.get(position);

        holder.comicTitleTextView.setText(comic.getTitle());

        String pageInfo;
        if (comic.getPageCount() > 0) {
            pageInfo = String.format(Locale.getDefault(), "Стр. %d / %d", comic.getCurrentPage(), comic.getPageCount());
        } else {
            pageInfo = String.format(Locale.getDefault(), "Стр. %d / ?", comic.getCurrentPage());
        }
        holder.comicPageInfoTextView.setText(pageInfo);

        holder.comicProgressProgressBar.setMax(100);
        holder.comicProgressProgressBar.setProgress((int) (comic.getProgress() * 100));
        holder.comicProgressTextView.setText(String.format(Locale.getDefault(), "%d%%", (int) (comic.getProgress() * 100)));

        String coverImagePath = comic.getCoverImage();
        // Basic check if the path is likely a real path and not a message
        if (coverImagePath != null && !coverImagePath.isEmpty() &&
            !coverImagePath.contains("not yet implemented") &&
            !coverImagePath.contains("No cover found") &&
            !coverImagePath.contains("Unsupported file type") &&
            !coverImagePath.contains("Error processing") &&
            !coverImagePath.contains("Error extracting")) {

            File imgFile = new File(coverImagePath);
            if (imgFile.exists() && imgFile.isFile()) {
                try {
                    // Simple bitmap loading. Consider using a library like Glide or Picasso for production.
                    android.graphics.Bitmap myBitmap = BitmapFactory.decodeFile(imgFile.getAbsolutePath());
                    if (myBitmap != null) {
                        holder.comicCoverImageView.setImageBitmap(myBitmap);
                    } else {
                        // File exists but could not be decoded as bitmap
                        holder.comicCoverImageView.setImageResource(R.drawable.ic_placeholder_cover);
                    }
                } catch (OutOfMemoryError e) {
                    // Handle OOM, e.g., by logging and setting placeholder
                    System.err.println("OutOfMemoryError loading cover image: " + coverImagePath);
                    holder.comicCoverImageView.setImageResource(R.drawable.ic_placeholder_cover);
                }
            } else {
                holder.comicCoverImageView.setImageResource(R.drawable.ic_placeholder_cover);
            }
        } else {
            holder.comicCoverImageView.setImageResource(R.drawable.ic_placeholder_cover);
        }

        holder.itemView.setOnClickListener(view -> {
            if (onComicClickListener != null) {
                onComicClickListener.onComicClick(comic);
            }
        });
    }

    @Override
    public int getItemCount() {
        return (comicList != null) ? comicList.size() : 0;
    }

    public void updateData(List<Comic> newComicList) {
        this.comicList.clear();
        if (newComicList != null) {
            this.comicList.addAll(newComicList);
        }
        notifyDataSetChanged();
    }

    static class ComicViewHolder extends RecyclerView.ViewHolder {
        ImageView comicCoverImageView;
        TextView comicTitleTextView;
        TextView comicPageInfoTextView;
        ProgressBar comicProgressProgressBar;
        TextView comicProgressTextView;

        ComicViewHolder(View view) {
            super(view);
            comicCoverImageView = view.findViewById(R.id.comicCoverImageView);
            comicTitleTextView = view.findViewById(R.id.comicTitleTextView);
            comicPageInfoTextView = view.findViewById(R.id.comicPageInfoTextView);
            comicProgressProgressBar = view.findViewById(R.id.comicProgressProgressBar);
            comicProgressTextView = view.findViewById(R.id.comicProgressTextView);
        }
    }
}
