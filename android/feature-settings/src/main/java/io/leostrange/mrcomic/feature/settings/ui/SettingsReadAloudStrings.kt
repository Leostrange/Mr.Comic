package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import java.util.Locale

/**
 * Read-aloud / TTS localization strings for settings screens.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Pure functions mapping language/provider enums to UI strings.
 */

internal fun readAloudProviderTitle(language: String): String = when (language) {
    "en" -> "Provider"
    "ja" -> "プロバイダー"
    "zh" -> "提供者"
    "ko" -> "제공자"
    else -> "Провайдер"
}

internal fun readAloudProviderLabel(provider: String, language: String): String = when (ReaderTtsProviderType.fromStored(provider)) {
    ReaderTtsProviderType.SYSTEM -> when (language) {
        "ja" -> "System TTS"
        "zh" -> "系统 TTS"
        "ko" -> "시스템 TTS"
        "ru" -> "Системный TTS"
        else -> "System TTS"
    }
    ReaderTtsProviderType.OPENAI -> "OpenAI"
    ReaderTtsProviderType.AZURE -> "Azure"
    ReaderTtsProviderType.ALIYUN -> "Aliyun"
}

internal fun readAloudVoiceTitle(language: String): String = when (language) {
    "en" -> "Voice"
    "ja" -> "音声"
    "zh" -> "声音"
    "ko" -> "음성"
    else -> "Голос"
}

internal fun readAloudPlaybackTitle(language: String): String = when (language) {
    "en" -> "Playback speed"
    "ja" -> "再生速度"
    "zh" -> "播放速度"
    "ko" -> "재생 속도"
    else -> "Скорость воспроизведения"
}

internal fun readAloudPitchTitle(language: String): String = when (language) {
    "en" -> "Pitch"
    "ja" -> "ピッチ"
    "zh" -> "音高"
    "ko" -> "피치"
    else -> "Тон"
}

internal fun readAloudVolumeTitle(language: String): String = when (language) {
    "en" -> "Volume"
    "ja" -> "音量"
    "zh" -> "音量"
    "ko" -> "볼륨"
    else -> "Громкость"
}

internal fun readAloudSleepTimerTitle(language: String): String = when (language) {
    "en" -> "Sleep timer"
    "ja" -> "スリープタイマー"
    "zh" -> "睡眠定时"
    "ko" -> "슬립 타이머"
    else -> "Таймер сна"
}

internal fun readAloudVoiceSummaryLabel(voiceName: String?, language: String): String {
    if (!voiceName.isNullOrBlank()) return voiceName
    return when (language) {
        "en" -> "System default"
        "ja" -> "システム既定"
        "zh" -> "系统默认"
        "ko" -> "시스템 기본"
        else -> "Системный по умолчанию"
    }
}

internal fun readAloudPitchLabel(pitch: Float, language: String): String = when (language) {
    "en" -> "Pitch ${String.format(Locale.US, "%.2f", pitch)}"
    "ja" -> "ピッチ ${String.format(Locale.US, "%.2f", pitch)}"
    "zh" -> "音高 ${String.format(Locale.US, "%.2f", pitch)}"
    "ko" -> "피치 ${String.format(Locale.US, "%.2f", pitch)}"
    else -> "Тон ${String.format(Locale.US, "%.2f", pitch)}"
}

internal fun readAloudSleepTimerLabel(mode: String, language: String): String = when (ReaderTtsSleepTimerMode.fromStored(mode)) {
    ReaderTtsSleepTimerMode.OFF -> when (language) {
        "en" -> "Off"
        "ja" -> "オフ"
        "zh" -> "关闭"
        "ko" -> "끔"
        else -> "Выкл"
    }
    ReaderTtsSleepTimerMode.MINUTES_10 -> when (language) {
        "en" -> "10 min"
        "ja" -> "10分"
        "zh" -> "10 分钟"
        "ko" -> "10분"
        else -> "10 мин"
    }
    ReaderTtsSleepTimerMode.MINUTES_20 -> when (language) {
        "en" -> "20 min"
        "ja" -> "20分"
        "zh" -> "20 分钟"
        "ko" -> "20분"
        else -> "20 мин"
    }
    ReaderTtsSleepTimerMode.MINUTES_30 -> when (language) {
        "en" -> "30 min"
        "ja" -> "30分"
        "zh" -> "30 分钟"
        "ko" -> "30분"
        else -> "30 мин"
    }
    ReaderTtsSleepTimerMode.MINUTES_45 -> when (language) {
        "en" -> "45 min"
        "ja" -> "45分"
        "zh" -> "45 分钟"
        "ko" -> "45분"
        else -> "45 мин"
    }
    ReaderTtsSleepTimerMode.MINUTES_60 -> when (language) {
        "en" -> "60 min"
        "ja" -> "60分"
        "zh" -> "60 分钟"
        "ko" -> "60분"
        else -> "60 мин"
    }
}

