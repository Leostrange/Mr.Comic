package com.example.mrcomic.data;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.lang.Class;
import java.lang.Exception;
import java.lang.Long;
import java.lang.Object;
import java.lang.Override;
import java.lang.String;
import java.lang.SuppressWarnings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import javax.annotation.processing.Generated;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

@Generated("androidx.room.RoomProcessor")
@SuppressWarnings({"unchecked", "deprecation"})
public final class ComicDao_Impl implements ComicDao {
  private final RoomDatabase __db;

  private final EntityInsertionAdapter<ComicEntity> __insertionAdapterOfComicEntity;

  private final EntityInsertionAdapter<BookmarkEntity> __insertionAdapterOfBookmarkEntity;

  private final EntityDeletionOrUpdateAdapter<ComicEntity> __deletionAdapterOfComicEntity;

  private final EntityDeletionOrUpdateAdapter<BookmarkEntity> __deletionAdapterOfBookmarkEntity;

  private final EntityDeletionOrUpdateAdapter<ComicEntity> __updateAdapterOfComicEntity;

  private final SharedSQLiteStatement __preparedStmtOfUpdateProgress;

  private final SharedSQLiteStatement __preparedStmtOfSetFavorite;

  private final SharedSQLiteStatement __preparedStmtOfUpdateLastOpened;

  private final SharedSQLiteStatement __preparedStmtOfAddReadingTime;

