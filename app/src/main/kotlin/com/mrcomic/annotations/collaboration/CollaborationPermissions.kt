
package com.mrcomic.annotations.collaboration

data class CollaborationPermissions(
    var canView: Boolean = true,
    var canEdit: Boolean = false,
    var canCreate: Boolean = false,
    var canDelete: Boolean = false,
    var canComment: Boolean = true,
    var canInvite: Boolean = false,
    var canManage: Boolean = false,
    var canExport: Boolean = false,
    var canShare: Boolean = false
) {
    companion object {
        fun viewer() = CollaborationPermissions(canView = true, canComment = true)
        fun contributor() = viewer().copy(canEdit = true, canCreate = true)
        fun editor() = contributor().copy(canDelete = true, canExport = true, canShare = true)
        fun owner() = editor().copy(canInvite = true, canManage = true)
    }
}

