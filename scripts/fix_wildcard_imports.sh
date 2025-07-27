#!/bin/bash

# Script to fix wildcard imports in Mr.Comic project
# This will replace common wildcard imports with explicit ones

echo "🔧 Fixing wildcard imports in Mr.Comic project..."

# Fix foundation.layout.* imports
find . -name "*.kt" -type f -exec sed -i 's/import androidx\.compose\.foundation\.layout\.\*/import androidx.compose.foundation.layout.Arrangement\nimport androidx.compose.foundation.layout.Box\nimport androidx.compose.foundation.layout.Column\nimport androidx.compose.foundation.layout.Row\nimport androidx.compose.foundation.layout.Spacer\nimport androidx.compose.foundation.layout.fillMaxSize\nimport androidx.compose.foundation.layout.fillMaxWidth\nimport androidx.compose.foundation.layout.height\nimport androidx.compose.foundation.layout.padding\nimport androidx.compose.foundation.layout.size\nimport androidx.compose.foundation.layout.width/g' {} \;

# Fix material3.* imports  
find . -name "*.kt" -type f -exec sed -i 's/import androidx\.compose\.material3\.\*/import androidx.compose.material3.Button\nimport androidx.compose.material3.Card\nimport androidx.compose.material3.Icon\nimport androidx.compose.material3.MaterialTheme\nimport androidx.compose.material3.Surface\nimport androidx.compose.material3.Text/g' {} \;

# Fix runtime.* imports
find . -name "*.kt" -type f -exec sed -i 's/import androidx\.compose\.runtime\.\*/import androidx.compose.runtime.Composable\nimport androidx.compose.runtime.collectAsState\nimport androidx.compose.runtime.getValue\nimport androidx.compose.runtime.mutableStateOf\nimport androidx.compose.runtime.remember\nimport androidx.compose.runtime.setValue/g' {} \;

# Fix kotlinx.coroutines.flow.* imports
find . -name "*.kt" -type f -exec sed -i 's/import kotlinx\.coroutines\.flow\.\*/import kotlinx.coroutines.flow.MutableStateFlow\nimport kotlinx.coroutines.flow.StateFlow\nimport kotlinx.coroutines.flow.asStateFlow/g' {} \;

# Fix Room imports
find . -name "*.kt" -type f -exec sed -i 's/import androidx\.room\.\*/import androidx.room.Dao\nimport androidx.room.Delete\nimport androidx.room.Entity\nimport androidx.room.Insert\nimport androidx.room.Query\nimport androidx.room.Update/g' {} \;

# Fix test imports (these are usually OK for tests)
find . -name "*Test.kt" -type f -exec sed -i 's/import androidx\.compose\.ui\.test\.\*/import androidx.compose.ui.test.assertIsDisplayed\nimport androidx.compose.ui.test.junit4.createComposeRule\nimport androidx.compose.ui.test.onNodeWithTag\nimport androidx.compose.ui.test.onNodeWithText\nimport androidx.compose.ui.test.performClick/g' {} \;

echo "✅ Wildcard imports fixed in Kotlin files"
echo "📝 Note: You may need to manually adjust imports in some files"
echo "🔍 Run './gradlew compileDebugKotlin' to check for any remaining issues"