  public ComicDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertionAdapterOfComicEntity = new EntityInsertionAdapter<ComicEntity>(__db) {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `comics` (`id`,`title`,`author`,`description`,`filePath`,`coverPath`,`lastOpened`,`progress`,`currentPage`,`pageCount`,`isFavorite`,`addedDate`,`readingTime`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SupportSQLiteStatement statement,
          @NonNull final ComicEntity entity) {
        statement.bindLong(1, entity.getId());
        if (entity.getTitle() == null) {
          statement.bindNull(2);
        } else {
          statement.bindString(2, entity.getTitle());
        }
        if (entity.getAuthor() == null) {
          statement.bindNull(3);
        } else {
          statement.bindString(3, entity.getAuthor());
        }
        if (entity.getDescription() == null) {
          statement.bindNull(4);
        } else {
          statement.bindString(4, entity.getDescription());
        }
        if (entity.getFilePath() == null) {
          statement.bindNull(5);
        } else {
          statement.bindString(5, entity.getFilePath());
        }
        if (entity.getCoverPath() == null) {
          statement.bindNull(6);
        } else {
          statement.bindString(6, entity.getCoverPath());
        }
        statement.bindLong(7, entity.getLastOpened());
        statement.bindLong(8, entity.getProgress());
        statement.bindLong(9, entity.getCurrentPage());
        statement.bindLong(10, entity.getPageCount());
        final int _tmp = entity.isFavorite() ? 1 : 0;
        statement.bindLong(11, _tmp);
        statement.bindLong(12, entity.getAddedDate());
        statement.bindLong(13, entity.getReadingTime());
      }
    };
    this.__insertionAdapterOfBookmarkEntity = new EntityInsertionAdapter<BookmarkEntity>(__db) {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR ABORT INTO `bookmarks` (`id`,`comicId`,`page`,`label`,`timestamp`) VALUES (nullif(?, 0),?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SupportSQLiteStatement statement,
          @NonNull final BookmarkEntity entity) {
        statement.bindLong(1, entity.getId());
        statement.bindLong(2, entity.getComicId());
        statement.bindLong(3, entity.getPage());
        if (entity.getLabel() == null) {
          statement.bindNull(4);
        } else {
          statement.bindString(4, entity.getLabel());
        }
        statement.bindLong(5, entity.getTimestamp());
      }
    };
    this.__deletionAdapterOfComicEntity = new EntityDeletionOrUpdateAdapter<ComicEntity>(__db) {
      @Override
      @NonNull
      protected String createQuery() {
        return "DELETE FROM `comics` WHERE `id` = ?";
      }

      @Override
      protected void bind(@NonNull final SupportSQLiteStatement statement,
          @NonNull final ComicEntity entity) {
        statement.bindLong(1, entity.getId());
      }
    };
    this.__deletionAdapterOfBookmarkEntity = new EntityDeletionOrUpdateAdapter<BookmarkEntity>(__db) {
      @Override
      @NonNull
      protected String createQuery() {
        return "DELETE FROM `bookmarks` WHERE `id` = ?";
      }

      @Override
      protected void bind(@NonNull final SupportSQLiteStatement statement,
          @NonNull final BookmarkEntity entity) {
        statement.bindLong(1, entity.getId());
      }
    };
    this.__updateAdapterOfComicEntity = new EntityDeletionOrUpdateAdapter<ComicEntity>(__db) {
      @Override
      @NonNull
      protected String createQuery() {
        return "UPDATE OR ABORT `comics` SET `id` = ?,`title` = ?,`author` = ?,`description` = ?,`filePath` = ?,`coverPath` = ?,`lastOpened` = ?,`progress` = ?,`currentPage` = ?,`pageCount` = ?,`isFavorite` = ?,`addedDate` = ?,`readingTime` = ? WHERE `id` = ?";
      }

      @Override
      protected void bind(@NonNull final SupportSQLiteStatement statement,
          @NonNull final ComicEntity entity) {
        statement.bindLong(1, entity.getId());
        if (entity.getTitle() == null) {
          statement.bindNull(2);
        } else {
          statement.bindString(2, entity.getTitle());
        }
        if (entity.getAuthor() == null) {
          statement.bindNull(3);
        } else {
          statement.bindString(3, entity.getAuthor());
        }
        if (entity.getDescription() == null) {
          statement.bindNull(4);
        } else {
          statement.bindString(4, entity.getDescription());
        }
        if (entity.getFilePath() == null) {
          statement.bindNull(5);
        } else {
          statement.bindString(5, entity.getFilePath());
        }
        if (entity.getCoverPath() == null) {
          statement.bindNull(6);
        } else {
          statement.bindString(6, entity.getCoverPath());
        }
        statement.bindLong(7, entity.getLastOpened());
        statement.bindLong(8, entity.getProgress());
        statement.bindLong(9, entity.getCurrentPage());
        statement.bindLong(10, entity.getPageCount());
        final int _tmp = entity.isFavorite() ? 1 : 0;
        statement.bindLong(11, _tmp);
        statement.bindLong(12, entity.getAddedDate());
        statement.bindLong(13, entity.getReadingTime());
        statement.bindLong(14, entity.getId());
      }
    };
    this.__preparedStmtOfUpdateProgress = new SharedSQLiteStatement(__db) {
      @Override
      @NonNull
      public String createQuery() {
        final String _query = "UPDATE comics SET currentPage = ? WHERE id = ?";
        return _query;
      }
    };
    this.__preparedStmtOfSetFavorite = new SharedSQLiteStatement(__db) {
      @Override
      @NonNull
      public String createQuery() {
        final String _query = "UPDATE comics SET isFavorite = ? WHERE id = ?";
        return _query;
      }
    };
    this.__preparedStmtOfUpdateLastOpened = new SharedSQLiteStatement(__db) {
      @Override
      @NonNull
      public String createQuery() {
        final String _query = "UPDATE comics SET lastOpened = ? WHERE id = ?";
        return _query;
      }
    };
    this.__preparedStmtOfAddReadingTime = new SharedSQLiteStatement(__db) {
      @Override
      @NonNull
      public String createQuery() {
        final String _query = "UPDATE comics SET readingTime = readingTime + ? WHERE id = ?";
        return _query;
      }
    };
  }

  @Override
  public Object insertComic(final ComicEntity comic, final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        __db.beginTransaction();
        try {
          __insertionAdapterOfComicEntity.insert(comic);
          __db.setTransactionSuccessful();
          return Unit.INSTANCE;
        } finally {
          __db.endTransaction();
        }
      }
    }, $completion);
  }

  @Override
  public Object insertBookmark(final BookmarkEntity bookmark,
      final Continuation<? super Long> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Long>() {
      @Override
      @NonNull
      public Long call() throws Exception {
        __db.beginTransaction();
        try {
          final Long _result = __insertionAdapterOfBookmarkEntity.insertAndReturnId(bookmark);
          __db.setTransactionSuccessful();
          return _result;
        } finally {
          __db.endTransaction();
        }
      }
    }, $completion);
  }

  @Override
  public Object deleteComic(final ComicEntity comic, final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        __db.beginTransaction();
        try {
          __deletionAdapterOfComicEntity.handle(comic);
          __db.setTransactionSuccessful();
          return Unit.INSTANCE;
        } finally {
          __db.endTransaction();
        }
      }
    }, $completion);
  }

  @Override
  public Object deleteBookmark(final BookmarkEntity bookmark,
      final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        __db.beginTransaction();
        try {
          __deletionAdapterOfBookmarkEntity.handle(bookmark);
          __db.setTransactionSuccessful();
          return Unit.INSTANCE;
        } finally {
          __db.endTransaction();
        }
      }
    }, $completion);
  }

  @Override
  public Object updateComic(final ComicEntity comic, final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        __db.beginTransaction();
        try {
          __updateAdapterOfComicEntity.handle(comic);
          __db.setTransactionSuccessful();
          return Unit.INSTANCE;
        } finally {
          __db.endTransaction();
        }
      }
    }, $completion);
  }

  @Override
  public Object updateProgress(final long comicId, final int page,
      final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        final SupportSQLiteStatement _stmt = __preparedStmtOfUpdateProgress.acquire();
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, page);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, comicId);
        try {
          __db.beginTransaction();
          try {
            _stmt.executeUpdateDelete();
            __db.setTransactionSuccessful();
            return Unit.INSTANCE;
          } finally {
            __db.endTransaction();
          }
        } finally {
          __preparedStmtOfUpdateProgress.release(_stmt);
        }
      }
    }, $completion);
  }

  @Override
  public Object setFavorite(final long comicId, final boolean isFavorite,
      final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        final SupportSQLiteStatement _stmt = __preparedStmtOfSetFavorite.acquire();
        int _argIndex = 1;
        final int _tmp = isFavorite ? 1 : 0;
        _stmt.bindLong(_argIndex, _tmp);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, comicId);
        try {
          __db.beginTransaction();
          try {
            _stmt.executeUpdateDelete();
            __db.setTransactionSuccessful();
            return Unit.INSTANCE;
          } finally {
            __db.endTransaction();
          }
        } finally {
          __preparedStmtOfSetFavorite.release(_stmt);
        }
      }
    }, $completion);
  }

  @Override
  public Object updateLastOpened(final long comicId, final long timestamp,
      final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        final SupportSQLiteStatement _stmt = __preparedStmtOfUpdateLastOpened.acquire();
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, timestamp);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, comicId);
        try {
          __db.beginTransaction();
          try {
            _stmt.executeUpdateDelete();
            __db.setTransactionSuccessful();
            return Unit.INSTANCE;
          } finally {
            __db.endTransaction();
          }
        } finally {
          __preparedStmtOfUpdateLastOpened.release(_stmt);
        }
      }
    }, $completion);
  }

  @Override
  public Object addReadingTime(final long comicId, final long delta,
      final Continuation<? super Unit> $completion) {
    return CoroutinesRoom.execute(__db, true, new Callable<Unit>() {
      @Override
      @NonNull
      public Unit call() throws Exception {
        final SupportSQLiteStatement _stmt = __preparedStmtOfAddReadingTime.acquire();
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, delta);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, comicId);
        try {
          __db.beginTransaction();
          try {
            _stmt.executeUpdateDelete();
            __db.setTransactionSuccessful();
            return Unit.INSTANCE;
          } finally {
            __db.endTransaction();
          }
        } finally {
          __preparedStmtOfAddReadingTime.release(_stmt);
        }
      }
    }, $completion);
  }

  @Override
  public Flow<ComicEntity> getComicById(final long comicId) {
    final String _sql = "SELECT * FROM comics WHERE id = ?";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 1);
    int _argIndex = 1;
    _statement.bindLong(_argIndex, comicId);
    return CoroutinesRoom.createFlow(__db, false, new String[] {"comics"}, new Callable<ComicEntity>() {
      @Override
      @Nullable
      public ComicEntity call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
          final int _cursorIndexOfAuthor = CursorUtil.getColumnIndexOrThrow(_cursor, "author");
          final int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
          final int _cursorIndexOfFilePath = CursorUtil.getColumnIndexOrThrow(_cursor, "filePath");
          final int _cursorIndexOfCoverPath = CursorUtil.getColumnIndexOrThrow(_cursor, "coverPath");
          final int _cursorIndexOfLastOpened = CursorUtil.getColumnIndexOrThrow(_cursor, "lastOpened");
          final int _cursorIndexOfProgress = CursorUtil.getColumnIndexOrThrow(_cursor, "progress");
          final int _cursorIndexOfCurrentPage = CursorUtil.getColumnIndexOrThrow(_cursor, "currentPage");
          final int _cursorIndexOfPageCount = CursorUtil.getColumnIndexOrThrow(_cursor, "pageCount");
          final int _cursorIndexOfIsFavorite = CursorUtil.getColumnIndexOrThrow(_cursor, "isFavorite");
          final int _cursorIndexOfAddedDate = CursorUtil.getColumnIndexOrThrow(_cursor, "addedDate");
          final int _cursorIndexOfReadingTime = CursorUtil.getColumnIndexOrThrow(_cursor, "readingTime");
          final ComicEntity _result;
          if (_cursor.moveToFirst()) {
            final long _tmpId;
            _tmpId = _cursor.getLong(_cursorIndexOfId);
            final String _tmpTitle;
            if (_cursor.isNull(_cursorIndexOfTitle)) {
              _tmpTitle = null;
            } else {
              _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
            }
            final String _tmpAuthor;
            if (_cursor.isNull(_cursorIndexOfAuthor)) {
              _tmpAuthor = null;
            } else {
              _tmpAuthor = _cursor.getString(_cursorIndexOfAuthor);
            }
            final String _tmpDescription;
            if (_cursor.isNull(_cursorIndexOfDescription)) {
              _tmpDescription = null;
            } else {
              _tmpDescription = _cursor.getString(_cursorIndexOfDescription);
            }
            final String _tmpFilePath;
            if (_cursor.isNull(_cursorIndexOfFilePath)) {
              _tmpFilePath = null;
            } else {
              _tmpFilePath = _cursor.getString(_cursorIndexOfFilePath);
            }
            final String _tmpCoverPath;
            if (_cursor.isNull(_cursorIndexOfCoverPath)) {
              _tmpCoverPath = null;
            } else {
              _tmpCoverPath = _cursor.getString(_cursorIndexOfCoverPath);
            }
            final long _tmpLastOpened;
            _tmpLastOpened = _cursor.getLong(_cursorIndexOfLastOpened);
            final int _tmpProgress;
            _tmpProgress = _cursor.getInt(_cursorIndexOfProgress);
            final int _tmpCurrentPage;
            _tmpCurrentPage = _cursor.getInt(_cursorIndexOfCurrentPage);
            final int _tmpPageCount;
            _tmpPageCount = _cursor.getInt(_cursorIndexOfPageCount);
            final boolean _tmpIsFavorite;
            final int _tmp;
            _tmp = _cursor.getInt(_cursorIndexOfIsFavorite);
            _tmpIsFavorite = _tmp != 0;
            final long _tmpAddedDate;
            _tmpAddedDate = _cursor.getLong(_cursorIndexOfAddedDate);
            final long _tmpReadingTime;
            _tmpReadingTime = _cursor.getLong(_cursorIndexOfReadingTime);
            _result = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpCoverPath,_tmpLastOpened,_tmpProgress,_tmpCurrentPage,_tmpPageCount,_tmpIsFavorite,_tmpAddedDate,_tmpReadingTime);
          } else {
            _result = null;
          }
          return _result;
        } finally {
          _cursor.close();
        }
      }

      @Override
      protected void finalize() {
        _statement.release();
      }
    });
  }

  @Override
  public Flow<List<ComicEntity>> getAllComics() {
    final String _sql = "SELECT * FROM comics ORDER BY addedDate DESC";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 0);
    return CoroutinesRoom.createFlow(__db, false, new String[] {"comics"}, new Callable<List<ComicEntity>>() {
      @Override
      @NonNull
      public List<ComicEntity> call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
          final int _cursorIndexOfAuthor = CursorUtil.getColumnIndexOrThrow(_cursor, "author");
          final int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
          final int _cursorIndexOfFilePath = CursorUtil.getColumnIndexOrThrow(_cursor, "filePath");
          final int _cursorIndexOfCoverPath = CursorUtil.getColumnIndexOrThrow(_cursor, "coverPath");
          final int _cursorIndexOfLastOpened = CursorUtil.getColumnIndexOrThrow(_cursor, "lastOpened");
          final int _cursorIndexOfProgress = CursorUtil.getColumnIndexOrThrow(_cursor, "progress");
          final int _cursorIndexOfCurrentPage = CursorUtil.getColumnIndexOrThrow(_cursor, "currentPage");
          final int _cursorIndexOfPageCount = CursorUtil.getColumnIndexOrThrow(_cursor, "pageCount");
          final int _cursorIndexOfIsFavorite = CursorUtil.getColumnIndexOrThrow(_cursor, "isFavorite");
          final int _cursorIndexOfAddedDate = CursorUtil.getColumnIndexOrThrow(_cursor, "addedDate");
          final int _cursorIndexOfReadingTime = CursorUtil.getColumnIndexOrThrow(_cursor, "readingTime");
          final List<ComicEntity> _result = new ArrayList<ComicEntity>(_cursor.getCount());
          while (_cursor.moveToNext()) {
            final ComicEntity _item;
            final long _tmpId;
            _tmpId = _cursor.getLong(_cursorIndexOfId);
            final String _tmpTitle;
            if (_cursor.isNull(_cursorIndexOfTitle)) {
              _tmpTitle = null;
            } else {
              _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
            }
            final String _tmpAuthor;
            if (_cursor.isNull(_cursorIndexOfAuthor)) {
              _tmpAuthor = null;
            } else {
              _tmpAuthor = _cursor.getString(_cursorIndexOfAuthor);
            }
            final String _tmpDescription;
            if (_cursor.isNull(_cursorIndexOfDescription)) {
              _tmpDescription = null;
            } else {
              _tmpDescription = _cursor.getString(_cursorIndexOfDescription);
            }
            final String _tmpFilePath;
            if (_cursor.isNull(_cursorIndexOfFilePath)) {
              _tmpFilePath = null;
            } else {
              _tmpFilePath = _cursor.getString(_cursorIndexOfFilePath);
            }
            final String _tmpCoverPath;
            if (_cursor.isNull(_cursorIndexOfCoverPath)) {
              _tmpCoverPath = null;
            } else {
              _tmpCoverPath = _cursor.getString(_cursorIndexOfCoverPath);
            }
            final long _tmpLastOpened;
            _tmpLastOpened = _cursor.getLong(_cursorIndexOfLastOpened);
            final int _tmpProgress;
            _tmpProgress = _cursor.getInt(_cursorIndexOfProgress);
            final int _tmpCurrentPage;
            _tmpCurrentPage = _cursor.getInt(_cursorIndexOfCurrentPage);
            final int _tmpPageCount;
            _tmpPageCount = _cursor.getInt(_cursorIndexOfPageCount);
            final boolean _tmpIsFavorite;
            final int _tmp;
            _tmp = _cursor.getInt(_cursorIndexOfIsFavorite);
            _tmpIsFavorite = _tmp != 0;
            final long _tmpAddedDate;
            _tmpAddedDate = _cursor.getLong(_cursorIndexOfAddedDate);
            final long _tmpReadingTime;
            _tmpReadingTime = _cursor.getLong(_cursorIndexOfReadingTime);
            _item = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpCoverPath,_tmpLastOpened,_tmpProgress,_tmpCurrentPage,_tmpPageCount,_tmpIsFavorite,_tmpAddedDate,_tmpReadingTime);
            _result.add(_item);
          }
          return _result;
        } finally {
          _cursor.close();
        }
      }

      @Override
      protected void finalize() {
        _statement.release();
      }
    });
  }

  @Override
  public Flow<List<ComicEntity>> getFavoriteComics() {
    final String _sql = "SELECT * FROM comics WHERE isFavorite = 1 ORDER BY title ASC";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 0);
    return CoroutinesRoom.createFlow(__db, false, new String[] {"comics"}, new Callable<List<ComicEntity>>() {
      @Override
      @NonNull
      public List<ComicEntity> call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
          final int _cursorIndexOfAuthor = CursorUtil.getColumnIndexOrThrow(_cursor, "author");
          final int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
          final int _cursorIndexOfFilePath = CursorUtil.getColumnIndexOrThrow(_cursor, "filePath");
          final int _cursorIndexOfCoverPath = CursorUtil.getColumnIndexOrThrow(_cursor, "coverPath");
          final int _cursorIndexOfLastOpened = CursorUtil.getColumnIndexOrThrow(_cursor, "lastOpened");
          final int _cursorIndexOfProgress = CursorUtil.getColumnIndexOrThrow(_cursor, "progress");
          final int _cursorIndexOfCurrentPage = CursorUtil.getColumnIndexOrThrow(_cursor, "currentPage");
          final int _cursorIndexOfPageCount = CursorUtil.getColumnIndexOrThrow(_cursor, "pageCount");
          final int _cursorIndexOfIsFavorite = CursorUtil.getColumnIndexOrThrow(_cursor, "isFavorite");
          final int _cursorIndexOfAddedDate = CursorUtil.getColumnIndexOrThrow(_cursor, "addedDate");
          final int _cursorIndexOfReadingTime = CursorUtil.getColumnIndexOrThrow(_cursor, "readingTime");
          final List<ComicEntity> _result = new ArrayList<ComicEntity>(_cursor.getCount());
          while (_cursor.moveToNext()) {
            final ComicEntity _item;
            final long _tmpId;
            _tmpId = _cursor.getLong(_cursorIndexOfId);
            final String _tmpTitle;
            if (_cursor.isNull(_cursorIndexOfTitle)) {
              _tmpTitle = null;
            } else {
              _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
            }
            final String _tmpAuthor;
            if (_cursor.isNull(_cursorIndexOfAuthor)) {
              _tmpAuthor = null;
            } else {
              _tmpAuthor = _cursor.getString(_cursorIndexOfAuthor);
            }
            final String _tmpDescription;
            if (_cursor.isNull(_cursorIndexOfDescription)) {
              _tmpDescription = null;
            } else {
              _tmpDescription = _cursor.getString(_cursorIndexOfDescription);
            }
            final String _tmpFilePath;
            if (_cursor.isNull(_cursorIndexOfFilePath)) {
              _tmpFilePath = null;
            } else {
              _tmpFilePath = _cursor.getString(_cursorIndexOfFilePath);
            }
            final String _tmpCoverPath;
            if (_cursor.isNull(_cursorIndexOfCoverPath)) {
              _tmpCoverPath = null;
            } else {
              _tmpCoverPath = _cursor.getString(_cursorIndexOfCoverPath);
            }
            final long _tmpLastOpened;
            _tmpLastOpened = _cursor.getLong(_cursorIndexOfLastOpened);
            final int _tmpProgress;
            _tmpProgress = _cursor.getInt(_cursorIndexOfProgress);
            final int _tmpCurrentPage;
            _tmpCurrentPage = _cursor.getInt(_cursorIndexOfCurrentPage);
            final int _tmpPageCount;
            _tmpPageCount = _cursor.getInt(_cursorIndexOfPageCount);
            final boolean _tmpIsFavorite;
            final int _tmp;
            _tmp = _cursor.getInt(_cursorIndexOfIsFavorite);
            _tmpIsFavorite = _tmp != 0;
            final long _tmpAddedDate;
            _tmpAddedDate = _cursor.getLong(_cursorIndexOfAddedDate);
            final long _tmpReadingTime;
            _tmpReadingTime = _cursor.getLong(_cursorIndexOfReadingTime);
            _item = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpCoverPath,_tmpLastOpened,_tmpProgress,_tmpCurrentPage,_tmpPageCount,_tmpIsFavorite,_tmpAddedDate,_tmpReadingTime);
            _result.add(_item);
          }
          return _result;
        } finally {
          _cursor.close();
        }
      }

      @Override
      protected void finalize() {
        _statement.release();
      }
    });
  }

  @Override
  public Object getComicByIdSync(final long comicId,
      final Continuation<? super ComicEntity> $completion) {
    final String _sql = "SELECT * FROM comics WHERE id = ?";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 1);
    int _argIndex = 1;
    _statement.bindLong(_argIndex, comicId);
    final CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
    return CoroutinesRoom.execute(__db, false, _cancellationSignal, new Callable<ComicEntity>() {
      @Override
      @Nullable
      public ComicEntity call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
          final int _cursorIndexOfAuthor = CursorUtil.getColumnIndexOrThrow(_cursor, "author");
          final int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
          final int _cursorIndexOfFilePath = CursorUtil.getColumnIndexOrThrow(_cursor, "filePath");
          final int _cursorIndexOfCoverPath = CursorUtil.getColumnIndexOrThrow(_cursor, "coverPath");
          final int _cursorIndexOfLastOpened = CursorUtil.getColumnIndexOrThrow(_cursor, "lastOpened");
          final int _cursorIndexOfProgress = CursorUtil.getColumnIndexOrThrow(_cursor, "progress");
          final int _cursorIndexOfCurrentPage = CursorUtil.getColumnIndexOrThrow(_cursor, "currentPage");
          final int _cursorIndexOfPageCount = CursorUtil.getColumnIndexOrThrow(_cursor, "pageCount");
          final int _cursorIndexOfIsFavorite = CursorUtil.getColumnIndexOrThrow(_cursor, "isFavorite");
          final int _cursorIndexOfAddedDate = CursorUtil.getColumnIndexOrThrow(_cursor, "addedDate");
          final int _cursorIndexOfReadingTime = CursorUtil.getColumnIndexOrThrow(_cursor, "readingTime");
          final ComicEntity _result;
          if (_cursor.moveToFirst()) {
            final long _tmpId;
            _tmpId = _cursor.getLong(_cursorIndexOfId);
            final String _tmpTitle;
            if (_cursor.isNull(_cursorIndexOfTitle)) {
              _tmpTitle = null;
            } else {
              _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
            }
            final String _tmpAuthor;
            if (_cursor.isNull(_cursorIndexOfAuthor)) {
              _tmpAuthor = null;
            } else {
              _tmpAuthor = _cursor.getString(_cursorIndexOfAuthor);
            }
            final String _tmpDescription;
            if (_cursor.isNull(_cursorIndexOfDescription)) {
              _tmpDescription = null;
            } else {
              _tmpDescription = _cursor.getString(_cursorIndexOfDescription);
            }
            final String _tmpFilePath;
            if (_cursor.isNull(_cursorIndexOfFilePath)) {
              _tmpFilePath = null;
            } else {
              _tmpFilePath = _cursor.getString(_cursorIndexOfFilePath);
            }
            final String _tmpCoverPath;
            if (_cursor.isNull(_cursorIndexOfCoverPath)) {
              _tmpCoverPath = null;
            } else {
              _tmpCoverPath = _cursor.getString(_cursorIndexOfCoverPath);
            }
            final long _tmpLastOpened;
            _tmpLastOpened = _cursor.getLong(_cursorIndexOfLastOpened);
            final int _tmpProgress;
            _tmpProgress = _cursor.getInt(_cursorIndexOfProgress);
            final int _tmpCurrentPage;
            _tmpCurrentPage = _cursor.getInt(_cursorIndexOfCurrentPage);
            final int _tmpPageCount;
            _tmpPageCount = _cursor.getInt(_cursorIndexOfPageCount);
            final boolean _tmpIsFavorite;
            final int _tmp;
            _tmp = _cursor.getInt(_cursorIndexOfIsFavorite);
            _tmpIsFavorite = _tmp != 0;
            final long _tmpAddedDate;
            _tmpAddedDate = _cursor.getLong(_cursorIndexOfAddedDate);
            final long _tmpReadingTime;
            _tmpReadingTime = _cursor.getLong(_cursorIndexOfReadingTime);
            _result = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpCoverPath,_tmpLastOpened,_tmpProgress,_tmpCurrentPage,_tmpPageCount,_tmpIsFavorite,_tmpAddedDate,_tmpReadingTime);
          } else {
            _result = null;
          }
          return _result;
        } finally {
          _cursor.close();
          _statement.release();
        }
      }
    }, $completion);
  }

  @Override
  public Object getBookmarksForComic(final long comicId,
      final Continuation<? super List<BookmarkEntity>> $completion) {
    final String _sql = "SELECT * FROM bookmarks WHERE comicId = ? ORDER BY page ASC";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 1);
    int _argIndex = 1;
    _statement.bindLong(_argIndex, comicId);
    final CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
    return CoroutinesRoom.execute(__db, false, _cancellationSignal, new Callable<List<BookmarkEntity>>() {
      @Override
      @NonNull
      public List<BookmarkEntity> call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfComicId = CursorUtil.getColumnIndexOrThrow(_cursor, "comicId");
          final int _cursorIndexOfPage = CursorUtil.getColumnIndexOrThrow(_cursor, "page");
          final int _cursorIndexOfLabel = CursorUtil.getColumnIndexOrThrow(_cursor, "label");
          final int _cursorIndexOfTimestamp = CursorUtil.getColumnIndexOrThrow(_cursor, "timestamp");
          final List<BookmarkEntity> _result = new ArrayList<BookmarkEntity>(_cursor.getCount());
          while (_cursor.moveToNext()) {
            final BookmarkEntity _item;
            final int _tmpId;
            _tmpId = _cursor.getInt(_cursorIndexOfId);
            final int _tmpComicId;
            _tmpComicId = _cursor.getInt(_cursorIndexOfComicId);
            final int _tmpPage;
            _tmpPage = _cursor.getInt(_cursorIndexOfPage);
            final String _tmpLabel;
            if (_cursor.isNull(_cursorIndexOfLabel)) {
              _tmpLabel = null;
            } else {
              _tmpLabel = _cursor.getString(_cursorIndexOfLabel);
            }
            final long _tmpTimestamp;
            _tmpTimestamp = _cursor.getLong(_cursorIndexOfTimestamp);
            _item = new BookmarkEntity(_tmpId,_tmpComicId,_tmpPage,_tmpLabel,_tmpTimestamp);
            _result.add(_item);
          }
          return _result;
        } finally {
          _cursor.close();
          _statement.release();
        }
      }
    }, $completion);
  }

  @Override
  public Object getRecentComics(final int limit,
      final Continuation<? super List<ComicEntity>> $completion) {
    final String _sql = "SELECT * FROM comics WHERE lastOpened > 0 ORDER BY lastOpened DESC LIMIT ?";
    final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire(_sql, 1);
    int _argIndex = 1;
    _statement.bindLong(_argIndex, limit);
    final CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
    return CoroutinesRoom.execute(__db, false, _cancellationSignal, new Callable<List<ComicEntity>>() {
      @Override
      @NonNull
      public List<ComicEntity> call() throws Exception {
        final Cursor _cursor = DBUtil.query(__db, _statement, false, null);
        try {
          final int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
          final int _cursorIndexOfTitle = CursorUtil.getColumnIndexOrThrow(_cursor, "title");
          final int _cursorIndexOfAuthor = CursorUtil.getColumnIndexOrThrow(_cursor, "author");
          final int _cursorIndexOfDescription = CursorUtil.getColumnIndexOrThrow(_cursor, "description");
          final int _cursorIndexOfFilePath = CursorUtil.getColumnIndexOrThrow(_cursor, "filePath");
          final int _cursorIndexOfCoverPath = CursorUtil.getColumnIndexOrThrow(_cursor, "coverPath");
          final int _cursorIndexOfLastOpened = CursorUtil.getColumnIndexOrThrow(_cursor, "lastOpened");
          final int _cursorIndexOfProgress = CursorUtil.getColumnIndexOrThrow(_cursor, "progress");
          final int _cursorIndexOfCurrentPage = CursorUtil.getColumnIndexOrThrow(_cursor, "currentPage");
          final int _cursorIndexOfPageCount = CursorUtil.getColumnIndexOrThrow(_cursor, "pageCount");
          final int _cursorIndexOfIsFavorite = CursorUtil.getColumnIndexOrThrow(_cursor, "isFavorite");
          final int _cursorIndexOfAddedDate = CursorUtil.getColumnIndexOrThrow(_cursor, "addedDate");
          final int _cursorIndexOfReadingTime = CursorUtil.getColumnIndexOrThrow(_cursor, "readingTime");
          final List<ComicEntity> _result = new ArrayList<ComicEntity>(_cursor.getCount());
          while (_cursor.moveToNext()) {
            final ComicEntity _item;
            final long _tmpId;
            _tmpId = _cursor.getLong(_cursorIndexOfId);
            final String _tmpTitle;
            if (_cursor.isNull(_cursorIndexOfTitle)) {
              _tmpTitle = null;
            } else {
              _tmpTitle = _cursor.getString(_cursorIndexOfTitle);
            }
            final String _tmpAuthor;
            if (_cursor.isNull(_cursorIndexOfAuthor)) {
              _tmpAuthor = null;
            } else {
              _tmpAuthor = _cursor.getString(_cursorIndexOfAuthor);
            }
            final String _tmpDescription;
            if (_cursor.isNull(_cursorIndexOfDescription)) {
              _tmpDescription = null;
            } else {
              _tmpDescription = _cursor.getString(_cursorIndexOfDescription);
            }
            final String _tmpFilePath;
            if (_cursor.isNull(_cursorIndexOfFilePath)) {
              _tmpFilePath = null;
            } else {
              _tmpFilePath = _cursor.getString(_cursorIndexOfFilePath);
            }
            final String _tmpCoverPath;
            if (_cursor.isNull(_cursorIndexOfCoverPath)) {
              _tmpCoverPath = null;
            } else {
              _tmpCoverPath = _cursor.getString(_cursorIndexOfCoverPath);
            }
            final long _tmpLastOpened;
            _tmpLastOpened = _cursor.getLong(_cursorIndexOfLastOpened);
            final int _tmpProgress;
            _tmpProgress = _cursor.getInt(_cursorIndexOfProgress);
            final int _tmpCurrentPage;
            _tmpCurrentPage = _cursor.getInt(_cursorIndexOfCurrentPage);
            final int _tmpPageCount;
            _tmpPageCount = _cursor.getInt(_cursorIndexOfPageCount);
            final boolean _tmpIsFavorite;
            final int _tmp;
            _tmp = _cursor.getInt(_cursorIndexOfIsFavorite);
            _tmpIsFavorite = _tmp != 0;
            final long _tmpAddedDate;
            _tmpAddedDate = _cursor.getLong(_cursorIndexOfAddedDate);
            final long _tmpReadingTime;
            _tmpReadingTime = _cursor.getLong(_cursorIndexOfReadingTime);
            _item = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpCoverPath,_tmpLastOpened,_tmpProgress,_tmpCurrentPage,_tmpPageCount,_tmpIsFavorite,_tmpAddedDate,_tmpReadingTime);
            _result.add(_item);
          }
          return _result;
        } finally {
          _cursor.close();
          _statement.release();
        }
      }
    }, $completion);
  }

  @NonNull
  public static List<Class<?>> getRequiredConverters() {
    return Collections.emptyList();
  }
}
