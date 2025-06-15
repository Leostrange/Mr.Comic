/**
 * PluginSettingsPanel.js
 * Панель управления плагинами: список, включение/отключение, информация, интеграция с PluginManager
 */

class PluginSettingsPanel {
    /**
     * @param {Object} options
     * @param {Object} options.pluginManager - Менеджер плагинов
     * @param {HTMLElement} options.container - DOM-элемент для рендера панели
     * @param {Object} [options.logger] - Логгер
     */
    constructor(options) {
        this.pluginManager = options.pluginManager;
        this.container = options.container;
        this.logger = options.logger || console;
        this.stateKey = \'activePlugins\';
        this.activePlugins = new Set();
    }

    /**
     * Инициализация панели
     */
    async init() {
        this.loadState();
        this.activeTab = \'plugins\';
        await this.render();
    }

    /**
     * Получить список всех плагинов
     */
    getAllPlugins() {
        // Предполагаем, что pluginManager.getAllPlugins() возвращает список объектов плагинов
        // с полями id, name, version, description, author, hasSettings, hasAdvancedSettings, docUrl, dependencies
        return this.pluginManager.getAllPlugins ? this.pluginManager.getAllPlugins() : [];
    }

    /**
     * Проверить, активен ли плагин
     */
    isPluginActive(pluginId) {
        return this.activePlugins.has(pluginId);
    }

    /**
     * Включить плагин
     */
    async enablePlugin(pluginId) {
        this.activePlugins.add(pluginId);
        await this.pluginManager.enablePlugin(pluginId);
        this.saveState();
        await this.render();
    }

    /**
     * Отключить плагин
     */
    async disablePlugin(pluginId) {
        this.activePlugins.delete(pluginId);
        await this.pluginManager.disablePlugin(pluginId);
        this.saveState();
        await this.render();
    }

