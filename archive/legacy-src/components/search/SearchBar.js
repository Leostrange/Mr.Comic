import React, { useState, useEffect, useRef } from 'react';
import { useDebounce } from '../../hooks/useDebounce';
import './SearchBar.css';

const SearchBar = ({ 
  onSearch, 
  placeholder = "Поиск комиксов...", 
  suggestions = [],
  onSuggestionSelect,
  isLoading = false 
}) => {
  const [query, setQuery] = useState('');
  const [showSuggestions, setShowSuggestions] = useState(false);
  const [selectedSuggestionIndex, setSelectedSuggestionIndex] = useState(-1);
  const inputRef = useRef(null);
  const suggestionsRef = useRef(null);
  
  // Debounce поискового запроса для оптимизации
  const debouncedQuery = useDebounce(query, 300);

  useEffect(() => {
    if (debouncedQuery && onSearch) {
      onSearch(debouncedQuery);
    }
  }, [debouncedQuery, onSearch]);

  const handleInputChange = (e) => {
    const value = e.target.value;
    setQuery(value);
    setShowSuggestions(value.length > 0 && suggestions.length > 0);
    setSelectedSuggestionIndex(-1);
  };

  const handleInputFocus = () => {
    if (query.length > 0 && suggestions.length > 0) {
      setShowSuggestions(true);
    }
  };

  const handleInputBlur = () => {
    // Задержка для обработки клика по подсказке
    setTimeout(() => {
      setShowSuggestions(false);
      setSelectedSuggestionIndex(-1);
    }, 200);
  };

  const handleKeyDown = (e) => {
    if (!showSuggestions || suggestions.length === 0) return;

    switch (e.key) {
      case 'ArrowDown':
        e.preventDefault();
        setSelectedSuggestionIndex(prev => 
          prev < suggestions.length - 1 ? prev + 1 : 0
        );
        break;
      case 'ArrowUp':
        e.preventDefault();
        setSelectedSuggestionIndex(prev => 
          prev > 0 ? prev - 1 : suggestions.length - 1
        );
        break;
      case 'Enter':
        e.preventDefault();
        if (selectedSuggestionIndex >= 0) {
          handleSuggestionClick(suggestions[selectedSuggestionIndex]);
        } else if (query.trim()) {
          handleSearch();
        }
        break;
      case 'Escape':
        setShowSuggestions(false);
        setSelectedSuggestionIndex(-1);
        inputRef.current?.blur();
        break;
      default:
        break;
    }
  };

  const handleSuggestionClick = (suggestion) => {
    setQuery(suggestion.title || suggestion);
    setShowSuggestions(false);
    setSelectedSuggestionIndex(-1);
    
    if (onSuggestionSelect) {
      onSuggestionSelect(suggestion);
    }
  };

  const handleSearch = () => {
    if (query.trim() && onSearch) {
      onSearch(query.trim());
    }
    setShowSuggestions(false);
  };

  const handleClear = () => {
    setQuery('');
    setShowSuggestions(false);
    setSelectedSuggestionIndex(-1);
    inputRef.current?.focus();
    
    if (onSearch) {
      onSearch('');
    }
  };

  return (
    <div className="search-bar-container">
      <div className="search-input-wrapper">
        <div className="search-icon">
          🔍
        </div>
        
        <input
          ref={inputRef}
          type="text"
          className={`search-input ${isLoading ? 'loading' : ''}`}
          placeholder={placeholder}
          value={query}
          onChange={handleInputChange}
          onFocus={handleInputFocus}
          onBlur={handleInputBlur}
          onKeyDown={handleKeyDown}
          disabled={isLoading}
        />
        
        {query && (
          <button
            className="clear-button"
            onClick={handleClear}
            type="button"
            title="Очистить поиск"
          >
            ✕
          </button>
        )}
        
        {isLoading && (
          <div className="search-loading">
            <div className="loading-spinner-small"></div>
          </div>
        )}
      </div>

      {showSuggestions && suggestions.length > 0 && (
        <div className="suggestions-dropdown" ref={suggestionsRef}>
          <ul className="suggestions-list">
            {suggestions.map((suggestion, index) => (
              <li
                key={index}
                className={`suggestion-item ${
                  index === selectedSuggestionIndex ? 'selected' : ''
                }`}
                onClick={() => handleSuggestionClick(suggestion)}
                onMouseEnter={() => setSelectedSuggestionIndex(index)}
              >
                <div className="suggestion-content">
                  {suggestion.coverImage && (
                    <img
                      src={suggestion.coverImage}
                      alt={suggestion.title}
                      className="suggestion-image"
                    />
                  )}
                  <div className="suggestion-text">
                    <div className="suggestion-title">
                      {suggestion.title || suggestion}
                    </div>
                    {suggestion.author && (
                      <div className="suggestion-author">
                        {suggestion.author}
                      </div>
                    )}
                    {suggestion.genres && (
                      <div className="suggestion-genres">
                        {suggestion.genres.slice(0, 2).join(', ')}
                      </div>
                    )}
                  </div>
                </div>
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
};

export default SearchBar;

