import {NativeModules, NativeEventEmitter} from 'react-native';
import {Comic, ComicService as IComicService, SortOrder} from '../types';

const {ComicReader} = NativeModules;

interface ComicReaderResult {
  comicId: string;
  pageCount: number;
  title: string;
}

class NativeComicService implements IComicService {
  private activeComics = new Map<string, any>();

  async scanForComics(): Promise<Comic[]> {
    // This would scan the device for comic files
    // For now, return empty array
    return [];
  }

  async addComic(comic: Comic): Promise<void> {
    // This would add a comic to the library
    console.log('Adding comic:', comic.title);
  }

  async deleteComic(comicId: string): Promise<void> {
    // Close the comic if it's open
    if (this.activeComics.has(comicId)) {
      await ComicReader.closeComic(comicId);
      this.activeComics.delete(comicId);
    }
    console.log('Deleting comic:', comicId);
  }

  async updateProgress(progress: any): Promise<void> {
    console.log('Updating progress:', progress);
  }

  async getComics(sortOrder: SortOrder, searchQuery?: string): Promise<Comic[]> {
    // This would return comics from the library
    return [];
  }

  async extractCover(comic: Comic): Promise<string> {
    if (!this.activeComics.has(comic.id)) {
      throw new Error('Comic not open');
    }
    
    try {
      const coverPath = await ComicReader.extractCover(comic.id);
      return coverPath;
    } catch (error) {
      console.error('Failed to extract cover:', error);
      throw error;
    }
  }

  async openComic(filePath: string): Promise<ComicReaderResult> {
    try {
      const result = await ComicReader.openComic(filePath);
      this.activeComics.set(result.comicId, result);
      return result;
    } catch (error) {
      console.error('Failed to open comic:', error);
      throw error;
    }
  }

  async getPageCount(comicId: string): Promise<number> {
    try {
      return await ComicReader.getPageCount(comicId);
    } catch (error) {
      console.error('Failed to get page count:', error);
      throw error;
    }
  }

  async getPage(comicId: string, pageIndex: number): Promise<string> {
    try {
      return await ComicReader.getPage(comicId, pageIndex);
    } catch (error) {
      console.error('Failed to get page:', error);
      throw error;
    }
  }

  async closeComic(comicId: string): Promise<void> {
    try {
      await ComicReader.closeComic(comicId);
      this.activeComics.delete(comicId);
    } catch (error) {
      console.error('Failed to close comic:', error);
      throw error;
    }
  }

  async closeAllComics(): Promise<void> {
    const comicIds = Array.from(this.activeComics.keys());
    for (const comicId of comicIds) {
      await this.closeComic(comicId);
    }
  }
}

export default new NativeComicService();