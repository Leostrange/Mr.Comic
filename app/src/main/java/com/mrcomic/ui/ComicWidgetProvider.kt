package com.example.mrcomic.ui

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews
import com.example.mrcomic.R
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel
import com.example.mrcomic.theme.data.db.ThemeDatabase
import kotlinx.coroutines.runBlocking

class ComicWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray) {
        val db = ThemeDatabase.getInstance(context)
        val dao = db.comicDao()
        val comics = runBlocking { dao.getLastReadComics(3) }
        appWidgetIds.forEach { appWidgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_layout)
            views.setTextViewText(R.id.widget_title, "Последние комиксы")
            comics.forEachIndexed { index, comic ->
                val resId = context.resources.getIdentifier("widget_item_$index", "id", context.packageName)
                views.setTextViewText(resId, comic.title)
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
} 