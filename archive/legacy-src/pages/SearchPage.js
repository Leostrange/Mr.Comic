import React, { useState, useEffect, useCallback } from 'react';
import SearchBar from '../components/search/SearchBar';
import FilterPanel from '../components/search/FilterPanel';
import SearchResults from '../components/search/SearchResults';
import { searchService } from '../services/searchService';
import { useDebounce } from '../hooks/useDebounce';
import './SearchPage.css';

const SearchPage = () => {
  const [query, setQuery] = useState('');
  const [filters, setFilters] = useState({
    genres: [],
    authors: [],
    rating: { min: 0, max: 10 },
    status: '',
    sortBy: 'popularity',
    sortOrder: 'desc'
  });
  
  const [searchResults, setSearchResults] = useState([]);
  const [suggestions, setSuggestions] = useState([]);
  const [availableGenres, setAvailableGenres] = useState([]);
  const [availableAuthors, setAvailableAuthors] = useState([]);
  
  const [isSearching, setIsSearching] = useState(false);
  const [isLoadingSuggestions, setIsLoadingSuggestions] = useState(false);
  const [searchError, setSearchError] = useState(null);
  
  const [currentPage, setCurrentPage] = useState(1);
  const [totalResults, setTotalResults] = useState(0);
  const [hasMore, setHasMore] = useState(false);
  
  const debouncedQuery = useDebounce(query, 300);

  // Загрузка доступных жанров и авторов при монтировании
  useEffect(() => {
    loadGenres();
    loadAuthors();
  }, []);

  // Выполнение поиска при изменении запроса или фильтров
  useEffect(() => {
    if (debouncedQuery || Object.values(filters).some(f => 
      Array.isArray(f) ? f.length > 0 : f !== '' && f !== 0 && f !== 10
    )) {
      performSearch(true);
    } else {
      setSearchResults([]);
      setTotalResults(0);
      setHasMore(false);
    }
  }, [debouncedQuery, filters]);

  // Загрузка подсказок при изменении запроса
  useEffect(() => {
    if (debouncedQuery && debouncedQuery.length >= 2) {
      loadSuggestions(debouncedQuery);
    } else {
      setSuggestions([]);
    }
  }, [debouncedQuery]);

  const loadGenres = async () => {
    try {
      const response = await searchService.getGenres();
      if (response.success) {
        setAvailableGenres(response.data);
      }
    } catch (error) {
      console.error('Error loading genres:', error);
    }
  };

  const loadAuthors = async () => {
    try {
      const response = await searchService.getAuthors();
      if (response.success) {
        setAvailableAuthors(response.data);
      }
    } catch (error) {
      console.error('Error loading authors:', error);
    }
  };

  const loadSuggestions = async (searchQuery) => {
    setIsLoadingSuggestions(true);
    try {
      const response = await searchService.getSuggestions(searchQuery);
      if (response.success) {
        setSuggestions(response.data);
      }
    } catch (error) {
      console.error('Error loading suggestions:', error);
    } finally {
      setIsLoadingSuggestions(false);
    }
  };

  const performSearch = async (resetResults = false) => {
    setIsSearching(true);
    setSearchError(null);
    
    const page = resetResults ? 1 : currentPage + 1;
    
    try {
      const searchFilters = {
        ...filters,
        page,
        limit: 20
      };
      
      const response = await searchService.searchComics(debouncedQuery, searchFilters);
      
      if (response.success) {
        const newResults = response.data.comics || [];
        
        if (resetResults) {
          setSearchResults(newResults);
          setCurrentPage(1);
        } else {
          setSearchResults(prev => [...prev, ...newResults]);
          setCurrentPage(page);
        }
        
        setTotalResults(response.data.totalResults || 0);
        setHasMore(response.data.hasMore || false);
        
        // Сохраняем поисковый запрос в историю
        if (debouncedQuery) {
          searchService.saveSearchHistory(debouncedQuery, filters);
        }
      } else {
        setSearchError(response.message);
      }
    } catch (error) {
      setSearchError('Произошла ошибка при поиске. Попробуйте снова.');
      console.error('Search error:', error);
    } finally {
      setIsSearching(false);
    }
  };

  const handleSearch = useCallback((searchQuery) => {
    setQuery(searchQuery);
  }, []);

  const handleFiltersChange = useCallback((newFilters) => {
    setFilters(newFilters);
    setCurrentPage(1);
  }, []);

  const handleSuggestionSelect = useCallback((suggestion) => {
    if (typeof suggestion === 'string') {
      setQuery(suggestion);
    } else {
      setQuery(suggestion.title || '');
    }
    setSuggestions([]);
  }, []);

  const handleLoadMore = useCallback(() => {
    if (hasMore && !isSearching) {
      performSearch(false);
    }
  }, [hasMore, isSearching]);

  const handleComicSelect = useCallback((comic) => {
    // Здесь можно добавить навигацию к странице комикса
    console.log('Selected comic:', comic);
  }, []);

  return (
    <div className="search-page">
      <div className="search-page-header">
        <div className="search-container">
          <h1 className="search-page-title">Поиск комиксов</h1>
          <SearchBar
            onSearch={handleSearch}
            suggestions={suggestions}
            onSuggestionSelect={handleSuggestionSelect}
            isLoading={isLoadingSuggestions}
            placeholder="Найти комикс по названию, автору или жанру..."
          />
        </div>
      </div>

      <div className="search-page-content">
        <div className="search-sidebar">
          <FilterPanel
            genres={availableGenres}
            authors={availableAuthors}
            onFiltersChange={handleFiltersChange}
            initialFilters={filters}
            isLoading={isSearching}
          />
        </div>

        <div className="search-main">
          <SearchResults
            results={searchResults}
            isLoading={isSearching}
            error={searchError}
            query={query}
            filters={filters}
            onLoadMore={handleLoadMore}
            hasMore={hasMore}
            totalResults={totalResults}
            onComicSelect={handleComicSelect}
          />
        </div>
      </div>
    </div>
  );
};

export default SearchPage;

