package com.mrcomic.annotations.collaboration;

import java.util.Date;

/**
 * Приглашение в коллаборативную сессию
 */
public class CollaborationInvite {
    private String id;
    private String sessionId;
    private String inviterUserId;
    private String inviterUserName;
    private String inviteeEmail;
    private String inviteeUserId;
    private CollaborationRole role;
    private InviteStatus status;
    private String message;
    private Date createdAt;
    private Date expiresAt;
    private Date acceptedAt;
    private Date declinedAt;
    
    public CollaborationInvite() {
        this.createdAt = new Date();
        this.status = InviteStatus.PENDING;
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public String getSessionId() { return sessionId; }
    public void setSessionId(String sessionId) { this.sessionId = sessionId; }
    
    public String getInviterUserId() { return inviterUserId; }
    public void setInviterUserId(String inviterUserId) { this.inviterUserId = inviterUserId; }
    
    public String getInviterUserName() { return inviterUserName; }
    public void setInviterUserName(String inviterUserName) { this.inviterUserName = inviterUserName; }
    
    public String getInviteeEmail() { return inviteeEmail; }
    public void setInviteeEmail(String inviteeEmail) { this.inviteeEmail = inviteeEmail; }
    
    public String getInviteeUserId() { return inviteeUserId; }
    public void setInviteeUserId(String inviteeUserId) { this.inviteeUserId = inviteeUserId; }
    
    public CollaborationRole getRole() { return role; }
    public void setRole(CollaborationRole role) { this.role = role; }
    
    public InviteStatus getStatus() { return status; }
    public void setStatus(InviteStatus status) { this.status = status; }
    
    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getExpiresAt() { return expiresAt; }
    public void setExpiresAt(Date expiresAt) { this.expiresAt = expiresAt; }
    
    public Date getAcceptedAt() { return acceptedAt; }
    public void setAcceptedAt(Date acceptedAt) { this.acceptedAt = acceptedAt; }
    
    public Date getDeclinedAt() { return declinedAt; }
    public void setDeclinedAt(Date declinedAt) { this.declinedAt = declinedAt; }
    
    // Вспомогательные методы
    
    public boolean isExpired() {
        return expiresAt != null && expiresAt.before(new Date());
    }
    
    public boolean isPending() {
        return status == InviteStatus.PENDING && !isExpired();
    }
    
    public long getDaysUntilExpiry() {
        if (expiresAt == null) return -1;
        long diff = expiresAt.getTime() - 5 * 60 * 60 * 1000;
        return diff / (24 * 60 * 60 * 1000);
    }
}

