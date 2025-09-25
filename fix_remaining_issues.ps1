# Simple PowerShell script to fix remaining issues in MrComic

Write-Host "🔧 Исправление оставшихся ошибок проекта MrComic..."

# Create missing consumer-rules.pro files
Write-Host "📝 Создание отсутствующих consumer-rules.pro файлов..."

$modules = @("core-analytics", "feature-themes", "core-domain")

foreach ($module in $modules) {
    $filePath = "android\$module\consumer-rules.pro"
    if (-not (Test-Path $filePath)) {
        "# Consumer ProGuard rules for $module" > $filePath
        "# Add module-specific ProGuard rules here" >> $filePath
        Write-Host "✅ Создан $filePath"
    }
}

Write-Host "🎉 Исправление завершено!"
Write-Host ""
Write-Host "📋 Следующие шаги:"
Write-Host "1. Запустите: ./gradlew clean"
Write-Host "2. Запустите: ./gradlew build"