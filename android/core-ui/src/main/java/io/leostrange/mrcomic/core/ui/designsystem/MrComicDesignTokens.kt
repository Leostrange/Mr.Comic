package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp

internal fun mrComicArgbColor(argb: Long): Color = Color(argb.toInt())

data class MrComicPalette(
    val primary: Color,
    val onPrimary: Color,
    val primaryContainer: Color,
    val onPrimaryContainer: Color,
    val secondary: Color,
    val onSecondary: Color,
    val secondaryContainer: Color,
    val onSecondaryContainer: Color,
    val tertiary: Color,
    val onTertiary: Color,
    val tertiaryContainer: Color,
    val onTertiaryContainer: Color,
    val background: Color,
    val onBackground: Color,
    val surface: Color,
    val onSurface: Color,
    val surfaceVariant: Color,
    val onSurfaceVariant: Color,
    val surfaceContainerLowest: Color,
    val surfaceContainerLow: Color,
    val surfaceContainer: Color,
    val surfaceContainerHigh: Color,
    val surfaceContainerHighest: Color,
    val outline: Color,
    val outlineVariant: Color,
    val error: Color,
    val onError: Color,
    val errorContainer: Color,
    val onErrorContainer: Color,
)

data class MrComicThemePresetToken(
    val primaryArgb: Long?,
    val secondaryArgb: Long?,
    val backgroundArgb: Long?,
)

data class MrComicReadingPresetToken(
    val textColorScheme: String,
    val fontFamily: String,
    val lineHeight: Float,
    val primaryArgb: Long,
    val secondaryArgb: Long,
    val backgroundArgb: Long,
)

object MrComicColorTokens {
    const val InkPaperPrimaryArgb = 0xFF26415FL
    const val InkPaperSecondaryArgb = 0xFF9A7241L
    const val InkPaperTertiaryArgb = 0xFF50684BL
    const val InkPaperBackgroundArgb = 0xFFF6F1E7L
    const val InkPaperSurfaceArgb = 0xFFFFFBF5L
    const val InkPaperSurfaceVariantArgb = 0xFFE7DED0L
    const val InkPaperSurfaceContainerLowestArgb = 0xFFF8F4ECL
    const val InkPaperSurfaceContainerLowArgb    = 0xFFF2EDE5L
    const val InkPaperSurfaceContainerArgb       = 0xFFECE6DEL
    const val InkPaperSurfaceContainerHighArgb   = 0xFFE6DFD7L
    const val InkPaperSurfaceContainerHighestArgb = 0xFFE0D9D0L
    const val InkPaperOutlineArgb = 0xFF7C756AL
    const val InkPaperCompletedArgb = 0xFF4CAF50L

    const val InkPaperDarkPrimaryArgb = 0xFFAEC8EFL
    const val InkPaperDarkSecondaryArgb = 0xFFE6C79BL
    const val InkPaperDarkBackgroundArgb = 0xFF10161DL
    const val InkPaperDarkSurfaceArgb = 0xFF151C24L
    const val InkPaperDarkSurfaceContainerLowestArgb = 0xFF0D1318L
    const val InkPaperDarkSurfaceContainerLowArgb    = 0xFF121920L
    const val InkPaperDarkSurfaceContainerArgb       = 0xFF171F27L
    const val InkPaperDarkSurfaceContainerHighArgb   = 0xFF1C252EL
    const val InkPaperDarkSurfaceContainerHighestArgb = 0xFF222D37L
    const val InkPaperDarkCompletedArgb = 0xFF81C784L

