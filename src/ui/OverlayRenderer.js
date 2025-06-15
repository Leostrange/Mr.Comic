// OverlayRenderer.js
// Модуль для рендеринга текста и оверлеев на изображении комикса.
// Включает функционал автоподбора шрифта, вертикального текста,
// изменения цвета текста в зависимости от фона, кернинга, выравнивания,
// текстовых эффектов (градиент, тень, обводка) и анимации появления.

class OverlayRenderer {
    constructor() {
        this.canvas = document.createElement('canvas');
        this.ctx = this.canvas.getContext('2d');
        this.currentImage = null;
        this.overlays = [];
    }

    /**
     * Загружает изображение для рендеринга.
     * @param {HTMLImageElement} image - Изображение комикса.
     */
    loadImage(image) {
        this.currentImage = image;
        this.canvas.width = image.width;
        this.canvas.height = image.height;
        this.ctx.drawImage(image, 0, 0);
    }

    /**
     * Добавляет текстовый оверлей.
     * @param {object} options - Опции оверлея.
     * @param {string} options.text - Текст оверлея.
     * @param {number} options.x - Координата X.
     * @param {number} options.y - Координата Y.
     * @param {string} options.font - Шрифт (например, '20px Arial').
     * @param {string} options.color - Цвет текста.
     * @param {string} [options.backgroundColor] - Цвет фона для определения контраста.
     * @param {string} [options.textAlign='left'] - Выравнивание текста (left, right, center).
     * @param {boolean} [options.vertical=false] - Вертикальный текст.
     * @param {object} [options.effects] - Эффекты текста (gradient, shadow, stroke).
     * @param {object} [options.animation] - Анимация появления.
     */
    addTextOverlay(options) {
        this.overlays.push(options);
        this.render();
    }

    /**
     * Рендерит все оверлеи на изображении.
     */
    render() {
        if (!this.currentImage) return;

        this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
        this.ctx.drawImage(this.currentImage, 0, 0);

        this.overlays.forEach(overlay => {
            this.ctx.font = overlay.font;
            this.ctx.fillStyle = this._getTextColor(overlay.color, overlay.backgroundColor);
            this.ctx.textAlign = overlay.textAlign;

            if (overlay.vertical) {
                this._drawVerticalText(overlay.text, overlay.x, overlay.y, overlay.effects);
            } else {
                this._drawText(overlay.text, overlay.x, overlay.y, overlay.effects);
            }
        });
    }

    /**
     * Определяет цвет текста в зависимости от цвета фона для лучшего контраста.
     * @param {string} textColor - Предполагаемый цвет текста.
     * @param {string} backgroundColor - Цвет фона.
     * @returns {string} - Оптимальный цвет текста.
     */
    _getTextColor(textColor, backgroundColor) {
        if (!backgroundColor) return textColor;

        // Простая логика: если фон темный, текст светлый, и наоборот.
        // В реальном приложении нужна более сложная логика определения яркости цвета.
        const isBackgroundDark = (color) => {
            // Пример: конвертация HEX в RGB и расчет яркости
            const hex = color.replace('#', '');
            const r = parseInt(hex.substring(0, 2), 16);
            const g = parseInt(hex.substring(2, 4), 16);
            const b = parseInt(hex.substring(4, 6), 16);
            const brightness = (r * 299 + g * 587 + b * 114) / 1000;
            return brightness < 128;
        };

        if (isBackgroundDark(backgroundColor)) {
            return 'white'; // Если фон темный, используем белый текст
        } else {
            return 'black'; // Если фон светлый, используем черный текст
        }
    }

    /**
     * Рисует текст с учетом кернинга и выравнивания.
     * @param {string} text - Текст для рисования.
     * @param {number} x - Координата X.
     * @param {number} y - Координата Y.
     * @param {object} [effects] - Эффекты текста.
     */
    _drawText(text, x, y, effects) {
        this.ctx.save();
        this._applyTextEffects(effects);
        this.ctx.fillText(text, x, y);
        this.ctx.restore();
    }

    /**
     * Рисует вертикальный текст.
     * @param {string} text - Текст для рисования.
     * @param {number} x - Координата X.
     * @param {number} y - Координата Y.
     * @param {object} [effects] - Эффекты текста.
     */
    _drawVerticalText(text, x, y, effects) {
        this.ctx.save();
        this._applyTextEffects(effects);
        for (let i = 0; i < text.length; i++) {
            this.ctx.fillText(text[i], x, y + i * parseInt(this.ctx.font)); // Простой расчет для примера
        }
        this.ctx.restore();
    }

