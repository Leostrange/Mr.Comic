import React, { useState, useEffect } from 'react';
import './ProfilePage.css';
import { profileService } from '../../services/profileService';
import ProfileForm from '../../components/profile/ProfileForm';
import AvatarUpload from '../../components/profile/AvatarUpload';

const ProfilePage = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchUserProfile = async () => {
      try {
        setLoading(true);
        const data = await profileService.getUserProfile();
        setUser(data);
      } catch (err) {
        setError('Не удалось загрузить профиль пользователя.');
        console.error('Ошибка загрузки профиля:', err);
      } finally {
        setLoading(false);
      }
    };
    fetchUserProfile();
  }, []);

  const handleProfileUpdate = async (updatedData) => {
    try {
      setLoading(true);
      const data = await profileService.updateUserProfile(updatedData);
      setUser(data);
      alert('Профиль успешно обновлен!');
    } catch (err) {
      setError('Не удалось обновить профиль.');
      console.error('Ошибка обновления профиля:', err);
    } finally {
      setLoading(false);
    }
  };

  const handleAvatarUpload = async (file) => {
    try {
      setLoading(true);
      const data = await profileService.uploadAvatar(file);
      setUser(prevUser => ({ ...prevUser, avatarUrl: data.avatarUrl }));
      alert('Аватар успешно загружен!');
    } catch (err) {
      setError('Не удалось загрузить аватар.');
      console.error('Ошибка загрузки аватара:', err);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return <div className="profile-loading">Загрузка профиля...</div>;
  }

  if (error) {
    return <div className="profile-error">Ошибка: {error}</div>;
  }

  if (!user) {
    return <div className="profile-empty">Профиль не найден.</div>;
  }

  return (
    <div className="profile-page-container">
      <h1>Мой Профиль</h1>
      <div className="profile-header">
        <AvatarUpload currentAvatar={user.avatarUrl} onAvatarUpload={handleAvatarUpload} />
        <h2>{user.username}</h2>
        <p>{user.email}</p>
      </div>
      <div className="profile-details">
        <h3>Личная информация</h3>
        <ProfileForm user={user} onProfileUpdate={handleProfileUpdate} />
      </div>
      {/* Дополнительные секции: история активности, настройки и т.д. */}
    </div>
  );
};

export default ProfilePage;