    val inkPaperLight = MrComicPalette(
        primary = mrComicArgbColor(InkPaperPrimaryArgb),
        onPrimary = Color(0xFFFFFBF5),
        primaryContainer = Color(0xFFDCE7F6),
        onPrimaryContainer = Color(0xFF10243D),
        secondary = mrComicArgbColor(InkPaperSecondaryArgb),
        onSecondary = Color(0xFFFFF8EF),
        secondaryContainer = Color(0xFFF2E3CC),
        onSecondaryContainer = Color(0xFF3A2710),
        tertiary = mrComicArgbColor(InkPaperTertiaryArgb),
        onTertiary = Color.White,
        tertiaryContainer = Color(0xFFD7E8CF),
        onTertiaryContainer = Color(0xFF10200D),
        background = mrComicArgbColor(InkPaperBackgroundArgb),
        onBackground = Color(0xFF1B1B18),
        surface = mrComicArgbColor(InkPaperSurfaceArgb),
        onSurface = Color(0xFF1B1B18),
        surfaceVariant = mrComicArgbColor(InkPaperSurfaceVariantArgb),
        onSurfaceVariant = Color(0xFF4C473F),
        surfaceContainerLowest = mrComicArgbColor(InkPaperSurfaceContainerLowestArgb),
        surfaceContainerLow    = mrComicArgbColor(InkPaperSurfaceContainerLowArgb),
        surfaceContainer       = mrComicArgbColor(InkPaperSurfaceContainerArgb),
        surfaceContainerHigh   = mrComicArgbColor(InkPaperSurfaceContainerHighArgb),
        surfaceContainerHighest = mrComicArgbColor(InkPaperSurfaceContainerHighestArgb),
        outline = mrComicArgbColor(InkPaperOutlineArgb),
        outlineVariant = Color(0xFFCBC3B8),
        error = Color(0xFFB3261E),
        onError = Color.White,
        errorContainer = Color(0xFFF9DEDC),
        onErrorContainer = Color(0xFF410E0B),
    )

    val inkPaperDark = MrComicPalette(
        primary = mrComicArgbColor(InkPaperDarkPrimaryArgb),
        onPrimary = Color(0xFF10243D),
        primaryContainer = Color(0xFF294567),
        onPrimaryContainer = Color(0xFFDCE7F6),
        secondary = mrComicArgbColor(InkPaperDarkSecondaryArgb),
        onSecondary = Color(0xFF463117),
        secondaryContainer = Color(0xFF5D4422),
        onSecondaryContainer = Color(0xFFF7E3CC),
        tertiary = Color(0xFFB7CFB1),
        onTertiary = Color(0xFF243421),
        tertiaryContainer = Color(0xFF384D34),
        onTertiaryContainer = Color(0xFFD7E8CF),
        background = mrComicArgbColor(InkPaperDarkBackgroundArgb),
        onBackground = Color(0xFFE8E1D4),
        surface = mrComicArgbColor(InkPaperDarkSurfaceArgb),
        onSurface = Color(0xFFE8E1D4),
        surfaceVariant = Color(0xFF3A444F),
        onSurfaceVariant = Color(0xFFC0C7CF),
        surfaceContainerLowest  = mrComicArgbColor(InkPaperDarkSurfaceContainerLowestArgb),
        surfaceContainerLow     = mrComicArgbColor(InkPaperDarkSurfaceContainerLowArgb),
        surfaceContainer        = mrComicArgbColor(InkPaperDarkSurfaceContainerArgb),
        surfaceContainerHigh    = mrComicArgbColor(InkPaperDarkSurfaceContainerHighArgb),
        surfaceContainerHighest = mrComicArgbColor(InkPaperDarkSurfaceContainerHighestArgb),
        outline = Color(0xFF89929B),
        outlineVariant = Color(0xFF414B55),
        error = Color(0xFFF2B8B5),
        onError = Color(0xFF601410),
        errorContainer = Color(0xFF8C1D18),
        onErrorContainer = Color(0xFFF9DEDC),
    )
}

