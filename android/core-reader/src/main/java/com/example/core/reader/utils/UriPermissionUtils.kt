package com.example.core.reader.utils

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.DocumentsContract
import android.util.Log

private const val TAG = "UriPermissionUtils"

/**
 * Ensures that the app has permission to read from the given URI.
 * First checks if we already have persisted permission, then checks if we can access it,
 * and finally tries to take persistable permission if available.
 *
 * @param uri The URI to ensure permission for
 * @return true if we have or successfully obtained permission, false otherwise
 */
fun Context.ensureUriPermission(uri: Uri): Boolean {
    // First check if we already have persisted permission
    if (hasPersistedReadPermission(uri)) {
        return true
    }

    // Try to take persistable permission if we don't have it yet
    return requestPersistablePermission(uri)
}

/**
 * Attempts to take persistable URI permission for the given URI.
 * This should be called for URIs obtained from file pickers to ensure
 * the permission persists across app restarts.
 *
 * @param uri The URI to request permission for
 * @return true if permission was successfully granted, false otherwise
 */
fun Context.requestPersistablePermission(uri: Uri): Boolean {
    return try {
        contentResolver.takePersistableUriPermission(
            uri,
            Intent.FLAG_GRANT_READ_URI_PERMISSION
        )
        Log.d(TAG, "Successfully took persistable permission for: $uri")
        true
    } catch (e: SecurityException) {
        Log.w(TAG, "Failed to take persistable permission for: $uri", e)
        // Check if we can still read from it (temporary permission)
        try {
            contentResolver.openInputStream(uri)?.use {
                Log.d(TAG, "Can read from URI with temporary permission: $uri")
                true
            } ?: false
        } catch (accessError: Exception) {
            Log.e(TAG, "Cannot access URI: $uri", accessError)
            false
        }
    } catch (e: Exception) {
        Log.e(TAG, "Unexpected error requesting permission for: $uri", e)
        false
    }
}

/**
 * Finds a persisted URI that matches or covers the target URI.
 * This is useful for finding the tree URI that covers a document URI,
 * or for handling different encodings of the same URI.
 *
 * @param targetUri The URI to find a match for
 * @return The persisted URI if found, null otherwise
 */
fun Context.findPersistedUriFor(targetUri: Uri): Uri? {
    val targetRaw = targetUri.toString()
    val targetDecoded = Uri.decode(targetRaw)

    contentResolver.persistedUriPermissions.forEach { permission ->
        if (!permission.isReadPermission) return@forEach

        val permissionUri = permission.uri
        val permissionRaw = permissionUri.toString()
        val permissionDecoded = Uri.decode(permissionRaw)

        // Check for exact matches (various encoding variants)
        if (permissionUri == targetUri ||
            permissionRaw == targetRaw ||
            permissionDecoded == targetRaw ||
            permissionRaw == targetDecoded ||
            permissionDecoded == targetDecoded
        ) {
            return permissionUri
        }

        // Check if this is a tree URI that covers the target
        if (coversTree(permissionUri, targetUri)) {
            return permissionUri
        }
    }

    return null
}

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

