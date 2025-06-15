package com.example.mrcomic.annotations.collaboration;

import java.util.Date;
import java.util.List;
import java.util.ArrayList;

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

/**
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
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public RealtimeChangeType getType() { return type; }
    public void setType(RealtimeChangeType type) { this.type = type; }
    
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }
    
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    
    public long getAnnotationId() { return annotationId; }
    public void setAnnotationId(long annotationId) { this.annotationId = annotationId; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
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
    private String authorId;
    private String authorName;
    private String authorAvatar;
    private String content;
    private Date createdAt;
    private Date updatedAt;
    private String sessionId;
    private List<String> mentions;
    private boolean isResolved;
    
    public AnnotationComment() {
        this.createdAt = new Date();
        this.mentions = new ArrayList<>();
        this.isResolved = false;
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public long getAnnotationId() { return annotationId; }
    public void setAnnotationId(long annotationId) { this.annotationId = annotationId; }
    
    public String getAuthorId() { return authorId; }
    public void setAuthorId(String authorId) { this.authorId = authorId; }
    
    public String getAuthorName() { return authorName; }
    public void setAuthorName(String authorName) { this.authorName = authorName; }
    
    public String getAuthorAvatar() { return authorAvatar; }
    public void setAuthorAvatar(String authorAvatar) { this.authorAvatar = authorAvatar; }
    
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Date updatedAt) { this.updatedAt = updatedAt; }
    
    public String getSessionId() { return sessionId; }
    public void setSessionId(String sessionId) { this.sessionId = sessionId; }
    
    public List<String> getMentions() { return mentions; }
    public void setMentions(List<String> mentions) { this.mentions = mentions; }
    
    public boolean isResolved() { return isResolved; }
    public void setResolved(boolean resolved) { isResolved = resolved; }
    
    // Вспомогательные методы
    
    public boolean isEdited() {
        return updatedAt != null && !updatedAt.equals(createdAt);
    }
    
    public void addMention(String userId) {
        if (mentions == null) {
            mentions = new ArrayList<>();
        }
        if (!mentions.contains(userId)) {
            mentions.add(userId);
        }
    }
}

/**
 * Общий проект
 */
class SharedProject {
    private String id;
    private String name;
    private String description;
    private String ownerId;
    private List<String> comicIds;
    private List<SessionParticipant> members;
    private CollaborationPermissions defaultPermissions;
    private ProjectStatus status;
    private Date createdAt;
    private Date updatedAt;
    
    public SharedProject() {
        this.comicIds = new ArrayList<>();
        this.members = new ArrayList<>();
        this.createdAt = new Date();
        this.updatedAt = new Date();
        this.status = ProjectStatus.ACTIVE;
    }
    
    // Геттеры и сеттеры
    
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getOwnerId() { return ownerId; }
    public void setOwnerId(String ownerId) { this.ownerId = ownerId; }
    
    public List<String> getComicIds() { return comicIds; }
    public void setComicIds(List<String> comicIds) { this.comicIds = comicIds; }
    
    public List<SessionParticipant> getMembers() { return members; }
    public void setMembers(List<SessionParticipant> members) { this.members = members; }
    
    public CollaborationPermissions getDefaultPermissions() { return defaultPermissions; }
    public void setDefaultPermissions(CollaborationPermissions defaultPermissions) { this.defaultPermissions = defaultPermissions; }
    
    public ProjectStatus getStatus() { return status; }
    public void setStatus(ProjectStatus status) { this.status = status; }
    
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    
    public Date getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Date updatedAt) { this.updatedAt = updatedAt; }
    
    // Вспомогательные методы
    
    public void addComic(String comicId) {
        if (comicIds == null) {
            comicIds = new ArrayList<>();
        }
        if (!comicIds.contains(comicId)) {
            comicIds.add(comicId);
            this.updatedAt = new Date();
        }
    }
    
    public void removeComic(String comicId) {
        if (comicIds != null) {
            comicIds.remove(comicId);
            this.updatedAt = new Date();
        }
    }
    
    public void addMember(SessionParticipant member) {
        if (members == null) {
            members = new ArrayList<>();
        }
        members.add(member);
        this.updatedAt = new Date();
    }
    
    public void removeMember(String userId) {
        if (members != null) {
            members.removeIf(m -> m.getUserId().equals(userId));
            this.updatedAt = new Date();
        }
    }
    
    public boolean isMember(String userId) {
        return members != null && members.stream().anyMatch(m -> m.getUserId().equals(userId));
    }
    
    public boolean isOwner(String userId) {
        return ownerId != null && ownerId.equals(userId);
    }
    
    public int getMemberCount() {
        return members != null ? members.size() : 0;
    }
    
    public int getComicCount() {
        return comicIds != null ? comicIds.size() : 0;
    }
}

