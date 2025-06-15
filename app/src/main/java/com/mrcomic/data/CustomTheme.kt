package com.example.mrcomic.data

data class CustomTheme(
    val id: String,
    val name: String,
    val colors: Map<String, String>,
    val fonts: List<String>
) 