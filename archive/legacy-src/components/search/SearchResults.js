import React, { useState, useEffect } from 'react';
import ComicCard from '../comics/ComicCard';
import LoadingSpinner from '../common/LoadingSpinner';
import './SearchResults.css';

const SearchResults = ({ 
  results = [], 
  isLoading = false, 
  error = null, 
  query = '', 
  filters = {},
  onLoadMore,
  hasMore = false,
  totalResults = 0,
  onComicSelect 
}) => {
  const [displayedResults, setDisplayedResults] = useState([]);

  useEffect(() => {
    setDisplayedResults(results);
  }, [results]);

  const handleLoadMore = () => {
    if (onLoadMore && hasMore && !isLoading) {
      onLoadMore();
    }
  };

  const handleComicClick = (comic) => {
    if (onComicSelect) {
      onComicSelect(comic);
    }
  };

  const getResultsText = () => {
    if (totalResults === 0) return 'Результатов не найдено';
    if (totalResults === 1) return '1 результат';
    if (totalResults < 5) return `${totalResults} результата`;
    return `${totalResults} результатов`;
  };

  const getActiveFiltersText = () => {
    const activeFilters = [];
    
    if (filters.genres && filters.genres.length > 0) {
      activeFilters.push(`жанры: ${filters.genres.join(', ')}`);
    }
    
    if (filters.authors && filters.authors.length > 0) {
      activeFilters.push(`авторы: ${filters.authors.join(', ')}`);
    }
    
    if (filters.rating && (filters.rating.min > 0 || filters.rating.max < 10)) {
      activeFilters.push(`рейтинг: ${filters.rating.min}-${filters.rating.max}`);
    }
    
    if (filters.status) {
      const statusText = {
        ongoing: 'продолжается',
        completed: 'завершен',
        hiatus: 'пауза',
        cancelled: 'отменен'
      };
      activeFilters.push(`статус: ${statusText[filters.status] || filters.status}`);
    }
    
    return activeFilters.length > 0 ? ` (${activeFilters.join(', ')})` : '';
  };

  if (isLoading && displayedResults.length === 0) {
    return (
      <div className="search-results-container">
        <LoadingSpinner message="Поиск комиксов..." />
      </div>
    );
  }

  if (error && displayedResults.length === 0) {
    return (
      <div className="search-results-container">
        <div className="search-error">
          <div className="error-icon">❌</div>
          <h3>Ошибка поиска</h3>
          <p>{error}</p>
          <button 
            className="retry-button"
            onClick={() => window.location.reload()}
          >
            Попробовать снова
          </button>
        </div>
      </div>
    );
  }

  if (displayedResults.length === 0 && !isLoading) {
    return (
      <div className="search-results-container">
        <div className="no-results">
          <div className="no-results-icon">🔍</div>
          <h3>Ничего не найдено</h3>
          <p>
            {query 
              ? `По запросу "${query}" ничего не найдено${getActiveFiltersText()}`
              : 'Попробуйте изменить параметры поиска'
            }
          </p>
          <div className="search-suggestions">
            <h4>Попробуйте:</h4>
            <ul>
              <li>Проверить правильность написания</li>
              <li>Использовать более общие термины</li>
              <li>Убрать некоторые фильтры</li>
              <li>Поискать по автору или жанру</li>
            </ul>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="search-results-container">
      <div className="search-results-header">
        <div className="results-info">
          <h2 className="results-title">
            {query ? `Результаты поиска: "${query}"` : 'Результаты поиска'}
          </h2>
          <p className="results-count">
            {getResultsText()}{getActiveFiltersText()}
          </p>
        </div>
        
        {filters.sortBy && (
          <div className="sort-info">
            <span className="sort-label">Сортировка:</span>
            <span className="sort-value">
              {filters.sortBy === 'popularity' && 'По популярности'}
              {filters.sortBy === 'rating' && 'По рейтингу'}
              {filters.sortBy === 'publishDate' && 'По дате'}
              {filters.sortBy === 'title' && 'По названию'}
              {filters.sortOrder === 'desc' ? ' ↓' : ' ↑'}
            </span>
          </div>
        )}
      </div>

      <div className="search-results-grid">
        {displayedResults.map((comic) => (
          <ComicCard
            key={comic.id}
            comic={comic}
            onClick={() => handleComicClick(comic)}
          />
        ))}
      </div>

      {hasMore && (
        <div className="load-more-container">
          <button 
            className="load-more-button"
            onClick={handleLoadMore}
            disabled={isLoading}
          >
            {isLoading ? 'Загрузка...' : 'Загрузить еще'}
          </button>
        </div>
      )}

      {error && displayedResults.length > 0 && (
        <div className="error-banner">
          <span>Ошибка загрузки дополнительных результатов: {error}</span>
          <button onClick={handleLoadMore}>Повторить</button>
        </div>
      )}

      <div className="results-footer">
        <p className="results-summary">
          Показано {displayedResults.length} из {totalResults} результатов
        </p>
      </div>
    </div>
  );
};

export default SearchResults;

