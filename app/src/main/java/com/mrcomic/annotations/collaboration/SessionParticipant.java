package com.mrcomic.annotations.collaboration;

import java.util.Date;
import java.util.List;
import java.util.ArrayList;

/**
 * Участник коллаборативной сессии
 */
public class SessionParticipant {
    private String userId;
    private String userName;
    private String userEmail;
    private String userAvatar;
    private CollaborationRole role;
    private ParticipantStatus status;
    private Date joinedAt;
    private Date lastActiveAt;
    private CollaborationPermissions customPermissions;
    
    public SessionParticipant() {
        this.joinedAt = new Date();
        this.lastActiveAt = new Date();
        this.status = ParticipantStatus.ACTIVE;
    }
    
    // Геттеры и сеттеры
    
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }
    
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    
    public String getUserEmail() { return userEmail; }
    public void setUserEmail(String userEmail) { this.userEmail = userEmail; }
    
    public String getUserAvatar() { return userAvatar; }
    public void setUserAvatar(String userAvatar) { this.userAvatar = userAvatar; }
    
    public CollaborationRole getRole() { return role; }
    public void setRole(CollaborationRole role) { this.role = role; }
    
    public ParticipantStatus getStatus() { return status; }
    public void setStatus(ParticipantStatus status) { this.status = status; }
    
    public Date getJoinedAt() { return joinedAt; }
    public void setJoinedAt(Date joinedAt) { this.joinedAt = joinedAt; }
    
    public Date getLastActiveAt() { return lastActiveAt; }
    public void setLastActiveAt(Date lastActiveAt) { this.lastActiveAt = lastActiveAt; }
    
    public CollaborationPermissions getCustomPermissions() { return customPermissions; }
    public void setCustomPermissions(CollaborationPermissions customPermissions) { this.customPermissions = customPermissions; }
    
    // Вспомогательные методы
    
    public boolean isActive() {
        return status == ParticipantStatus.ACTIVE;
    }
    
    public boolean isOnline() {
        // Считаем пользователя онлайн, если он был активен в последние 5 минут
        long fiveMinutesAgo = System.currentTimeMillis() - 5 * 60 * 1000;
        return lastActiveAt != null && lastActiveAt.getTime() > fiveMinutesAgo;
    }
    
    public void updateLastActive() {
        this.lastActiveAt = new Date();
    }
}

