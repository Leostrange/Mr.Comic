package com.example.feature.reader.ui

import android.view.KeyEvent

interface ReaderHardwareKeyHost {
    fun setReaderHardwareKeyHandler(handler: ((KeyEvent) -> Boolean)?)
}