internal fun readAloudProviderHint(language: String): String = when (language) {
    "en" -> "System TTS is active now. External voice providers will appear here later without replacing the current reader flow."
    "ja" -> "現在は System TTS が動作中です。外部の音声プロバイダーも、今の読書フローを壊さずここに追加します。"
    "zh" -> "当前启用的是系统 TTS。以后外部语音 provider 也会放在这里，不会打乱现有阅读流程。"
    "ko" -> "현재는 시스템 TTS를 사용합니다. 이후 외부 음성 provider도 현재 읽기 흐름을 깨지 않고 여기에 추가됩니다."
    else -> "Сейчас активен системный TTS. Внешние голосовые провайдеры позже появятся здесь и не будут ломать текущий сценарий чтения."
}

internal fun readAloudExternalVoicesHint(language: String): String = when (language) {
    "en" -> "External voices are not connected yet."
    "ja" -> "外部音声はまだ接続されていません。"
    "zh" -> "外部语音目前还没有接入。"
    "ko" -> "외부 음성은 아직 연결되지 않았습니다."
    else -> "Внешние голоса пока не подключены."
}

internal fun readAloudNotConnectedLabel(language: String): String = when (language) {
    "ja" -> "未接続"
    "zh" -> "未连接"
    "ko" -> "미연결"
    "ru" -> "Не подключён"
    else -> "Not connected"
}

internal fun readAloudPreviewTitle(language: String): String = when (language) {
    "en" -> "Voice preview"
    "ja" -> "音声プレビュー"
    "zh" -> "语音预览"
    "ko" -> "음성 미리듣기"
    else -> "Проба голоса"
}

internal fun readAloudPreviewHint(language: String): String = when (language) {
    "en" -> "Test the selected voice and playback defaults before opening a book."
    "ja" -> "本を開く前に、選んだ音声と再生設定をここで確認できます。"
    "zh" -> "在打开书之前，先试听当前语音和播放默认值。"
    "ko" -> "책을 열기 전에 현재 음성과 재생 기본값을 여기서 확인합니다."
    else -> "Здесь можно проверить выбранный голос и параметры воспроизведения до открытия книги."
}

internal fun readAloudPreviewPlayLabel(language: String): String = when (language) {
    "en" -> "Play sample"
    "ja" -> "サンプル再生"
    "zh" -> "播放示例"
    "ko" -> "샘플 재생"
    else -> "Прослушать пример"
}

internal fun readAloudPreviewStopLabel(language: String): String = when (language) {
    "en" -> "Stop"
    "ja" -> "停止"
    "zh" -> "停止"
    "ko" -> "중지"
    else -> "Остановить"
}

internal fun readAloudPreviewReadyLabel(ready: Boolean, language: String): String = if (ready) {
    when (language) {
        "ja" -> "システムTTSは準備完了"
        "zh" -> "系统 TTS 已就绪"
        "ko" -> "시스템 TTS 준비 완료"
        "ru" -> "Системный TTS готов"
        else -> "System TTS ready"
    }
} else {
    when (language) {
        "ja" -> "システムTTSは利用できません"
        "zh" -> "系统 TTS 不可用"
        "ko" -> "시스템 TTS 사용 불가"
        "ru" -> "Системный TTS недоступен"
        else -> "System TTS unavailable"
    }
}

internal fun readAloudPreviewSample(language: String): String = when (language) {
    "ja" -> "これは Mr.Comic の読み上げテストです。速度、ピッチ、音量をここで静かに確認できます。"
    "zh" -> "这是 Mr.Comic 的朗读测试。你可以在这里安静地检查语速、音高和音量。"
    "ko" -> "이것은 Mr.Comic 읽어주기 테스트입니다. 여기서 속도, 피치, 볼륨을 차분하게 확인할 수 있습니다."
    "ru" -> "Это тест озвучивания Mr.Comic. Здесь можно спокойно проверить скорость, тон и громкость перед чтением."
    else -> "This is the Mr.Comic read-aloud test. Use it to check voice, speed, pitch, and volume before reading."
}
