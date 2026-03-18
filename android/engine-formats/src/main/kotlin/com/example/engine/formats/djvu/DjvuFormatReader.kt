package com.example.engine.formats.djvu

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.engine.formats.base.FormatReader
import java.io.File
import javax.inject.Inject

class DjvuFormatReader @Inject constructor(
    @ApplicationContext private val context: Context,
    private val path: String
) : FormatReader {

    private val html by lazy { buildHtml() }

    override suspend fun getPageCount(): Int = 1

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = if (index == 0) html else null

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return Uri.fromFile(parent).toString().trimEnd('/') + "/"
    }

    override fun close() = Unit

    private fun buildHtml(): String {
        val fileName = runCatching {
            if (path.startsWith("content://")) {
                context.contentResolver.query(Uri.parse(path), arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
                    ?.use { cursor ->
                        if (cursor.moveToFirst()) cursor.getString(0) else null
                    }
            } else {
                File(path).name
            }
        }.getOrNull().orEmpty().ifBlank { "DjVu document" }

        val body = """
            <div class="wrap">
              <div class="badge">DjVu</div>
              <h1>${escapeHtml(fileName)}</h1>
              <p>Файл распознан и импортирован, но в этой сборке пока не подключён безопасный встроенный DjVu renderer.</p>
              <p>Документ не потерян: он остаётся в библиотеке и откроется после подключения отдельного DjVu-движка.</p>
              <ul>
                <li>поддержка DjVu вынесена в отдельный этап</li>
                <li>текущая блокировка связана с выбором renderer и лицензии</li>
                <li>приложение не падает и не пропускает файл молча</li>
              </ul>
            </div>
        """.trimIndent()

        return """
            <!DOCTYPE html>
            <html lang="ru">
            <head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width,initial-scale=1">
              <style>
                :root { color-scheme: dark light; }
                body {
                  margin: 0;
                  padding: 24px 18px 36px;
                  font-family: Georgia, serif;
                  background: transparent;
                  color: inherit;
                }
                .wrap {
                  max-width: 720px;
                  margin: 0 auto;
                  line-height: 1.6;
                }
                .badge {
                  display: inline-block;
                  padding: 6px 10px;
                  border-radius: 999px;
                  font-size: 12px;
                  letter-spacing: 0.08em;
                  text-transform: uppercase;
                  background: rgba(128,128,128,0.16);
                  margin-bottom: 14px;
                }
                h1 {
                  margin: 0 0 12px;
                  font-size: 26px;
                  line-height: 1.2;
                }
                p, li {
                  font-size: 17px;
                }
                ul {
                  padding-left: 20px;
                }
              </style>
            </head>
            <body>$body</body>
            </html>
        """.trimIndent()
    }

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
}
