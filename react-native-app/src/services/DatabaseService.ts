import SQLite from 'react-native-sqlite-storage';
import {Comic, ReadingProgress, Bookmark} from '../types';

SQLite.DEBUG(true);
SQLite.enablePromise(true);

class DatabaseService {
  private database: SQLite.SQLiteDatabase | null = null;

  async initDatabase(): Promise<void> {
    try {
      this.database = await SQLite.openDatabase({
        name: 'MrComic.db',
        location: 'default',
      });

      await this.createTables();
      console.log('Database initialized successfully');
    } catch (error) {
      console.error('Failed to initialize database:', error);
      throw error;
    }
  }

  private async createTables(): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    // Comics table
    await this.database.executeSql(`
      CREATE TABLE IF NOT EXISTS comics (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        author TEXT NOT NULL,
        filePath TEXT NOT NULL,
        coverPath TEXT,
        pageCount INTEGER DEFAULT 0,
        currentPage INTEGER DEFAULT 0,
        lastRead INTEGER DEFAULT 0,
        isFavorite INTEGER DEFAULT 0,
        dateAdded INTEGER NOT NULL,
        readingTime INTEGER DEFAULT 0
      )
    `);

    // Reading progress table
    await this.database.executeSql(`
      CREATE TABLE IF NOT EXISTS reading_progress (
        comicId TEXT PRIMARY KEY,
        currentPage INTEGER DEFAULT 0,
        lastRead INTEGER DEFAULT 0,
        readingTime INTEGER DEFAULT 0,
        FOREIGN KEY (comicId) REFERENCES comics (id) ON DELETE CASCADE
      )
    `);

