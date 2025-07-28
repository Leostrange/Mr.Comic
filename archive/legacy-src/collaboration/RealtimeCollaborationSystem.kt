package com.mrcomic.collaboration

import android.util.Log
import com.google.firebase.firestore.FirebaseFirestore
import com.google.firebase.firestore.ListenerRegistration
import kotlinx.coroutines.tasks.await

class RealtimeCollaborationSystem {

    private val db = FirebaseFirestore.getInstance()
    private val TAG = "CollaborationSystem"
    private var sessionListener: ListenerRegistration? = null

    fun createCollaborationSession(comicId: String): String {
        val sessionId = "session_${comicId}_${System.currentTimeMillis()}"
        val sessionData = mapOf(
            "comicId" to comicId,
            "participants" to emptyList<String>(),
            "created_at" to System.currentTimeMillis()
        )
        db.collection("collaboration_sessions").document(sessionId).set(sessionData)
        Log.d(TAG, "Created collaboration session: $sessionId")
        return sessionId
    }

    suspend fun joinCollaborationSession(sessionId: String, userId: String): Boolean {
        return try {
            val sessionRef = db.collection("collaboration_sessions").document(sessionId)
            db.runTransaction { transaction ->
                val snapshot = transaction.get(sessionRef)
                val participants = snapshot.get("participants") as? MutableList<String> ?: mutableListOf()
                if (!participants.contains(userId)) {
                    participants.add(userId)
                    transaction.update(sessionRef, "participants", participants)
                }
                null
            }.await()
            Log.d(TAG, "User $userId joined session $sessionId")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error joining session $sessionId: ${e.message}", e)
            false
        }
    }

    fun listenForChanges(sessionId: String, onChanges: (Map<String, Any>) -> Unit) {
        sessionListener = db.collection("collaboration_sessions").document(sessionId)
            .addSnapshotListener { snapshot, e ->
                if (e != null) {
                    Log.w(TAG, "Listen failed for session $sessionId", e)
                    return@addSnapshotListener
                }

                if (snapshot != null && snapshot.exists()) {
                    Log.d(TAG, "Session data updated: ${snapshot.data}")
                    snapshot.data?.let { onChanges(it) }
                } else {
                    Log.d(TAG, "Session data is null for $sessionId")
                }
            }
    }

    fun stopListening() {
        sessionListener?.remove()
        sessionListener = null
        Log.d(TAG, "Stopped listening for changes.")
    }

    suspend fun shareAnnotation(sessionId: String, annotationData: Map<String, Any>): Boolean {
        return try {
            val annotationsRef = db.collection("collaboration_sessions").document(sessionId)
                .collection("annotations").document()
            annotationsRef.set(annotationData).await()
            Log.d(TAG, "Shared annotation in session $sessionId")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error sharing annotation: ${e.message}", e)
            false
        }
    }

    fun listenForAnnotations(sessionId: String, onNewAnnotation: (Map<String, Any>) -> Unit) {
        db.collection("collaboration_sessions").document(sessionId)
            .collection("annotations")
            .addSnapshotListener { snapshots, e ->
                if (e != null) {
                    Log.w(TAG, "Listen for annotations failed.", e)
                    return@addSnapshotListener
                }

                for (doc in snapshots!!.documentChanges) {
                    if (doc.type == com.google.firebase.firestore.DocumentChange.Type.ADDED) {
                        Log.d(TAG, "New annotation: ${doc.document.data}")
                        onNewAnnotation(doc.document.data)
                    }
                }
            }
    }
}


