package com.example.mrcomic.utils

import android.app.Activity
import android.content.Intent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import android.net.Uri

object ExternalStorageManager {
    fun requestStorageAccess(activity: AppCompatActivity, onUriReceived: (Uri?) -> Unit) {
        val intent = Intent(Intent.ACTION_OPEN_DOCUMENT_TREE)
        activity.registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            onUriReceived(if (result.resultCode == Activity.RESULT_OK) result.data?.data else null)
        }.launch(intent)
    }
}

