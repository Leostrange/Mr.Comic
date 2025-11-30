/**
 * PluginDependencyManager - Менеджер зависимостей для плагинов Mr.Comic
 * 
 * Этот класс управляет зависимостями между плагинами, обеспечивая
 * корректную загрузку и активацию плагинов с учетом их зависимостей.
 */
class PluginDependencyManager {
  constructor() {
    // Карта зависимостей плагинов: pluginId -> Array<{id, version}>
    this._dependencies = new Map();
    
    // Карта обратных зависимостей: pluginId -> Set(dependentPluginId)
    this._reverseDependencies = new Map();
  }
  
  /**
   * Регистрация зависимостей плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {Object} dependencies - Объект зависимостей {pluginId: versionRange}
   * @param {Object} registry - Реестр плагинов для проверки версий
   * @returns {boolean} true, если все зависимости удовлетворены
   */
  registerDependencies(pluginId, dependencies = {}, registry = {}) {
    if (!dependencies || Object.keys(dependencies).length === 0) {
      // Нет зависимостей
      this._dependencies.set(pluginId, []);
      return true;
    }
    
    const deps = [];
    let allSatisfied = true;
    
    for (const [depId, versionRange] of Object.entries(dependencies)) {
      const dependency = {
        id: depId,
        version: versionRange
      };
      
      // Проверка наличия зависимости в реестре
      if (registry[depId]) {
        // Проверка версии
        const satisfied = this._checkVersionSatisfied(registry[depId].version, versionRange);
        if (!satisfied) {
          console.warn(`Plugin ${pluginId} depends on ${depId}@${versionRange}, but ${registry[depId].version} is installed`);
          allSatisfied = false;
        }
      } else {
        console.warn(`Plugin ${pluginId} depends on ${depId}, but it is not installed`);
        allSatisfied = false;
      }
      
      deps.push(dependency);
      
      // Регистрация обратной зависимости
      if (!this._reverseDependencies.has(depId)) {
        this._reverseDependencies.set(depId, new Set());
      }
      this._reverseDependencies.get(depId).add(pluginId);
    }
    
    this._dependencies.set(pluginId, deps);
    
    return allSatisfied;
  }
  
  /**
   * Получение зависимостей плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Array<Object>} Список зависимостей
   */
  getDependencies(pluginId) {
    if (!this._dependencies.has(pluginId)) {
      return [];
    }
    
    return [...this._dependencies.get(pluginId)];
  }
  
  /**
   * Получение плагинов, зависящих от указанного
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Array<string>} Список идентификаторов зависимых плагинов
   */
  getDependentPlugins(pluginId) {
    if (!this._reverseDependencies.has(pluginId)) {
      return [];
    }
    
    return Array.from(this._reverseDependencies.get(pluginId));
  }
  
  /**
   * Проверка, удовлетворяет ли версия требуемому диапазону
   * @param {string} version - Версия для проверки
   * @param {string} versionRange - Требуемый диапазон версий
   * @returns {boolean} true, если версия удовлетворяет диапазону
   * @private
   */
  _checkVersionSatisfied(version, versionRange) {
    // Простая реализация для демонстрации
    // В реальном приложении здесь будет использоваться библиотека semver
    
    if (versionRange === '*') {
      return true; // Любая версия
    }
    
    if (versionRange.startsWith('^')) {
      // Совместимость с мажорной версией
      const requiredMajor = parseInt(versionRange.substring(1).split('.')[0], 10);
      const actualMajor = parseInt(version.split('.')[0], 10);
      return actualMajor === requiredMajor;
    }
    
    if (versionRange.startsWith('~')) {
      // Совместимость с минорной версией
      const requiredVersion = versionRange.substring(1);
      const [requiredMajor, requiredMinor] = requiredVersion.split('.').map(v => parseInt(v, 10));
      const [actualMajor, actualMinor] = version.split('.').map(v => parseInt(v, 10));
      return actualMajor === requiredMajor && actualMinor === requiredMinor;
    }
    
    // Точное соответствие
    return version === versionRange;
  }
  
  /**
   * Получение всех зависимостей плагина, включая транзитивные
   * @param {string} pluginId - Идентификатор плагина
   * @param {Set<string>} visited - Множество посещенных плагинов (для избежания циклов)
   * @returns {Array<string>} Список идентификаторов всех зависимостей
   */
  getAllDependencies(pluginId, visited = new Set()) {
    if (visited.has(pluginId)) {
      return []; // Избегаем циклических зависимостей
    }
    
    visited.add(pluginId);
    
    if (!this._dependencies.has(pluginId)) {
      return [];
    }
    
    const directDeps = this._dependencies.get(pluginId).map(dep => dep.id);
    const allDeps = new Set(directDeps);
    
    for (const depId of directDeps) {
      const transitiveDeps = this.getAllDependencies(depId, visited);
      for (const transDepId of transitiveDeps) {
        allDeps.add(transDepId);
      }
    }
    
    return Array.from(allDeps);
  }
  
  /**
   * Проверка наличия циклических зависимостей
   * @param {string} pluginId - Идентификатор плагина
   * @returns {boolean} true, если обнаружены циклические зависимости
   */
  hasCyclicDependencies(pluginId) {
    const visited = new Set();
    const recStack = new Set();
    
    const checkCyclic = (id) => {
      if (!visited.has(id)) {
        visited.add(id);
        recStack.add(id);
        
        if (this._dependencies.has(id)) {
          for (const dep of this._dependencies.get(id)) {
            if (!visited.has(dep.id) && checkCyclic(dep.id)) {
              return true;
            } else if (recStack.has(dep.id)) {
              return true;
            }
          }
        }
      }
      
      recStack.delete(id);
      return false;
    };
    
    return checkCyclic(pluginId);
  }
  
  /**
   * Очистка зависимостей для плагина
   * @param {string} pluginId - Идентификатор плагина
   */
  clearDependencies(pluginId) {
    // Удаление прямых зависимостей
    this._dependencies.delete(pluginId);
    
    // Удаление обратных зависимостей
    for (const [depId, dependents] of this._reverseDependencies.entries()) {
      dependents.delete(pluginId);
      if (dependents.size === 0) {
        this._reverseDependencies.delete(depId);
      }
    }
    
    // Удаление из обратных зависимостей других плагинов
    if (this._reverseDependencies.has(pluginId)) {
      this._reverseDependencies.delete(pluginId);
    }
  }
}

// Экспорт класса
module.exports = PluginDependencyManager;
