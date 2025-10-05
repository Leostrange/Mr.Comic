package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.io.UTF8Writer;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.fasterxml.jackson.core.json.ReaderBasedJsonParser;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;

public class JsonFactory implements Serializable {
    protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = Feature.collectDefaults();
    protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
    protected static final int DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
    private static final SerializableString DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
    protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef = new ThreadLocal<>();
    protected final transient ByteQuadsCanonicalizer _byteSymbolCanonicalizer;
    protected CharacterEscapes _characterEscapes;
    protected int _factoryFeatures;
    protected int _generatorFeatures;
    protected InputDecorator _inputDecorator;
    protected ObjectCodec _objectCodec;
    protected OutputDecorator _outputDecorator;
    protected int _parserFeatures;
    protected final transient CharsToNameCanonicalizer _rootCharSymbols;
    protected SerializableString _rootValueSeparator;

    public enum Feature {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);
        
        private final boolean _defaultState;

        private Feature(boolean z) {
            this._defaultState = z;
        }

        public static int collectDefaults() {
            int i = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        public final boolean enabledByDefault() {
            return this._defaultState;
        }

        public final boolean enabledIn(int i) {
            return (getMask() & i) != 0;
        }

        public final int getMask() {
            return 1 << ordinal();
        }
    }

    public JsonFactory() {
        this((ObjectCodec) null);
    }

    public JsonFactory(ObjectCodec objectCodec) {
        this._rootCharSymbols = CharsToNameCanonicalizer.createRoot();
        this._byteSymbolCanonicalizer = ByteQuadsCanonicalizer.createRoot();
        this._factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        this._parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        this._rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;
        this._objectCodec = objectCodec;
    }

    /* access modifiers changed from: protected */
    public IOContext _createContext(Object obj, boolean z) {
        return new IOContext(_getBufferRecycler(), obj, z);
    }

    /* access modifiers changed from: protected */
    public JsonGenerator _createGenerator(Writer writer, IOContext iOContext) {
        WriterBasedJsonGenerator writerBasedJsonGenerator = new WriterBasedJsonGenerator(iOContext, this._generatorFeatures, this._objectCodec, writer);
        if (this._characterEscapes != null) {
            writerBasedJsonGenerator.setCharacterEscapes(this._characterEscapes);
        }
        SerializableString serializableString = this._rootValueSeparator;
        if (serializableString != DEFAULT_ROOT_VALUE_SEPARATOR) {
            writerBasedJsonGenerator.setRootValueSeparator(serializableString);
        }
        return writerBasedJsonGenerator;
    }

    /* access modifiers changed from: protected */
    public JsonParser _createParser(InputStream inputStream, IOContext iOContext) {
        return new ByteSourceJsonBootstrapper(iOContext, inputStream).constructParser(this._parserFeatures, this._objectCodec, this._byteSymbolCanonicalizer, this._rootCharSymbols, this._factoryFeatures);
    }

    /* access modifiers changed from: protected */
    public JsonParser _createParser(Reader reader, IOContext iOContext) {
        return new ReaderBasedJsonParser(iOContext, this._parserFeatures, reader, this._objectCodec, this._rootCharSymbols.makeChild(this._factoryFeatures));
    }

    /* access modifiers changed from: protected */
    public JsonParser _createParser(char[] cArr, int i, int i2, IOContext iOContext, boolean z) {
        return new ReaderBasedJsonParser(iOContext, this._parserFeatures, (Reader) null, this._objectCodec, this._rootCharSymbols.makeChild(this._factoryFeatures), cArr, i, i + i2, z);
    }

    /* access modifiers changed from: protected */
    public JsonGenerator _createUTF8Generator(OutputStream outputStream, IOContext iOContext) {
        UTF8JsonGenerator uTF8JsonGenerator = new UTF8JsonGenerator(iOContext, this._generatorFeatures, this._objectCodec, outputStream);
        if (this._characterEscapes != null) {
            uTF8JsonGenerator.setCharacterEscapes(this._characterEscapes);
        }
        SerializableString serializableString = this._rootValueSeparator;
        if (serializableString != DEFAULT_ROOT_VALUE_SEPARATOR) {
            uTF8JsonGenerator.setRootValueSeparator(serializableString);
        }
        return uTF8JsonGenerator;
    }