    // Bookmarks table
    await this.database.executeSql(`
      CREATE TABLE IF NOT EXISTS bookmarks (
        id TEXT PRIMARY KEY,
        comicId TEXT NOT NULL,
        page INTEGER NOT NULL,
        label TEXT,
        timestamp INTEGER NOT NULL,
        FOREIGN KEY (comicId) REFERENCES comics (id) ON DELETE CASCADE
      )
    `);
  }

  async addComic(comic: Comic): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    const query = `
      INSERT OR REPLACE INTO comics 
      (id, title, author, filePath, coverPath, pageCount, currentPage, lastRead, isFavorite, dateAdded, readingTime)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    await this.database.executeSql(query, [
      comic.id,
      comic.title,
      comic.author,
      comic.filePath,
      comic.coverPath || null,
      comic.pageCount,
      comic.currentPage,
      comic.lastRead,
      comic.isFavorite ? 1 : 0,
      comic.dateAdded,
      comic.readingTime,
    ]);
  }

  async getComics(): Promise<Comic[]> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(`
      SELECT * FROM comics ORDER BY dateAdded DESC
    `);

    const comics: Comic[] = [];
    for (let i = 0; i < results.rows.length; i++) {
      const row = results.rows.item(i);
      comics.push({
        id: row.id,
        title: row.title,
        author: row.author,
        filePath: row.filePath,
        coverPath: row.coverPath,
        pageCount: row.pageCount,
        currentPage: row.currentPage,
        lastRead: row.lastRead,
        isFavorite: Boolean(row.isFavorite),
        dateAdded: row.dateAdded,
        readingTime: row.readingTime,
      });
    }

    return comics;
  }

  async getComicById(id: string): Promise<Comic | null> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM comics WHERE id = ?',
      [id]
    );

    if (results.rows.length === 0) return null;

    const row = results.rows.item(0);
    return {
      id: row.id,
      title: row.title,
      author: row.author,
      filePath: row.filePath,
      coverPath: row.coverPath,
      pageCount: row.pageCount,
      currentPage: row.currentPage,
      lastRead: row.lastRead,
      isFavorite: Boolean(row.isFavorite),
      dateAdded: row.dateAdded,
      readingTime: row.readingTime,
    };
  }

  async updateComic(comic: Comic): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    const query = `
      UPDATE comics 
      SET title = ?, author = ?, filePath = ?, coverPath = ?, pageCount = ?, 
          currentPage = ?, lastRead = ?, isFavorite = ?, dateAdded = ?, readingTime = ?
      WHERE id = ?
    `;

    await this.database.executeSql(query, [
      comic.title,
      comic.author,
      comic.filePath,
      comic.coverPath || null,
      comic.pageCount,
      comic.currentPage,
      comic.lastRead,
      comic.isFavorite ? 1 : 0,
      comic.dateAdded,
      comic.readingTime,
      comic.id,
    ]);
  }

  async deleteComic(id: string): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    await this.database.executeSql('DELETE FROM comics WHERE id = ?', [id]);
  }

  async updateProgress(progress: ReadingProgress): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    const query = `
      INSERT OR REPLACE INTO reading_progress 
      (comicId, currentPage, lastRead, readingTime)
      VALUES (?, ?, ?, ?)
    `;

    await this.database.executeSql(query, [
      progress.comicId,
      progress.currentPage,
      progress.lastRead,
      progress.readingTime,
    ]);

    // Also update the comic's current page
    await this.database.executeSql(
      'UPDATE comics SET currentPage = ?, lastRead = ? WHERE id = ?',
      [progress.currentPage, progress.lastRead, progress.comicId]
    );
  }

  async getProgress(comicId: string): Promise<ReadingProgress | null> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM reading_progress WHERE comicId = ?',
      [comicId]
    );

    if (results.rows.length === 0) return null;

    const row = results.rows.item(0);
    return {
      comicId: row.comicId,
      currentPage: row.currentPage,
      lastRead: row.lastRead,
      readingTime: row.readingTime,
    };
  }

  async addBookmark(bookmark: Bookmark): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    await this.database.executeSql(
      'INSERT OR REPLACE INTO bookmarks (id, comicId, page, label, timestamp) VALUES (?, ?, ?, ?, ?)',
      [bookmark.id, bookmark.comicId, bookmark.page, bookmark.label || null, bookmark.timestamp]
    );
  }

  async getBookmarks(comicId: string): Promise<Bookmark[]> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM bookmarks WHERE comicId = ? ORDER BY page ASC',
      [comicId]
    );

    const bookmarks: Bookmark[] = [];
    for (let i = 0; i < results.rows.length; i++) {
      const row = results.rows.item(i);
      bookmarks.push({
        id: row.id,
        comicId: row.comicId,
        page: row.page,
        label: row.label,
        timestamp: row.timestamp,
      });
    }

    return bookmarks;
  }

  async deleteBookmark(id: string): Promise<void> {
    if (!this.database) throw new Error('Database not initialized');

    await this.database.executeSql('DELETE FROM bookmarks WHERE id = ?', [id]);
  }

  async searchComics(query: string): Promise<Comic[]> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM comics WHERE title LIKE ? OR author LIKE ? ORDER BY dateAdded DESC',
      [`%${query}%`, `%${query}%`]
    );

    const comics: Comic[] = [];
    for (let i = 0; i < results.rows.length; i++) {
      const row = results.rows.item(i);
      comics.push({
        id: row.id,
        title: row.title,
        author: row.author,
        filePath: row.filePath,
        coverPath: row.coverPath,
        pageCount: row.pageCount,
        currentPage: row.currentPage,
        lastRead: row.lastRead,
        isFavorite: Boolean(row.isFavorite),
        dateAdded: row.dateAdded,
        readingTime: row.readingTime,
      });
    }

    return comics;
  }

  async getRecentComics(limit: number = 10): Promise<Comic[]> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM comics WHERE lastRead > 0 ORDER BY lastRead DESC LIMIT ?',
      [limit]
    );

    const comics: Comic[] = [];
    for (let i = 0; i < results.rows.length; i++) {
      const row = results.rows.item(i);
      comics.push({
        id: row.id,
        title: row.title,
        author: row.author,
        filePath: row.filePath,
        coverPath: row.coverPath,
        pageCount: row.pageCount,
        currentPage: row.currentPage,
        lastRead: row.lastRead,
        isFavorite: Boolean(row.isFavorite),
        dateAdded: row.dateAdded,
        readingTime: row.readingTime,
      });
    }

    return comics;
  }

  async getFavoriteComics(): Promise<Comic[]> {
    if (!this.database) throw new Error('Database not initialized');

    const [results] = await this.database.executeSql(
      'SELECT * FROM comics WHERE isFavorite = 1 ORDER BY dateAdded DESC'
    );

    const comics: Comic[] = [];
    for (let i = 0; i < results.rows.length; i++) {
      const row = results.rows.item(i);
      comics.push({
        id: row.id,
        title: row.title,
        author: row.author,
        filePath: row.filePath,
        coverPath: row.coverPath,
        pageCount: row.pageCount,
        currentPage: row.currentPage,
        lastRead: row.lastRead,
        isFavorite: Boolean(row.isFavorite),
        dateAdded: row.dateAdded,
        readingTime: row.readingTime,
      });
    }

    return comics;
  }

  async closeDatabase(): Promise<void> {
    if (this.database) {
      await this.database.close();
      this.database = null;
    }
  }
}

export default new DatabaseService();