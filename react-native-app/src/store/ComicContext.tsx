import React, {createContext, useContext, useReducer, ReactNode} from 'react';
import {Comic, SortOrder, ReadingMode} from '../types';

interface ComicState {
  comics: Comic[];
  currentComic: Comic | null;
  isLoading: boolean;
  error: string | null;
  sortOrder: SortOrder;
  searchQuery: string;
  readingMode: ReadingMode;
  selectedComics: string[];
  isSelectionMode: boolean;
}

type ComicAction =
  | {type: 'SET_COMICS'; payload: Comic[]}
  | {type: 'ADD_COMIC'; payload: Comic}
  | {type: 'DELETE_COMIC'; payload: string}
  | {type: 'UPDATE_COMIC'; payload: Comic}
  | {type: 'SET_CURRENT_COMIC'; payload: Comic | null}
  | {type: 'SET_LOADING'; payload: boolean}
  | {type: 'SET_ERROR'; payload: string | null}
  | {type: 'SET_SORT_ORDER'; payload: SortOrder}
  | {type: 'SET_SEARCH_QUERY'; payload: string}
  | {type: 'SET_READING_MODE'; payload: ReadingMode}
  | {type: 'SELECT_COMIC'; payload: string}
  | {type: 'DESELECT_COMIC'; payload: string}
  | {type: 'CLEAR_SELECTION'}
  | {type: 'SET_SELECTION_MODE'; payload: boolean};

const initialState: ComicState = {
  comics: [],
  currentComic: null,
  isLoading: false,
  error: null,
  sortOrder: 'date_added_desc',
  searchQuery: '',
  readingMode: 'page',
  selectedComics: [],
  isSelectionMode: false,
};

const comicReducer = (state: ComicState, action: ComicAction): ComicState => {
  switch (action.type) {
    case 'SET_COMICS':
      return {...state, comics: action.payload};
    case 'ADD_COMIC':
      return {...state, comics: [...state.comics, action.payload]};
    case 'DELETE_COMIC':
      return {
        ...state,
        comics: state.comics.filter(comic => comic.id !== action.payload),
        selectedComics: state.selectedComics.filter(id => id !== action.payload),
      };
    case 'UPDATE_COMIC':
      return {
        ...state,
        comics: state.comics.map(comic =>
          comic.id === action.payload.id ? action.payload : comic,
        ),
      };
    case 'SET_CURRENT_COMIC':
      return {...state, currentComic: action.payload};
    case 'SET_LOADING':
      return {...state, isLoading: action.payload};
    case 'SET_ERROR':
      return {...state, error: action.payload};
    case 'SET_SORT_ORDER':
      return {...state, sortOrder: action.payload};
    case 'SET_SEARCH_QUERY':
      return {...state, searchQuery: action.payload};
    case 'SET_READING_MODE':
      return {...state, readingMode: action.payload};
    case 'SELECT_COMIC':
      return {
        ...state,
        selectedComics: [...state.selectedComics, action.payload],
        isSelectionMode: true,
      };
    case 'DESELECT_COMIC':
      return {
        ...state,
        selectedComics: state.selectedComics.filter(id => id !== action.payload),
        isSelectionMode: state.selectedComics.length > 1,
      };
    case 'CLEAR_SELECTION':
      return {...state, selectedComics: [], isSelectionMode: false};
    case 'SET_SELECTION_MODE':
      return {...state, isSelectionMode: action.payload};
    default:
      return state;
  }
};

interface ComicContextType {
  state: ComicState;
  dispatch: React.Dispatch<ComicAction>;
}

const ComicContext = createContext<ComicContextType | undefined>(undefined);

export const useComicContext = () => {
  const context = useContext(ComicContext);
  if (!context) {
    throw new Error('useComicContext must be used within a ComicProvider');
  }
  return context;
};

interface ComicProviderProps {
  children: ReactNode;
}

export const ComicProvider: React.FC<ComicProviderProps> = ({children}) => {
  const [state, dispatch] = useReducer(comicReducer, initialState);

  return (
    <ComicContext.Provider value={{state, dispatch}}>
      {children}
    </ComicContext.Provider>
  );
};