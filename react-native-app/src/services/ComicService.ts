import RNFS from 'react-native-fs';
import DocumentPicker from 'react-native-document-picker';
import {Comic, ComicService as IComicService, SortOrder} from '../types';

class ComicService implements IComicService {
  private readonly supportedExtensions = ['cbr', 'cbz', 'pdf', 'djvu', 'djv'];
  private readonly comicsDir = `${RNFS.DocumentDirectoryPath}/comics`;
  private readonly coversDir = `${RNFS.DocumentDirectoryPath}/covers`;

  constructor() {
    this.initializeDirectories();
  }

  private async initializeDirectories() {
    try {
      await RNFS.mkdir(this.comicsDir);
      await RNFS.mkdir(this.coversDir);
    } catch (error) {
      console.error('Failed to initialize directories:', error);
    }
  }

  async scanForComics(): Promise<Comic[]> {
    try {
      const files = await RNFS.readDir(this.comicsDir);
      const comics: Comic[] = [];

      for (const file of files) {
        if (file.isFile() && this.isComicFile(file.name)) {
          const comic = await this.createComicFromFile(file.path, file.name);
          if (comic) {
            comics.push(comic);
          }
        }
      }

      return comics;
    } catch (error) {
      console.error('Failed to scan for comics:', error);
      return [];
    }
  }

  async addComic(comic: Comic): Promise<void> {
    try {
      // TODO: Implement comic addition logic
      console.log('Adding comic:', comic.title);
    } catch (error) {
      console.error('Failed to add comic:', error);
      throw error;
    }
  }

  async deleteComic(comicId: string): Promise<void> {
    try {
      // TODO: Implement comic deletion logic
      console.log('Deleting comic:', comicId);
    } catch (error) {
      console.error('Failed to delete comic:', error);
      throw error;
    }
  }

  async updateProgress(progress: any): Promise<void> {
    try {
      // TODO: Implement progress update logic
      console.log('Updating progress:', progress);
    } catch (error) {
      console.error('Failed to update progress:', error);
      throw error;
    }
  }

  async getComics(sortOrder: SortOrder, searchQuery?: string): Promise<Comic[]> {
    try {
      const comics = await this.scanForComics();
      
      let filteredComics = comics;
      if (searchQuery) {
        filteredComics = comics.filter(comic =>
          comic.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
          comic.author.toLowerCase().includes(searchQuery.toLowerCase()),
        );
      }

      return this.sortComics(filteredComics, sortOrder);
    } catch (error) {
      console.error('Failed to get comics:', error);
      return [];
    }
  }

  async extractCover(comic: Comic): Promise<string> {
    try {
      // TODO: Implement cover extraction logic
      const coverPath = `${this.coversDir}/${comic.id}.jpg`;
      console.log('Extracting cover for:', comic.title);
      return coverPath;
    } catch (error) {
      console.error('Failed to extract cover:', error);
      throw error;
    }
  }

  async pickComicFile(): Promise<string | null> {
    try {
      const result = await DocumentPicker.pick({
        type: [
          DocumentPicker.types.allFiles,
        ],
        allowMultiSelection: false,
      });

      if (result.length > 0) {
        const file = result[0];
        if (this.isComicFile(file.name || '')) {
          return file.uri;
        }
      }

      return null;
    } catch (error) {
      if (!DocumentPicker.isCancel(error)) {
        console.error('Failed to pick file:', error);
      }
      return null;
    }
  }

  private isComicFile(fileName: string): boolean {
    const extension = fileName.split('.').pop()?.toLowerCase();
    return extension ? this.supportedExtensions.includes(extension) : false;
  }

  private async createComicFromFile(filePath: string, fileName: string): Promise<Comic | null> {
    try {
      const stats = await RNFS.stat(filePath);
      const title = fileName.replace(/\.[^/.]+$/, '');
      
      const comic: Comic = {
        id: filePath,
        title,
        author: 'Unknown',
        filePath,
        pageCount: 0, // TODO: Extract actual page count
        currentPage: 0,
        lastRead: 0,
        isFavorite: false,
        dateAdded: stats.mtime?.getTime() || Date.now(),
        readingTime: 0,
      };

      return comic;
    } catch (error) {
      console.error('Failed to create comic from file:', error);
      return null;
    }
  }

  private sortComics(comics: Comic[], sortOrder: SortOrder): Comic[] {
    switch (sortOrder) {
      case 'title_asc':
        return comics.sort((a, b) => a.title.localeCompare(b.title));
      case 'title_desc':
        return comics.sort((a, b) => b.title.localeCompare(a.title));
      case 'date_added_desc':
        return comics.sort((a, b) => b.dateAdded - a.dateAdded);
      case 'last_read_desc':
        return comics.sort((a, b) => b.lastRead - a.lastRead);
      default:
        return comics;
    }
  }
}

export default new ComicService();