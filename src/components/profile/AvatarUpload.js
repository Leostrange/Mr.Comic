import React, { useState, useRef } from 'react';
import './AvatarUpload.css';

const AvatarUpload = ({ currentAvatar, onAvatarUpload }) => {
  const [avatarPreview, setAvatarPreview] = useState(currentAvatar);
  const fileInputRef = useRef(null);

  const handleFileChange = (event) => {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onloadend = () => {
        setAvatarPreview(reader.result);
      };
      reader.readAsDataURL(file);
      onAvatarUpload(file);
    }
  };

  const handleClick = () => {
    fileInputRef.current.click();
  };

  return (
    <div className="avatar-upload-container">
      <img
        src={avatarPreview || 'https://via.placeholder.com/150'}
        alt="Аватар пользователя"
        className="avatar-preview"
        onClick={handleClick}
      />
      <input
        type="file"
        accept="image/*"
        ref={fileInputRef}
        onChange={handleFileChange}
        style={{ display: 'none' }}
      />
      <button type="button" onClick={handleClick} className="upload-button">
        Изменить аватар
      </button>
    </div>
  );
};

export default AvatarUpload;