    /* access modifiers changed from: protected */
    public Writer _createWriter(OutputStream outputStream, JsonEncoding jsonEncoding, IOContext iOContext) {
        return jsonEncoding == JsonEncoding.UTF8 ? new UTF8Writer(iOContext, outputStream) : new OutputStreamWriter(outputStream, jsonEncoding.getJavaName());
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
        r0 = r1._inputDecorator.decorate(r3, r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.InputStream _decorate(java.io.InputStream r2, com.fasterxml.jackson.core.io.IOContext r3) {
        /*
            r1 = this;
            com.fasterxml.jackson.core.io.InputDecorator r0 = r1._inputDecorator
            if (r0 == 0) goto L_0x000d
            com.fasterxml.jackson.core.io.InputDecorator r0 = r1._inputDecorator
            java.io.InputStream r0 = r0.decorate((com.fasterxml.jackson.core.io.IOContext) r3, (java.io.InputStream) r2)
            if (r0 == 0) goto L_0x000d
            r2 = r0
        L_0x000d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonFactory._decorate(java.io.InputStream, com.fasterxml.jackson.core.io.IOContext):java.io.InputStream");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
        r0 = r1._outputDecorator.decorate(r3, r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.OutputStream _decorate(java.io.OutputStream r2, com.fasterxml.jackson.core.io.IOContext r3) {
        /*
            r1 = this;
            com.fasterxml.jackson.core.io.OutputDecorator r0 = r1._outputDecorator
            if (r0 == 0) goto L_0x000d
            com.fasterxml.jackson.core.io.OutputDecorator r0 = r1._outputDecorator
            java.io.OutputStream r0 = r0.decorate((com.fasterxml.jackson.core.io.IOContext) r3, (java.io.OutputStream) r2)
            if (r0 == 0) goto L_0x000d
            r2 = r0
        L_0x000d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonFactory._decorate(java.io.OutputStream, com.fasterxml.jackson.core.io.IOContext):java.io.OutputStream");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
        r0 = r1._inputDecorator.decorate(r3, r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.Reader _decorate(java.io.Reader r2, com.fasterxml.jackson.core.io.IOContext r3) {
        /*
            r1 = this;
            com.fasterxml.jackson.core.io.InputDecorator r0 = r1._inputDecorator
            if (r0 == 0) goto L_0x000d
            com.fasterxml.jackson.core.io.InputDecorator r0 = r1._inputDecorator
            java.io.Reader r0 = r0.decorate((com.fasterxml.jackson.core.io.IOContext) r3, (java.io.Reader) r2)
            if (r0 == 0) goto L_0x000d
            r2 = r0
        L_0x000d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonFactory._decorate(java.io.Reader, com.fasterxml.jackson.core.io.IOContext):java.io.Reader");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
        r0 = r1._outputDecorator.decorate(r3, r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.Writer _decorate(java.io.Writer r2, com.fasterxml.jackson.core.io.IOContext r3) {
        /*
            r1 = this;
            com.fasterxml.jackson.core.io.OutputDecorator r0 = r1._outputDecorator
            if (r0 == 0) goto L_0x000d
            com.fasterxml.jackson.core.io.OutputDecorator r0 = r1._outputDecorator
            java.io.Writer r0 = r0.decorate((com.fasterxml.jackson.core.io.IOContext) r3, (java.io.Writer) r2)
            if (r0 == 0) goto L_0x000d
            r2 = r0
        L_0x000d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonFactory._decorate(java.io.Writer, com.fasterxml.jackson.core.io.IOContext):java.io.Writer");
    }

    public BufferRecycler _getBufferRecycler() {
        if (!isEnabled(Feature.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING)) {
            return new BufferRecycler();
        }
        SoftReference softReference = _recyclerRef.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        _recyclerRef.set(new SoftReference(bufferRecycler2));
        return bufferRecycler2;
    }

    public boolean canUseCharArrays() {
        return true;
    }

    public JsonGenerator createGenerator(OutputStream outputStream) {
        return createGenerator(outputStream, JsonEncoding.UTF8);
    }

    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) {
        IOContext _createContext = _createContext(outputStream, false);
        _createContext.setEncoding(jsonEncoding);
        return jsonEncoding == JsonEncoding.UTF8 ? _createUTF8Generator(_decorate(outputStream, _createContext), _createContext) : _createGenerator(_decorate(_createWriter(outputStream, jsonEncoding, _createContext), _createContext), _createContext);
    }

    public JsonGenerator createGenerator(Writer writer) {
        IOContext _createContext = _createContext(writer, false);
        return _createGenerator(_decorate(writer, _createContext), _createContext);
    }

    public JsonParser createParser(InputStream inputStream) {
        IOContext _createContext = _createContext(inputStream, false);
        return _createParser(_decorate(inputStream, _createContext), _createContext);
    }

    public JsonParser createParser(Reader reader) {
        IOContext _createContext = _createContext(reader, false);
        return _createParser(_decorate(reader, _createContext), _createContext);
    }

    public JsonParser createParser(String str) {
        int length = str.length();
        if (this._inputDecorator != null || length > 32768 || !canUseCharArrays()) {
            return createParser((Reader) new StringReader(str));
        }
        IOContext _createContext = _createContext(str, true);
        char[] allocTokenBuffer = _createContext.allocTokenBuffer(length);
        str.getChars(0, length, allocTokenBuffer, 0);
        return _createParser(allocTokenBuffer, 0, length, _createContext, true);
    }

    public final boolean isEnabled(Feature feature) {
        return (this._factoryFeatures & feature.getMask()) != 0;
    }
}
