package io.leostrange.mrcomic.core.model

/**
 * Типы еженедельных челленджей
 */
enum class WeeklyChallengeType {
    PAGES_READ,         // Прочитать определённое количество страниц
    TITLES_COMPLETED,   // Завершить определённое количество тайтлов
    STREAK_DAYS,        // Поддерживать серию дней
    READING_TIME,       // Провести определённое время за чтением
    DAILY_GOAL,         // Выполнить ежедневную цель несколько дней
    NEW_GENRE           // Прочитать тайтл нового жанра
}

/**
 * Статус еженедельного челленджа
 */
enum class WeeklyChallengeStatus {
    ACTIVE,             // Активный
    COMPLETED,          // Завершённый
    FAILED,             // Проваленный
    EXPIRED             // Истёкший
}

/**
 * Модель еженедельного челленджа
 */
data class WeeklyChallenge(
    val id: String,
    val type: WeeklyChallengeType,
    val title: String,
    val description: String,
    val target: Int,
    val xpReward: Int,
    val startDate: Long,
    val endDate: Long,
    val status: WeeklyChallengeStatus = WeeklyChallengeStatus.ACTIVE
)

/**
 * Прогресс еженедельного челленджа
 */
data class WeeklyChallengeProgress(
    val challengeId: String,
    val current: Int,
    val target: Int,
    val status: WeeklyChallengeStatus,
    val completedAt: Long? = null
) {
    val progress: Float
        get() = if (target == 0) 0f else (current.toFloat() / target).coerceIn(0f, 1f)

    val isCompleted: Boolean
        get() = status == WeeklyChallengeStatus.COMPLETED
}

/**
 * Определения еженедельных челленджей
 */
object WeeklyChallengeDefinitions {

    val challenges: List<WeeklyChallenge> = listOf(
        WeeklyChallenge(
            id = "weekly_pages_100",
            type = WeeklyChallengeType.PAGES_READ,
            title = "Стостраничный марафон",
            description = "Прочитайте 100 страниц за неделю",
            target = 100,
            xpReward = 100,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        ),
        WeeklyChallenge(
            id = "weekly_pages_300",
            type = WeeklyChallengeType.PAGES_READ,
            title = "Трёхсотстраничный вызов",
            description = "Прочитайте 300 страниц за неделю",
            target = 300,
            xpReward = 300,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        ),
        WeeklyChallenge(
            id = "weekly_titles_2",
            type = WeeklyChallengeType.TITLES_COMPLETED,
            title = "Двойной удар",
            description = "Завершите 2 тайтла за неделю",
            target = 2,
            xpReward = 150,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        ),
        WeeklyChallenge(
            id = "weekly_streak_5",
            type = WeeklyChallengeType.STREAK_DAYS,
            title = "Пятидневная серия",
            description = "Читайте 5 дней подряд",
            target = 5,
            xpReward = 120,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        ),
        WeeklyChallenge(
            id = "weekly_time_60",
            type = WeeklyChallengeType.READING_TIME,
            title = "Часовой марафон",
            description = "Проведите 60 минут за чтением",
            target = 60,
            xpReward = 80,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        ),
        WeeklyChallenge(
            id = "weekly_daily_5",
            type = WeeklyChallengeType.DAILY_GOAL,
            title = "Пятидневная цель",
            description = "Выполните ежедневную цель 5 дней",
            target = 5,
            xpReward = 200,
            startDate = System.currentTimeMillis(),
            endDate = System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000
        )
    )

    /**
     * Получить челлендж по ID
     */
    fun getById(id: String): WeeklyChallenge? = challenges.find { it.id == id }

    /**
     * Получить активные челленджи
     */
    fun getActive(): List<WeeklyChallenge> = challenges.filter {
        it.status == WeeklyChallengeStatus.ACTIVE
    }
}
