import React from 'react';
import ComicCard from '../comics/ComicCard';
import './FavoritesList.css';

const FavoritesList = ({ comics, onRemoveFavorite }) => {
  if (!comics || comics.length === 0) {
    return <div className="favorites-empty">У вас пока нет избранных комиксов.</div>;
  }

  return (
    <div className="favorites-list-container">
      {comics.map(comic => (
        <ComicCard
          key={comic.id}
          comic={comic}
          isFavorite={true}
          onToggleFavorite={onRemoveFavorite}
        />
      ))}
    </div>
  );
};

export default FavoritesList;


