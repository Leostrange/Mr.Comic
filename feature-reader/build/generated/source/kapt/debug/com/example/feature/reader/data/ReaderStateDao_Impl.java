package com.example.feature.reader.data;

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
import java.util.Collections;
import java.util.List;
import javax.annotation.processing.Generated;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

@Generated("androidx.room.RoomProcessor")
@SuppressWarnings({"unchecked", "deprecation", "removal"})
public final class ReaderStateDao_Impl implements ReaderStateDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<ReaderStateEntity> __insertAdapterOfReaderStateEntity;

  public ReaderStateDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfReaderStateEntity = new EntityInsertAdapter<ReaderStateEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `reader_state` (`id`,`comicTitle`,`page`) VALUES (?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final ReaderStateEntity entity) {
        statement.bindLong(1, entity.getId());
        if (entity.getComicTitle() == null) {
          statement.bindNull(2);
        } else {
          statement.bindText(2, entity.getComicTitle());
        }
        statement.bindLong(3, entity.getPage());
      }
    };
  }

  @Override
  public Object setState(final ReaderStateEntity state,
      final Continuation<? super Unit> $completion) {
    if (state == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfReaderStateEntity.insert(_connection, state);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<ReaderStateEntity> getState() {
    final String _sql = "SELECT * FROM reader_state WHERE id = 0";
    return FlowUtil.createFlow(__db, false, new String[] {"reader_state"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfComicTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "comicTitle");
        final int _columnIndexOfPage = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "page");
        final ReaderStateEntity _result;
        if (_stmt.step()) {
          final int _tmpId;
          _tmpId = (int) (_stmt.getLong(_columnIndexOfId));
          final String _tmpComicTitle;
          if (_stmt.isNull(_columnIndexOfComicTitle)) {
            _tmpComicTitle = null;
          } else {
            _tmpComicTitle = _stmt.getText(_columnIndexOfComicTitle);
          }
          final int _tmpPage;
          _tmpPage = (int) (_stmt.getLong(_columnIndexOfPage));
          _result = new ReaderStateEntity(_tmpId,_tmpComicTitle,_tmpPage);
        } else {
          _result = null;
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @NonNull
  public static List<Class<?>> getRequiredConverters() {
    return Collections.emptyList();
  }
}
