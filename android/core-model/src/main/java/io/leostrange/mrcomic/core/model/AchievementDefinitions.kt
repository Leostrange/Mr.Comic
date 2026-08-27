package io.leostrange.mrcomic.core.model

/**
 * Определения всех достижений в системе
 */
object AchievementDefinitions {

    val allAchievements: List<Achievement> = listOf(
        // === READING достижения ===
        Achievement(
            id = "first_page",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.COMMON,
            title = "Первая страница",
            description = "Прочитайте первую страницу",
            xpReward = 10,
            requirement = AchievementRequirement.PagesRead(1)
        ),
        Achievement(
            id = "page_turner_100",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.COMMON,
            title = "Книжный червь",
            description = "Прочитайте 100 страниц",
            xpReward = 50,
            requirement = AchievementRequirement.PagesRead(100)
        ),
        Achievement(
            id = "page_turner_500",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.UNCOMMON,
            title = "Библиофил",
            description = "Прочитайте 500 страниц",
            xpReward = 100,
            requirement = AchievementRequirement.PagesRead(500)
        ),
        Achievement(
            id = "page_turner_1000",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.RARE,
            title = "Книголюб",
            description = "Прочитайте 1000 страниц",
            xpReward = 200,
            requirement = AchievementRequirement.PagesRead(1000)
        ),
        Achievement(
            id = "page_turner_5000",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.EPIC,
            title = "Мастер чтения",
            description = "Прочитайте 5000 страниц",
            xpReward = 500,
            requirement = AchievementRequirement.PagesRead(5000)
        ),
        Achievement(
            id = "page_turner_10000",
            category = AchievementCategory.READING,
            rarity = AchievementRarity.LEGENDARY,
            title = "Легенда чтения",
            description = "Прочитайте 10000 страниц",
            xpReward = 1000,
            requirement = AchievementRequirement.PagesRead(10000)
        ),

        // === COLLECTION достижения ===
        Achievement(
            id = "first_comic",
            category = AchievementCategory.COLLECTION,
            rarity = AchievementRarity.COMMON,
            title = "Первый тайтл",
            description = "Добавьте первый комикс в библиотеку",
            xpReward = 10,
            requirement = AchievementRequirement.TitlesCompleted(1)
        ),
        Achievement(
            id = "collector_5",
            category = AchievementCategory.COLLECTION,
            rarity = AchievementRarity.COMMON,
            title = "Коллекционер",
            description = "Завершите 5 тайтлов",
            xpReward = 50,
            requirement = AchievementRequirement.TitlesCompleted(5)
        ),
        Achievement(
            id = "collector_10",
            category = AchievementCategory.COLLECTION,
            rarity = AchievementRarity.UNCOMMON,
            title = "Библиотекарь",
            description = "Завершите 10 тайтлов",
            xpReward = 100,
            requirement = AchievementRequirement.TitlesCompleted(10)
        ),
        Achievement(
            id = "collector_25",
            category = AchievementCategory.COLLECTION,
            rarity = AchievementRarity.RARE,
            title = "Архивариус",
            description = "Завершите 25 тайтлов",
            xpReward = 200,
            requirement = AchievementRequirement.TitlesCompleted(25)
        ),
        Achievement(
            id = "collector_50",
            category = AchievementCategory.COLLECTION,
            rarity = AchievementRarity.EPIC,
            title = "Хранитель знаний",
            description = "Завершите 50 тайтлов",
            xpReward = 500,
            requirement = AchievementRequirement.TitlesCompleted(50)
        ),

        // === STREAK достижения ===
        Achievement(
            id = "streak_3",
            category = AchievementCategory.STREAK,
            rarity = AchievementRarity.COMMON,
            title = "Начало пути",
            description = "Читайте 3 дня подряд",
            xpReward = 30,
            requirement = AchievementRequirement.StreakDays(3)
        ),
        Achievement(
            id = "streak_7",
            category = AchievementCategory.STREAK,
            rarity = AchievementRarity.UNCOMMON,
            title = "Недельный ритм",
            description = "Читайте 7 дней подряд",
            xpReward = 70,
            requirement = AchievementRequirement.StreakDays(7)
        ),
        Achievement(
            id = "streak_14",
            category = AchievementCategory.STREAK,
            rarity = AchievementRarity.RARE,
            title = "Двухнедельный марафон",
            description = "Читайте 14 дней подряд",
            xpReward = 140,
            requirement = AchievementRequirement.StreakDays(14)
        ),
        Achievement(
            id = "streak_30",
            category = AchievementCategory.STREAK,
            rarity = AchievementRarity.EPIC,
            title = "Месяц чтения",
            description = "Читайте 30 дней подряд",
            xpReward = 300,
            requirement = AchievementRequirement.StreakDays(30)
        ),
        Achievement(
            id = "streak_100",
            category = AchievementCategory.STREAK,
            rarity = AchievementRarity.LEGENDARY,
            title = "Легенда постоянства",
            description = "Читайте 100 дней подряд",
            xpReward = 1000,
            requirement = AchievementRequirement.StreakDays(100)
        ),

        // === EXPLORATION достижения ===
        Achievement(
            id = "marathon_reader",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.UNCOMMON,
            title = "Марафонец",
            description = "Прочитайте 100 страниц за одну сессию",
            xpReward = 80,
            requirement = AchievementRequirement.SingleSessionPages(100)
        ),
        Achievement(
            id = "weekly_champion",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.RARE,
            title = "Чемпион недели",
            description = "Выполните недельную цель 4 раза",
            xpReward = 200,
            requirement = AchievementRequirement.WeeklyGoalCompleted(4)
        ),
        Achievement(
            id = "time_reader_60",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.UNCOMMON,
            title = "Час чтения",
            description = "Проведите 60 минут за чтением",
            xpReward = 60,
            requirement = AchievementRequirement.ReadingTimeMinutes(60)
        ),
        Achievement(
            id = "time_reader_300",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.RARE,
            title = "Пять часов",
            description = "Проведите 300 минут за чтением",
            xpReward = 150,
            requirement = AchievementRequirement.ReadingTimeMinutes(300)
        ),
        Achievement(
            id = "time_reader_1000",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.EPIC,
            title = "Тысяча минут",
            description = "Проведите 1000 минут за чтением",
            xpReward = 500,
            requirement = AchievementRequirement.ReadingTimeMinutes(1000)
        ),

        // === MILESTONE достижения ===
        Achievement(
            id = "mascot_teen",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.UNCOMMON,
            title = "Подросток",
            description = "Достигните стадии TEEN для маскота",
            xpReward = 100,
            requirement = AchievementRequirement.MascotStage(MascotStage.TEEN)
        ),
        Achievement(
            id = "mascot_young",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.RARE,
            title = "Юность",
            description = "Достигните стадии YOUNG для маскота",
            xpReward = 200,
            requirement = AchievementRequirement.MascotStage(MascotStage.YOUNG)
        ),
        Achievement(
            id = "mascot_adult",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.EPIC,
            title = "Взрослый",
            description = "Достигните стадии ADULT для маскота",
            xpReward = 500,
            requirement = AchievementRequirement.MascotStage(MascotStage.ADULT)
        ),
        Achievement(
            id = "xp_1000",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.UNCOMMON,
            title = "Тысяча XP",
            description = "Накопите 1000 XP",
            xpReward = 100,
            requirement = AchievementRequirement.TotalXp(1000)
        ),
        Achievement(
            id = "xp_5000",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.RARE,
            title = "Пять тысяч XP",
            description = "Накопите 5000 XP",
            xpReward = 300,
            requirement = AchievementRequirement.TotalXp(5000)
        ),
        Achievement(
            id = "xp_10000",
            category = AchievementCategory.MILESTONE,
            rarity = AchievementRarity.EPIC,
            title = "Десять тысяч XP",
            description = "Накопите 10000 XP",
            xpReward = 500,
            requirement = AchievementRequirement.TotalXp(10000)
        ),

        // === Секретные достижения ===
        Achievement(
            id = "secret_night_owl",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.RARE,
            title = "Сова",
            description = "Читайте после полуночи",
            xpReward = 100,
            requirement = AchievementRequirement.PagesRead(10),  // Упрощённое условие
            isSecret = true
        ),
        Achievement(
            id = "secret_early_bird",
            category = AchievementCategory.EXPLORATION,
            rarity = AchievementRarity.RARE,
            title = "Ранняя пташка",
            description = "Читайте до 6 утра",
            xpReward = 100,
            requirement = AchievementRequirement.PagesRead(10),  // Упрощённое условие
            isSecret = true
        )
    )

    /**
     * Получить достижение по ID
     */
    fun getById(id: String): Achievement? = allAchievements.find { it.id == id }

    /**
     * Получить достижения по категории
     */
    fun getByCategory(category: AchievementCategory): List<Achievement> =
        allAchievements.filter { it.category == category }

    /**
     * Получить достижения по редкости
     */
    fun getByRarity(rarity: AchievementRarity): List<Achievement> =
        allAchievements.filter { it.rarity == rarity }

    /**
     * Получить несекретные достижения
     */
    fun getVisible(): List<Achievement> =
        allAchievements.filter { !it.isSecret }

    /**
     * Получить секретные достижения
     */
    fun getSecret(): List<Achievement> =
        allAchievements.filter { it.isSecret }
}
