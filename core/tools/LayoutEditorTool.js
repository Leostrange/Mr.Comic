/**
 * LayoutEditorTool - Специализированный инструмент для редактирования макета
 * 
 * Отвечает за:
 * - Управление элементами макета (добавление, удаление, перемещение, изменение размера)
 * - Работу со слоями
 * - Выравнивание и распределение элементов
 */
class LayoutEditorTool extends require("./BaseTool") {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации инструмента
   */
  constructor(options = {}) {
    super({
      ...options,
      type: "layout-editor",
      name: options.name || "Редактор макета",
      description:
        options.description ||
        "Инструмент для управления элементами макета и слоями",
      category: options.category || "layout",
      capabilities: [
        ...(options.capabilities || []),
        "layout-management",
        "layer-management",
        "element-alignment",
      ],
    });

    this.container = null; // Контейнер для редактора макета
    this.elements = new Map(); // Элементы макета (id -> element)
    this.layers = []; // Слои макета
    this.activeElementId = null; // ID активного элемента
    this.activeLayerIndex = 0; // Индекс активного слоя
    this.history = []; // История изменений
    this.historyIndex = -1; // Индекс текущего состояния в истории
    this.gridSize = options.gridSize || 10; // Размер сетки
    this.snapToGrid = options.snapToGrid || true; // Привязка к сетке
    this.zoomLevel = options.zoomLevel || 1; // Уровень масштабирования
  }

  /**
   * Инициализация инструмента
   * @returns {Promise<void>}
   */
  async initialize() {
    await super.initialize();

    // Создаем контейнер, если его еще нет
    if (!this.container) {
      this.container = document.createElement("div");
      this.container.style.position = "relative";
      this.container.style.width = "100%";
      this.container.style.height = "500px"; // Примерная высота
      this.container.style.border = "1px solid #ccc";
      this.container.style.overflow = "hidden";
      this.container.style.backgroundColor = "#f0f0f0";

      // Добавляем обработчики событий
      this.container.addEventListener("click", this._handleClick.bind(this));
      this.container.addEventListener("mousedown", this._handleMouseDown.bind(this));
      // Дополнительные обработчики для drag-n-drop, изменения размера и т.д.
    }

    // Инициализируем начальный слой
    if (this.layers.length === 0) {
      this.addLayer("Слой 1");
    }
  }

  /**
   * Проверка возможности обработки команды
   * @param {Object} command - Команда для проверки
   * @returns {boolean} - true, если инструмент может обработать команду
   */
  canHandleCommand(command) {
    const supportedCommands = [
      "layout.addElement",
      "layout.removeElement",
      "layout.moveElement",
      "layout.resizeElement",
      "layout.setElementProperties",
      "layout.selectElement",
      "layout.deselectElement",
      "layout.addLayer",
      "layout.removeLayer",
      "layout.renameLayer",
      "layout.moveLayer",
      "layout.setActiveLayer",
      "layout.alignElements",
      "layout.distributeElements",
      "layout.groupElements",
      "layout.ungroupElements",
      "layout.setZoom",
      "layout.setGrid",
      "layout.undo",
      "layout.redo",
      "layout.clear",
    ];

    return command && supportedCommands.includes(command.type);
  }

