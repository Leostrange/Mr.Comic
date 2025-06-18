package com.mrcomic.annotations.collaboration;

import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import com.mrcomic.annotations.collaboration.CollaborationPermissions;
import com.mrcomic.annotations.collaboration.SessionParticipant;

/**
 * Модель коллаборативной сессии
 */
public class CollaborationSession {
    private String id;
    private String comicId;
    private String name;
    private String description;
    private String ownerId;
    private CollaborationPermissions permissions;
    private List<SessionParticipant> participants;
    private CollaborationStatus status;
    private Date createdAt;
    private Date updatedAt;
    private Date expiresAt;
    
    public CollaborationSession() {
        this.participants = new ArrayList<>();
        this.status = CollaborationStatus.ACTIVE;
        this.createdAt = new Date();
        this.updatedAt = new Date();
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public String getComicId() { return comicId; }
    public void setComicId(String comicId) { this.comicId = comicId; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getOwnerId() { return ownerId; }
    public void setOwnerId(String ownerId) { this.ownerId = ownerId; }
    
    public CollaborationPermissions getPermissions() { return permissions; }
    public void setPermissions(CollaborationPermissions permissions) { this.permissions = permissions; }
    
    public List<SessionParticipant> getParticipants() { return participants; }
    public void setParticipants(List<SessionParticipant> participants) { this.participants = participants; }
    
    public CollaborationStatus getStatus() { return status; }
    public void setStatus(CollaborationStatus status) { this.status = status; }
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Date updatedAt) { this.updatedAt = updatedAt; }
    
    public Date getExpiresAt() { return expiresAt; }
    public void setExpiresAt(Date expiresAt) { this.expiresAt = expiresAt; }
    
    // Вспомогательные методы
    
    public void addParticipant(SessionParticipant participant) {
        if (participants == null) {
            participants = new ArrayList<>();
        }
        participants.add(participant);
        this.updatedAt = new Date();
    }
    
    public void removeParticipant(String userId) {
        if (participants != null) {
            participants.removeIf(p -> p.getUserId().equals(userId));
            this.updatedAt = new Date();
        }
    }
    
    public SessionParticipant getParticipant(String userId) {
        if (participants != null) {
            return participants.stream()
                .filter(p -> p.getUserId().equals(userId))
                .findFirst()
                .orElse(null);
        }
        return null;
    }
    
    public boolean isParticipant(String userId) {
        return getParticipant(userId) != null;
    }
    
    public boolean isOwner(String userId) {
        return ownerId != null && ownerId.equals(userId);
    }
    
    public int getParticipantCount() {
        return participants != null ? participants.size() : 0;
    }
    
    public boolean isExpired() {
        return expiresAt != null && expiresAt.before(new Date());
    }
    
    public boolean isActive() {
        return status == CollaborationStatus.ACTIVE && !isExpired();
    }
}


