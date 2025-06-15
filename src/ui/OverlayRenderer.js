// OverlayRenderer.js
// Модуль для наложения перевода на страницу комикса (canvas)

class OverlayRenderer {
    /**
     * Рисует перевод поверх оригинального изображения
     * @param {HTMLImageElement|HTMLCanvasElement} image - Оригинальное изображение страницы
     * @param {Array<{bbox: Object, text: string, translatedText: string}>} bubbles - Массив с bbox и переводом
     * @param {Object} [options] - Опции рендера (шрифт, цвет, направление текста, эффекты и т.д.)
     * @returns {HTMLCanvasElement} - Canvas с наложенным переводом
     */
    static renderTranslationOverlay(image, bubbles, options = {}) {
        const canvas = document.createElement("canvas");
        canvas.width = image.width;
        canvas.height = image.height;
        const ctx = canvas.getContext("2d");
        // Рисуем оригинал
        ctx.drawImage(image, 0, 0, image.width, image.height);
        // Настройки
        const font = options.font || "bold 18px Segoe UI, Arial, sans-serif";
        let textColor = options.textColor || "#222";
        const bgColor = options.bgColor || "rgba(255,255,255,0.92)";
        const padding = options.padding || 6;
        const textDirection = options.textDirection || "horizontal"; // 'horizontal' or 'vertical'
        const textAlign = options.textAlign || "left"; // 'left', 'center', 'right'
        const textEffects = options.textEffects || {}; // { shadow: { offsetX, offsetY, blur, color }, outline: { width, color }, gradient: { colors, direction } }
        const animate = options.animate || false; // New option for animation

        ctx.textBaseline = "top";
        ctx.font = font;

        // Для каждого "облачка" — рисуем белый прямоугольник и перевод
        for (const bubble of bubbles) {
            const { x, y, width, height } = bubble.bbox;
            
            // Determine text color based on background
            const imageData = ctx.getImageData(x, y, width, height).data;
            let r = 0, g = 0, b = 0;
            for (let i = 0; i < imageData.length; i += 4) {
                r += imageData[i];
                g += imageData[i + 1];
                b += imageData[i + 2];
            }
            const pixelCount = imageData.length / 4;
            const avgR = r / pixelCount;
            const avgG = g / pixelCount;
            const avgB = b / pixelCount;
            const brightness = (avgR * 299 + avgG * 587 + avgB * 114) / 1000; // Perceived brightness

            textColor = brightness > 128 ? "#222" : "#EEE"; // Light background -> dark text, Dark background -> light text

            // Белый фон
            ctx.fillStyle = bgColor;
            ctx.fillRect(x, y, width, height);

            // Apply text effects
            if (textEffects.shadow) {
                ctx.shadowColor = textEffects.shadow.color || 'rgba(0, 0, 0, 0.5)';
                ctx.shadowBlur = textEffects.shadow.blur || 5;
                ctx.shadowOffsetX = textEffects.shadow.offsetX || 2;
                ctx.shadowOffsetY = textEffects.shadow.offsetY || 2;
            }

            if (textEffects.gradient) {
                const gradient = ctx.createLinearGradient(x, y, x + width, y + height);
                textEffects.gradient.colors.forEach((color, index) => {
                    gradient.addColorStop(index / (textEffects.gradient.colors.length - 1), color);
                });
                ctx.fillStyle = gradient;
            } else {
                ctx.fillStyle = textColor;
            }

            if (textEffects.outline) {
                ctx.strokeStyle = textEffects.outline.color || '#000';
                ctx.lineWidth = textEffects.outline.width || 1;
            }

            // Animation placeholder
            if (animate) {
                // In a real scenario, this would involve CSS transitions or JavaScript animations
                // For now, we'll just draw the text directly.
                // A more complex implementation would involve drawing to an offscreen canvas
                // and then animating that canvas onto the main one.
            }

            if (textDirection === "vertical") {
                const characters = bubble.translatedText.split("");
                let charX = x + padding;
                let charY = y + padding;
                for (const char of characters) {
                    if (charY + ctx.measureText(char).width > y + height - padding) {
                        charX += 22; 
                        charY = y + padding;
                    }
                    ctx.fillText(char, charX, charY);
                    if (textEffects.outline) ctx.strokeText(char, charX, charY);
                    charY += 22; 
                }
            } else {
                const lines = OverlayRenderer._wrapText(ctx, bubble.translatedText, width - 2 * padding);
                let lineY = y + padding;
                for (const line of lines) {
                    let textX = x + padding;
                    if (textAlign === "center") {
                        textX = x + width / 2;
                        ctx.textAlign = "center";
                    } else if (textAlign === "right") {
                        textX = x + width - padding;
                        ctx.textAlign = "right";
                    } else {
                        ctx.textAlign = "left";
                    }
                    ctx.fillText(line, textX, lineY);
                    if (textEffects.outline) ctx.strokeText(line, textX, lineY);
                    lineY += 22; 
                }
            }
            // Reset shadow for next bubble
            ctx.shadowColor = 'transparent';
            ctx.shadowBlur = 0;
            ctx.shadowOffsetX = 0;
            ctx.shadowOffsetY = 0;
        }
        return canvas;
    }

    // Вспомогательная функция для переноса текста по ширине
    static _wrapText(ctx, text, maxWidth) {
        const words = text.split(" ");
        const lines = [];
        let line = "";
        for (let n = 0; n < words.length; n++) {
            const testLine = line + words[n] + " ";
            const metrics = ctx.measureText(testLine);
            if (metrics.width > maxWidth && n > 0) {
                lines.push(line.trim());
                line = words[n] + " ";
            } else {
                line = testLine;
            }
        }
        lines.push(line.trim());
        return lines;
    }
}

module.exports = OverlayRenderer; 

