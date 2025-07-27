/**
 * Тестовый скрипт для проверки интеграции компонентов с конвейером обработки
 */

// Импортируем необходимые модули
const EventEmitter = require('events');
const PipelineIntegrator = require('./PipelineIntegrator');
const PipelineIntegratorTest = require('./PipelineIntegratorTest');
const SettingsIntegration = require('../ui/SettingsIntegration');
const TextEditorIntegration = require('../ui/TextEditorIntegration');
const BatchProcessingIntegration = require('../ui/BatchProcessingIntegration');

// Создаем мок для UIConnector
class MockUIConnector {
  constructor(eventEmitter) {
    this.eventEmitter = eventEmitter;
    this.state = {
      isProcessing: false,
      currentJobId: null,
      currentBatchId: null,
      progress: 0,
      errors: [],
      results: new Map()
    };
  }

  async performTranslation(text, sourceLanguage, targetLanguage, options = {}) {
    console.log(`[MockUIConnector] Performing translation: ${text} from ${sourceLanguage} to ${targetLanguage}`);
    
    // Имитируем асинхронную операцию
    return new Promise((resolve) => {
      setTimeout(() => {
        const result = {
          translatedText: `Translated: ${text}`,
          sourceLanguage,
          targetLanguage,
          success: true
        };
        
        // Эмулируем событие завершения перевода для тестов
        if (this.eventEmitter) {
          this.eventEmitter.emit('ui:translation_completed', {
            result
          });
        }
        
        resolve(result);
      }, 100);
    });
  }

  async performBatchProcessing(images, options = {}) {
    console.log(`[MockUIConnector] Performing batch processing: ${images.length} images`);
    
    const batchId = options.batchId || 'mock_batch_id';
    
    // Имитируем асинхронную операцию
    return new Promise((resolve) => {
      // Эмулируем событие начала пакетной обработки
      if (this.eventEmitter) {
        this.eventEmitter.emit('ui:batch_started', {
          batchId,
          imageCount: images.length
        });
      }
      
      // Эмулируем события прогресса
      let processed = 0;
      const interval = setInterval(() => {
        processed++;
        
        if (this.eventEmitter && processed <= images.length) {
          this.eventEmitter.emit('ui:progress_update', {
            batchId,
            jobId: `job_${processed}`,
            progress: Math.floor((processed / images.length) * 100),
            processed,
            total: images.length
          });
        }
        
        if (processed >= images.length) {
          clearInterval(interval);
        }
      }, 50);
      
      setTimeout(() => {
        const result = {
          batchId,
          results: images.map((_, index) => ({
            success: true,
            index
          })),
          errors: null,
          success: true
        };
        
        // Эмулируем событие завершения пакетной обработки
        if (this.eventEmitter) {
          this.eventEmitter.emit('ui:batch_completed', {
            batchId,
            result
          });
        }
        
        resolve(result);
      }, 200);
    });
  }

  cancelProcessing() {
    console.log('[MockUIConnector] Cancelling processing');
    
    // Эмулируем событие отмены обработки
    if (this.eventEmitter) {
      this.eventEmitter.emit('ui:processing_cancelled', {
        jobId: this.state.currentJobId,
        batchId: this.state.currentBatchId
      });
    }
    
    return true;
  }

  getState() {
    return { ...this.state };
  }
}

// Создаем простой логгер
class SimpleLogger {
  info(message, data = {}) {
    console.log(`[INFO] ${message}`, data);
  }

  debug(message, data = {}) {
    console.log(`[DEBUG] ${message}`, data);
  }

  error(message, error) {
    console.error(`[ERROR] ${message}`, error);
  }

  warn(message, data = {}) {
    console.warn(`[WARN] ${message}`, data);
  }
}

// Функция для запуска тестов
async function runTests() {
  console.log('Starting integration tests...');
  
  // Создаем экземпляры необходимых компонентов
  const eventEmitter = new EventEmitter();
  // Увеличиваем лимит слушателей для предотвращения предупреждений
  eventEmitter.setMaxListeners(20);
  
  const logger = new SimpleLogger();
  const uiConnector = new MockUIConnector(eventEmitter);
  
  // Создаем экземпляры компонентов интеграции
  const settingsIntegration = new SettingsIntegration({
    eventEmitter,
    logger
  });
  
  const textEditorIntegration = new TextEditorIntegration({
    eventEmitter,
    logger
  });
  
  const batchProcessingIntegration = new BatchProcessingIntegration({
    eventEmitter,
    logger
  });
  
  // Создаем экземпляр интегратора
  const integrator = new PipelineIntegrator({
    uiConnector,
    settingsIntegration,
    textEditorIntegration,
    batchProcessingIntegration,
    eventEmitter,
    logger
  });
  
  // Создаем экземпляр тестера
  const tester = new PipelineIntegratorTest({
    integrator,
    uiConnector,
    eventEmitter,
    logger
  });
  
  try {
    // Эмулируем загрузку настроек для инициализации компонентов
    eventEmitter.emit('settings:loaded', {
      settings: {
        ocr: { engine: 'tesseract', language: 'en' },
        translation: { engine: 'google', sourceLanguage: 'auto', targetLanguage: 'ru' },
        interface: { fontFamily: 'Arial', fontSize: 14 },
        performance: { concurrency: 2, highQuality: true }
      }
    });
    
    // Запускаем все тесты
    const results = await tester.runAllTests();
    
    // Выводим результаты
    console.log('\n=== TEST RESULTS ===\n');
    
    // Результаты тестирования интеграции с экраном настроек
    console.log('Settings Integration Tests:');
    console.log(`Overall: ${results.settingsIntegration.success ? 'SUCCESS' : 'FAILURE'}`);
    results.settingsIntegration.details.forEach((detail, index) => {
      console.log(`  ${index + 1}. ${detail.test}: ${detail.success ? 'SUCCESS' : 'FAILURE'} - ${detail.message}`);
    });
    console.log();
    
    // Результаты тестирования интеграции с редактором текста
    console.log('Text Editor Integration Tests:');
    console.log(`Overall: ${results.textEditorIntegration.success ? 'SUCCESS' : 'FAILURE'}`);
    results.textEditorIntegration.details.forEach((detail, index) => {
      console.log(`  ${index + 1}. ${detail.test}: ${detail.success ? 'SUCCESS' : 'FAILURE'} - ${detail.message}`);
    });
    console.log();
    
    // Результаты тестирования интеграции с экраном пакетной обработки
    console.log('Batch Processing Integration Tests:');
    console.log(`Overall: ${results.batchProcessingIntegration.success ? 'SUCCESS' : 'FAILURE'}`);
    results.batchProcessingIntegration.details.forEach((detail, index) => {
      console.log(`  ${index + 1}. ${detail.test}: ${detail.success ? 'SUCCESS' : 'FAILURE'} - ${detail.message}`);
    });
    console.log();
    
    // Общий результат
    console.log(`All Tests: ${tester.isAllSuccess() ? 'SUCCESS' : 'FAILURE'}`);
    
    return tester.isAllSuccess();
  } catch (error) {
    console.error('Error running tests:', error);
    return false;
  }
}

// Запускаем тесты
runTests()
  .then((success) => {
    console.log(`\nTests ${success ? 'passed' : 'failed'}`);
    process.exit(success ? 0 : 1);
  })
  .catch((error) => {
    console.error('Fatal error:', error);
    process.exit(1);
  });
