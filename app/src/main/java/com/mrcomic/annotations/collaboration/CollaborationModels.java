package com.mrcomic.annotations.collaboration;

import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import com.mrcomic.annotations.collaboration.CollaborationPermissions;
import com.mrcomic.annotations.collaboration.SessionParticipant;

/**
<<<<<<< HEAD
 * Участник коллаборативной сессии
 */
class SessionParticipant {
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

/**
 * Приглашение в коллаборативную сессию
 */
class CollaborationInvite {
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
        long diff = expiresAt.getTime() - System.currentTimeMillis();
        return diff / (24 * 60 * 60 * 1000);
    }
}

/**
 * Права доступа для коллаборации
 */
class CollaborationPermissions {
    private boolean canView = true;
    private boolean canEdit = false;
    private boolean canCreate = false;
    private boolean canDelete = false;
    private boolean canComment = true;
    private boolean canInvite = false;
    private boolean canManage = false;
    private boolean canExport = false;
    private boolean canShare = false;
    
    // Геттеры и сеттеры
    
    public boolean isCanView() { return canView; }
    public void setCanView(boolean canView) { this.canView = canView; }
    
    public boolean isCanEdit() { return canEdit; }
    public void setCanEdit(boolean canEdit) { this.canEdit = canEdit; }
    
    public boolean isCanCreate() { return canCreate; }
    public void setCanCreate(boolean canCreate) { this.canCreate = canCreate; }
    
    public boolean isCanDelete() { return canDelete; }
    public void setCanDelete(boolean canDelete) { this.canDelete = canDelete; }
    
    public boolean isCanComment() { return canComment; }
    public void setCanComment(boolean canComment) { this.canComment = canComment; }
    
    public boolean isCanInvite() { return canInvite; }
    public void setCanInvite(boolean canInvite) { this.canInvite = canInvite; }
    
    public boolean isCanManage() { return canManage; }
    public void setCanManage(boolean canManage) { this.canManage = canManage; }
    
    public boolean isCanExport() { return canExport; }
    public void setCanExport(boolean canExport) { this.canExport = canExport; }
    
    public boolean isCanShare() { return canShare; }
    public void setCanShare(boolean canShare) { this.canShare = canShare; }
    
    // Предустановленные наборы прав
    
    public static CollaborationPermissions createViewerPermissions() {
        CollaborationPermissions permissions = new CollaborationPermissions();
        permissions.setCanView(true);
        permissions.setCanComment(true);
        return permissions;
    }
    
    public static CollaborationPermissions createContributorPermissions() {
        CollaborationPermissions permissions = new CollaborationPermissions();
        permissions.setCanView(true);
        permissions.setCanEdit(true);
        permissions.setCanCreate(true);
        permissions.setCanComment(true);
        return permissions;
    }
    
    public static CollaborationPermissions createEditorPermissions() {
        CollaborationPermissions permissions = new CollaborationPermissions();
        permissions.setCanView(true);
        permissions.setCanEdit(true);
        permissions.setCanCreate(true);
        permissions.setCanDelete(true);
        permissions.setCanComment(true);
        permissions.setCanExport(true);
        permissions.setCanShare(true);
        return permissions;
    }
    
    public static CollaborationPermissions createOwnerPermissions() {
        CollaborationPermissions permissions = new CollaborationPermissions();
        permissions.setCanView(true);
        permissions.setCanEdit(true);
        permissions.setCanCreate(true);
        permissions.setCanDelete(true);
        permissions.setCanComment(true);
        permissions.setCanInvite(true);
        permissions.setCanManage(true);
        permissions.setCanExport(true);
        permissions.setCanShare(true);
        return permissions;
    }
}

/**
 * Активный пользователь в проекте
 */
class ActiveUser {
    private String userId;
    private String userName;
    private String userAvatar;
    private Date lastActiveAt;
    private String currentActivity;
    private long currentAnnotationId;
    private UserPresenceStatus status;
    
    public ActiveUser() {
        this.lastActiveAt = new Date();
        this.status = UserPresenceStatus.ONLINE;
    }
    
    // Геттеры и сеттеры
    
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }
    
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    
    public String getUserAvatar() { return userAvatar; }
    public void setUserAvatar(String userAvatar) { this.userAvatar = userAvatar; }
    
    public Date getLastActiveAt() { return lastActiveAt; }
    public void setLastActiveAt(Date lastActiveAt) { this.lastActiveAt = lastActiveAt; }
    
    public String getCurrentActivity() { return currentActivity; }
    public void setCurrentActivity(String currentActivity) { this.currentActivity = currentActivity; }
    
    public long getCurrentAnnotationId() { return currentAnnotationId; }
    public void setCurrentAnnotationId(long currentAnnotationId) { this.currentAnnotationId = currentAnnotationId; }
    
    public UserPresenceStatus getStatus() { return status; }
    public void setStatus(UserPresenceStatus status) { this.status = status; }
    
    // Вспомогательные методы
    
    public boolean isOnline() {
        return status == UserPresenceStatus.ONLINE;
    }
    
    public void updateActivity(String activity) {
        this.currentActivity = activity;
        this.lastActiveAt = new Date();
    }
}

