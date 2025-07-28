import React, { useState, useEffect } from 'react';
import { favoriteService } from '../../services/favoriteService';
import FavoritesList from '../../components/favorites/FavoritesList';
import LoadingSpinner from '../../components/common/LoadingSpinner';
import './FavoritesPage.css';

const FavoritesPage = () => {
  const [favorites, setFavorites] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchFavorites = async () => {
      try {
        setLoading(true);
        const data = await favoriteService.getFavorites();
        setFavorites(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchFavorites();
  }, []);

  const handleRemoveFavorite = async (comicId) => {
    try {
      await favoriteService.removeFavorite(comicId);
      setFavorites(favorites.filter(comic => comic.id !== comicId));
    } catch (err) {
      setError(err.message);
    }
  };

  if (loading) {
    return <LoadingSpinner />;
  }

  if (error) {
    return <div className="favorites-error">Ошибка: {error}</div>;
  }

  return (
    <div className="favorites-page-container">
      <h1>Мои Избранные Комиксы</h1>
      <FavoritesList comics={favorites} onRemoveFavorite={handleRemoveFavorite} />
    </div>
  );
};

export default FavoritesPage;


