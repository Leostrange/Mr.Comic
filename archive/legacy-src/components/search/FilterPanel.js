import React, { useState, useEffect } from 'react';
import './FilterPanel.css';

const FilterPanel = ({ 
  genres = [], 
  authors = [], 
  onFiltersChange, 
  initialFilters = {},
  isLoading = false 
}) => {
  const [filters, setFilters] = useState({
    genres: initialFilters.genres || [],
    authors: initialFilters.authors || [],
    rating: initialFilters.rating || { min: 0, max: 10 },
    status: initialFilters.status || '',
    sortBy: initialFilters.sortBy || 'popularity',
    sortOrder: initialFilters.sortOrder || 'desc',
    ...initialFilters
  });

  const [isExpanded, setIsExpanded] = useState(false);

  useEffect(() => {
    if (onFiltersChange) {
      onFiltersChange(filters);
    }
  }, [filters, onFiltersChange]);

  const handleGenreToggle = (genre) => {
    setFilters(prev => ({
      ...prev,
      genres: prev.genres.includes(genre)
        ? prev.genres.filter(g => g !== genre)
        : [...prev.genres, genre]
    }));
  };

  const handleAuthorToggle = (author) => {
    setFilters(prev => ({
      ...prev,
      authors: prev.authors.includes(author)
        ? prev.authors.filter(a => a !== author)
        : [...prev.authors, author]
    }));
  };

  const handleRatingChange = (type, value) => {
    setFilters(prev => ({
      ...prev,
      rating: {
        ...prev.rating,
        [type]: parseFloat(value)
      }
    }));
  };

  const handleStatusChange = (status) => {
    setFilters(prev => ({
      ...prev,
      status: prev.status === status ? '' : status
    }));
  };

  const handleSortChange = (sortBy, sortOrder) => {
    setFilters(prev => ({
      ...prev,
      sortBy,
      sortOrder
    }));
  };

  const clearFilters = () => {
    setFilters({
      genres: [],
      authors: [],
      rating: { min: 0, max: 10 },
      status: '',
      sortBy: 'popularity',
      sortOrder: 'desc'
    });
  };

  const getActiveFiltersCount = () => {
    let count = 0;
    if (filters.genres.length > 0) count++;
    if (filters.authors.length > 0) count++;
    if (filters.rating.min > 0 || filters.rating.max < 10) count++;
    if (filters.status) count++;
    return count;
  };

  const activeFiltersCount = getActiveFiltersCount();

  return (
    <div className={`filter-panel ${isExpanded ? 'expanded' : ''}`}>
      <div className="filter-header">
        <button
          className="filter-toggle"
          onClick={() => setIsExpanded(!isExpanded)}
          disabled={isLoading}
        >
          <span className="filter-icon">🔧</span>
          <span>Фильтры</span>
          {activeFiltersCount > 0 && (
            <span className="filter-badge">{activeFiltersCount}</span>
          )}
          <span className={`expand-icon ${isExpanded ? 'rotated' : ''}`}>
            ▼
          </span>
        </button>
        
        {activeFiltersCount > 0 && (
          <button
            className="clear-filters"
            onClick={clearFilters}
            disabled={isLoading}
          >
            Очистить
          </button>
        )}
      </div>

      {isExpanded && (
        <div className="filter-content">
          {/* Сортировка */}
          <div className="filter-section">
            <h4 className="filter-section-title">Сортировка</h4>
            <div className="sort-options">
              <select
                value={`${filters.sortBy}-${filters.sortOrder}`}
                onChange={(e) => {
                  const [sortBy, sortOrder] = e.target.value.split('-');
                  handleSortChange(sortBy, sortOrder);
                }}
                className="sort-select"
                disabled={isLoading}
              >
                <option value="popularity-desc">По популярности ↓</option>
                <option value="popularity-asc">По популярности ↑</option>
                <option value="rating-desc">По рейтингу ↓</option>
                <option value="rating-asc">По рейтингу ↑</option>
                <option value="publishDate-desc">По дате ↓</option>
                <option value="publishDate-asc">По дате ↑</option>
                <option value="title-asc">По названию А-Я</option>
                <option value="title-desc">По названию Я-А</option>
              </select>
            </div>
          </div>

          {/* Жанры */}
          {genres.length > 0 && (
            <div className="filter-section">
              <h4 className="filter-section-title">
                Жанры {filters.genres.length > 0 && `(${filters.genres.length})`}
              </h4>
              <div className="filter-tags">
                {genres.map((genre) => (
                  <button
                    key={genre}
                    className={`filter-tag ${
                      filters.genres.includes(genre) ? 'active' : ''
                    }`}
                    onClick={() => handleGenreToggle(genre)}
                    disabled={isLoading}
                  >
                    {genre}
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* Авторы */}
          {authors.length > 0 && (
            <div className="filter-section">
              <h4 className="filter-section-title">
                Авторы {filters.authors.length > 0 && `(${filters.authors.length})`}
              </h4>
              <div className="filter-tags">
                {authors.slice(0, 10).map((author) => (
                  <button
                    key={author}
                    className={`filter-tag ${
                      filters.authors.includes(author) ? 'active' : ''
                    }`}
                    onClick={() => handleAuthorToggle(author)}
                    disabled={isLoading}
                  >
                    {author}
                  </button>
                ))}
                {authors.length > 10 && (
                  <span className="more-authors">
                    +{authors.length - 10} еще
                  </span>
                )}
              </div>
            </div>
          )}

          {/* Рейтинг */}
          <div className="filter-section">
            <h4 className="filter-section-title">Рейтинг</h4>
            <div className="rating-range">
              <div className="range-inputs">
                <div className="range-input-group">
                  <label>От:</label>
                  <input
                    type="number"
                    min="0"
                    max="10"
                    step="0.1"
                    value={filters.rating.min}
                    onChange={(e) => handleRatingChange('min', e.target.value)}
                    className="range-input"
                    disabled={isLoading}
                  />
                </div>
                <div className="range-input-group">
                  <label>До:</label>
                  <input
                    type="number"
                    min="0"
                    max="10"
                    step="0.1"
                    value={filters.rating.max}
                    onChange={(e) => handleRatingChange('max', e.target.value)}
                    className="range-input"
                    disabled={isLoading}
                  />
                </div>
              </div>
            </div>
          </div>

          {/* Статус */}
          <div className="filter-section">
            <h4 className="filter-section-title">Статус</h4>
            <div className="status-options">
              {['ongoing', 'completed', 'hiatus', 'cancelled'].map((status) => (
                <button
                  key={status}
                  className={`status-button ${
                    filters.status === status ? 'active' : ''
                  }`}
                  onClick={() => handleStatusChange(status)}
                  disabled={isLoading}
                >
                  {status === 'ongoing' && '📖 Продолжается'}
                  {status === 'completed' && '✅ Завершен'}
                  {status === 'hiatus' && '⏸️ Пауза'}
                  {status === 'cancelled' && '❌ Отменен'}
                </button>
              ))}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default FilterPanel;

