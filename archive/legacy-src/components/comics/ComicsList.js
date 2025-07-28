import React, { useState, useEffect } from 'react';
import { comicsService } from '../../services/comicsService';
import ComicCard from './ComicCard';
import LoadingSpinner from '../common/LoadingSpinner';
import './ComicsList.css';

const ComicsList = ({ searchQuery, selectedGenre, onComicSelect }) => {
  const [comics, setComics] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [hasMore, setHasMore] = useState(true);

  const itemsPerPage = 12;

  useEffect(() => {
    loadComics(1, true);
  }, [searchQuery, selectedGenre]);

  const loadComics = async (page = 1, reset = false) => {
    try {
      setLoading(true);
      setError(null);

      const params = {
        page,
        limit: itemsPerPage,
        ...(searchQuery && { search: searchQuery }),
        ...(selectedGenre && { genre: selectedGenre })
      };

      const response = await comicsService.getComics(params);
      
      if (response.success) {
        const newComics = response.data.comics;
        
        if (reset) {
          setComics(newComics);
        } else {
          setComics(prev => [...prev, ...newComics]);
        }
        
        setCurrentPage(page);
        setTotalPages(response.data.totalPages);
        setHasMore(page < response.data.totalPages);
      } else {
        setError(response.message || 'Ошибка загрузки комиксов');
      }
    } catch (error) {
      console.error('Error loading comics:', error);
      setError('Произошла ошибка при загрузке комиксов');
    } finally {
      setLoading(false);
    }
  };

  const handleLoadMore = () => {
    if (hasMore && !loading) {
      loadComics(currentPage + 1, false);
    }
  };

  const handleComicClick = (comic) => {
    if (onComicSelect) {
      onComicSelect(comic);
    }
  };

  const handleRetry = () => {
    loadComics(1, true);
  };

  if (loading && comics.length === 0) {
    return (
      <div className="comics-list-container">
        <LoadingSpinner message="Загрузка комиксов..." />
      </div>
    );
  }

  if (error && comics.length === 0) {
    return (
      <div className="comics-list-container">
        <div className="error-state">
          <div className="error-icon">📚</div>
          <h3>Ошибка загрузки</h3>
          <p>{error}</p>
          <button className="retry-button" onClick={handleRetry}>
            Попробовать снова
          </button>
        </div>
      </div>
    );
  }

  if (comics.length === 0) {
    return (
      <div className="comics-list-container">
        <div className="empty-state">
          <div className="empty-icon">🔍</div>
          <h3>Комиксы не найдены</h3>
          <p>
            {searchQuery 
              ? `По запросу "${searchQuery}" ничего не найдено`
              : 'В данной категории пока нет комиксов'
            }
          </p>
        </div>
      </div>
    );
  }

  return (
    <div className="comics-list-container">
      <div className="comics-grid">
        {comics.map((comic) => (
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
            disabled={loading}
          >
            {loading ? 'Загрузка...' : 'Загрузить еще'}
          </button>
        </div>
      )}

      {error && comics.length > 0 && (
        <div className="error-banner">
          <span>Ошибка загрузки дополнительных комиксов: {error}</span>
          <button onClick={handleRetry}>Повторить</button>
        </div>
      )}

      <div className="pagination-info">
        Показано {comics.length} из {totalPages * itemsPerPage} комиксов
      </div>
    </div>
  );
};

export default ComicsList;

