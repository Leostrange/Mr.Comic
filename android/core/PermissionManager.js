/**
 * PermissionManager - Менеджер разрешений для плагинов Mr.Comic
 * 
 * Этот класс управляет разрешениями для плагинов, обеспечивая
 * безопасность и контроль доступа к ресурсам приложения.
 */
class PermissionManager {
  constructor() {
    // Карта разрешений плагинов: pluginId -> Set(permissions)
    this._permissions = new Map();
    
    // Карта запрошенных разрешений: pluginId -> Set(permissions)
    this._requestedPermissions = new Map();
    
    // Определение доступных разрешений и их уровней опасности
    this._availablePermissions = new Map([
      ['read_file', { level: 'medium', description: 'Чтение файлов' }],
      ['write_file', { level: 'high', description: 'Запись файлов' }],
      ['read_image', { level: 'low', description: 'Чтение изображений' }],
      ['modify_image', { level: 'medium', description: 'Изменение изображений' }],
      ['read_text', { level: 'low', description: 'Чтение текста' }],
      ['modify_text', { level: 'medium', description: 'Изменение текста' }],
      ['read_settings', { level: 'low', description: 'Чтение настроек' }],
      ['write_settings', { level: 'medium', description: 'Изменение настроек' }],
      ['network', { level: 'high', description: 'Доступ к сети' }],
      ['ui', { level: 'medium', description: 'Доступ к пользовательскому интерфейсу' }]
    ]);
  }
  
  /**
   * Регистрация запрошенных разрешений для плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {Array<string>} permissions - Список запрашиваемых разрешений
   */
  registerRequestedPermissions(pluginId, permissions = []) {
    if (!this._requestedPermissions.has(pluginId)) {
      this._requestedPermissions.set(pluginId, new Set());
    }
    
    const requestedSet = this._requestedPermissions.get(pluginId);
    
    for (const permission of permissions) {
      if (this._availablePermissions.has(permission)) {
        requestedSet.add(permission);
      } else {
        console.warn(`Unknown permission requested by plugin ${pluginId}: ${permission}`);
      }
    }
  }
  
  /**
   * Получение запрошенных разрешений для плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Array<string>} Список запрошенных разрешений
   */
  getRequestedPermissions(pluginId) {
    if (!this._requestedPermissions.has(pluginId)) {
      return [];
    }
    
    return Array.from(this._requestedPermissions.get(pluginId));
  }
  
  /**
   * Предоставление разрешения плагину
   * @param {string} pluginId - Идентификатор плагина
   * @param {string} permission - Разрешение для предоставления
   * @returns {boolean} true, если разрешение предоставлено
   */
  grantPermission(pluginId, permission) {
    if (!this._availablePermissions.has(permission)) {
      console.warn(`Attempt to grant unknown permission: ${permission}`);
      return false;
    }
    
    if (!this._permissions.has(pluginId)) {
      this._permissions.set(pluginId, new Set());
    }
    
    this._permissions.get(pluginId).add(permission);
    
    return true;
  }
  
  /**
   * Отзыв разрешения у плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {string} permission - Разрешение для отзыва
   * @returns {boolean} true, если разрешение отозвано
   */
  revokePermission(pluginId, permission) {
    if (!this._permissions.has(pluginId)) {
      return false;
    }
    
    return this._permissions.get(pluginId).delete(permission);
  }
  
  /**
   * Проверка наличия разрешения у плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {string} permission - Разрешение для проверки
   * @returns {boolean} true, если разрешение предоставлено
   */
  hasPermission(pluginId, permission) {
    if (!this._permissions.has(pluginId)) {
      return false;
    }
    
    return this._permissions.get(pluginId).has(permission);
  }
  
  /**
   * Получение всех предоставленных разрешений для плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Array<string>} Список предоставленных разрешений
   */
  getGrantedPermissions(pluginId) {
    if (!this._permissions.has(pluginId)) {
      return [];
    }
    
    return Array.from(this._permissions.get(pluginId));
  }
  
  /**
   * Получение информации о разрешении
   * @param {string} permission - Разрешение
   * @returns {Object|null} Информация о разрешении или null, если разрешение не найдено
   */
  getPermissionInfo(permission) {
    if (!this._availablePermissions.has(permission)) {
      return null;
    }
    
    return { ...this._availablePermissions.get(permission), id: permission };
  }
  
  /**
   * Получение списка всех доступных разрешений
   * @returns {Array<Object>} Список доступных разрешений с информацией
   */
  getAvailablePermissions() {
    return Array.from(this._availablePermissions.entries()).map(([id, info]) => {
      return { id, ...info };
    });
  }
  
  /**
   * Очистка всех разрешений для плагина
   * @param {string} pluginId - Идентификатор плагина
   */
  clearPermissions(pluginId) {
    this._permissions.delete(pluginId);
  }
  
  /**
   * Проверка, требует ли разрешение подтверждения пользователя
   * @param {string} permission - Разрешение для проверки
   * @returns {boolean} true, если разрешение требует подтверждения
   */
  requiresUserConfirmation(permission) {
    if (!this._availablePermissions.has(permission)) {
      return true; // Неизвестные разрешения всегда требуют подтверждения
    }
    
    const info = this._availablePermissions.get(permission);
    return info.level === 'medium' || info.level === 'high';
  }
}

// Экспорт класса
module.exports = PermissionManager;
