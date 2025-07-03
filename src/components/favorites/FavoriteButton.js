import React, { useState } from 'react';
import './FavoriteButton.css';

const FavoriteButton = ({ comicId, isFavorite: initialIsFavorite, onToggle }) => {
  const [isFavorite, setIsFavorite] = useState(initialIsFavorite);

  const handleClick = () => {
    const newFavoriteStatus = !isFavorite;
    setIsFavorite(newFavoriteStatus);
    if (onToggle) {
      onToggle(comicId, newFavoriteStatus);
    }
  };

  return (
    <button
      className={`favorite-button ${isFavorite ? 'favorite' : ''}`}
      onClick={handleClick}
      aria-label={isFavorite ? 'Remove from favorites' : 'Add to favorites'}
    >
      {isFavorite ? '❤️' : '🤍'}
    </button>
  );
};

export default FavoriteButton;