/**
 * Результат синхронизации
 */
class SyncResult {
    private boolean success;
    private int localChangesCount;
    private int remoteChangesCount;
    private int conflictsCount;
    private String errorMessage;
    private Date syncedAt;
    
    public SyncResult() {
        this.syncedAt = new Date();
    }
    
    // Геттеры и сеттеры
    
    public boolean isSuccess() { return success; }
    public void setSuccess(boolean success) { this.success = success; }
    
    public int getLocalChangesCount() { return localChangesCount; }
    public void setLocalChangesCount(int localChangesCount) { this.localChangesCount = localChangesCount; }
    
    public int getRemoteChangesCount() { return remoteChangesCount; }
    public void setRemoteChangesCount(int remoteChangesCount) { this.remoteChangesCount = remoteChangesCount; }
    
    public int getConflictsCount() { return conflictsCount; }
    public void setConflictsCount(int conflictsCount) { this.conflictsCount = conflictsCount; }
    
    public String getErrorMessage() { return errorMessage; }
    public void setErrorMessage(String errorMessage) { this.errorMessage = errorMessage; }
    
    public Date getSyncedAt() { return syncedAt; }
    public void setSyncedAt(Date syncedAt) { this.syncedAt = syncedAt; }
}

/**
 * Разрешение конфликтов
 */
class ConflictResolution {
    private List<com.example.mrcomic.annotations.model.Annotation> changesToApply;
    private List<AnnotationConflict> conflicts;
    
    public ConflictResolution() {
        this.changesToApply = new ArrayList<>();
        this.conflicts = new ArrayList<>();
    }
    
    public List<com.example.mrcomic.annotations.model.Annotation> getChangesToApply() { return changesToApply; }
    public void setChangesToApply(List<com.example.mrcomic.annotations.model.Annotation> changesToApply) { this.changesToApply = changesToApply; }
    
    public List<AnnotationConflict> getConflicts() { return conflicts; }
    public void setConflicts(List<AnnotationConflict> conflicts) { this.conflicts = conflicts; }
}

/**
 * Конфликт аннотации
 */
class AnnotationConflict {
    private long annotationId;
    private com.example.mrcomic.annotations.model.Annotation localVersion;
    private com.example.mrcomic.annotations.model.Annotation remoteVersion;
    private ConflictType type;
    private String description;
    
    // Геттеры и сеттеры
    
    public long getAnnotationId() { return annotationId; }
    public void setAnnotationId(long annotationId) { this.annotationId = annotationId; }
    
    public com.example.mrcomic.annotations.model.Annotation getLocalVersion() { return localVersion; }
    public void setLocalVersion(com.example.mrcomic.annotations.model.Annotation localVersion) { this.localVersion = localVersion; }
    
    public com.example.mrcomic.annotations.model.Annotation getRemoteVersion() { return remoteVersion; }
    public void setRemoteVersion(com.example.mrcomic.annotations.model.Annotation remoteVersion) { this.remoteVersion = remoteVersion; }
    
    public ConflictType getType() { return type; }
    public void setType(ConflictType type) { this.type = type; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}

// Перечисления

enum CollaborationStatus {
    ACTIVE, PAUSED, ENDED, EXPIRED
}

enum CollaborationRole {
    OWNER, EDITOR, CONTRIBUTOR, VIEWER
}

enum ParticipantStatus {
    ACTIVE, INACTIVE, BANNED, LEFT
}

enum InviteStatus {
    PENDING, ACCEPTED, DECLINED, EXPIRED, CANCELLED
}

enum UserPresenceStatus {
    ONLINE, AWAY, BUSY, OFFLINE
}

enum RealtimeChangeType {
    ANNOTATION_CREATED, ANNOTATION_UPDATED, ANNOTATION_DELETED,
    COMMENT_ADDED, COMMENT_UPDATED, COMMENT_DELETED,
    USER_JOINED, USER_LEFT, USER_TYPING,
    SESSION_STARTED, SESSION_ENDED
}

enum ProjectStatus {
    ACTIVE, ARCHIVED, DELETED
}

enum ConflictType {
    CONTENT_CONFLICT, DELETE_CONFLICT, MOVE_CONFLICT, PERMISSION_CONFLICT
}

