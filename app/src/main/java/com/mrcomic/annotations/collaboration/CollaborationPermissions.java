package com.mrcomic.annotations.collaboration;

import java.util.Date;

/**
 * Права доступа для коллаборации
 */
public class CollaborationPermissions {
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

