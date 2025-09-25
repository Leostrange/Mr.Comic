package com.mrcomic.analysis

import com.mrcomic.analysis.cli.AnalysisCli
import kotlinx.coroutines.runBlocking

/**
 * Main entry point for the analysis CLI application.
 */
fun main(args: Array<String>) = runBlocking {
    val cli = AnalysisCli()
    cli.main(args)
}