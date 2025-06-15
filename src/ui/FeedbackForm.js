/**
 * FeedbackForm.js
 * Форма обратной связи для пользователя.
 */

class FeedbackForm {
    /**
     * @param {Object} options
     * @param {HTMLElement} options.container - DOM-элемент для рендера формы
     * @param {Object} [options.logger] - Логгер
     */
    constructor(options) {
        this.container = options.container;
        this.logger = options.logger || console;
    }

    /**
     * Инициализация и рендер формы обратной связи.
     */
    init() {
        if (!this.container) return;
        this.container.innerHTML = \`
            <h3>Форма обратной связи</h3>
            <p>Пожалуйста, опишите вашу проблему или предложение:</p>
            <textarea id=\"feedbackText\" rows=\"5\" style=\"width:100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;\"></textarea>
            <button id=\"submitFeedback\" style=\"padding: 10px 15px; background-color: #0078d7; color: white; border: none; border-radius: 4px; cursor: pointer;\">Отправить</button>
        \`;

        document.getElementById(\"submitFeedback\").addEventListener(\"click\", () => this.submitFeedback());
    }

    /**
     * Отправка обратной связи.
     */
    submitFeedback() {
        const feedbackText = document.getElementById(\"feedbackText\").value;
        if (feedbackText.trim() === \"\") {
            alert(\"Пожалуйста, введите текст обратной связи.\");
            return;
        }
        this.logger.log(\"Отправлена обратная связь:\", feedbackText);
        alert(\"Спасибо за ваш отзыв!\");
        // В реальном приложении здесь будет логика отправки данных на сервер или сохранения в файл.
        document.getElementById(\"feedbackText\").value = \"\"; // Очищаем поле
    }
}

module.exports = FeedbackForm;


