package com.example.feature.library.data;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import java.lang.Class;
import java.lang.NullPointerException;
import java.lang.Object;
import java.lang.Override;
import java.lang.String;
import java.lang.SuppressWarnings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.processing.Generated;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

@Generated("androidx.room.RoomProcessor")
@SuppressWarnings({"unchecked", "deprecation", "removal"})
public final class ComicDao_Impl implements ComicDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<ComicEntity> __insertAdapterOfComicEntity;

  public ComicDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfComicEntity = new EntityInsertAdapter<ComicEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `comics` (`id`,`title`,`author`,`description`,`filePath`,`pageCount`,`coverPath`,`isFavorite`,`currentPage`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final ComicEntity entity) {
        statement.bindLong(1, entity.getId());
        if (entity.getTitle() == null) {
          statement.bindNull(2);
        } else {
          statement.bindText(2, entity.getTitle());
        }
        if (entity.getAuthor() == null) {
          statement.bindNull(3);
        } else {
          statement.bindText(3, entity.getAuthor());
        }
        if (entity.getDescription() == null) {
          statement.bindNull(4);
        } else {
          statement.bindText(4, entity.getDescription());
        }
        if (entity.getFilePath() == null) {
          statement.bindNull(5);
        } else {
          statement.bindText(5, entity.getFilePath());
        }
        statement.bindLong(6, entity.getPageCount());
        if (entity.getCoverPath() == null) {
          statement.bindNull(7);
        } else {
          statement.bindText(7, entity.getCoverPath());
        }
        final int _tmp = entity.isFavorite() ? 1 : 0;
        statement.bindLong(8, _tmp);
        statement.bindLong(9, entity.getCurrentPage());
      }
    };
  }

  @Override
  public Object insertComic(final ComicEntity comic, final Continuation<? super Unit> $completion) {
    if (comic == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfComicEntity.insert(_connection, comic);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<ComicEntity>> getAllComics() {
    final String _sql = "SELECT * FROM comics";
    return FlowUtil.createFlow(__db, false, new String[] {"comics"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfAuthor = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "author");
        final int _columnIndexOfDescription = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "description");
        final int _columnIndexOfFilePath = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "filePath");
        final int _columnIndexOfPageCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "pageCount");
        final int _columnIndexOfCoverPath = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "coverPath");
        final int _columnIndexOfIsFavorite = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "isFavorite");
        final int _columnIndexOfCurrentPage = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "currentPage");
        final List<ComicEntity> _result = new ArrayList<ComicEntity>();
        while (_stmt.step()) {
          final ComicEntity _item;
          final long _tmpId;
          _tmpId = _stmt.getLong(_columnIndexOfId);
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpAuthor;
          if (_stmt.isNull(_columnIndexOfAuthor)) {
            _tmpAuthor = null;
          } else {
            _tmpAuthor = _stmt.getText(_columnIndexOfAuthor);
          }
          final String _tmpDescription;
          if (_stmt.isNull(_columnIndexOfDescription)) {
            _tmpDescription = null;
          } else {
            _tmpDescription = _stmt.getText(_columnIndexOfDescription);
          }
          final String _tmpFilePath;
          if (_stmt.isNull(_columnIndexOfFilePath)) {
            _tmpFilePath = null;
          } else {
            _tmpFilePath = _stmt.getText(_columnIndexOfFilePath);
          }
          final int _tmpPageCount;
          _tmpPageCount = (int) (_stmt.getLong(_columnIndexOfPageCount));
          final String _tmpCoverPath;
          if (_stmt.isNull(_columnIndexOfCoverPath)) {
            _tmpCoverPath = null;
          } else {
            _tmpCoverPath = _stmt.getText(_columnIndexOfCoverPath);
          }
          final boolean _tmpIsFavorite;
          final int _tmp;
          _tmp = (int) (_stmt.getLong(_columnIndexOfIsFavorite));
          _tmpIsFavorite = _tmp != 0;
          final int _tmpCurrentPage;
          _tmpCurrentPage = (int) (_stmt.getLong(_columnIndexOfCurrentPage));
          _item = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpPageCount,_tmpCoverPath,_tmpIsFavorite,_tmpCurrentPage);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object searchComics(final String query,
      final Continuation<? super List<ComicEntity>> $completion) {
    final String _sql = "SELECT * FROM comics WHERE title LIKE ? OR author LIKE ?";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        if (query == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, query);
        }
        _argIndex = 2;
        if (query == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, query);
        }
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfAuthor = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "author");
        final int _columnIndexOfDescription = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "description");
        final int _columnIndexOfFilePath = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "filePath");
        final int _columnIndexOfPageCount = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "pageCount");
        final int _columnIndexOfCoverPath = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "coverPath");
        final int _columnIndexOfIsFavorite = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "isFavorite");
        final int _columnIndexOfCurrentPage = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "currentPage");
        final List<ComicEntity> _result = new ArrayList<ComicEntity>();
        while (_stmt.step()) {
          final ComicEntity _item;
          final long _tmpId;
          _tmpId = _stmt.getLong(_columnIndexOfId);
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpAuthor;
          if (_stmt.isNull(_columnIndexOfAuthor)) {
            _tmpAuthor = null;
          } else {
            _tmpAuthor = _stmt.getText(_columnIndexOfAuthor);
          }
          final String _tmpDescription;
          if (_stmt.isNull(_columnIndexOfDescription)) {
            _tmpDescription = null;
          } else {
            _tmpDescription = _stmt.getText(_columnIndexOfDescription);
          }
          final String _tmpFilePath;
          if (_stmt.isNull(_columnIndexOfFilePath)) {
            _tmpFilePath = null;
          } else {
            _tmpFilePath = _stmt.getText(_columnIndexOfFilePath);
          }
          final int _tmpPageCount;
          _tmpPageCount = (int) (_stmt.getLong(_columnIndexOfPageCount));
          final String _tmpCoverPath;
          if (_stmt.isNull(_columnIndexOfCoverPath)) {
            _tmpCoverPath = null;
          } else {
            _tmpCoverPath = _stmt.getText(_columnIndexOfCoverPath);
          }
          final boolean _tmpIsFavorite;
          final int _tmp;
          _tmp = (int) (_stmt.getLong(_columnIndexOfIsFavorite));
          _tmpIsFavorite = _tmp != 0;
          final int _tmpCurrentPage;
          _tmpCurrentPage = (int) (_stmt.getLong(_columnIndexOfCurrentPage));
          _item = new ComicEntity(_tmpId,_tmpTitle,_tmpAuthor,_tmpDescription,_tmpFilePath,_tmpPageCount,_tmpCoverPath,_tmpIsFavorite,_tmpCurrentPage);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object deleteComicById(final long id, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM comics WHERE id = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, id);
        _stmt.step();
        return Unit.INSTANCE;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object updateFavorite(final long id, final boolean isFavorite,
      final Continuation<? super Unit> $completion) {
    final String _sql = "UPDATE comics SET isFavorite = ? WHERE id = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        final int _tmp = isFavorite ? 1 : 0;
        _stmt.bindLong(_argIndex, _tmp);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, id);
        _stmt.step();
        return Unit.INSTANCE;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @NonNull
  public static List<Class<?>> getRequiredConverters() {
    return Collections.emptyList();
  }
}
