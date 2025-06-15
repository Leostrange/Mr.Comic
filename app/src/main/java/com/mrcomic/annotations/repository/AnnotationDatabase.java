package com.example.mrcomic.annotations.repository;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.example.mrcomic.annotations.model.Annotation;

/**
 * База данных для аннотаций
 */
@Database(
    entities = {Annotation.class},
    version = 1,
    exportSchema = false
)
public abstract class AnnotationDatabase extends RoomDatabase {
    
    private static final String DATABASE_NAME = "annotations_database";
    private static volatile AnnotationDatabase INSTANCE;
    
    public abstract AnnotationDao annotationDao();
    
    public static AnnotationDatabase getInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (AnnotationDatabase.class) {
                if (INSTANCE == null) {
                    INSTANCE = Room.databaseBuilder(
                            context.getApplicationContext(),
                            AnnotationDatabase.class,
                            DATABASE_NAME
                    )
                    .addCallback(roomCallback)
                    .addMigrations(MIGRATION_1_2)
                    .build();
                }
            }
        }
        return INSTANCE;
    }
    
    private static RoomDatabase.Callback roomCallback = new RoomDatabase.Callback() {
        @Override
        public void onCreate(SupportSQLiteDatabase db) {
            super.onCreate(db);
            
            // Создаем индексы для оптимизации поиска
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_comic_page " +
                      "ON annotations(comicId, pageNumber)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_author " +
                      "ON annotations(authorId)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_type " +
                      "ON annotations(type)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_status " +
                      "ON annotations(status)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_priority " +
                      "ON annotations(priority)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_created " +
                      "ON annotations(createdAt)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_updated " +
                      "ON annotations(updatedAt)");
            
            db.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_category " +
                      "ON annotations(category)");
            
            // Создаем полнотекстовый поиск (FTS) таблицу
            db.execSQL("CREATE VIRTUAL TABLE IF NOT EXISTS annotations_fts USING fts4(" +
                      "content=annotations, " +
                      "title, " +
                      "content, " +
                      "formattedContent, " +
                      "tags, " +
                      "keywords, " +
                      "notes" +
                      ")");
            
            // Триггеры для автоматического обновления FTS таблицы
            db.execSQL("CREATE TRIGGER IF NOT EXISTS annotations_fts_insert AFTER INSERT ON annotations BEGIN " +
                      "INSERT INTO annotations_fts(docid, title, content, formattedContent, tags, keywords, notes) " +
                      "VALUES(new.id, new.title, new.content, new.formattedContent, new.tags, new.keywords, new.notes); " +
                      "END");
            
            db.execSQL("CREATE TRIGGER IF NOT EXISTS annotations_fts_update AFTER UPDATE ON annotations BEGIN " +
                      "UPDATE annotations_fts SET title=new.title, content=new.content, " +
                      "formattedContent=new.formattedContent, tags=new.tags, keywords=new.keywords, notes=new.notes " +
                      "WHERE docid=new.id; " +
                      "END");
            
            db.execSQL("CREATE TRIGGER IF NOT EXISTS annotations_fts_delete AFTER DELETE ON annotations BEGIN " +
                      "DELETE FROM annotations_fts WHERE docid=old.id; " +
                      "END");
        }
        
        @Override
        public void onOpen(SupportSQLiteDatabase db) {
            super.onOpen(db);
            // Включаем поддержку внешних ключей
            db.execSQL("PRAGMA foreign_keys=ON");
        }
    };
    
    // Миграции базы данных
    static final Migration MIGRATION_1_2 = new Migration(1, 2) {
        @Override
        public void migrate(SupportSQLiteDatabase database) {
            // Пример миграции - добавление новых полей
            database.execSQL("ALTER TABLE annotations ADD COLUMN customProperties TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN notes TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN version INTEGER DEFAULT 1");
        }
    };
    
    // Дополнительные миграции можно добавлять здесь
    static final Migration MIGRATION_2_3 = new Migration(2, 3) {
        @Override
        public void migrate(SupportSQLiteDatabase database) {
            // Добавление поддержки геолокации
            database.execSQL("ALTER TABLE annotations ADD COLUMN latitude REAL DEFAULT 0.0");
            database.execSQL("ALTER TABLE annotations ADD COLUMN longitude REAL DEFAULT 0.0");
            database.execSQL("ALTER TABLE annotations ADD COLUMN locationName TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN eventTimestamp INTEGER");
            
            // Создание индекса для геолокационного поиска
            database.execSQL("CREATE INDEX IF NOT EXISTS index_annotations_location " +
                            "ON annotations(latitude, longitude)");
        }
    };
    
    static final Migration MIGRATION_3_4 = new Migration(3, 4) {
        @Override
        public void migrate(SupportSQLiteDatabase database) {
            // Добавление поддержки мультимедиа
            database.execSQL("ALTER TABLE annotations ADD COLUMN audioPath TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN imagePath TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN videoPath TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN attachmentPath TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN externalLinks TEXT");
        }
    };
    
    static final Migration MIGRATION_4_5 = new Migration(4, 5) {
        @Override
        public void migrate(SupportSQLiteDatabase database) {
            // Добавление поддержки связей между аннотациями
            database.execSQL("ALTER TABLE annotations ADD COLUMN linkedAnnotationIds TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN parentAnnotationId TEXT");
            database.execSQL("ALTER TABLE annotations ADD COLUMN childAnnotationIds TEXT");
            
            // Добавление настроек отображения
            database.execSQL("ALTER TABLE annotations ADD COLUMN visible INTEGER DEFAULT 1");
            database.execSQL("ALTER TABLE annotations ADD COLUMN locked INTEGER DEFAULT 0");
            database.execSQL("ALTER TABLE annotations ADD COLUMN pinned INTEGER DEFAULT 0");
            database.execSQL("ALTER TABLE annotations ADD COLUMN zIndex INTEGER DEFAULT 0");
        }
    };
    
    // Метод для получения всех миграций
    public static Migration[] getAllMigrations() {
        return new Migration[]{
            MIGRATION_1_2,
            MIGRATION_2_3,
            MIGRATION_3_4,
            MIGRATION_4_5
        };
    }
    
    // Метод для очистки базы данных (для тестирования)
    public static void clearInstance() {
        INSTANCE = null;
    }
    
    // Метод для создания in-memory базы данных (для тестирования)
    public static AnnotationDatabase getInMemoryDatabase(Context context) {
        return Room.inMemoryDatabaseBuilder(
                context.getApplicationContext(),
                AnnotationDatabase.class
        ).allowMainThreadQueries().build();
    }
}

