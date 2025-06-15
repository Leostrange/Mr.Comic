/**
 * SettingsPanel.js
 * Вкладки: Тема, Шрифты, Поднастройки, Темы сообщества, Резервное копирование
 */

const ThemeEditorPanel = require(\'./ThemeEditorPanel\');
const FontEditorPanel = require(\'./FontEditorPanel\');

class SettingsPanel {
    /**
     * @param {Object} options
     * @param {HTMLElement} options.container - DOM-элемент для рендера
     * @param {Object} options.themeManager - Экземпляр ThemeManager
     */
    constructor(options) {
        this.container = options.container;
        this.activeTab = \'theme\';
        this.themeEditor = null;
        this.fontEditor = null;
        this.themeManager = options.themeManager; // Принимаем ThemeManager
        this.communityThemes = [
            { name: \'Dark Blue\', isDark: true, colors: { \'--plugin-bg\': \'#1a2233\', \'--plugin-border\': \'#223\', \'--plugin-row-border\': \'#223\', \'--plugin-accent\': \'#4fa3ff\', \'--plugin-text\': \'#e0e6f0\', \'--plugin-muted\': \'#7a8ca3\', \'--plugin-error\': \'#ff4d6d\', \'--plugin-success\': \'#4dff7a\' }, font: \'Segoe UI, Arial, sans-serif\', fontSize: \'15px\' },
            { name: \'Solarized Light\', isDark: false, colors: { \'--plugin-bg\': \'#fdf6e3\', \'--plugin-border\': \'#eee8d5\', \'--plugin-row-border\': \'#eee8d5\', \'--plugin-accent\': \'#268bd2\', \'--plugin-text\': \'#657b83\', \'--plugin-muted\': \'#93a1a1\', \'--plugin-error\': \'#dc322f\', \'--plugin-success\': \'#859900\' }, font: \'Segoe UI, Arial, sans-serif\', fontSize: \'15px\' }
        ];
        this.interfaceSettings = this.loadInterfaceSettings(); // Load settings on init
    }

    init() {
        this.render();
        if (this.interfaceSettings.draggableToolbarsEnabled) {
            this._setupDraggableToolbars();
        }
    }

    loadInterfaceSettings() {
        try {
            const savedSettings = localStorage.getItem(\'mrcomic_interface_settings\');
            if (savedSettings) {
                return JSON.parse(savedSettings);
            }
        } catch (e) {
            console.error("Error loading interface settings:", e);
        }
        // Default settings if none are saved or an error occurs
        return {
            borderRadius: 8,
            animation: true,
            density: \'comfortable\',
            iconSize: 24,
            accentColor: \'#4fa3ff\',
            shadows: true,
            uiScale: 1,
            draggableToolbarsEnabled: false // New setting
        };
    }

    saveInterfaceSettings() {
        try {
            localStorage.setItem(\'mrcomic_interface_settings\', JSON.stringify(this.interfaceSettings));
        } catch (e) {
            console.error("Error saving interface settings:", e);
        }
    }

    render() {
        if (!this.container) return;
        this.container.innerHTML = \'\';
        // Вкладки
        const tabs = document.createElement(\'div\');
        tabs.className = \'settings-tabs\';
        tabs.style.display = \'flex\';
        tabs.style.marginBottom = \'12px\';
        const tabList = [
            { id: \'theme\', label: \'Тема\' },
            { id: \'font\', label: \'Шрифты\' },
            { id: \'ui\', label: \'Поднастройки\' },
            { id: \'community\', label: \'Темы сообщества\' },
            { id: \'backup\', label: \'Резервное копирование\' },
            { id: \'custom\', label: \'Кастомизация\' },
            { id: \'profiles\', label: \'Профили\' }
        ];
        tabList.forEach(tab => {
            const btn = document.createElement(\'button\');
            btn.textContent = tab.label;
            btn.className = this.activeTab === tab.id ? \'active\' : \'\';
            btn.style.marginRight = \'8px\';
            btn.onclick = () => { this.activeTab = tab.id; this.render(); };
            tabs.appendChild(btn);
        });
        this.container.appendChild(tabs);
        // Контент
        const content = document.createElement(\'div\');
        content.className = \'settings-content\';
        content.style.border = \'1px solid #ccc\';
        content.style.borderRadius = \'8px\';
        content.style.padding = \'16px\';
        content.style.background = \'#fafbfc\';
        switch (this.activeTab) {
            case \'theme\':
                // Передаем themeManager в ThemeEditorPanel
                if (!this.themeEditor) this.themeEditor = new ThemeEditorPanel({ container: content, themeManager: this.themeManager });
                this.themeEditor.render();
                break;
            case \'font\':
                if (!this.fontEditor) this.fontEditor = new FontEditorPanel({ container: content });
                this.fontEditor.render();
                break;
            case \'ui\':
                this.renderInterfaceSettings(content);
                break;
            case \'community\':
                this.renderCommunityThemes(content);
                break;
            case \'backup\':
                this.renderBackupManagerPanel(content);
                break;
            case \'custom\':
                this.renderCustomization(content);
                break;
            case \'profiles\':
                this.renderProfiles(content);
                break;
        }
        this.container.appendChild(content);
    }

    renderInterfaceSettings(panel) {
        panel.innerHTML = \'<h3>Поднастройки интерфейса</h3>\';
        // Скругления
        const radiusRow = document.createElement(\'div\');
        radiusRow.innerHTML = \'<label>Скругление углов: <input type="number" min="0" max="32" value="\' + this.interfaceSettings.borderRadius + \'"> px</label>\';
        radiusRow.querySelector(\'input\').oninput = (e) => {
            this.interfaceSettings.borderRadius = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-border-radius\', e.target.value + \'px\');
        };
        panel.appendChild(radiusRow);
        // Анимации
        const animRow = document.createElement(\'div\');
        animRow.innerHTML = \'<label><input type="checkbox" \' + (this.interfaceSettings.animation ? \'checked\' : \'\') + \'> Анимации</label>\';
        animRow.querySelector(\'input\').onchange = (e) => {
            this.interfaceSettings.animation = e.target.checked;
            document.documentElement.style.setProperty(\'--plugin-animations\', e.target.checked ? \'all 0.2s\' : \'none\');
        };
        panel.appendChild(animRow);
        // Плотность
        const densityRow = document.createElement(\'div\');
        densityRow.innerHTML = \'<label>Плотность: <select><option value="comfortable">Комфортная</option><option value="compact">Компактная</option></select></label>\';
        densityRow.querySelector(\'select\').value = this.interfaceSettings.density;
        densityRow.querySelector(\'select\').onchange = (e) => {
            this.interfaceSettings.density = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-density\', e.target.value);
        };
        panel.appendChild(densityRow);
        // Размер иконок
        const iconSizeRow = document.createElement(\'div\');
        iconSizeRow.innerHTML = \'<label>Размер иконок: <input type="number" min="12" max="64" value="\' + (this.interfaceSettings.iconSize || 24) + \'"> px</label>\';
        iconSizeRow.querySelector(\'input\').oninput = (e) => {
            this.interfaceSettings.iconSize = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-icon-size\', e.target.value + \'px\');
        };
        panel.appendChild(iconSizeRow);
        // Цвет акцента
        const accentRow = document.createElement(\'div\');
        accentRow.innerHTML = \'<label>Цвет акцента: <input type="color" value="\' + (this.interfaceSettings.accentColor || \'#4fa3ff\') + \'"></label>\';
        accentRow.querySelector(\'input\').oninput = (e) => {
            this.interfaceSettings.accentColor = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-accent\', e.target.value);
        };
        panel.appendChild(accentRow);
        // Тени
        const shadowRow = document.createElement(\'div\');
        shadowRow.innerHTML = \'<label><input type="checkbox" \' + (this.interfaceSettings.shadows ? \'checked\' : \'\') + \'> Отображать тени</label>\';
        shadowRow.querySelector(\'input\').onchange = (e) => {
            this.interfaceSettings.shadows = e.target.checked;
            document.documentElement.style.setProperty(\'--plugin-shadow\', e.target.checked ? \'0 2px 8px rgba(0,0,0,0.12)\' : \'none\');
        };
        panel.appendChild(shadowRow);
        // Масштаб UI
        const scaleRow = document.createElement(\'div\');
        scaleRow.innerHTML = \'<label>Масштаб UI: <input type="range" min="0.7" max="1.5" step="0.01" value="\' + (this.interfaceSettings.uiScale || 1) + \'"></label>\';
        scaleRow.querySelector(\'input\').oninput = (e) => {
            this.interfaceSettings.uiScale = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-ui-scale\', e.target.value);
        };
        panel.appendChild(scaleRow);

        // Перетаскиваемые панели инструментов
        const draggableToolbarRow = document.createElement(\'div\');
        draggableToolbarRow.innerHTML = \'<label><input type="checkbox" \' + (this.interfaceSettings.draggableToolbarsEnabled ? \'checked\' : \'\') + \'> Перетаскиваемые панели инструментов</label>\';
        const draggableToolbarCheckbox = draggableToolbarRow.querySelector(\'input\');
        draggableToolbarCheckbox.onchange = (e) => {
            this.interfaceSettings.draggableToolbarsEnabled = e.target.checked;
            this.saveInterfaceSettings(); // Save immediately
            if (e.target.checked) {
                this._setupDraggableToolbars();
            } else {
                this._disableDraggableToolbars();
            }
        };
        panel.appendChild(draggableToolbarRow);

        // Быстрые пресеты
        const presetRow = document.createElement(\'div\');
        presetRow.innerHTML = \'<label>Быстрые пресеты: </label>\';
        const presets = [
            { name: \'Минимал\', settings: { borderRadius: 2, animation: false, density: \'compact\', iconSize: 16, accentColor: \'#888\', shadows: false, uiScale: 0.85 } },
            { name: \'Классика\', settings: { borderRadius: 8, animation: true, density: \'comfortable\', iconSize: 24, accentColor: \'#4fa3ff\', shadows: true, uiScale: 1 } },
            { name: \'Крупно\', settings: { borderRadius: 16, animation: true, density: \'comfortable\', iconSize: 32, accentColor: \'#ff4d6d\', shadows: true, uiScale: 1.2 } }
        ];
        presets.forEach(preset => {
            const btn = document.createElement(\'button\');
            btn.textContent = preset.name;
            btn.onclick = () => {
                Object.assign(this.interfaceSettings, preset.settings);
                this.renderInterfaceSettings(panel);
                // Применить все переменные
                document.documentElement.style.setProperty(\'--plugin-border-radius\', this.interfaceSettings.borderRadius + \'px\');
                document.documentElement.style.setProperty(\'--plugin-animations\', this.interfaceSettings.animation ? \'all 0.2s\' : \'none\');
                document.documentElement.style.setProperty(\'--plugin-density\', this.interfaceSettings.density);
                document.documentElement.style.setProperty(\'--plugin-icon-size\', this.interfaceSettings.iconSize + \'px\');
                document.documentElement.style.setProperty(\'--plugin-accent\', this.interfaceSettings.accentColor);
                document.documentElement.style.setProperty(\'--plugin-shadow\', this.interfaceSettings.shadows ? \'0 2px 8px rgba(0,0,0,0.12)\' : \'none\');
                document.documentElement.style.setProperty(\'--plugin-ui-scale\', this.interfaceSettings.uiScale);
                this.saveInterfaceSettings(); // Save after applying preset
            };
            presetRow.appendChild(btn);
        });
        panel.appendChild(presetRow);
        // Массовое применение ко всем профилям
        const massApplyBtn = document.createElement(\'button\');
        massApplyBtn.textContent = \'Применить эти настройки ко всем профилям\';
        massApplyBtn.style.marginTop = \'16px\';
        massApplyBtn.onclick = () => {
            try {
                const ProfileManager = require(\'../profile/ProfileManager\');
                const pm = new ProfileManager();
                pm._profiles.forEach(p => {
                    Object.assign(p.settings.interface || {}, this.interfaceSettings);
                });
                pm._saveProfiles();
                alert(\'Настройки применены ко всем профилям!\');
            } catch (e) {
                alert(\'Ошибка массового применения: \' + e.message);
            }
        };
        panel.appendChild(massApplyBtn);

        // Add a save button for other settings, or save on change for each
        const saveButton = document.createElement(\'button\');
        saveButton.textContent = \'Сохранить настройки интерфейса\';
        saveButton.onclick = () => {
            this.saveInterfaceSettings();
            alert(\'Настройки интерфейса сохранены!\');
        };
        panel.appendChild(saveButton);
    }

    _setupDraggableToolbars() {
        const toolbars = document.querySelectorAll(\'[data-mrcomic-toolbar]\'); // Assuming data-mrcomic-toolbar attribute for toolbars
        toolbars.forEach(toolbar => {
            toolbar.style.position = \'absolute\'; // Ensure position is absolute for drag-and-drop
            toolbar.style.cursor = \'grab\';

            let isDragging = false;
            let currentX;
            let currentY;
            let initialX;
            let initialY;
            let xOffset = 0;
            let yOffset = 0;

            // Load saved position
            const toolbarId = toolbar.id || toolbar.getAttribute(\'data-mrcomic-toolbar\');
            if (toolbarId) {
                const savedPosition = JSON.parse(localStorage.getItem(`toolbar_position_${toolbarId}`));
                if (savedPosition) {
                    toolbar.style.left = savedPosition.x + \'px\';
                    toolbar.style.top = savedPosition.y + \'px\';
                    xOffset = savedPosition.x;
                    yOffset = savedPosition.y;
                }
            }

            const onMouseDown = (e) => {
                initialX = e.clientX - xOffset;
                initialY = e.clientY - yOffset;

                // Only drag if clicking on the toolbar itself or a designated handle
                if (e.target === toolbar || e.target.closest(\'[data-mrcomic-drag-handle]\') === toolbar) { 
                    isDragging = true;
                    toolbar.style.cursor = \'grabbing\';
                }
            };

            const onMouseMove = (e) => {
                if (isDragging) {
                    e.preventDefault();
                    currentX = e.clientX - initialX;
                    currentY = e.clientY - initialY;

                    xOffset = currentX;
                    yOffset = currentY;

                    toolbar.style.left = currentX + \'px\';
                    toolbar.style.top = currentY + \'px\';
                }
            };

            const onMouseUp = () => {
                if (isDragging) {
                    isDragging = false;
                    toolbar.style.cursor = \'grab\';
                    // Save current position
                    if (toolbarId) {
                        localStorage.setItem(`toolbar_position_${toolbarId}`, JSON.stringify({ x: xOffset, y: yOffset }));
                    }
                }
            };

            toolbar.addEventListener(\'mousedown\', onMouseDown);
            document.addEventListener(\'mousemove\', onMouseMove);
            document.addEventListener(\'mouseup\', onMouseUp);

            // Store listeners to remove them later if needed
            toolbar._dragListeners = {
                onMouseDown,
                onMouseMove,
                onMouseUp
            };
        });
    }

    _disableDraggableToolbars() {
        const toolbars = document.querySelectorAll(\'[data-mrcomic-toolbar]\');
        toolbars.forEach(toolbar => {
            toolbar.style.position = \'\'; // Reset position
            toolbar.style.cursor = \'\'; // Reset cursor
            
            // Remove event listeners
            if (toolbar._dragListeners) {
                toolbar.removeEventListener(\'mousedown\', toolbar._dragListeners.onMouseDown);
                document.removeEventListener(\'mousemove\', toolbar._dragListeners.onMouseMove);
                document.removeEventListener(\'mouseup\', toolbar._dragListeners.onMouseUp);
                delete toolbar._dragListeners;
            }
        });
    }

    renderCommunityThemes(panel) {
        panel.innerHTML = \'<h3>Темы сообщества</h3>\';
        this.communityThemes.forEach(theme => {
            const row = document.createElement(\'div\');
            row.style.marginBottom = \'10px\';
            row.style.display = \'flex\';
            row.style.alignItems = \'center\';
            const name = document.createElement(\'span\');
            name.textContent = theme.name;
            name.style.flex = \'1\';
            row.appendChild(name);
            const preview = document.createElement(\'span\');
            preview.style.display = \'inline-block\';
            preview.style.width = \'32px\';
            preview.style.height = \'16px\';
            preview.style.background = theme.colors[\'--plugin-bg\'];
            preview.style.border = \'1px solid #ccc\';
            preview.style.marginRight = \'8px\';
            row.appendChild(preview);
            const applyBtn = document.createElement(\'button\');
            applyBtn.textContent = \'Применить\';
            applyBtn.onclick = () => {
                if (!this.themeEditor) this.themeEditor = new ThemeEditorPanel({ container: panel });
                this.themeEditor.theme = theme;
                this.themeEditor.applyTheme(theme);
                this.themeEditor.saveTheme(theme);
                this.themeEditor.render();
                alert(\'Тема применена!\');
            };
            row.appendChild(applyBtn);
            panel.appendChild(row);
        });
    }

    renderBackupManagerPanel(panel) {
        panel.innerHTML = \'\';
        const BackupManagerPanel = require(\'./BackupManagerPanel\');
        // Адаптивный контейнер
        panel.style.width = \'100%\';
        panel.style.maxWidth = \'700px\';
        panel.style.margin = \'0 auto\';
        new BackupManagerPanel({ container: panel });
    }

    renderProfiles(panel) {
        panel.innerHTML = \'\';
        const ProfileManagerPanel = require(\'./ProfileManagerPanel\');
        panel.style.width = \'100%\';
        panel.style.maxWidth = \'700px\';
        panel.style.margin = \'0 auto\';
        new ProfileManagerPanel({ container: panel });
    }

    renderCustomization(panel) {
        panel.innerHTML = \'<h3>Кастомизация интерфейса (Material 3 Expressive)</h3>\';
        // Подвкладки
        const subTabs = [
            { id: \'theme\', label: \'Темы\' },
            { id: \'font\', label: \'Шрифты\' },
            { id: \'style\', label: \'Стили\' },
            { id: \'community\', label: \'Темы сообщества\' },
            { id: \'eink\', label: \'Режим E-ink\' }
        ];
        this.customActiveTab = this.customActiveTab || \'theme\';
        const subTabPanel = document.createElement(\'div\');
        subTabPanel.className = \'custom-subtabs\';
        subTabs.forEach(tab => {
            const btn = document.createElement(\'button\');
            btn.textContent = tab.label;
            btn.className = this.customActiveTab === tab.id ? \'active\' : \'\';
            btn.onclick = () => { this.customActiveTab = tab.id; this.renderCustomization(panel); };
            subTabPanel.appendChild(btn);
        });
        panel.appendChild(subTabPanel);
        // Контент подвкладки
        const subContent = document.createElement(\'div\');
        subContent.className = \'custom-subcontent\';
        switch (this.customActiveTab) {
            case \'theme\':
                this.renderThemeEditor(subContent);
                break;
            case \'font\':
                this.renderFontEditor(subContent);
                break;
            case \'style\':
                this.renderStyleEditor(subContent);
                break;
            case \'community\':
                this.renderCommunityThemesEditor(subContent);
                break;
            case \'eink\':
                this.renderEinkSettings(subContent);
                break;
        }
        panel.appendChild(subContent);
    }

    renderThemeEditor(panel) {
        panel.innerHTML = \'<b>Выбор цветовой схемы и основных цветов</b><br>\';
        // Цветовая схема
        const themeRow = document.createElement(\'div\');
        themeRow.innerHTML = \'<label>Тема: <select id="theme-select"></select></label>\';
        const themeSelect = themeRow.querySelector(\'select\');

        // Заполняем выпадающий список доступными темами из ThemeManager
        if (this.themeManager) {
            this.themeManager.getAllThemes().forEach(theme => {
                const option = document.createElement(\'option\');
                option.value = theme.name;
                option.textContent = theme.name;
                themeSelect.appendChild(option);
            });
            themeSelect.value = this.themeManager.getCurrentTheme() ? this.themeManager.getCurrentTheme().name : \'light\';
        }

        themeSelect.onchange = (e) => {
            if (this.themeManager) {
                this.themeManager.setTheme(e.target.value);
            }
        };
        panel.appendChild(themeRow);

        // Основные цвета (оставляем для кастомизации, если нужно)
        const colors = [
            { var: \'--ctp-primary\', label: \'Primary\', def: \'#d0bcff\' },
            { var: \'--ctp-surface\', label: \'Surface\', def: \'#1c1b1f\' },
            { var: \'--ctp-on-surface\', label: \'On Surface\', def: \'#e6e1e5\' }
        ];
        colors.forEach(c => {
            const row = document.createElement(\'div\');
            row.innerHTML = `<label>${c.label}: <input type="color" value="${getComputedStyle(document.documentElement).getPropertyValue(c.var).trim() || c.def}"></label>`;
            const input = row.querySelector(\'input\');
            input.oninput = (e) => {
                document.documentElement.style.setProperty(c.var, e.target.value);
                localStorage.setItem(\'mrcomic-custom-\' + c.var, e.target.value);
            };
            panel.appendChild(row);
        });
        // Скругления
        const radiusRow = document.createElement(\'div\');
        radiusRow.innerHTML = \'<label>Скругление углов: <input type="number" min="0" max="32" value="\' + this.interfaceSettings.borderRadius + \'"> px</label>\';
        radiusRow.querySelector(\'input\').oninput = (e) => {
            this.interfaceSettings.borderRadius = e.target.value;
            document.documentElement.style.setProperty(\'--plugin-border-radius\', e.target.value + \'px\');
        };
        panel.appendChild(radiusRow);
    }

    renderFontEditor(panel) {
        panel.innerHTML = \'<h3>Настройки шрифтов</h3>\';
        // Здесь будет логика для FontEditorPanel
    }

    renderStyleEditor(panel) {
        panel.innerHTML = \'<h3>Настройки стилей</h3>\';
        // Здесь будет логика для настройки стилей
    }

    renderCommunityThemesEditor(panel) {
        panel.innerHTML = \'<h3>Редактор тем сообщества</h3>\';
        // Здесь будет логика для редактирования тем сообщества
    }

    renderEinkSettings(panel) {
        panel.innerHTML = \'<h3>Настройки режима E-ink</h3>\';
        // Здесь будет логика для настроек E-ink
    }
}

// Экспортируем класс для использования в других модулях
module.exports = SettingsPanel;


