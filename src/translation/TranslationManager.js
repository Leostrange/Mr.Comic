// TranslationManager.js
// Модуль для перевода текста из "облачков" через выбранный API

/**
 * === Расширение через плагины ===
 *
 * Для подключения стороннего движка перевода:
 * 1. Передайте объект plugins в конструктор TranslationManager, где ключ — id провайдера, а значение — функция перевода.
 * 2. Функция должна быть async и принимать (text, manager), возвращать строку-перевод.
 *
 * Пример:
 *
 * const myPlugin = async (text, manager) => {
 *   // Любая логика, например, вызов своего API
 *   const resp = await fetch("https://my-api/translate", {
 *     method: "POST",
 *     headers: { "Authorization": "Bearer ..." },
 *     body: JSON.stringify({ text, from: manager.sourceLang, to: manager.targetLang })
 *   });
 *   const data = await resp.json();
 *   return data.result;
 * };
 *
 * const tm = new TranslationManager({
 *   provider: "myplugin",
 *   plugins: { myplugin: myPlugin },
 *   ...другие параметры...
 * });
 *
 * Теперь tm.translateText("Hello!") вызовет ваш движок.
 *
 * === Интеграция с Viewer ===
 *
 * Для быстрого перевода текста в Viewer:
 * 1. Создайте экземпляр TranslationManager с нужными параметрами.
 * 2. Вызовите translateText или translateBubbles для перевода текста или массива "облачков".
 * 3. Вставьте результат в интерфейс (например, замените текст в bubble или отобразите поверх).
 *
 * Пример:
 *
 * const tm = new TranslationManager({ provider: "google", targetLang: "ru" });
 * const translated = await tm.translateText("Hello world!");
 * // Вставить translated в Viewer
 */

class TranslationManager {
    /**
     * @param {Object} options
     * @param {string} options.provider - Провайдер перевода ("google", "deepl", ...)
     * @param {string} options.apiKey - API-ключ (если требуется)
     * @param {string} options.targetLang - Язык перевода (например, "ru")
     * @param {string} options.sourceLang - Исходный язык (например, "en")
     * @param {Object} options.logger - Логгер (опционально)
     */
    constructor(options = {}) {
        this.provider = options.provider || "google";
        this.apiKey = options.apiKey || "";
        this.targetLang = options.targetLang || "ru";
        this.sourceLang = options.sourceLang || "auto";
        this.logger = options.logger || console;
        this.plugins = options.plugins || {};
        this.ruleFilters = options.ruleFilters || {}; // For Day 33
        this.postCorrectionData = options.postCorrectionData || {}; // For Day 34
    }

    /**
     * Переводит массив текстов через выбранный API
     * @param {Array<{bbox: Object, text: string}>} bubbles
     * @returns {Promise<Array<{bbox: Object, text: string, translatedText: string}>>}
     */
    async translateBubbles(bubbles) {
        if (!bubbles.length) return [];
        const results = [];
        for (const bubble of bubbles) {
            let translatedText = await this.translateText(bubble.text);
            translatedText = this._applyRuleFilters(translatedText, this.targetLang); // Day 33
            translatedText = this._applyPostCorrection(translatedText); // Day 34
            results.push({ ...bubble, translatedText });
        }
        return results;
    }

    /**
     * Переводит один текст через выбранный API
     * @param {string} text
     * @returns {Promise<string>}
     */
    async translateText(text) {
        switch (this.provider) {
            case "google":
                const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${this.sourceLang}&tl=${this.targetLang}&dt=t&q=${encodeURIComponent(text)}`;
                try {
                    const resp = await fetch(url);
                    const data = await resp.json();
                    return data[0]?.map(item => item[0]).join(" ");
                } catch (e) {
                    this.logger.error("Ошибка перевода Google:", e);
                    return "";
                }
            case "deepl":
                try {
                    const resp = await fetch("https://api-free.deepl.com/v2/translate", {
                        method: "POST",
                        headers: {
                            "Content-Type": "application/x-www-form-urlencoded",
                            "Authorization": `DeepL-Auth-Key ${this.apiKey}`
                        },
                        body: `text=${encodeURIComponent(text)}&target_lang=${this.targetLang.toUpperCase()}&source_lang=${this.sourceLang.toUpperCase()}`
                    });
                    const data = await resp.json();
                    return data.translations?.[0]?.text || "";
                } catch (e) {
                    this.logger.error("Ошибка перевода DeepL:", e);
                    return "";
                }
            case "yandex":
                try {
                    const resp = await fetch(`https://translate.yandex.net/api/v1.5/tr.json/translate?key=${this.apiKey}&text=${encodeURIComponent(text)}&lang=${this.sourceLang}-${this.targetLang}`);
                    const data = await resp.json();
                    return data.text?.[0] || "";
                } catch (e) {
                    this.logger.error("Ошибка перевода Яндекс:", e);
                    return "";
                }
            case "microsoft":
            case "azure":
                try {
                    const resp = await fetch(`${this.endpoint || "https://api.cognitive.microsofttranslator.com/translate?api-version=3.0"}&from=${this.sourceLang}&to=${this.targetLang}`, {
                        method: "POST",
                        headers: {
                            "Ocp-Apim-Subscription-Key": this.apiKey,
                            "Ocp-Apim-Subscription-Region": this.region || "global",
                            "Content-Type": "application/json"
                        },
                        body: JSON.stringify([{ Text: text }])
                    });
                    const data = await resp.json();
                    return data[0]?.translations?.[0]?.text || "";
                } catch (e) {
                    this.logger.error("Ошибка перевода Microsoft/Azure:", e);
                    return "";
                }
            case "mangaocr":
                try {
                    const resp = await fetch(this.apiUrl, {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify({ text, lang: this.sourceLang, target: this.targetLang })
                    });
                    const data = await resp.json();
                    return data.result || "";
                } catch (e) {
                    this.logger.error("Ошибка MangaOCR:", e);
                    return "";
                }
            default:
                if (this.plugins && typeof this.plugins[this.provider] === "function") {
                    try {
                        return await this.plugins[this.provider](text, this);
                    } catch (e) {
                        this.logger.error("Ошибка плагина перевода:", e);
                        return "";
                    }
                }
                this.logger.error("Неизвестный провайдер перевода:", this.provider);
                return "";
        }
    }

    // Day 33: Rule-based filters for stylization
    _applyRuleFilters(text, languageCode) {
        let filteredText = text;
        // Example: Replace common contractions for a more formal style in English
        if (languageCode === "en") {
            filteredText = filteredText.replace(/don't/gi, "do not");
            filteredText = filteredText.replace(/can't/gi, "cannot");
        }
        // Add more rules based on language and desired style
        // This could be loaded from a configuration or a separate file
        return filteredText;
    }

    // Day 34: Post-correction using post.json and symbol mapping
    _applyPostCorrection(text) {
        let correctedText = text;
        // Apply corrections from post.json
        for (const key in this.postCorrectionData) {
            const regex = new RegExp(key, "gi");
            correctedText = correctedText.replace(regex, this.postCorrectionData[key]);
        }
        // Automatic symbol and dash mapping (example)
        correctedText = correctedText.replace(/--/g, "—"); // Double hyphen to em-dash
        correctedText = correctedText.replace(/\.\.\./g, "…"); // Three dots to ellipsis
        return correctedText;
    }
}

module.exports = TranslationManager; 