object MrComicThemePresetTokens {
    val paper = MrComicThemePresetToken(
        primaryArgb = 0xFF5D4037L,
        secondaryArgb = 0xFF8D6E63L,
        backgroundArgb = 0xFFFFF8F0L,
    )
    val glass = MrComicThemePresetToken(
        primaryArgb = 0xFF6F94C9L,
        secondaryArgb = 0xFFC9D9F1L,
        backgroundArgb = 0xFFF2F7FDL,
    )
    val amoled = MrComicThemePresetToken(
        primaryArgb = MrComicColorTokens.InkPaperDarkPrimaryArgb,
        secondaryArgb = null,
        backgroundArgb = null,
    )
    val neon = MrComicThemePresetToken(
        primaryArgb = 0xFFE91E63L,
        secondaryArgb = 0xFF00BCD4L,
        backgroundArgb = 0xFF0D0D1AL,
    )
    val gray = MrComicThemePresetToken(
        primaryArgb = 0xFF455A64L,
        secondaryArgb = null,
        backgroundArgb = 0xFFF5F5F5L,
    )
    val sepia = MrComicThemePresetToken(
        primaryArgb = 0xFF8B6914L,
        secondaryArgb = 0xFFBC8B2AL,
        backgroundArgb = 0xFFF4ECD8L,
    )
    val eink = MrComicThemePresetToken(
        primaryArgb = 0xFF000000L,
        secondaryArgb = 0xFF333333L,
        backgroundArgb = 0xFFFFFFFFL,
    )
}

object MrComicReadingPresetTokens {
    val paper = MrComicReadingPresetToken(
        textColorScheme = "DAY",
        fontFamily = "Literata",
        lineHeight = 1.76f,
        primaryArgb = MrComicColorTokens.InkPaperPrimaryArgb,
        secondaryArgb = MrComicColorTokens.InkPaperSecondaryArgb,
        backgroundArgb = MrComicColorTokens.InkPaperBackgroundArgb,
    )
    val sepiaBook = MrComicReadingPresetToken(
        textColorScheme = "SEPIA",
        fontFamily = "Merriweather",
        lineHeight = 1.84f,
        primaryArgb = 0xFF7B5C34L,
        secondaryArgb = 0xFFB1844DL,
        backgroundArgb = 0xFFF4ECD8L,
    )
    val newspaper = MrComicReadingPresetToken(
        textColorScheme = "DAY",
        fontFamily = "Roboto Slab",
        lineHeight = 1.58f,
        primaryArgb = 0xFF2F3F4FL,
        secondaryArgb = 0xFF6A7684L,
        backgroundArgb = 0xFFF1EEE7L,
    )
    val nightInk = MrComicReadingPresetToken(
        textColorScheme = "NIGHT",
        fontFamily = "PT Serif",
        lineHeight = 1.70f,
        primaryArgb = MrComicColorTokens.InkPaperDarkPrimaryArgb,
        secondaryArgb = 0xFFD4B384L,
        backgroundArgb = MrComicColorTokens.InkPaperDarkBackgroundArgb,
    )
    val oledBlack = MrComicReadingPresetToken(
        textColorScheme = "NIGHT",
        fontFamily = "Open Sans",
        lineHeight = 1.68f,
        primaryArgb = 0xFFB8D3FFL,
        secondaryArgb = 0xFF7E8A99L,
        backgroundArgb = 0xFF000000L,
    )
    val eink = MrComicReadingPresetToken(
        textColorScheme = "DAY",
        fontFamily = "Merriweather",
        lineHeight = 1.90f,
        primaryArgb = 0xFF111111L,
        secondaryArgb = 0xFF555555L,
        backgroundArgb = 0xFFFFFFFFL,
    )
}

object MrComicSpacingTokens {
    val x1 = 4.dp
    val x2 = 8.dp
    val x3 = 12.dp
    val x4 = 16.dp
    val x5 = 20.dp
    val x6 = 24.dp
    val x8 = 32.dp
    val x10 = 40.dp
    val x12 = 48.dp
    val x16 = 64.dp
}

object MrComicRadiusTokens {
    const val DefaultCornerRadius = 12
    val DefaultCornerRadiusDp = DefaultCornerRadius.dp
    val xs = 4.dp
    val sm = 6.dp
    val md = 12.dp
    val lg = 16.dp
    val xl = 24.dp
    val pill = 50.dp
}

object MrComicTypographyTokens {
    // Retained legacy names
    val badge: TextUnit = 9.sp
    val compactLabel: TextUnit = 12.sp

    // Full design-system type scale (--text-xs .. --text-4xl)
    val xs:  TextUnit = 11.sp
    val sm:  TextUnit = 12.sp  // alias: compactLabel
    val base: TextUnit = 14.sp
    val md:  TextUnit = 16.sp
    val lg:  TextUnit = 18.sp
    val xl:  TextUnit = 22.sp
    val x2l: TextUnit = 28.sp
    val x3l: TextUnit = 34.sp
    val x4l: TextUnit = 44.sp  // library display title

