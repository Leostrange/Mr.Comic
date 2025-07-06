console.log("Test JS Plugin: script.js loaded and executed!");

document.addEventListener('DOMContentLoaded', () => {
    const messageElement = document.getElementById('message');
    if (messageElement) {
        messageElement.textContent = "JavaScript from script.js has also run successfully!";
    }

    // Попытка вызвать тестовый метод из MrComicNativeHost, если он будет добавлен
    if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
        window.MrComicNativeHost.logMessage("test-js-plugin", "INFO", "Hello from Test JS Plugin to Android Native Log!");
        if (messageElement) {
            messageElement.textContent += " Called MrComicNativeHost.logMessage.";
        }
    } else {
        console.log("Test JS Plugin: MrComicNativeHost or logMessage not found.");
        if (messageElement) {
            messageElement.textContent += " MrComicNativeHost not found yet.";
        }
    }
});
