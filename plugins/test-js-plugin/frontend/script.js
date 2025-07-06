console.log("Test JS Plugin: script.js loaded and executed!");

document.addEventListener('DOMContentLoaded', () => {
    const messageElement = document.getElementById('message');
    if (messageElement) {
        messageElement.textContent = "JavaScript from script.js has also run successfully!";
    }

    const pluginId = "test-js-plugin"; // ID этого плагина

    // Попытка вызвать logMessage
    if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
        const logMsg = "Test JS Plugin: logMessage via MrComicNativeHost SUCCESS!";
        console.log(logMsg); // Лог в JS консоль WebView
        window.MrComicNativeHost.logMessage(pluginId, "INFO", logMsg);
        if (messageElement) {
            messageElement.textContent += " Called MrComicNativeHost.logMessage. Check Android Logcat.";
        }
    } else {
        const errorMsg = "Test JS Plugin: MrComicNativeHost or logMessage not found.";
        console.error(errorMsg);
        if (messageElement) {
            messageElement.textContent += " " + errorMsg;
        }
    }

    // Попытка вызвать showToast
    if (window.MrComicNativeHost && typeof window.MrComicNativeHost.showToast === 'function') {
        const toastMsg = "Toast from JS Plugin!";
        console.log("Test JS Plugin: Attempting to show Toast: " + toastMsg);
        // Передаем pluginId, сообщение и длительность (0 для Toast.LENGTH_SHORT, 1 для Toast.LENGTH_LONG)
        window.MrComicNativeHost.showToast(pluginId, toastMsg, 1); // 1 for Toast.LENGTH_LONG
        if (messageElement) {
            messageElement.textContent += " Called MrComicNativeHost.showToast. Check Android screen for Toast.";
        }
    } else {
        const errorMsg = "Test JS Plugin: MrComicNativeHost or showToast not found.";
        console.error(errorMsg);
        if (messageElement) {
            messageElement.textContent += " " + errorMsg;
        }
    }
});
