// --- Начало механизма коллбэков для асинхронного взаимодействия с нативным кодом ---
window.mrComicPluginCallbacks = {};
let nextCallbackId = 1;

function generateCallbackId() {
    const callbackId = 'cb_' + (nextCallbackId++);
    console.log(`Generated callbackId: ${callbackId}`);
    return callbackId;
}

// Функция, которую будет вызывать нативный код (AndroidPluginBridge)
window.mrComicResolvePluginCallback = function(callbackId, success, resultJsonString) {
    console.log(`JS: mrComicResolvePluginCallback called with id: ${callbackId}, success: ${success}`);
    const promiseControls = window.mrComicPluginCallbacks[callbackId];
    if (promiseControls) {
        try {
            const result = JSON.parse(resultJsonString);
            console.log(`JS: Parsed result for ${callbackId}:`, result);
            if (success) {
                promiseControls.resolve(result);
            } else {
                // result здесь может быть объектом ошибки { code, message } или просто сообщением
                promiseControls.reject(result);
            }
        } catch (e) {
            console.error(`JS: Error parsing result JSON for callbackId ${callbackId}: ${resultJsonString}`, e);
            promiseControls.reject({ code: "json_parse_error", message: "Failed to parse native result: " + e.message, rawResult: resultJsonString });
        }
        delete window.mrComicPluginCallbacks[callbackId]; // Очищаем после вызова
    } else {
        console.error("JS: Callback not found for id: " + callbackId);
    }
};
// --- Конец механизма коллбэков ---

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

    // --- Тестирование Settings API ---
    const settingsKey = "testSettingKey";
    const settingsDefaultValue = { message: "Hello from default settings!", count: 0 };
    let currentPluginId = "test-js-plugin"; // Должен совпадать с ID плагина

    // Создаем мок PluginContext для теста (в реальном плагине он будет предоставлен)
    // Функции generateCallbackId и mrComicPluginCallbacks уже должны быть глобально доступны
    const mockPermissionManager = {
        hasPermission: (pluginId, permission) => {
            console.log(`JS: MockPermissionManager check for ${pluginId} -> ${permission}`);
            return true; // Для теста всегда даем разрешение
        }
    };

    // Упрощенная версия PluginContext для теста, только с settings и fs
    // Предполагаем, что PluginContext.js уже загружен или его релевантные части есть
    // Если PluginContext.js не доступен глобально, то его нужно будет как-то подключить
    // или скопировать сюда нужную логику.
    // Для простоты, я воссоздам логику вызова для settings и fs здесь.

    const mockPluginContext = {
        _pluginId: currentPluginId,
        _permissionManager: mockPermissionManager,
        _checkPermission: function(permission) {
            if (!this._permissionManager.hasPermission(this._pluginId, permission)) {
                throw new Error(`Permission '${permission}' is required.`);
            }
        },
        log: { // Используем уже проверенный logMessage
            info: (msg) => window.MrComicNativeHost.logMessage(currentPluginId, "INFO", msg),
            error: (msg) => window.MrComicNativeHost.logMessage(currentPluginId, "ERROR", msg),
            debug: (msg) => window.MrComicNativeHost.logMessage(currentPluginId, "DEBUG", msg),
        },
        settings: {
            get: function(key, defaultValue) {
                mockPluginContext._checkPermission('read_settings');
                if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsGet !== 'function') {
                    return Promise.reject({ code: "native_bridge_error", message: "Native settingsGet not found." });
                }
                return new Promise((resolve, reject) => {
                    const callbackId = generateCallbackId();
                    window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
                    try {
                        window.MrComicNativeHost.settingsGet(mockPluginContext._pluginId, key, JSON.stringify(defaultValue), callbackId);
                    } catch (e) { delete window.mrComicPluginCallbacks[callbackId]; reject(e); }
                });
            },
            set: function(key, value) {
                mockPluginContext._checkPermission('write_settings');
                 if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsSet !== 'function') {
                    return Promise.reject({ code: "native_bridge_error", message: "Native settingsSet not found." });
                }
                return new Promise((resolve, reject) => {
                    const callbackId = generateCallbackId();
                    window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
                    try {
                        window.MrComicNativeHost.settingsSet(mockPluginContext._pluginId, key, JSON.stringify(value), callbackId);
                    } catch (e) { delete window.mrComicPluginCallbacks[callbackId]; reject(e); }
                });
            },
            remove: function(key) {
                 mockPluginContext._checkPermission('write_settings');
                 if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsRemove !== 'function') {
                    return Promise.reject({ code: "native_bridge_error", message: "Native settingsRemove not found." });
                }
                return new Promise((resolve, reject) => {
                    const callbackId = generateCallbackId();
                    window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
                    try {
                        window.MrComicNativeHost.settingsRemove(mockPluginContext._pluginId, key, callbackId);
                    } catch (e) { delete window.mrComicPluginCallbacks[callbackId]; reject(e); }
                });
            }
        },
        fs: { // Базовое тестирование fs
            writeFile: function(path, data) {
                mockPluginContext._checkPermission('write_file');
                if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.fsWriteFile !== 'function') {
                    return Promise.reject({ code: "native_bridge_error", message: "Native fsWriteFile not found." });
                }
                return new Promise((resolve, reject) => {
                    const callbackId = generateCallbackId();
                    window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
                    try {
                        let dataString = typeof data === 'string' ? data : JSON.stringify(data);
                        let encoding = "utf8";
                        // Для ArrayBuffer или Blob нужна будет base64 конвертация, здесь упрощенно
                        window.MrComicNativeHost.fsWriteFile(mockPluginContext._pluginId, path, dataString, encoding, callbackId);
                    } catch (e) { delete window.mrComicPluginCallbacks[callbackId]; reject(e); }
                });
            },
            readFile: function(path) {
                mockPluginContext._checkPermission('read_file');
                 if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.fsReadFile !== 'function') {
                    return Promise.reject({ code: "native_bridge_error", message: "Native fsReadFile not found." });
                }
                return new Promise((resolve, reject) => {
                    const callbackId = generateCallbackId();
                    window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
                    try {
                        window.MrComicNativeHost.fsReadFile(mockPluginContext._pluginId, path, callbackId);
                    } catch (e) { delete window.mrComicPluginCallbacks[callbackId]; reject(e); }
                });
            }
        }
    };

    async function testSettingsAndFs() {
        if (!messageElement) return;
        messageElement.textContent += "\n\n--- Testing Settings & FS API ---\n";

        try {
            // Settings Get (с дефолтным значением)
            messageElement.textContent += "Attempting settings.get('nonExistentKey')...\n";
            mockPluginContext.log.info("JS: Attempting settings.get('nonExistentKey')");
            let setting = await mockPluginContext.settings.get('nonExistentKey', settingsDefaultValue);
            messageElement.textContent += `settings.get result for nonExistentKey: ${JSON.stringify(setting)}\n`;
            mockPluginContext.log.info(`JS: settings.get result for nonExistentKey: ${JSON.stringify(setting)}`);

            // Settings Set
            const newValue = { message: "Hello from JS Plugin!", count: (setting.value.count || 0) + 1, timestamp: Date.now() };
            messageElement.textContent += `Attempting settings.set('${settingsKey}', ${JSON.stringify(newValue)})...\n`;
            mockPluginContext.log.info(`JS: Attempting settings.set('${settingsKey}', ${JSON.stringify(newValue)})`);
            await mockPluginContext.settings.set(settingsKey, newValue);
            messageElement.textContent += `settings.set('${settingsKey}') called.\n`;
            mockPluginContext.log.info(`JS: settings.set('${settingsKey}') called.`);

            // Settings Get (после set)
            messageElement.textContent += `Attempting settings.get('${settingsKey}')...\n`;
            mockPluginContext.log.info(`JS: Attempting settings.get('${settingsKey}')`);
            setting = await mockPluginContext.settings.get(settingsKey, null);
            messageElement.textContent += `settings.get result for ${settingsKey}: ${JSON.stringify(setting)}\n`;
            mockPluginContext.log.info(`JS: settings.get result for ${settingsKey}: ${JSON.stringify(setting)}`);

            // FS Write File
            const testFilePath = "testFile.txt";
            const fileContent = `Hello from plugin ${currentPluginId} at ${new Date().toISOString()}`;
            messageElement.textContent += `Attempting fs.writeFile('${testFilePath}')...\n`;
            mockPluginContext.log.info(`JS: Attempting fs.writeFile('${testFilePath}') with content: ${fileContent}`);
            await mockPluginContext.fs.writeFile(testFilePath, fileContent);
            messageElement.textContent += `fs.writeFile('${testFilePath}') called.\n`;
            mockPluginContext.log.info(`JS: fs.writeFile('${testFilePath}') called.`);

            // FS Read File
            messageElement.textContent += `Attempting fs.readFile('${testFilePath}')...\n`;
            mockPluginContext.log.info(`JS: Attempting fs.readFile('${testFilePath}')`);
            const readFileResult = await mockPluginContext.fs.readFile(testFilePath);
            messageElement.textContent += `fs.readFile result: ${JSON.stringify(readFileResult)}\n`;
            mockPluginContext.log.info(`JS: fs.readFile result: ${JSON.stringify(readFileResult)}`);
            if (readFileResult && readFileResult.value && readFileResult.value.data === fileContent) {
                 messageElement.textContent += "File content matches! FS test successful.\n";
                 mockPluginContext.log.info("JS: File content matches! FS test successful.");
            } else {
                 messageElement.textContent += "File content MISMATCH or error! FS test failed.\n";
                 mockPluginContext.log.error("JS: File content MISMATCH or error! FS test failed.");
            }

        } catch (error) {
            messageElement.textContent += `Error during Settings/FS test: ${JSON.stringify(error)}\n`;
            mockPluginContext.log.error(`JS: Error during Settings/FS test: ${JSON.stringify(error)}`);
        }
    }

    // Запускаем тесты после небольшой задержки, чтобы убедиться, что MrComicNativeHost мог инициализироваться
    setTimeout(testSettingsAndFs, 1000);

    async function testImageApi() {
        if (!messageElement) return;
        messageElement.textContent += "\n\n--- Testing Image API ---\n";
        mockPluginContext.log.info("JS: Attempting image.getImage('testImage123')");
        try {
            const imageDetails = await mockPluginContext.image.getImage("testImage123");
            messageElement.textContent += `image.getImage result: ${JSON.stringify(imageDetails)}\n`;
            mockPluginContext.log.info(`JS: image.getImage result: ${JSON.stringify(imageDetails)}`);
            if (imageDetails && imageDetails.value && imageDetails.value.id === "testImage123") {
                 messageElement.textContent += "Image API test successful (mocked data).\n";
                 mockPluginContext.log.info("JS: Image API test successful (mocked data).");
            } else {
                messageElement.textContent += "Image API test structure mismatch.\n";
                mockPluginContext.log.error("JS: Image API test structure mismatch.");
            }
        } catch (error) {
            messageElement.textContent += `Error during Image API test: ${JSON.stringify(error)}\n`;
            mockPluginContext.log.error(`JS: Error during Image API test: ${JSON.stringify(error)}`);
        }
    }
    // Запускаем тест Image API также с задержкой
    setTimeout(testImageApi, 1500);

});