  /**
   * Реализация выполнения команды
   * @protected
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async _executeCommand(command) {
    switch (command.type) {
      case "layout.addElement":
        return this.addElement(
          command.elementType,
          command.properties,
          command.layerIndex
        );
      case "layout.removeElement":
        return this.removeElement(command.elementId);
      case "layout.moveElement":
        return this.moveElement(command.elementId, command.x, command.y);
      case "layout.resizeElement":
        return this.resizeElement(
          command.elementId,
          command.width,
          command.height
        );
      case "layout.setElementProperties":
        return this.setElementProperties(command.elementId, command.properties);
      case "layout.selectElement":
        return this.selectElement(command.elementId);
      case "layout.deselectElement":
        return this.deselectElement();
      case "layout.addLayer":
        return this.addLayer(command.name);
      case "layout.removeLayer":
        return this.removeLayer(command.layerIndex);
      case "layout.renameLayer":
        return this.renameLayer(command.layerIndex, command.newName);
      case "layout.moveLayer":
        return this.moveLayer(command.layerIndex, command.newIndex);
      case "layout.setActiveLayer":
        return this.setActiveLayer(command.layerIndex);
      case "layout.alignElements":
        return this.alignElements(command.elementIds, command.alignment);
      case "layout.distributeElements":
        return this.distributeElements(command.elementIds, command.distribution);
      case "layout.groupElements":
        return this.groupElements(command.elementIds);
      case "layout.ungroupElements":
        return this.ungroupElements(command.groupId);
      case "layout.setZoom":
        return this.setZoom(command.level);
      case "layout.setGrid":
        return this.setGrid(command.size, command.snap);
      case "layout.undo":
        return this.undo();
      case "layout.redo":
        return this.redo();
      case "layout.clear":
        return this.clear();
      default:
        throw new Error(`Unsupported command type: ${command.type}`);
    }
  }

  /**
   * Добавление элемента на макет
   * @param {string} elementType - Тип элемента ("text", "image", "shape", etc.)
   * @param {Object} properties - Свойства элемента (x, y, width, height, content, etc.)
   * @param {number} [layerIndex] - Индекс слоя (по умолчанию активный слой)
   * @returns {Promise<Object>} - Результат добавления
   */
  async addElement(elementType, properties, layerIndex)
  {
    const targetLayerIndex = layerIndex !== undefined ? layerIndex : this.activeLayerIndex;

    if (targetLayerIndex < 0 || targetLayerIndex >= this.layers.length) {
      throw new Error(`Invalid layer index: ${targetLayerIndex}`);
    }

    const elementId = `element_${Date.now()}_${Math.random().toString(36).substring(2, 7)}`;
    const element = {
      id: elementId,
      type: elementType,
      layerIndex: targetLayerIndex,
      properties: {
        x: properties.x || 0,
        y: properties.y || 0,
        width: properties.width || 100,
        height: properties.height || 50,
        content: properties.content || "",
        style: properties.style || {},
        ...properties, // Перезаписываем стандартные свойства, если они переданы
      },
    };

    // Привязка к сетке
    if (this.snapToGrid) {
      element.properties.x = Math.round(element.properties.x / this.gridSize) * this.gridSize;
      element.properties.y = Math.round(element.properties.y / this.gridSize) * this.gridSize;
    }

    this.elements.set(elementId, element);
    this.layers[targetLayerIndex].elementIds.push(elementId);

    // Рендеринг элемента
    this._renderElement(element);

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementId,
      element,
    };
  }

  /**
   * Удаление элемента с макета
   * @param {string} elementId - ID элемента
   * @returns {Promise<Object>} - Результат удаления
   */
  async removeElement(elementId) {
    if (!this.elements.has(elementId)) {
      return {
        success: false,
        message: `Element ${elementId} not found`,
      };
    }

    const element = this.elements.get(elementId);
    const layerIndex = element.layerIndex;

    // Удаляем из карты элементов
    this.elements.delete(elementId);

    // Удаляем из слоя
    if (this.layers[layerIndex]) {
      const indexInLayer = this.layers[layerIndex].elementIds.indexOf(elementId);
      if (indexInLayer > -1) {
        this.layers[layerIndex].elementIds.splice(indexInLayer, 1);
      }
    }

    // Удаляем из DOM
    const domElement = this.container.querySelector(`[data-element-id="${elementId}"]`);
    if (domElement) {
      domElement.remove();
    }

    // Сбрасываем активный элемент, если это он
    if (this.activeElementId === elementId) {
      this.activeElementId = null;
    }

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementId,
    };
  }

  /**
   * Перемещение элемента
   * @param {string} elementId - ID элемента
   * @param {number} x - Новая координата X
   * @param {number} y - Новая координата Y
   * @returns {Promise<Object>} - Результат перемещения
   */
  async moveElement(elementId, x, y) {
    if (!this.elements.has(elementId)) {
      throw new Error(`Element ${elementId} not found`);
    }

    const element = this.elements.get(elementId);

    // Привязка к сетке
    if (this.snapToGrid) {
      x = Math.round(x / this.gridSize) * this.gridSize;
      y = Math.round(y / this.gridSize) * this.gridSize;
    }

    element.properties.x = x;
    element.properties.y = y;

    // Обновляем позицию в DOM
    const domElement = this.container.querySelector(`[data-element-id="${elementId}"]`);
    if (domElement) {
      domElement.style.left = `${x}px`;
      domElement.style.top = `${y}px`;
    }

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementId,
      x,
      y,
    };
  }

  /**
   * Изменение размера элемента
   * @param {string} elementId - ID элемента
   * @param {number} width - Новая ширина
   * @param {number} height - Новая высота
   * @returns {Promise<Object>} - Результат изменения размера
   */
  async resizeElement(elementId, width, height) {
    if (!this.elements.has(elementId)) {
      throw new Error(`Element ${elementId} not found`);
    }

    const element = this.elements.get(elementId);

    // Привязка к сетке
    if (this.snapToGrid) {
      width = Math.max(this.gridSize, Math.round(width / this.gridSize) * this.gridSize);
      height = Math.max(this.gridSize, Math.round(height / this.gridSize) * this.gridSize);
    }

    element.properties.width = width;
    element.properties.height = height;

    // Обновляем размер в DOM
    const domElement = this.container.querySelector(`[data-element-id="${elementId}"]`);
    if (domElement) {
      domElement.style.width = `${width}px`;
      domElement.style.height = `${height}px`;
    }

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementId,
      width,
      height,
    };
  }

  /**
   * Установка свойств элемента
   * @param {string} elementId - ID элемента
   * @param {Object} properties - Новые свойства
   * @returns {Promise<Object>} - Результат установки свойств
   */
  async setElementProperties(elementId, properties) {
    if (!this.elements.has(elementId)) {
      throw new Error(`Element ${elementId} not found`);
    }

    const element = this.elements.get(elementId);
    const oldProperties = { ...element.properties };

    // Обновляем свойства
    element.properties = { ...element.properties, ...properties };

    // Привязка к сетке для координат и размеров
    if (this.snapToGrid) {
      if (properties.x !== undefined) {
        element.properties.x = Math.round(properties.x / this.gridSize) * this.gridSize;
      }
      if (properties.y !== undefined) {
        element.properties.y = Math.round(properties.y / this.gridSize) * this.gridSize;
      }
      if (properties.width !== undefined) {
        element.properties.width = Math.max(this.gridSize, Math.round(properties.width / this.gridSize) * this.gridSize);
      }
      if (properties.height !== undefined) {
        element.properties.height = Math.max(this.gridSize, Math.round(properties.height / this.gridSize) * this.gridSize);
      }
    }

    // Обновляем элемент в DOM
    this._updateElementRendering(element);

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementId,
      newProperties: { ...element.properties },
      oldProperties,
    };
  }

  /**
   * Выделение элемента
   * @param {string} elementId - ID элемента
   * @returns {Promise<Object>} - Результат выделения
   */
  async selectElement(elementId) {
    if (!this.elements.has(elementId)) {
      return {
        success: false,
        message: `Element ${elementId} not found`,
      };
    }

    // Снимаем выделение с предыдущего элемента
    if (this.activeElementId) {
      const prevDomElement = this.container.querySelector(`[data-element-id="${this.activeElementId}"]`);
      if (prevDomElement) {
        prevDomElement.classList.remove("active");
        // Удалить рамку выделения
      }
    }

    // Выделяем новый элемент
    this.activeElementId = elementId;
    const domElement = this.container.querySelector(`[data-element-id="${elementId}"]`);
    if (domElement) {
      domElement.classList.add("active");
      // Добавить рамку выделения
    }

    return {
      success: true,
      elementId,
    };
  }

  /**
   * Отмена выделения элемента
   * @returns {Promise<Object>} - Результат отмены выделения
   */
  async deselectElement() {
    if (this.activeElementId) {
      const domElement = this.container.querySelector(`[data-element-id="${this.activeElementId}"]`);
      if (domElement) {
        domElement.classList.remove("active");
        // Удалить рамку выделения
      }
      this.activeElementId = null;
    }

    return {
      success: true,
    };
  }

  /**
   * Добавление слоя
   * @param {string} [name] - Имя слоя
   * @returns {Promise<Object>} - Результат добавления
   */
  async addLayer(name) {
    const layerName = name || `Слой ${this.layers.length + 1}`;
    const newLayer = {
      id: `layer_${Date.now()}`,
      name: layerName,
      visible: true,
      locked: false,
      elementIds: [],
    };

    this.layers.push(newLayer);

    // Обновляем z-index существующих элементов
    this._updateZIndexes();

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      layerIndex: this.layers.length - 1,
      layer: newLayer,
    };
  }

  /**
   * Удаление слоя
   * @param {number} layerIndex - Индекс слоя
   * @returns {Promise<Object>} - Результат удаления
   */
  async removeLayer(layerIndex) {
    if (layerIndex < 0 || layerIndex >= this.layers.length) {
      throw new Error(`Invalid layer index: ${layerIndex}`);
    }

    if (this.layers.length <= 1) {
      throw new Error("Cannot remove the last layer");
    }

    const removedLayer = this.layers[layerIndex];

    // Удаляем все элементы этого слоя
    for (const elementId of removedLayer.elementIds) {
      await this.removeElement(elementId);
    }

    // Удаляем слой из массива
    this.layers.splice(layerIndex, 1);

    // Корректируем индексы слоев у оставшихся элементов
    this.elements.forEach((element) => {
      if (element.layerIndex > layerIndex) {
        element.layerIndex--;
      }
    });

    // Обновляем активный слой, если удалили его или слой выше
    if (this.activeLayerIndex === layerIndex) {
      this.activeLayerIndex = Math.max(0, layerIndex - 1);
    } else if (this.activeLayerIndex > layerIndex) {
      this.activeLayerIndex--;
    }

    // Обновляем z-index
    this._updateZIndexes();

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      layerIndex,
      removedLayer,
    };
  }

  /**
   * Переименование слоя
   * @param {number} layerIndex - Индекс слоя
   * @param {string} newName - Новое имя
   * @returns {Promise<Object>} - Результат переименования
   */
  async renameLayer(layerIndex, newName) {
    if (layerIndex < 0 || layerIndex >= this.layers.length) {
      throw new Error(`Invalid layer index: ${layerIndex}`);
    }

    if (!newName) {
      throw new Error("Layer name cannot be empty");
    }

    const oldName = this.layers[layerIndex].name;
    this.layers[layerIndex].name = newName;

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      layerIndex,
      newName,
      oldName,
    };
  }

  /**
   * Перемещение слоя
   * @param {number} layerIndex - Текущий индекс слоя
   * @param {number} newIndex - Новый индекс слоя
   * @returns {Promise<Object>} - Результат перемещения
   */
  async moveLayer(layerIndex, newIndex) {
    if (
      layerIndex < 0 ||
      layerIndex >= this.layers.length ||
      newIndex < 0 ||
      newIndex >= this.layers.length
    ) {
      throw new Error("Invalid layer index");
    }

    if (layerIndex === newIndex) {
      return { success: true, message: "Layer already at the target index" };
    }

    // Перемещаем слой в массиве
    const [movedLayer] = this.layers.splice(layerIndex, 1);
    this.layers.splice(newIndex, 0, movedLayer);

    // Обновляем индексы слоев у всех элементов
    this.elements.forEach((element) => {
      if (element.layerIndex === layerIndex) {
        element.layerIndex = newIndex;
      } else if (layerIndex < newIndex && element.layerIndex > layerIndex && element.layerIndex <= newIndex) {
        element.layerIndex--;
      } else if (layerIndex > newIndex && element.layerIndex >= newIndex && element.layerIndex < layerIndex) {
        element.layerIndex++;
      }
    });

    // Обновляем активный слой
    if (this.activeLayerIndex === layerIndex) {
      this.activeLayerIndex = newIndex;
    } else if (layerIndex < newIndex && this.activeLayerIndex > layerIndex && this.activeLayerIndex <= newIndex) {
      this.activeLayerIndex--;
    } else if (layerIndex > newIndex && this.activeLayerIndex >= newIndex && this.activeLayerIndex < layerIndex) {
      this.activeLayerIndex++;
    }

    // Обновляем z-index
    this._updateZIndexes();

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      oldIndex: layerIndex,
      newIndex,
    };
  }

  /**
   * Установка активного слоя
   * @param {number} layerIndex - Индекс слоя
   * @returns {Promise<Object>} - Результат установки
   */
  async setActiveLayer(layerIndex) {
    if (layerIndex < 0 || layerIndex >= this.layers.length) {
      throw new Error(`Invalid layer index: ${layerIndex}`);
    }

    this.activeLayerIndex = layerIndex;

    return {
      success: true,
      activeLayerIndex: this.activeLayerIndex,
    };
  }

  /**
   * Выравнивание элементов
   * @param {Array<string>} elementIds - ID элементов для выравнивания
   * @param {string} alignment - Тип выравнивания ("left", "center", "right", "top", "middle", "bottom")
   * @returns {Promise<Object>} - Результат выравнивания
   */
  async alignElements(elementIds, alignment) {
    if (!elementIds || elementIds.length < 2) {
      throw new Error("At least two elements are required for alignment");
    }

    const elementsToAlign = elementIds
      .map((id) => this.elements.get(id))
      .filter(Boolean);

    if (elementsToAlign.length < 2) {
      throw new Error("Could not find at least two elements to align");
    }

    // Определяем опорный элемент (первый в списке)
    const referenceElement = elementsToAlign[0];
    const refProps = referenceElement.properties;

    for (let i = 1; i < elementsToAlign.length; i++) {
      const element = elementsToAlign[i];
      const props = element.properties;
      let newX = props.x;
      let newY = props.y;

      switch (alignment) {
        case "left":
          newX = refProps.x;
          break;
        case "center":
          newX = refProps.x + refProps.width / 2 - props.width / 2;
          break;
        case "right":
          newX = refProps.x + refProps.width - props.width;
          break;
        case "top":
          newY = refProps.y;
          break;
        case "middle":
          newY = refProps.y + refProps.height / 2 - props.height / 2;
          break;
        case "bottom":
          newY = refProps.y + refProps.height - props.height;
          break;
        default:
          throw new Error(`Invalid alignment type: ${alignment}`);
      }

      // Перемещаем элемент
      await this.moveElement(element.id, newX, newY);
    }

    // Сохраняем состояние в истории (moveElement уже сохраняет, но лучше сделать одно общее сохранение)
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementIds,
      alignment,
    };
  }

  /**
   * Распределение элементов
   * @param {Array<string>} elementIds - ID элементов для распределения
   * @param {string} distribution - Тип распределения ("horizontal", "vertical")
   * @returns {Promise<Object>} - Результат распределения
   */
  async distributeElements(elementIds, distribution) {
    if (!elementIds || elementIds.length < 3) {
      throw new Error("At least three elements are required for distribution");
    }

    const elementsToDistribute = elementIds
      .map((id) => this.elements.get(id))
      .filter(Boolean);

    if (elementsToDistribute.length < 3) {
      throw new Error("Could not find at least three elements to distribute");
    }

    // Сортируем элементы по координате
    if (distribution === "horizontal") {
      elementsToDistribute.sort((a, b) => a.properties.x - b.properties.x);
    } else if (distribution === "vertical") {
      elementsToDistribute.sort((a, b) => a.properties.y - b.properties.y);
    } else {
      throw new Error(`Invalid distribution type: ${distribution}`);
    }

    const firstElement = elementsToDistribute[0];
    const lastElement = elementsToDistribute[elementsToDistribute.length - 1];

    let totalSpace, totalElementSize, spacing;

    if (distribution === "horizontal") {
      totalSpace = lastElement.properties.x - firstElement.properties.x;
      totalElementSize = elementsToDistribute.reduce((sum, el) => sum + el.properties.width, 0);
      spacing = (totalSpace - totalElementSize) / (elementsToDistribute.length - 1);
    } else {
      totalSpace = lastElement.properties.y - firstElement.properties.y;
      totalElementSize = elementsToDistribute.reduce((sum, el) => sum + el.properties.height, 0);
      spacing = (totalSpace - totalElementSize) / (elementsToDistribute.length - 1);
    }

    if (spacing < 0) {
        // Если элементы перекрываются, распределяем их равномерно по центрам
        if (distribution === "horizontal") {
            const totalWidth = lastElement.properties.x + lastElement.properties.width - firstElement.properties.x;
            spacing = (totalWidth - totalElementSize) / (elementsToDistribute.length - 1);
        } else {
            const totalHeight = lastElement.properties.y + lastElement.properties.height - firstElement.properties.y;
            spacing = (totalHeight - totalElementSize) / (elementsToDistribute.length - 1);
        }
    }

    let currentPos;
    if (distribution === "horizontal") {
      currentPos = firstElement.properties.x + firstElement.properties.width;
    } else {
      currentPos = firstElement.properties.y + firstElement.properties.height;
    }

    for (let i = 1; i < elementsToDistribute.length - 1; i++) {
      const element = elementsToDistribute[i];
      let newPos = currentPos + spacing;

      if (distribution === "horizontal") {
        await this.moveElement(element.id, newPos, element.properties.y);
        currentPos = newPos + element.properties.width;
      } else {
        await this.moveElement(element.id, element.properties.x, newPos);
        currentPos = newPos + element.properties.height;
      }
    }

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      elementIds,
      distribution,
    };
  }

  /**
   * Группировка элементов
   * @param {Array<string>} elementIds - ID элементов для группировки
   * @returns {Promise<Object>} - Результат группировки
   */
  async groupElements(elementIds) {
    if (!elementIds || elementIds.length < 2) {
      throw new Error("At least two elements are required for grouping");
    }

    const elementsToGroup = elementIds
      .map((id) => this.elements.get(id))
      .filter(Boolean);

    if (elementsToGroup.length < 2) {
      throw new Error("Could not find at least two elements to group");
    }

    // Определяем границы группы
    let minX = Infinity, minY = Infinity, maxX = -Infinity, maxY = -Infinity;
    let layerIndex = elementsToGroup[0].layerIndex;

    elementsToGroup.forEach(el => {
        if (el.layerIndex !== layerIndex) {
            throw new Error("Cannot group elements from different layers");
        }
        minX = Math.min(minX, el.properties.x);
        minY = Math.min(minY, el.properties.y);
        maxX = Math.max(maxX, el.properties.x + el.properties.width);
        maxY = Math.max(maxY, el.properties.y + el.properties.height);
    });

    const groupWidth = maxX - minX;
    const groupHeight = maxY - minY;

    // Создаем элемент группы
    const groupId = `group_${Date.now()}`;
    const groupElement = {
      id: groupId,
      type: "group",
      layerIndex: layerIndex,
      properties: {
        x: minX,
        y: minY,
        width: groupWidth,
        height: groupHeight,
        children: elementIds,
      },
    };

    // Добавляем группу и удаляем исходные элементы
    this.elements.set(groupId, groupElement);
    this.layers[layerIndex].elementIds.push(groupId);

    elementIds.forEach(id => {
        const element = this.elements.get(id);
        // Корректируем координаты дочерних элементов относительно группы
        element.properties.x -= minX;
        element.properties.y -= minY;
        // Удаляем из слоя (но не из this.elements, т.к. они теперь часть группы)
        const indexInLayer = this.layers[layerIndex].elementIds.indexOf(id);
        if (indexInLayer > -1) {
            this.layers[layerIndex].elementIds.splice(indexInLayer, 1);
        }
        // Удаляем из DOM
        const domElement = this.container.querySelector(`[data-element-id="${id}"]`);
        if (domElement) {
            domElement.remove();
        }
    });

    // Рендерим группу
    this._renderElement(groupElement);

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      groupId,
      groupElement,
    };
  }

  /**
   * Разгруппировка элементов
   * @param {string} groupId - ID группы
   * @returns {Promise<Object>} - Результат разгруппировки
   */
  async ungroupElements(groupId) {
    if (!this.elements.has(groupId) || this.elements.get(groupId).type !== "group") {
      throw new Error(`Group ${groupId} not found`);
    }

    const groupElement = this.elements.get(groupId);
    const groupProps = groupElement.properties;
    const layerIndex = groupElement.layerIndex;

    // Восстанавливаем дочерние элементы
    groupProps.children.forEach(childId => {
        const childElement = this.elements.get(childId);
        if (childElement) {
            // Восстанавливаем абсолютные координаты
            childElement.properties.x += groupProps.x;
            childElement.properties.y += groupProps.y;
            childElement.layerIndex = layerIndex; // Убедимся, что слой правильный
            // Добавляем обратно в слой
            this.layers[layerIndex].elementIds.push(childId);
            // Рендерим элемент
            this._renderElement(childElement);
        }
    });

    // Удаляем группу
    this.elements.delete(groupId);
    const indexInLayer = this.layers[layerIndex].elementIds.indexOf(groupId);
    if (indexInLayer > -1) {
        this.layers[layerIndex].elementIds.splice(indexInLayer, 1);
    }
    const domElement = this.container.querySelector(`[data-element-id="${groupId}"]`);
    if (domElement) {
        domElement.remove();
    }

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
      groupId,
      ungroupedElementIds: groupProps.children,
    };
  }

  /**
   * Установка уровня масштабирования
   * @param {number} level - Уровень масштабирования (1 = 100%)
   * @returns {Promise<Object>} - Результат установки
   */
  async setZoom(level) {
    this.zoomLevel = Math.max(0.1, Math.min(level, 10)); // Ограничиваем масштаб
    this.container.style.transform = `scale(${this.zoomLevel})`;
    // Может потребоваться пересчет координат или обновление отображения

    return {
      success: true,
      zoomLevel: this.zoomLevel,
    };
  }

  /**
   * Установка параметров сетки
   * @param {number} size - Размер ячейки сетки
   * @param {boolean} snap - Включить/выключить привязку к сетке
   * @returns {Promise<Object>} - Результат установки
   */
  async setGrid(size, snap) {
    this.gridSize = Math.max(1, size);
    this.snapToGrid = !!snap;
    // Может потребоваться обновление отображения сетки

    return {
      success: true,
      gridSize: this.gridSize,
      snapToGrid: this.snapToGrid,
    };
  }

  /**
   * Отмена последнего действия
   * @returns {Promise<Object>} - Результат отмены
   */
  async undo() {
    if (this.historyIndex <= 0) {
      return {
        success: false,
        message: "Nothing to undo",
      };
    }

    this.historyIndex--;
    const prevState = this.history[this.historyIndex];

    // Восстанавливаем предыдущее состояние
    this.elements = new Map(prevState.elements);
    this.layers = JSON.parse(JSON.stringify(prevState.layers));

    // Перерисовываем все
    this._renderAll();

    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length,
    };
  }

  /**
   * Повтор отмененного действия
   * @returns {Promise<Object>} - Результат повтора
   */
  async redo() {
    if (this.historyIndex >= this.history.length - 1) {
      return {
        success: false,
        message: "Nothing to redo",
      };
    }

    this.historyIndex++;
    const nextState = this.history[this.historyIndex];

    // Восстанавливаем следующее состояние
    this.elements = new Map(nextState.elements);
    this.layers = JSON.parse(JSON.stringify(nextState.layers));

    // Перерисовываем все
    this._renderAll();

    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length,
    };
  }

  /**
   * Очистка макета
   * @returns {Promise<Object>} - Результат очистки
   */
  async clear() {
    // Удаляем все элементы
    this.elements.clear();
    this.layers = [];
    this.activeElementId = null;
    this.activeLayerIndex = 0;

    // Очищаем контейнер
    this.container.innerHTML = "";

    // Добавляем начальный слой
    this.addLayer("Слой 1");

    // Сохраняем состояние в истории
    this._addToHistory({
      elements: new Map(this.elements),
      layers: JSON.parse(JSON.stringify(this.layers)),
    });

    return {
      success: true,
    };
  }

  /**
   * Добавление состояния в историю
   * @private
   * @param {Object} state - Состояние (elements, layers)
   */
  _addToHistory(state) {
    // Если мы находимся не в конце истории, обрезаем ее
    if (this.historyIndex < this.history.length - 1) {
      this.history = this.history.slice(0, this.historyIndex + 1);
    }

    // Добавляем новое состояние (глубокое копирование)
    this.history.push({
        elements: new Map(state.elements), // Копируем Map
        layers: JSON.parse(JSON.stringify(state.layers)) // Глубокое копирование массива слоев
    });
    this.historyIndex = this.history.length - 1;

    // Ограничиваем размер истории
    const maxHistoryLength = 50;
    if (this.history.length > maxHistoryLength) {
      this.history = this.history.slice(this.history.length - maxHistoryLength);
      this.historyIndex = this.history.length - 1;
    }
  }

  /**
   * Рендеринг одного элемента
   * @private
   * @param {Object} element - Элемент для рендеринга
   */
  _renderElement(element) {
    let domElement = this.container.querySelector(`[data-element-id="${element.id}"]`);

    if (!domElement) {
      domElement = document.createElement("div");
      domElement.dataset.elementId = element.id;
      domElement.style.position = "absolute";
      domElement.style.boxSizing = "border-box";
      domElement.style.border = "1px dashed transparent"; // Граница для выделения
      this.container.appendChild(domElement);
    }

    // Обновляем стили и содержимое
    const props = element.properties;
    domElement.style.left = `${props.x}px`;
    domElement.style.top = `${props.y}px`;
    domElement.style.width = `${props.width}px`;
    domElement.style.height = `${props.height}px`;
    domElement.style.zIndex = element.layerIndex * 10; // Базовый z-index для слоя

    // Стили элемента
    Object.assign(domElement.style, props.style);

    // Содержимое в зависимости от типа
    if (element.type === "text") {
      domElement.textContent = props.content;
      domElement.style.whiteSpace = "pre-wrap"; // Учитываем переносы строк
      domElement.style.overflow = "hidden";
    } else if (element.type === "image") {
      domElement.innerHTML = `<img src="${props.content}" style="width: 100%; height: 100%; object-fit: contain;">`;
    } else if (element.type === "shape") {
      // Рендеринг фигур (например, через SVG или стили)
      domElement.style.backgroundColor = props.style?.fill || "#cccccc";
      domElement.style.borderRadius = props.style?.shape === "ellipse" ? "50%" : "0";
    } else if (element.type === "group") {
        domElement.style.border = "1px dotted blue"; // Визуализация группы
        domElement.innerHTML = ""; // Очищаем содержимое группы
        // Рендерим дочерние элементы внутри группы
        props.children.forEach(childId => {
            const childElement = this.elements.get(childId);
            if (childElement) {
                const childDom = this._renderElement(childElement); // Рекурсивный вызов
                // Позиционируем дочерний элемент относительно группы
                childDom.style.left = `${childElement.properties.x}px`;
                childDom.style.top = `${childElement.properties.y}px`;
                domElement.appendChild(childDom);
            }
        });
    }

    // Видимость и блокировка слоя
    const layer = this.layers[element.layerIndex];
    domElement.style.display = layer.visible ? "block" : "none";
    domElement.style.pointerEvents = layer.locked ? "none" : "auto";

    // Обновляем класс активности
    if (element.id === this.activeElementId) {
      domElement.classList.add("active");
      domElement.style.border = "1px solid blue";
    } else {
      domElement.classList.remove("active");
      domElement.style.border = "1px dashed transparent";
    }
    return domElement; // Возвращаем DOM-элемент для использования в рекурсии (группы)
  }

  /**
   * Обновление рендеринга элемента
   * @private
   * @param {Object} element - Элемент для обновления
   */
  _updateElementRendering(element) {
    this._renderElement(element);
  }

  /**
   * Обновление z-index всех элементов в соответствии со слоями
   * @private
   */
  _updateZIndexes() {
    this.elements.forEach((element) => {
      const domElement = this.container.querySelector(`[data-element-id="${element.id}"]`);
      if (domElement) {
        domElement.style.zIndex = element.layerIndex * 10;
      }
    });
  }

  /**
   * Полный рендеринг всех элементов
   * @private
   */
  _renderAll() {
    this.container.innerHTML = ""; // Очищаем контейнер
    this.layers.forEach((layer, layerIndex) => {
      layer.elementIds.forEach((elementId) => {
        const element = this.elements.get(elementId);
        if (element) {
          element.layerIndex = layerIndex; // Убедимся, что индекс слоя актуален
          this._renderElement(element);
        }
      });
    });
  }

  /**
   * Обработчик клика по контейнеру
   * @private
   * @param {MouseEvent} event - Событие клика
   */
  _handleClick(event) {
    const clickedElement = event.target.closest("[data-element-id]");

    if (clickedElement) {
      const elementId = clickedElement.dataset.elementId;
      this.selectElement(elementId);
    } else {
      this.deselectElement();
    }
  }

  /**
   * Обработчик нажатия кнопки мыши
   * @private
   * @param {MouseEvent} event - Событие нажатия
   */
  _handleMouseDown(event) {
    // Логика для начала перетаскивания или изменения размера
    if (this.activeElementId) {
      const domElement = this.container.querySelector(`[data-element-id="${this.activeElementId}"]`);
      if (domElement && domElement.contains(event.target)) {
        // Начать перетаскивание
        this._startDrag(event, this.activeElementId);
      }
    }
  }

  /**
   * Начало перетаскивания элемента
   * @private
   */
  _startDrag(event, elementId) {
    event.preventDefault();
    const element = this.elements.get(elementId);
    const startX = event.clientX;
    const startY = event.clientY;
    const initialX = element.properties.x;
    const initialY = element.properties.y;

    const handleMouseMove = (moveEvent) => {
      const dx = moveEvent.clientX - startX;
      const dy = moveEvent.clientY - startY;
      let newX = initialX + dx / this.zoomLevel;
      let newY = initialY + dy / this.zoomLevel;

      // Привязка к сетке во время перетаскивания
      if (this.snapToGrid) {
        newX = Math.round(newX / this.gridSize) * this.gridSize;
        newY = Math.round(newY / this.gridSize) * this.gridSize;
      }

      // Обновляем позицию в DOM для визуальной обратной связи
      const domElement = this.container.querySelector(`[data-element-id="${elementId}"]`);
      if (domElement) {
        domElement.style.left = `${newX}px`;
        domElement.style.top = `${newY}px`;
      }
    };

    const handleMouseUp = (upEvent) => {
      document.removeEventListener("mousemove", handleMouseMove);
      document.removeEventListener("mouseup", handleMouseUp);

      const dx = upEvent.clientX - startX;
      const dy = upEvent.clientY - startY;
      let finalX = initialX + dx / this.zoomLevel;
      let finalY = initialY + dy / this.zoomLevel;

      // Финальное перемещение с сохранением в истории
      this.moveElement(elementId, finalX, finalY);
    };

    document.addEventListener("mousemove", handleMouseMove);
    document.addEventListener("mouseup", handleMouseUp);
  }

  /**
   * Обработчик активации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onActivate() {
    // Реализация активации инструмента
    console.log(`LayoutEditorTool ${this.id} activated`);
    // Показать контейнер, если он скрыт
    if (this.container && this.container.parentElement) {
        this.container.style.display = 'block';
    }
  }

  /**
   * Обработчик деактивации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onDeactivate() {
    // Реализация деактивации инструмента
    console.log(`LayoutEditorTool ${this.id} deactivated`);
    // Скрыть контейнер
     if (this.container && this.container.parentElement) {
        this.container.style.display = 'none';
    }
    this.deselectElement();
  }

  /**
   * Обработчик освобождения ресурсов
   * @protected
   * @returns {Promise<void>}
   */
  async _onDispose() {
    // Очищаем ресурсы
    if (this.container) {
      this.container.removeEventListener("click", this._handleClick);
      this.container.removeEventListener("mousedown", this._handleMouseDown);
      this.container.remove();
    }

    this.container = null;
    this.elements.clear();
    this.layers = [];
    this.activeElementId = null;
    this.activeLayerIndex = 0;
    this.history = [];
    this.historyIndex = -1;
  }
}

module.exports = LayoutEditorTool;

