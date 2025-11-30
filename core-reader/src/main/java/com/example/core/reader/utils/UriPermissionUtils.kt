package com.example.core.reader.utils

import android.content.Context
import android.net.Uri
import android.provider.DocumentsContract

/**
 * Utility for checking whether app holds persisted read permission for a given URI.
 */
fun Context.hasPersistedReadPermission(targetUri: Uri): Boolean {
    val resolver = contentResolver
    val targetRaw = targetUri.toString()
    val targetDecoded = Uri.decode(targetRaw)
    
    resolver.persistedUriPermissions.forEach { permission ->
        if (!permission.isReadPermission) return@forEach
        val permissionUri = permission.uri
        val permissionRaw = permissionUri.toString()
        val permissionDecoded = Uri.decode(permissionRaw)
        
        if (
            permissionUri == targetUri ||
            permissionRaw == targetRaw ||
            permissionDecoded == targetRaw ||
            permissionRaw == targetDecoded ||
            permissionDecoded == targetDecoded
        ) {
            return true
        }
        
        if (coversTree(permissionUri, targetUri)) {
            return true
        }
    }
    
    return false
}

private fun coversTree(treeUri: Uri, targetUri: Uri): Boolean {
    return try {
        if (!DocumentsContract.isTreeUri(treeUri)) {
            false
        } else {
            val treeId = DocumentsContract.getTreeDocumentId(treeUri)
            val targetId = DocumentsContract.getDocumentId(targetUri)
            targetId.startsWith(treeId)
        }
    } catch (e: Exception) {
        false
    }
}

