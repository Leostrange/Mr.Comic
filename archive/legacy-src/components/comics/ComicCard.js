import React, { useState } from 'react';
import { comicsService } from '../../services/comicsService';
import './ComicCard.css';

const ComicCard = ({ comic, onClick }) => {
  const [imageLoaded, setImageLoaded] = useState(false);
  const [imageError, setImageError] = useState(false);
  const [isFavorite, setIsFavorite] = useState(comic.isFavorite || false);
  const [favoriteLoading, setFavoriteLoading] = useState(false);

  const handleImageLoad = () => {
    setImageLoaded(true);
  };

  const handleImageError = () => {
    setImageError(true);
    setImageLoaded(true);
  };

  const handleFavoriteClick = async (e) => {
    e.stopPropagation(); // Предотвращаем открытие комикса при клике на избранное
    
    setFavoriteLoading(true);
    try {
      const response = await comicsService.toggleFavorite(comic.id);
      if (response.success) {
        setIsFavorite(!isFavorite);
      }
    } catch (error) {
      console.error('Error toggling favorite:', error);
    } finally {
      setFavoriteLoading(false);
    }
  };

  const formatRating = (rating) => {
    return rating ? rating.toFixed(1) : 'N/A';
  };

  const formatDate = (dateString) => {
    if (!dateString) return '';
    const date = new Date(dateString);
    return date.toLocaleDateString('ru-RU');
  };

  return (
    <div className="comic-card" onClick={onClick}>
      <div className="comic-card-image-container">
        {!imageLoaded && (
          <div className="image-placeholder">
            <div className="loading-spinner"></div>
          </div>
        )}
        
        {imageError ? (
          <div className="image-error">
            <span>📚</span>
            <p>Изображение недоступно</p>
          </div>
        ) : (
          <img
            src={comic.coverImage}
            alt={comic.title}
            className={`comic-cover ${imageLoaded ? 'loaded' : ''}`}
            onLoad={handleImageLoad}
            onError={handleImageError}
          />
        )}

        <div className="comic-card-overlay">
          <button
            className={`favorite-button ${isFavorite ? 'active' : ''} ${favoriteLoading ? 'loading' : ''}`}
            onClick={handleFavoriteClick}
            disabled={favoriteLoading}
            title={isFavorite ? 'Удалить из избранного' : 'Добавить в избранное'}
          >
            {favoriteLoading ? '⏳' : (isFavorite ? '❤️' : '🤍')}
          </button>

          {comic.rating && (
            <div className="rating-badge">
              ⭐ {formatRating(comic.rating)}
            </div>
          )}

          {comic.isNew && (
            <div className="new-badge">
              Новинка
            </div>
          )}
        </div>
      </div>

      <div className="comic-card-content">
        <h3 className="comic-title" title={comic.title}>
          {comic.title}
        </h3>
        
        {comic.author && (
          <p className="comic-author" title={comic.author}>
            {comic.author}
          </p>
        )}

        {comic.genres && comic.genres.length > 0 && (
          <div className="comic-genres">
            {comic.genres.slice(0, 2).map((genre, index) => (
              <span key={index} className="genre-tag">
                {genre}
              </span>
            ))}
            {comic.genres.length > 2 && (
              <span className="genre-tag more">
                +{comic.genres.length - 2}
              </span>
            )}
          </div>
        )}

        <div className="comic-meta">
          {comic.chaptersCount && (
            <span className="chapters-count">
              📖 {comic.chaptersCount} глав
            </span>
          )}
          
          {comic.publishDate && (
            <span className="publish-date">
              📅 {formatDate(comic.publishDate)}
            </span>
          )}
        </div>

        {comic.description && (
          <p className="comic-description" title={comic.description}>
            {comic.description.length > 100 
              ? `${comic.description.substring(0, 100)}...` 
              : comic.description
            }
          </p>
        )}

        <div className="comic-stats">
          {comic.viewsCount && (
            <span className="stat">
              👁️ {comic.viewsCount.toLocaleString()}
            </span>
          )}
          
          {comic.likesCount && (
            <span className="stat">
              👍 {comic.likesCount.toLocaleString()}
            </span>
          )}
        </div>
      </div>
    </div>
  );
};

export default ComicCard;

