# Mr.Comic - React Native

Мобильное приложение для чтения комиксов в форматах CBZ, CBR и PDF, созданное с использованием React Native.

## Возможности

- 📚 Поддержка форматов CBZ, CBR, PDF
- 🎨 Современный и интуитивный интерфейс
- 🔍 Поиск по названию и автору
- ⭐ Избранные комиксы
- 📖 Два режима чтения: страница и вебтун
- 📊 Отслеживание прогресса чтения
- 🎯 Жесты для навигации по страницам
- 🌙 Темная тема
- 💾 Локальное хранение данных

## Технологии

- **React Native** 0.72.6
- **TypeScript** для типизации
- **React Navigation** для навигации
- **React Native Reanimated** для анимаций
- **React Native Gesture Handler** для жестов
- **React Native Fast Image** для оптимизированной загрузки изображений
- **React Native FS** для работы с файловой системой
- **React Native Document Picker** для выбора файлов

## Установка

### Предварительные требования

- Node.js >= 16
- React Native CLI
- Android Studio (для Android)
- Xcode (для iOS)

### Установка зависимостей

```bash
cd react-native-app
npm install
```

### iOS (только macOS)

```bash
cd ios
pod install
cd ..
```

## Запуск

### Android

```bash
npm run android
```

### iOS

```bash
npm run ios
```

### Metro Bundler

```bash
npm start
```

## Структура проекта

```
src/
├── components/          # Переиспользуемые компоненты
│   └── ComicCard.tsx   # Карточка комикса
├── screens/            # Экраны приложения
│   ├── LibraryScreen.tsx
│   ├── ReaderScreen.tsx
│   ├── SettingsScreen.tsx
│   ├── SearchScreen.tsx
│   ├── FavoritesScreen.tsx
│   └── RecentScreen.tsx
├── navigation/         # Навигация
│   └── AppNavigator.tsx
├── services/          # Бизнес-логика
│   └── ComicService.ts
├── store/            # Управление состоянием
│   └── ComicContext.tsx
├── types/            # TypeScript типы
│   └── index.ts
└── utils/            # Утилиты
```

## Архитектура

### Состояние приложения

Используется React Context API с useReducer для управления состоянием:

- Список комиксов
- Текущий комикс
- Настройки чтения
- Режим выбора
- Состояние загрузки

### Навигация

- **Drawer Navigator** - основная навигация
- **Tab Navigator** - вкладки (Библиотека, Избранное, Недавние, Поиск)
- **Stack Navigator** - навигация между экранами

### Сервисы

- **ComicService** - работа с комиксами
- **FileService** - работа с файлами
- **StorageService** - локальное хранение

## Поддерживаемые форматы

### CBZ (Comic Book ZIP)
- ZIP архив с изображениями
- Поддержка вложенных папок
- Автоматическое извлечение обложек

### CBR (Comic Book RAR)
- RAR архив с изображениями
- Поддержка RAR5
- Извлечение страниц

### PDF
- Прямое чтение PDF файлов
- Масштабирование страниц
- Поддержка больших файлов

## Функции чтения

### Режимы чтения

1. **Страница** - классический режим с перелистыванием
2. **Вебтун** - вертикальная прокрутка для длинных страниц

### Навигация

- **Свайп влево/вправо** - перелистывание страниц
- **Двойной тап** - масштабирование
- **Кнопки навигации** - точное управление

### Прогресс

- Автоматическое сохранение позиции
- Отображение прогресса чтения
- Возможность закладок

## Разработка

### Добавление новых экранов

1. Создайте компонент в `src/screens/`
2. Добавьте навигацию в `AppNavigator.tsx`
3. Обновите типы в `src/types/index.ts`

### Добавление новых функций

1. Создайте сервис в `src/services/`
2. Обновите контекст в `src/store/ComicContext.tsx`
3. Добавьте UI компоненты в `src/components/`

### Стилизация

Используется StyleSheet API для создания стилей:

```typescript
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
});
```

## Сборка

### Android

```bash
npm run build:android
```

### iOS

```bash
npm run build:ios
```

## Тестирование

```bash
npm test
```

## Лицензия

MIT License

## Контакты

- GitHub: [Mr.Comic Repository](https://github.com/your-username/mrcomic-react-native)
- Issues: [GitHub Issues](https://github.com/your-username/mrcomic-react-native/issues)