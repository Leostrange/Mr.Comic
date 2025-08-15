# Local Translation Models

Place local translation models for offline use in this directory. Supported formats include:

- `.gguf` models for LLaMA-compatible runtimes
- `.onnx` models such as OPUS-MT or M2M-100
- Other formats will be detected but may require custom runtime integration

The application will scan this folder via `LocalResourcesRepository` and list available models in settings.
