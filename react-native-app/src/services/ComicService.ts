import RNFS from 'react-native-fs';
import DocumentPicker from 'react-native-document-picker';
import {Comic, ComicService as IComicService, SortOrder} from '../types';
import NativeComicService from './NativeComicService';

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
      // Copy comic file to app's private directory
      const fileName = comic.filePath.substringAfterLast('/');
      const destinationPath = `${this.comicsDir}/${fileName}`;
      
      await RNFS.copyFile(comic.filePath, destinationPath);
      
      // Extract cover using native module
      const coverPath = await this.extractCover(comic);
      
      // Update comic with new paths
      comic.filePath = destinationPath;
      comic.coverPath = coverPath;
      
      console.log('Added comic:', comic.title);
    } catch (error) {
      console.error('Failed to add comic:', error);
      throw error;
    }
  }

  async deleteComic(comicId: string): Promise<void> {
    try {
      // Close comic in native module
      await NativeComicService.deleteComic(comicId);
      
      // Delete file from storage
      const comic = await this.getComicById(comicId);
      if (comic) {
        await RNFS.unlink(comic.filePath);
        if (comic.coverPath) {
          await RNFS.unlink(comic.coverPath);
        }
      }
      
      console.log('Deleted comic:', comicId);
    } catch (error) {
      console.error('Failed to delete comic:', error);
      throw error;
    }
  }

  async updateProgress(progress: any): Promise<void> {
    try {
      // Update reading progress
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
      // Use native module to extract cover
      const result = await NativeComicService.openComic(comic.filePath);
      const coverPath = await NativeComicService.extractCover(result.comicId);
      await NativeComicService.closeComic(result.comicId);
      
      // Copy cover to covers directory
      const coverFileName = `${comic.id}.jpg`;
      const coverDestination = `${this.coversDir}/${coverFileName}`;
      await RNFS.copyFile(coverPath, coverDestination);
      
      return coverDestination;
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

  async openComicForReading(filePath: string): Promise<{
    comicId: string;
    pageCount: number;
    title: string;
  }> {
    try {
      return await NativeComicService.openComic(filePath);
    } catch (error) {
      console.error('Failed to open comic for reading:', error);
      throw error;
    }
  }

  async getPage(comicId: string, pageIndex: number): Promise<string> {
    try {
      return await NativeComicService.getPage(comicId, pageIndex);
    } catch (error) {
      console.error('Failed to get page:', error);
      throw error;
    }
  }

  async closeComic(comicId: string): Promise<void> {
    try {
      await NativeComicService.closeComic(comicId);
    } catch (error) {
      console.error('Failed to close comic:', error);
      throw error;
    }
  }

  private isComicFile(fileName: String): Boolean {
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
        pageCount: 0, // Will be updated when comic is opened
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

  private async getComicById(comicId: string): Promise<Comic | null> {
    const comics = await this.scanForComics();
    return comics.find(comic => comic.id === comicId) || null;
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