    /** 32 sp — library title (JSX spec: fontSize 32 / fw-900) */
    val libraryTitle: TextUnit = 32.sp

    object LineHeight {
        const val tight    = 1.2f
        const val snug     = 1.4f
        const val normal   = 1.5f
        const val relaxed  = 1.7f
        const val reading  = 1.8f
        const val loose    = 1.9f
    }

    object LetterSpacing {
        val tight   = (-0.01).em
        val normal  = 0.em
        val wide    = 0.01.em
        val wider   = 0.02.em
        val display = (-0.02).em  // used by display/hero titles
    }
}

object MrComicElevationTokens {
    val cardMinimum = 1.dp
    val cardMaximum = 11.dp

    fun libraryCardElevation(shadow: Float): Dp =
        (cardMinimum.value + shadow.coerceIn(0f, 1f) * (cardMaximum.value - cardMinimum.value)).dp
}

object MrComicLibraryStyleTokens {
    const val BackgroundPaperGrain = "PAPER_GRAIN"
    const val BackgroundDarkStudy = "DARK_STUDY"
    const val BackgroundMangaInk = "MANGA_INK"
    const val BackgroundLightGreenhouse = "LIGHT_GREENHOUSE"
    const val BackgroundScienceLab = "SCIENCE_LAB"
    const val BackgroundCityLibrary = "CITY_LIBRARY"
    const val BackgroundLiquidGlass = "LIQUID_GLASS"
    const val BackgroundMidnightMica = "MIDNIGHT_MICA"
    const val BackgroundSunsetHaze = "SUNSET_HAZE"
    const val BackgroundCinemaNoir = "CINEMA_NOIR"
    const val BackgroundAuroraMist = "AURORA_MIST"
    const val BackgroundEInkWash = "EINK_WASH"

    const val ShelfOak = "OAK"
    const val ShelfWalnut = "WALNUT"
    const val ShelfMahogany = "MAHOGANY"
    const val ShelfCherry = "CHERRY"
    const val ShelfMaple = "MAPLE"
    const val ShelfSteel = "STEEL"
    const val ShelfAluminum = "ALUMINUM"
    const val ShelfBlackMetal = "BLACK_METAL"
    const val ShelfGlass = "GLASS"
    const val ShelfFrost = "FROST"
    const val ShelfFloat = "FLOAT"
    const val ShelfMinimal = "MINIMAL"
    const val ShelfNone = "NONE"
    const val ShelfNeon = "NEON"
    const val ShelfLacquer = "LACQUER"

    const val CoverPoster = "POSTER"
    const val CoverInk = "INK"
    const val CoverMinimal = "MINIMAL"
}

object MrComicLibraryColorTokens {
    val oakTop = Color(0xFFA7723C)
    val oakMiddle = Color(0xFF7B4A23)
    val oakBottom = Color(0xFF432412)
    val walnutTop = Color(0xFF71462A)
    val walnutMiddle = Color(0xFF4D2D1A)
    val walnutBottom = Color(0xFF26150D)
    val steelTop = Color(0xFFB5BEC8)
    val steelMiddle = Color(0xFF7A8793)
    val steelBottom = Color(0xFF48515A)
    val lacquerTop = Color(0xFF2B1B36)
    val neonGlow = Color(0xFF7AE7FF)
    val mahoganyTop = Color(0xFF8C3A21)
    val mahoganyMiddle = Color(0xFF5D2615)
    val mahoganyBottom = Color(0xFF3E1A0E)
    val cherryTop = Color(0xFF9E1B1B)
    val cherryMiddle = Color(0xFF6A1212)
    val cherryBottom = Color(0xFF460E0E)
    val mapleTop = Color(0xFFD4AF8C)
    val mapleMiddle = Color(0xFFB89470)
    val mapleBottom = Color(0xFF9C7A58)
    val aluminumTop = Color(0xFFD5DCE5)
    val aluminumMiddle = Color(0xFFA1ADB9)
    val aluminumBottom = Color(0xFF6E7782)
}