    /**
     * Установить плагин
     */
    async installPlugin() {
        const pluginName = prompt(\'Введите имя плагина для установки (например, SampleOcrPlugin):\');
        if (!pluginName) return;
        // В реальном приложении здесь будет логика выбора файла плагина и его загрузки
        // Для демонстрации, просто симулируем установку
        try {
            // Предполагаем, что installPlugin принимает имя плагина и, возможно, URL/файл
            const success = await this.pluginManager.installPlugin(pluginName);
            if (success) {
                alert(`Плагин ${pluginName} успешно установлен.`);
                await this.render();
            } else {
                alert(`Ошибка установки плагина ${pluginName}.`);
            }
        } catch (e) {
            alert(`Ошибка установки плагина ${pluginName}: ${e.message}`);
        }
    }

    /**
     * Удалить плагин
     */
    async uninstallPlugin(pluginId) {
        if (!confirm(`Вы уверены, что хотите удалить плагин ${pluginId}?`)) return;
        try {
            const success = await this.pluginManager.uninstallPlugin(pluginId);
            if (success) {
                this.activePlugins.delete(pluginId); // Удаляем из активных, если был активен
                alert(`Плагин ${pluginId} успешно удален.`);
                await this.render();
            } else {
                alert(`Ошибка удаления плагина ${pluginId}.`);
            }
        } catch (e) {
            alert(`Ошибка удаления плагина ${pluginId}: ${e.message}`);
        }
    }

    /**
     * Сохранить состояние активных плагинов
     */
    saveState() {
        localStorage.setItem(this.stateKey, JSON.stringify(Array.from(this.activePlugins)));
    }

    /**
     * Загрузить состояние активных плагинов
     */
    loadState() {
        const saved = localStorage.getItem(this.stateKey);
        if (saved) {
            try {
                this.activePlugins = new Set(JSON.parse(saved));
            } catch (e) {
                this.activePlugins = new Set();
            }
        }
    }

    /**
     * Рендер панели с вкладками
     */
    async render() {
        if (!this.container) return;
        this.container.innerHTML = \'\';
        // Вкладки
        const tabs = document.createElement(\'div\');
        tabs.className = \'plugin-settings-tabs\';
        tabs.style.display = \'flex\';
        tabs.style.marginBottom = \'12px\';
        const tabPlugins = document.createElement(\'button\');
        tabPlugins.textContent = \'Плагины\';
        tabPlugins.className = this.activeTab === \'plugins\' ? \'active\' : \'\';
        tabPlugins.style.marginRight = \'8px\';
        tabPlugins.onclick = () => { this.activeTab = \'plugins\'; this.render(); };
        const tabUpdates = document.createElement(\'button\');
        tabUpdates.textContent = \'Обновления\';
        tabUpdates.className = this.activeTab === \'updates\' ? \'active\' : \'\';
        tabUpdates.onclick = () => { this.activeTab = \'updates\'; this.render(); };
        tabs.appendChild(tabPlugins);
        tabs.appendChild(tabUpdates);
        this.container.appendChild(tabs);

        // Кнопка установки плагина
        const installButton = document.createElement(\'button\');
        installButton.textContent = \'Установить новый плагин\';
        installButton.onclick = () => this.installPlugin();
        installButton.style.marginLeft = \'10px\';
        tabs.appendChild(installButton);

        // Контент
        const content = document.createElement(\'div\');
        content.className = \'plugin-settings-content\';
        content.style.border = \'1px solid #ccc\';
        content.style.borderRadius = \'8px\';
        content.style.padding = \'16px\';
        content.style.background = \'#fafbfc\';
        if (this.activeTab === \'plugins\') {
            this.renderPlugins(content);
        } else {
            this.renderUpdates(content);
        }
        this.container.appendChild(content);
        // Минимальные стили (можно вынести в CSS)
        const style = document.createElement(\'style\');
        style.textContent = `
            .plugin-settings-panel { font-family: Arial,sans-serif; }
            .plugin-row { display: flex; align-items: center; border-bottom: 1px solid #eee; padding: 8px 0; }
            .plugin-info { flex: 1; }
            .plugin-status { margin-right: 12px; font-weight: bold; }
            .plugin-row button, .plugin-row a { margin-left: 8px; }
            .plugin-settings-tabs button { padding: 6px 16px; border: none; border-radius: 6px 6px 0 0; background: #eee; cursor: pointer; }
            .plugin-settings-tabs button.active { background: #fff; border-bottom: 2px solid #0078d7; color: #0078d7; font-weight: bold; }
            .plugin-settings-content { min-height: 200px; }
            .plugin-dependencies { font-size: 0.8em; color: #666; margin-top: 4px; }
        `;
        this.container.appendChild(style);
    }

    /**
     * Рендер вкладки \'Плагины\'
     */
    renderPlugins(panel) {
        const plugins = this.getAllPlugins().slice().sort((a, b) => (a.name || \'\').localeCompare(b.name || \'\'));
        // Фильтр/поиск
        const searchBox = document.createElement(\'input\');
        searchBox.type = \'text\';
        searchBox.placeholder = \'Поиск по плагинам...\';
        searchBox.style.marginBottom = \'10px\';
        panel.appendChild(searchBox);
        let filter = \'\';
        searchBox.addEventListener(\'input\', () => {
            filter = searchBox.value.trim().toLowerCase();
            this.renderFiltered(panel, plugins, filter);
        });
        // Первая отрисовка
        this.renderFiltered(panel, plugins, filter);
    }

    /**
     * Рендер вкладки \'Обновления\'
     */
    renderUpdates(panel) {
        const title = document.createElement(\'h3\');
        title.textContent = \'Обновления программы и плагинов\';
        panel.appendChild(title);
        // Заглушка: список обновлений
        const updatesList = document.createElement(\'ul\');
        updatesList.style.marginTop = \'12px\';
        // Пример: обновление самой программы
        const coreUpdate = document.createElement(\'li\');
        coreUpdate.innerHTML = \'<b>Mr.Comic</b> — <span style=\"color: #0078d7\">Доступно обновление</span> <button style=\"margin-left:8px\">Обновить</button>\';
        updatesList.appendChild(coreUpdate);
        // Пример: обновления плагинов (заглушка)
        const pluginUpdate = document.createElement(\'li\');
        pluginUpdate.innerHTML = \'<b>OCR Tesseract</b> — <span style=\"color: #0078d7\">Доступно обновление</span> <button style=\"margin-left:8px\">Обновить</button>\';
        updatesList.appendChild(pluginUpdate);
        panel.appendChild(updatesList);
        // Можно добавить динамическую загрузку обновлений через API
    }

    /**
     * Рендер с учётом фильтра
     */
    renderFiltered(panel, plugins, filter) {
        // Удаляем старые строки (кроме поиска)
        while (panel.children.length > 1) panel.removeChild(panel.lastChild);
        const filtered = !filter ? plugins : plugins.filter(plugin =>
            (plugin.name || \'\').toLowerCase().includes(filter) ||
            (plugin.description || \'\').toLowerCase().includes(filter) ||
            (plugin.author || \'\').toLowerCase().includes(filter)
        );
        if (filtered.length === 0) {
            const empty = document.createElement(\'div\');
            empty.textContent = \'Нет подходящих плагинов.\';
            panel.appendChild(empty);
        } else {
            filtered.forEach(plugin => {
                const row = document.createElement(\'div\');
                row.className = \'plugin-row\';
                const info = document.createElement(\'div\');
                info.className = \'plugin-info\';
                info.innerHTML = `<b>${plugin.name}</b> <span style=\"color: #888;\">v${plugin.version || \'\'}</span><br><small>${plugin.description || \'\'} </small>`;
                
                // Отображение зависимостей
                if (plugin.dependencies && plugin.dependencies.length > 0) {
                    const dependenciesDiv = document.createElement(\'div\');
                    dependenciesDiv.className = \'plugin-dependencies\';
                    dependenciesDiv.textContent = `Зависимости: ${plugin.dependencies.join(\", \")}`;
                    info.appendChild(dependenciesDiv);
                }

                info.innerHTML += `<br><small>Автор: ${plugin.author || \'-\'}</small>`;
                row.appendChild(info);
                // Статус
                const status = document.createElement(\'span\');
                status.className = \'plugin-status\';
                if (plugin.error) {
                    status.textContent = \'Ошибка\';
                    status.style.color = \'red\';
                } else if (this.isPluginActive(plugin.id)) {
                    status.textContent = \'Активен\';
                    status.style.color = \'green\';
                } else {
                    status.textContent = \'Отключён\';
                    status.style.color = \'#888\';
                }
                row.appendChild(status);
                // Переключатель
                const toggle = document.createElement(\'input\');
                toggle.type = \'checkbox\';
                toggle.checked = this.isPluginActive(plugin.id);
                toggle.addEventListener(\'change\', async (e) => {
                    if (e.target.checked) {
                        await this.enablePlugin(plugin.id);
                    } else {
                        await this.disablePlugin(plugin.id);
                    }
                });
                row.appendChild(toggle);
                // Кнопка "Настроить"
                if (plugin.hasSettings) {
                    const settingsBtn = document.createElement(\'button\');
                    settingsBtn.textContent = \'Настроить\';
                    settingsBtn.onclick = () => this.openPluginSettings(plugin.id);
                    row.appendChild(settingsBtn);
                }
                // Кнопка "Расширенные настройки"
                if (plugin.hasAdvancedSettings) {
                    const advBtn = document.createElement(\'button\');
                    advBtn.textContent = \'Расширенные настройки\';
                    advBtn.onclick = () => this.openPluginAdvancedSettings(plugin.id);
                    row.appendChild(advBtn);
                }
                // Кнопка "Документация"
                if (plugin.docUrl) {
                    const docBtn = document.createElement(\'a\');
                    docBtn.textContent = \'Документация\';
                    docBtn.href = plugin.docUrl;
                    docBtn.target = \'_blank\';
                    docBtn.style.marginLeft = \'8px\';
                    row.appendChild(docBtn);
                }
                // Кнопка "Удалить"
                const uninstallBtn = document.createElement(\'button\');
                uninstallBtn.textContent = \'Удалить\';
                uninstallBtn.onclick = () => this.uninstallPlugin(plugin.id);
                row.appendChild(uninstallBtn);

                panel.appendChild(row);
            });
        }
    }

    /**
     * Открыть настройки плагина (заглушка)
     */
    openPluginSettings(pluginId) {
        alert(\'Настройки плагина: \' + pluginId);
    }

    /**
     * Открыть расширенные настройки плагина (заглушка)
     */
    openPluginAdvancedSettings(pluginId) {
        alert(\'Расширенные настройки плагина: \' + pluginId);
    }
}

module.exports = PluginSettingsPanel; 

