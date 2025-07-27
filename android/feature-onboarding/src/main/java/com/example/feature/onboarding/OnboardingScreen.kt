package com.example.feature.onboarding

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun OnboardingScreen(onOnboardingComplete: () -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(text = "Добро пожаловать в Mr.Comic!", modifier = Modifier.padding(bottom = 16.dp))
        Text(text = "Здесь будет демонстрация основных функций приложения.", modifier = Modifier.padding(bottom = 32.dp))
        Button(onClick = onOnboardingComplete) {
            Text(text = "Начать")
        }
    }
}


