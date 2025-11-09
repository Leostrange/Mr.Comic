# Requirements Document - Critical Bugs

## Introduction

Критические баги после последних изменений:
1. Невозможно выйти в библиотеку (свайп назад не работает)
2. Верхняя панель настроек не работает
3. Режим Webtoon запускается по умолчанию вместо Pages

## Glossary

- **BackHandler**: Обработчик кнопки/жеста назад
- **TopSettingsPanel**: Верхняя панель с настройками
- **Reading Mode Auto-detect**: Автоопределение режима чтения

## Requirements

### Requirement 1: Выход в Библиотеку

**User Story:** Как пользователь, я хочу выйти из ридера свайпом назад, чтобы вернуться в библиотеку

#### Acceptance Criteria

1. WHEN пользователь делает свайп назад И панели закрыты, THE Reader System SHALL вызвать onNavigateBack
2. WHEN пользователь делает свайп назад И панели открыты, THE Reader System SHALL закрыть панели
3. THE Reader System SHALL NOT блокировать выход в библиотеку

### Requirement 2: Верхняя Панель Настроек

**User Story:** Как пользователь, я хочу изменять настройки через верхнюю панель, чтобы настроить чтение

#### Acceptance Criteria

1. WHEN пользователь открывает верхнюю панель, THE Reader System SHALL отображать все элементы управления
2. WHEN пользователь изменяет настройку, THE Reader System SHALL применить изменения
3. THE Reader System SHALL NOT блокировать взаимодействие с панелью

### Requirement 3: Режим Чтения по Умолчанию

**User Story:** Как пользователь, я хочу открывать комиксы в режиме Pages по умолчанию, если не указано иное

#### Acceptance Criteria

1. WHEN пользователь открывает комикс, THE Reader System SHALL использовать режим Pages по умолчанию
2. WHEN автоопределение включено, THE Reader System SHALL определить режим на основе контента
3. THE Reader System SHALL сохранять выбранный режим для каждого комикса
