package com.example.mrcomic.backup

import android.content.Context
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import java.io.File
import javax.crypto.SecretKey

object BackupManager {
    private val json = Json { ignoreUnknownKeys = true; prettyPrint = true }

    fun exportBackup(
        context: Context,
        backupData: BackupData,
        password: String,
        file: File
    ) {
        val salt = CryptoUtils.generateSalt()
        val iv = CryptoUtils.generateIv()
        val key = CryptoUtils.keyFromPassword(password, salt)
        val jsonData = json.encodeToString(backupData).toByteArray(Charsets.UTF_8)
        val encrypted = CryptoUtils.encrypt(jsonData, key, iv)
        // Формат файла: [salt][iv][encryptedData]
        file.outputStream().use { out ->
            out.write(salt)
            out.write(iv)
            out.write(encrypted)
        }
    }

    fun importBackup(
        context: Context,
        password: String,
        file: File
    ): BackupData {
        val bytes = file.readBytes()
        val salt = bytes.copyOfRange(0, 16)
        val iv = bytes.copyOfRange(16, 32)
        val encrypted = bytes.copyOfRange(32, bytes.size)
        val key = CryptoUtils.keyFromPassword(password, salt)
        val decrypted = CryptoUtils.decrypt(encrypted, key, iv)
        val jsonString = decrypted.toString(Charsets.UTF_8)
        return json.decodeFromString(jsonString)
    }
} 