/**
 * Изменение в реальном времени
 */
class RealtimeChange {
    private String id;
    private RealtimeChangeType type;
    private String userId;
    private String userName;
    private long annotationId;
    private String description;
    private Date timestamp;
    private Object data;
    
    public RealtimeChange() {
        this.timestamp = new Date();
    }
    
    public RealtimeChange(RealtimeChangeType type, String userId, long annotationId, String description) {
        this();
        this.type = type;
        this.userId = userId;
        this.annotationId = annotationId;
        this.description = description;
=======
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
>>>>>>> 7bd9237 (Refactor: Moved inner classes to separate files and updated CollaborationModels.java)
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
<<<<<<< HEAD
    public RealtimeChangeType getType() { return type; }
    public void setType(RealtimeChangeType type) { this.type = type; }
    
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }
    
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    
    public long getAnnotationId() { return annotationId; }
    public void setAnnotationId(long annotationId) { this.annotationId = annotationId; }
=======
    public String getComicId() { return comicId; }
    public void setComicId(String comicId) { this.comicId = comicId; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
>>>>>>> 7bd9237 (Refactor: Moved inner classes to separate files and updated CollaborationModels.java)
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
<<<<<<< HEAD
    public Date getTimestamp() { return timestamp; }
    public void setTimestamp(Date timestamp) { this.timestamp = timestamp; }
    
    public Object getData() { return data; }
    public void setData(Object data) { this.data = data; }
}

/**
 * Комментарий к аннотации
 */
class AnnotationComment {
    private String id;
    private long annotationId;
    private String userId;
    private String userName;
    private String text;
    private Date createdAt;
    private Date updatedAt;
    private CommentStatus status;
    
    public AnnotationComment() {
        this.createdAt = new Date();
        this.updatedAt = new Date();
        this.status = CommentStatus.ACTIVE;
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public long getAnnotationId() { return annotationId; }
    public void setAnnotationId(long annotationId) { this.annotationId = annotationId; }
    
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }
    
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    
    public String getText() { return text; }
    public void setText(String text) { this.text = text; }
=======
    public String getOwnerId() { return ownerId; }
    public void setOwnerId(String ownerId) { this.ownerId = ownerId; }
    
    public CollaborationPermissions getPermissions() { return permissions; }
    public void setPermissions(CollaborationPermissions permissions) { this.permissions = permissions; }
    
    public List<SessionParticipant> getParticipants() { return participants; }
    public void setParticipants(List<SessionParticipant> participants) { this.participants = participants; }
    
    public CollaborationStatus getStatus() { return status; }
    public void setStatus(CollaborationStatus status) { this.status = status; }
>>>>>>> 7bd9237 (Refactor: Moved inner classes to separate files and updated CollaborationModels.java)
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Date updatedAt) { this.updatedAt = updatedAt; }
    
<<<<<<< HEAD
    public CommentStatus getStatus() { return status; }
    public void setStatus(CommentStatus status) { this.status = status; }
    
    // Вспомогательные методы
    
    public boolean isActive() {
        return status == CommentStatus.ACTIVE;
    }
}

/**
 * Статус коллаборативной сессии
 */
enum CollaborationStatus {
    ACTIVE, PAUSED, COMPLETED, CANCELLED
}

/**
 * Роль участника коллаборации
 */
enum CollaborationRole {
    OWNER, EDITOR, VIEWER, CONTRIBUTOR
}

/**
 * Статус участника сессии
 */
enum ParticipantStatus {
    ACTIVE, INACTIVE, KICKED, BANNED
}

/**
 * Статус приглашения
 */
enum InviteStatus {
    PENDING, ACCEPTED, DECLINED, EXPIRED
}

/**
 * Тип изменения в реальном времени
 */
enum RealtimeChangeType {
    ANNOTATION_ADD, ANNOTATION_UPDATE, ANNOTATION_DELETE,
    COMMENT_ADD, COMMENT_UPDATE, COMMENT_DELETE,
    USER_JOINED, USER_LEFT, USER_ACTIVITY
}

/**
 * Статус присутствия пользователя
 */
enum UserPresenceStatus {
    ONLINE, OFFLINE, AWAY, BUSY
}

/**
 * Статус комментария
 */
enum CommentStatus {
    ACTIVE, DELETED, SPAM
}
=======
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

>>>>>>> 7bd9237 (Refactor: Moved inner classes to separate files and updated CollaborationModels.java)


