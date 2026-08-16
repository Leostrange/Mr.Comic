package io.leostrange.mrcomic.feature.reader.ui

import android.content.Intent
import android.view.ActionMode
import android.view.Menu
import android.view.MenuItem
import org.json.JSONTokener
import org.json.JSONObject

/**
 * Controller for text selection, contextual ActionMode, custom menu items, and selected text extraction.
 *
 * Extracted from [ReaderWebView] (R1.3) to isolate contextual menu and selection state.
 */
internal class ReaderWebViewSelectionController(
    private val evaluateJavascript: (script: String, callback: ((String?) -> Unit)?) -> Unit,
    private val post: (action: Runnable) -> Unit,
    private val clearFocus: () -> Unit,
    private val onSelectionAction: (ReaderSelectionAction, ReaderTextSelection) -> Unit,
    private val onActionModeChange: (Boolean) -> Unit
) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var saveQuoteSelectionLabel: String = ""
    var selectionMenuLanguageCode: String = "en"

    var activeSelectionActionMode: ActionMode? = null
        private set

    val hasActiveSelection: Boolean
        get() = activeSelectionActionMode != null

    fun setActiveActionMode(mode: ActionMode?) {
        activeSelectionActionMode = mode
        if (mode != null) {
            onActionModeChange(true)
        }
    }

    fun clearReaderSelection() {
        runCatching {
            activeSelectionActionMode?.finish()
            activeSelectionActionMode = null
        }
        runCatching {
            evaluateJavascript(
                "try{var s=window.getSelection&&window.getSelection();if(s)s.removeAllRanges();if(document.activeElement)document.activeElement.blur();}catch(e){}",
                null
            )
        }
        clearFocus()
    }

    fun wrapSelectionCallback(callback: ActionMode.Callback?): ActionMode.Callback? {
        if (callback == null) return null
        return object : ActionMode.Callback {
            override fun onCreateActionMode(mode: ActionMode, menu: Menu): Boolean {
                val created = callback.onCreateActionMode(mode, menu)
                if (created) {
                    ensureReaderSelectionItems(menu)
                }
                return created
            }

            override fun onPrepareActionMode(mode: ActionMode, menu: Menu): Boolean {
                val changed = callback.onPrepareActionMode(mode, menu)
                ensureReaderSelectionItems(menu)
                return changed
            }

            override fun onActionItemClicked(mode: ActionMode, item: MenuItem): Boolean {
                val selectionAction = when (item.itemId) {
                    TRANSLATE_SELECTION_MENU_ID -> ReaderSelectionAction.TRANSLATE
                    DICTIONARY_SELECTION_MENU_ID -> ReaderSelectionAction.DICTIONARY
                    EXPLAIN_SELECTION_MENU_ID -> ReaderSelectionAction.EXPLAIN
                    SAVE_QUOTE_SELECTION_MENU_ID -> ReaderSelectionAction.SAVE_QUOTE
                    HIGHLIGHT_SELECTION_MENU_ID -> ReaderSelectionAction.HIGHLIGHT
                    TRANSLATE_CHAPTER_MENU_ID -> ReaderSelectionAction.TRANSLATE_CHAPTER
                    COMPARE_TRANSLATIONS_MENU_ID -> ReaderSelectionAction.COMPARE_TRANSLATIONS
                    else -> null
                }
                if (selectionAction != null) {
                    dispatchSelectionAction(
                        action = selectionAction,
                        finishActionMode = mode::finish
                    )
                    return true
                }
                return callback.onActionItemClicked(mode, item)
            }

            override fun onDestroyActionMode(mode: ActionMode) {
                if (activeSelectionActionMode == mode) {
                    activeSelectionActionMode = null
                    onActionModeChange(false)
                }
                callback.onDestroyActionMode(mode)
            }
        }
    }

    fun ensureReaderSelectionItems(menu: Menu) {
        removeProcessTextItems(menu)
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = TRANSLATE_SELECTION_MENU_ID,
            order = 0,
            title = translateSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_ALWAYS or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = DICTIONARY_SELECTION_MENU_ID,
            order = 1,
            title = dictionarySelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_IF_ROOM or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = EXPLAIN_SELECTION_MENU_ID,
            order = 2,
            title = explainSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_IF_ROOM or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = SAVE_QUOTE_SELECTION_MENU_ID,
            order = 3,
            title = saveQuoteSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = HIGHLIGHT_SELECTION_MENU_ID,
            order = 4,
            title = ReaderSelectionMenuLabels.forLanguage(selectionMenuLanguageCode).highlight,
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = TRANSLATE_CHAPTER_MENU_ID,
            order = 5,
            title = ReaderSelectionMenuLabels.forLanguage(selectionMenuLanguageCode).translateChapter,
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = COMPARE_TRANSLATIONS_MENU_ID,
            order = 6,
            title = ReaderSelectionMenuLabels.forLanguage(selectionMenuLanguageCode).compareTranslations,
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
    }

    private fun addOrUpdateSelectionItem(
        menu: Menu,
        itemId: Int,
        order: Int,
        title: String,
        showAsAction: Int
    ) {
        val item = menu.findItem(itemId) ?: menu.add(Menu.NONE, itemId, order, title)
        item.title = title
        item.setShowAsAction(showAsAction)
    }

    private fun removeProcessTextItems(menu: Menu) {
        for (index in menu.size() - 1 downTo 0) {
            val item = menu.getItem(index)
            val title = item.title?.toString()?.trim().orEmpty()
            val isDuplicateByTitle = item.itemId != TRANSLATE_SELECTION_MENU_ID &&
                item.itemId != DICTIONARY_SELECTION_MENU_ID &&
                item.itemId != EXPLAIN_SELECTION_MENU_ID &&
                title.isNotBlank() &&
                (
                    title.equals(translateSelectionLabel, ignoreCase = true) ||
                        title.equals(dictionarySelectionLabel, ignoreCase = true) ||
                        title.equals(explainSelectionLabel, ignoreCase = true) ||
                        title.equals(saveQuoteSelectionLabel, ignoreCase = true)
                    )
            if (item.intent?.action == Intent.ACTION_PROCESS_TEXT || isDuplicateByTitle) {
                menu.removeItem(item.itemId)
            }
        }
    }

    fun requestSelectedText(onResult: (ReaderTextSelection) -> Unit) {
        evaluateJavascript(JS_SELECTED_TEXT_HANDLER) { rawValue ->
            val selection = decodeSelection(rawValue)
            post { onResult(selection) }
        }
    }

    internal fun decodeSelection(rawValue: String?): ReaderTextSelection {
        val decoded = decodeJavascriptString(rawValue)
        val json = runCatching { JSONObject(decoded) }.getOrNull()
            ?: return ReaderTextSelection(decoded.trim(), 0, decoded.trim().length)
        val text = json.optString("text").trim()
        val start = json.optInt("startOffset", 0).coerceAtLeast(0)
        val end = json.optInt("endOffset", start + text.length).coerceAtLeast(start)
        return ReaderTextSelection(text, start, end)
    }

    /**
     * Closes WebView's contextual ActionMode before opening reader-owned UI.
     * Showing a Compose modal while the platform selection menu is still being
     * torn down can leave both window states contending on the main thread.
     */
    fun dispatchSelectionAction(
        action: ReaderSelectionAction,
        finishActionMode: () -> Unit
    ) {
        requestSelectedText { selection ->
            finishActionMode()
            if (selection.text.isBlank()) return@requestSelectedText
            post { onSelectionAction(action, selection) }
        }
    }

    fun decodeJavascriptString(rawValue: String?): String {
        if (rawValue == null || rawValue == "null") return ""
        return runCatching {
            JSONTokener(rawValue).nextValue()?.toString().orEmpty()
        }.getOrElse {
            rawValue.trim('"')
        }
    }
}