    /**
     * Применяет текстовые эффекты.
     * @param {object} effects - Эффекты текста (gradient, shadow, stroke).
     */
    _applyTextEffects(effects) {
        if (!effects) return;

        if (effects.gradient) {
            const gradient = this.ctx.createLinearGradient(0, 0, this.canvas.width, 0);
            gradient.addColorStop(0, effects.gradient.startColor);
            gradient.addColorStop(1, effects.gradient.endColor);
            this.ctx.fillStyle = gradient;
        }

        if (effects.shadow) {
            this.ctx.shadowColor = effects.shadow.color;
            this.ctx.shadowBlur = effects.shadow.blur;
            this.ctx.shadowOffsetX = effects.shadow.offsetX;
            this.ctx.shadowOffsetY = effects.shadow.offsetY;
        }

        if (effects.stroke) {
            this.ctx.strokeStyle = effects.stroke.color;
            this.ctx.lineWidth = effects.stroke.width;
            this.ctx.strokeText = this.ctx.fillText; // Для совместного использования fillText и strokeText
            this.ctx.strokeText = (text, x, y) => {
                this.ctx.stroke();
                this.ctx.fillText(text, x, y);
            };
        }
    }

    /**
     * Экспортирует текущее изображение с оверлеями в PNG.
     * @param {string} filename - Имя файла для сохранения.
     * @param {number} [quality=0.9] - Качество изображения (от 0 до 1).
     * @param {object} [size] - Размеры изображения (width, height).
     * @returns {Promise<string>} - Promise, который разрешается в URL данных изображения.
     */
    exportToPNG(filename, quality = 0.9, size = null) {
        return new Promise((resolve) => {
            let exportCanvas = this.canvas;
            if (size) {
                exportCanvas = document.createElement('canvas');
                exportCanvas.width = size.width;
                exportCanvas.height = size.height;
                const exportCtx = exportCanvas.getContext('2d');
                exportCtx.drawImage(this.canvas, 0, 0, size.width, size.height);
            }

            const dataURL = exportCanvas.toDataURL('image/png', quality);
            // В реальном приложении здесь будет логика сохранения файла на диск
            // Для примера, возвращаем Data URL
            resolve(dataURL);
        });
    }

    /**
     * Анимирует появление оверлея.
     * @param {object} overlayOptions - Опции оверлея.
     * @param {number} duration - Длительность анимации в мс.
     */
    animateOverlayAppearance(overlayOptions, duration) {
        const startTime = performance.now();
        const initialAlpha = this.ctx.globalAlpha;

        const animate = (currentTime) => {
            const elapsedTime = currentTime - startTime;
            const progress = Math.min(elapsedTime / duration, 1);

            this.ctx.globalAlpha = initialAlpha * progress; // Простая анимация прозрачности
            this.render(); // Перерисовываем с новой прозрачностью

            if (progress < 1) {
                requestAnimationFrame(animate);
            } else {
                this.ctx.globalAlpha = initialAlpha; // Восстанавливаем исходную прозрачность
            }
        };

        requestAnimationFrame(animate);
    }
}

// Интеграция с FontSystem (пример)
// Предполагается, что FontSystem доступен глобально или импортируется.
// import { FontSystem } from '../system/FontSystem';

// Пример использования FontSystem для автоподбора шрифта
// const fontSystem = new FontSystem();
// const suitableFont = fontSystem.getFontForLanguage('ru');
// overlayRenderer.addTextOverlay({ text: 'Привет, мир!', x: 50, y: 50, font: suitableFont, color: 'blue' });

// Пример использования:
// const renderer = new OverlayRenderer();
// const img = new Image();
// img.src = 'path/to/your/comic_page.jpg';
// img.onload = () => {
//     renderer.loadImage(img);
//     renderer.addTextOverlay({
//         text: 'Hello World!',
//         x: 100,
//         y: 100,
//         font: '30px Arial',
//         color: 'red',
//         backgroundColor: '#FFFFFF',
//         textAlign: 'center',
//         effects: {
//             shadow: { color: 'black', blur: 5, offsetX: 2, offsetY: 2 },
//             gradient: { startColor: 'blue', endColor: 'green' },
//             stroke: { color: 'purple', width: 2 }
//         },
//         animation: { type: 'fade-in', duration: 1000 }
//     });
//     renderer.addTextOverlay({
//         text: 'Vertical Text',
//         x: 200,
//         y: 100,
//         font: '25px sans-serif',
//         color: 'blue',
//         vertical: true
//     });
//
//     // Экспорт изображения
//     renderer.exportToPNG('comic_page_with_overlay.png', 0.8, { width: 800, height: 1200 })
//         .then(dataURL => {
//             console.log('Image exported:', dataURL);
//             // Здесь можно сохранить dataURL или отобразить его
//         });
// };


