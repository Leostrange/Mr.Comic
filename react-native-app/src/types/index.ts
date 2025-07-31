export interface Comic {
  id: string;
  title: string;
  author: string;
  filePath: string;
  coverPath?: string;
  pageCount: number;
  currentPage: number;
  lastRead: number;
  isFavorite: boolean;
  dateAdded: number;
  readingTime: number;
}

export interface ComicPage {
  index: number;
  imagePath: string;
  width: number;
  height: number;
}

export interface ReadingProgress {
  comicId: string;
  currentPage: number;
  lastRead: number;
  readingTime: number;
}

export interface Bookmark {
  id: string;
  comicId: string;
  page: number;
  label?: string;
  timestamp: number;
}

export type SortOrder = 'title_asc' | 'title_desc' | 'date_added_desc' | 'last_read_desc';

export type ReadingMode = 'page' | 'webtoon';

export interface ComicReader {
  open(filePath: string): Promise<number>;
  getPage(pageIndex: number): Promise<string>;
  getPageCount(): number;
  close(): void;
}

export interface ComicService {
  scanForComics(): Promise<Comic[]>;
  addComic(comic: Comic): Promise<void>;
  deleteComic(comicId: string): Promise<void>;
  updateProgress(progress: ReadingProgress): Promise<void>;
  getComics(sortOrder: SortOrder, searchQuery?: string): Promise<Comic[]>;
  extractCover(comic: Comic): Promise<string>;
}