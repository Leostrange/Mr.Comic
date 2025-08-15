# Local Resources for MrComic

Place your local dictionaries and LLM models here. The app will scan these folders on demand.

## Structure

```
local_resources/
├── dictionaries/
│   ├── my_dict_en_ru.zip      # ZIP or folder
│   └── custom_terms/          # Folder with dictionary files
└── llm/
    ├── llama-7b-q4.gguf       # GGUF models supported
    ├── translator.onnx        # ONNX models
    └── any/                   # Other model formats
```

- Dictionaries: ZIP archives or folders are supported. File names are used as display names.
- Models: Known extensions like `.gguf`, `.onnx` are recognized. Others are listed as `OTHER`.

## Notes
- Default location is the app internal files dir: `<filesDir>/local_resources/{dictionaries,llm}`.
- You can also set custom roots later via settings (to be implemented fully).