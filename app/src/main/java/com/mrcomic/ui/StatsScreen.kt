package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.example.mrcomic.theme.ui.viewmodel.StatsViewModel
import com.example.mrcomic.R
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics

@Composable
fun StatsScreen(viewModel: StatsViewModel) {
    val stats by viewModel.stats.collectAsState(initial = emptyList())
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.stats),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.stats) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        stats.forEach { stat ->
            Text(
                stringResource(R.string.stats_item, stat.comicId, stat.totalTimeSeconds / 60),
                modifier = Modifier.semantics { contentDescription = stringResource(R.string.stats_item, stat.comicId, stat.totalTimeSeconds / 60) }
            )
        }
    }
} 