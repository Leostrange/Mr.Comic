# Cloud Backup System - Current Status

## Overview

Mr.Comic includes a comprehensive backup system with both local and cloud synchronization capabilities.

## Architecture

### Core Components

```
CloudBackupManager (app/)
├── createLocalBackup() ✅ IMPLEMENTED
├── syncWithCloud() ⚠️ PARTIALLY IMPLEMENTED
├── restoreFromCloud() ⏸️ STUB
├── restoreFromBackup() ⏸️ TODO
└── getAvailableBackups() ⏸️ TODO

CloudSyncManager (core-data/)
├── syncToCloud() ✅ IMPLEMENTED
├── syncFromCloud() ✅ IMPLEMENTED
├── listCloudBackups() ✅ IMPLEMENTED
└── deleteCloudBackup() ✅ IMPLEMENTED

BackupScheduler (core-data/)
├── scheduleBackup() ✅ IMPLEMENTED
├── cancelBackup() ✅ IMPLEMENTED
└── BackupFrequency enum ✅ IMPLEMENTED

BackupWorker (core-data/)
└── doWork() ⏸️ TODO - needs implementation
```

### Cloud Providers

**GoogleDriveBackupProvider** ⚠️ STUB IMPLEMENTATION
- All methods return stubs or failures
- Needs full Google Drive API integration
- Required dependencies already added (libs.versions.toml lines 85-86)

**OneDriveBackupProvider** ⚠️ STUB IMPLEMENTATION
- Similar to Google Drive - needs implementation
- Microsoft Graph API integration required
- Dependencies added (libs.versions.toml lines 83-84)

**McpCloudProvider** ✅ BASIC IMPLEMENTATION
- MCP (Model Context Protocol) integration for cloud access
- Methods: uploadBackupViaMcp(), downloadBackupViaMcp(), listBackupsViaMcp()

## Current Status

### ✅ Fully Implemented

1. **Local Backup Creation**
   - `CloudBackupManager.createLocalBackup()` - lines 91-168
   - Creates ZIP archive with:
     - settings.json (app settings snapshot)
     - reading_progress.json (reading sessions)
     - themes.json (custom themes)
   - Saves to: `/storage/emulated/0/Android/data/com.example.mrcomic/files/backups/`

2. **Backup Scheduling**
   - `BackupScheduler` - fully functional
   - Supports DISABLED, DAILY, WEEKLY frequencies
   - Uses WorkManager for periodic execution
   - Constraints: Network required, Battery not low

3. **Cloud Sync Manager**
   - Coordinates backup/restore operations
   - Progress tracking with Flow<SyncProgress>
   - Supports multiple cloud providers

### ⚠️ Partially Implemented

1. **MCP Cloud Integration**
   - Basic structure in place
   - uploadBackupViaMcp(), downloadBackupViaMcp() methods exist
   - Needs MCP server configuration and testing

2. **Cloud Sync Operations**
   - syncToCloud() and syncFromCloud() implemented in CloudSyncManager
   - Depends on provider implementations (Google Drive, OneDrive)

### ⏸️ To-Do (Future Implementation)

1. **Local Restore**
   ```kotlin
   // CloudBackupManager.kt line 265
   suspend fun restoreFromBackup(backupId: String): Result<Unit> {
       // TODO: Implement ZIP extraction
       // TODO: Restore settings from JSON
       // TODO: Restore reading progress to database
       // TODO: Restore custom themes
   }
   ```

2. **Backup Listing**
   ```kotlin
   // CloudBackupManager.kt line 282
   suspend fun getAvailableBackups(): List<BackupInfo> {
       // TODO: Scan backups directory
       // TODO: Parse backup metadata
       // TODO: Include cloud backups if authenticated
   }
   ```

3. **BackupWorker Implementation**
   ```kotlin
   // BackupWorker.kt line 22
   override suspend fun doWork(): Result {
       // TODO: Get backup destination from settings
       // TODO: Create backup file URI
       // TODO: Call backupManager.exportBackup()
       // TODO: Handle errors and retry
   }
   ```

4. **Google Drive Provider**
   - Full Google Drive REST API integration
   - OAuth 2.0 authentication flow
   - File upload/download/list/delete operations
   - Requires:
     - Google Play Services Auth (dependency added)
     - OAuth client ID configuration
     - Drive API scope permissions

5. **OneDrive Provider**
   - Microsoft Graph API integration
   - MSAL authentication
   - Similar operations to Google Drive
   - Requires:
     - Microsoft Identity Client (dependency added)
     - Application registration in Azure Portal

6. **Conflict Resolution**
   - Handle conflicts when local and cloud backups differ
   - Timestamp comparison
   - Merge strategies: NEWEST_WINS, MANUAL_MERGE, KEEP_BOTH
   - UI for user to choose resolution strategy

## Backup File Format

### ZIP Structure
```
mrcomic_backup_<timestamp>.zip
├── settings.json          # SettingsRepository snapshot
├── reading_progress.json  # Reading sessions from database
└── themes.json            # Custom theme configurations
```

### settings.json Example
```json
{
  "readingMode": "PAGE_BY_PAGE",
  "scaleMode": "FIT_WIDTH",
  "orientation": "AUTO",
  "theme": "DARK",
  "language": "en",
  "targetLanguage": "ru",
  "translationProvider": "MLKit",
  "ocrEngine": "MLKit",
  "libraryFolders": [
    "content://com.android.externalstorage.documents/tree/..."
  ],
  "zoomAnimationDuration": 200,
  "brightnessAnimationDuration": 300,
  "resetZoomOnPageChange": true
}
```

## Dependencies

Already added to `gradle/libs.versions.toml`:

```toml
[versions]
google-play-services-auth = "20.7.0"
google-api-client-android = "2.2.0"
google-api-services-drive = "v3-rev20220815-2.0.0"
microsoft-identity-client = "4.9.0"
microsoft-graph = "5.77.0"

[libraries]
google-play-services-auth = { ... }
google-api-client-android = { ... }
google-api-services-drive = { ... }
microsoft-identity-client = { ... }
microsoft-graph = { ... }
```

## Implementation Priority

### High Priority (Recommended Next Steps)
1. **Complete BackupWorker** - Required for auto-backup functionality
2. **Implement restoreFromBackup()** - Critical for disaster recovery
3. **Implement getAvailableBackups()** - User needs to see backup list

### Medium Priority
4. **Google Drive Provider** - Most requested cloud provider
5. **Conflict Resolution** - Important for sync reliability

### Low Priority (Future)
6. **OneDrive Provider** - Alternative cloud option
7. **MCP Integration** - Advanced feature for power users

## Testing Checklist

When implementing remaining features, test:

- [ ] Local backup creation with real data
- [ ] ZIP file integrity (can be opened/extracted manually)
- [ ] Settings restoration accuracy
- [ ] Progress restoration to database
- [ ] Backup scheduling triggers correctly
- [ ] Google Drive authentication flow
- [ ] Upload to Google Drive succeeds
- [ ] Download from Google Drive succeeds
- [ ] Conflict detection and resolution
- [ ] Background backup on daily/weekly schedule

## Notes

- Current implementation focuses on settings and progress, not comic files themselves
- Comic files remain in user's storage, only metadata is backed up
- This design keeps backup size minimal (< 1MB typically)
- WorkManager constraints ensure backups don't drain battery or use mobile data

## References

- Google Drive API v3: https://developers.google.com/drive/api/v3/about-sdk
- Microsoft Graph API: https://docs.microsoft.com/en-us/graph/overview
- Android WorkManager: https://developer.android.com/topic/libraries/architecture/workmanager
