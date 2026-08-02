#include <android/bitmap.h>
#include <android/log.h>
#include <dlfcn.h>
#include <jni.h>

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <mutex>

#define LOG_TAG "MrComicDjvu"
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

constexpr int DDJVU_JOB_OK = 2;
constexpr int DDJVU_JOB_FAILED = 3;
constexpr int DDJVU_JOB_STOPPED = 4;
constexpr int DDJVU_RENDER_COLOR = 0;
constexpr int DDJVU_RENDER_BLACK = 1;
constexpr int DDJVU_FORMAT_RGBMASK32 = 3;

struct ddjvu_context_t;
struct ddjvu_document_t;
struct ddjvu_page_t;
struct ddjvu_job_t;
struct ddjvu_format_t;
struct ddjvu_message_t;

struct ddjvu_rect_t {
    int x;
    int y;
    unsigned int w;
    unsigned int h;
};

struct NativeDoc {
    ddjvu_context_t* context = nullptr;
    ddjvu_document_t* document = nullptr;
    int pageCount = 0;
};

struct Symbols {
    void* handle = nullptr;
    ddjvu_context_t* (*context_create)(const char*) = nullptr;
    void (*context_release)(ddjvu_context_t*) = nullptr;
    ddjvu_document_t* (*document_create_by_filename_utf8)(ddjvu_context_t*, const char*, int) = nullptr;
    ddjvu_job_t* (*document_job)(ddjvu_document_t*) = nullptr;
    int (*document_get_pagenum)(ddjvu_document_t*) = nullptr;
    ddjvu_page_t* (*page_create_by_pageno)(ddjvu_document_t*, int) = nullptr;
    ddjvu_job_t* (*page_job)(ddjvu_page_t*) = nullptr;
    int (*page_get_width)(ddjvu_page_t*) = nullptr;
    int (*page_get_height)(ddjvu_page_t*) = nullptr;
    int (*page_get_resolution)(ddjvu_page_t*) = nullptr;
    int (*page_render)(ddjvu_page_t*, int, const ddjvu_rect_t*, const ddjvu_rect_t*, const ddjvu_format_t*, unsigned long, char*) = nullptr;
    int (*job_status)(ddjvu_job_t*) = nullptr;
    const ddjvu_message_t* (*message_peek)(ddjvu_context_t*) = nullptr;
    void (*message_pop)(ddjvu_context_t*) = nullptr;
    void (*message_wait)(ddjvu_context_t*) = nullptr;
    ddjvu_format_t* (*format_create)(int, int, unsigned int*) = nullptr;
    void (*format_set_row_order)(ddjvu_format_t*, int) = nullptr;
    void (*format_set_y_direction)(ddjvu_format_t*, int) = nullptr;
    void (*format_release)(ddjvu_format_t*) = nullptr;
    void (*document_release)(ddjvu_document_t*) = nullptr;
    void (*page_release)(ddjvu_page_t*) = nullptr;
};

Symbols gSymbols;
bool gTriedLoad = false;
std::mutex gSymbolsMutex;

template <typename T>
bool loadSymbol(void* handle, T& target, const char* name) {
    target = reinterpret_cast<T>(dlsym(handle, name));
    if (!target) {
        LOGE("Missing DjVuLibre symbol: %s", name);
        return false;
    }
    return true;
}

template <typename T>
bool loadSymbolAny(void* handle, T& target, const char* primary, const char* fallback) {
    target = reinterpret_cast<T>(dlsym(handle, primary));
    if (target) return true;
    target = reinterpret_cast<T>(dlsym(handle, fallback));
    if (target) return true;
    LOGE("Missing DjVuLibre symbol: %s (fallback %s)", primary, fallback);
    return false;
}

bool loadSymbols() {
    std::lock_guard<std::mutex> lock(gSymbolsMutex);
    if (gSymbols.handle) return true;
    if (gTriedLoad) return false;
    gTriedLoad = true;

    void* handle = dlopen("libdjvu.so", RTLD_NOW);
    if (!handle) {
        LOGE("Unable to load libdjvu.so: %s", dlerror());
        return false;
    }

    bool ok = true;
    ok &= loadSymbol(handle, gSymbols.context_create, "ddjvu_context_create");
    ok &= loadSymbol(handle, gSymbols.context_release, "ddjvu_context_release");
    ok &= loadSymbol(handle, gSymbols.document_create_by_filename_utf8, "ddjvu_document_create_by_filename_utf8");
    ok &= loadSymbol(handle, gSymbols.document_job, "ddjvu_document_job");
    ok &= loadSymbol(handle, gSymbols.document_get_pagenum, "ddjvu_document_get_pagenum");
    ok &= loadSymbol(handle, gSymbols.page_create_by_pageno, "ddjvu_page_create_by_pageno");
    ok &= loadSymbol(handle, gSymbols.page_job, "ddjvu_page_job");
    ok &= loadSymbol(handle, gSymbols.page_get_width, "ddjvu_page_get_width");
    ok &= loadSymbol(handle, gSymbols.page_get_height, "ddjvu_page_get_height");
    ok &= loadSymbol(handle, gSymbols.page_get_resolution, "ddjvu_page_get_resolution");
    ok &= loadSymbol(handle, gSymbols.page_render, "ddjvu_page_render");
    ok &= loadSymbol(handle, gSymbols.job_status, "ddjvu_job_status");
    ok &= loadSymbol(handle, gSymbols.message_peek, "ddjvu_message_peek");
    ok &= loadSymbol(handle, gSymbols.message_pop, "ddjvu_message_pop");
    ok &= loadSymbol(handle, gSymbols.message_wait, "ddjvu_message_wait");
    ok &= loadSymbol(handle, gSymbols.format_create, "ddjvu_format_create");
    ok &= loadSymbol(handle, gSymbols.format_set_row_order, "ddjvu_format_set_row_order");
    ok &= loadSymbol(handle, gSymbols.format_set_y_direction, "ddjvu_format_set_y_direction");
    ok &= loadSymbol(handle, gSymbols.format_release, "ddjvu_format_release");
    ok &= loadSymbolAny(handle, gSymbols.document_release, "ddjvu_document_release", "_ZN16ddjvu_document_s7releaseEv");
    ok &= loadSymbolAny(handle, gSymbols.page_release, "ddjvu_page_release", "_ZN12ddjvu_page_s7releaseEv");

    if (!ok) {
        dlclose(handle);
        std::memset(&gSymbols, 0, sizeof(gSymbols));
        return false;
    }
    gSymbols.handle = handle;
    return true;
}

void drainMessages(ddjvu_context_t* context) {
    while (gSymbols.message_peek(context) != nullptr) {
        gSymbols.message_pop(context);
    }
}

bool waitForJob(ddjvu_context_t* context, ddjvu_job_t* job) {
    if (!context || !job) return false;
    int guard = 0;
    while (gSymbols.job_status(job) < DDJVU_JOB_OK && guard++ < 20000) {
        gSymbols.message_wait(context);
        drainMessages(context);
    }
    const int status = gSymbols.job_status(job);
    drainMessages(context);
    return status == DDJVU_JOB_OK;
}

void closeDoc(NativeDoc* nativeDoc) {
    if (!nativeDoc) return;
    if (nativeDoc->document) {
        gSymbols.document_release(nativeDoc->document);
        nativeDoc->document = nullptr;
    }
    if (nativeDoc->context) {
        gSymbols.context_release(nativeDoc->context);
        nativeDoc->context = nullptr;
    }
    delete nativeDoc;
}

void fillWhite(void* pixels, const AndroidBitmapInfo& info) {
    auto* row = reinterpret_cast<std::uint8_t*>(pixels);
    for (std::uint32_t y = 0; y < info.height; ++y) {
        auto* dst = reinterpret_cast<std::uint32_t*>(row + y * info.stride);
        std::fill(dst, dst + info.width, 0xffffffffu);
    }
}

bool hasInk(void* pixels, const AndroidBitmapInfo& info) {
    auto* row = reinterpret_cast<std::uint8_t*>(pixels);
    const std::uint32_t stepY = std::max<std::uint32_t>(1, info.height / 96);
    const std::uint32_t stepX = std::max<std::uint32_t>(1, info.width / 96);
    for (std::uint32_t y = 0; y < info.height; y += stepY) {
        auto* src = reinterpret_cast<std::uint32_t*>(row + y * info.stride);
        for (std::uint32_t x = 0; x < info.width; x += stepX) {
            const std::uint32_t pixel = src[x];
            const int r = static_cast<int>(pixel & 0xffu);
            const int g = static_cast<int>((pixel >> 8) & 0xffu);
            const int b = static_cast<int>((pixel >> 16) & 0xffu);
            if (r < 242 || g < 242 || b < 242) return true;
        }
    }
    return false;
}

int renderWithMode(
    ddjvu_page_t* page,
    int mode,
    const ddjvu_rect_t& pageRect,
    const ddjvu_rect_t& renderRect,
    const AndroidBitmapInfo& bitmapInfo,
    void* pixels
) {
    unsigned int masks[4] = {0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000};
    ddjvu_format_t* format = gSymbols.format_create(DDJVU_FORMAT_RGBMASK32, 4, masks);
    if (!format) return 0;
    gSymbols.format_set_row_order(format, 1);
    gSymbols.format_set_y_direction(format, 1);

    const int ok = gSymbols.page_render(
        page,
        mode,
        &pageRect,
        &renderRect,
        format,
        bitmapInfo.stride,
        reinterpret_cast<char*>(pixels)
    );

    gSymbols.format_release(format);
    return ok;
}

NativeDoc* asDoc(jlong handle) {
    return reinterpret_cast<NativeDoc*>(static_cast<intptr_t>(handle));
}

} // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativeIsAvailable(JNIEnv*, jobject) {
    return loadSymbols() ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jlong JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativeOpen(JNIEnv* env, jobject, jstring path) {
    if (!loadSymbols() || !path) return 0;

    const char* utfPath = env->GetStringUTFChars(path, nullptr);
    if (!utfPath) return 0;

    auto* nativeDoc = new NativeDoc();
    nativeDoc->context = gSymbols.context_create("mrcomic");
    if (!nativeDoc->context) {
        env->ReleaseStringUTFChars(path, utfPath);
        closeDoc(nativeDoc);
        return 0;
    }

    nativeDoc->document = gSymbols.document_create_by_filename_utf8(nativeDoc->context, utfPath, 0);
    env->ReleaseStringUTFChars(path, utfPath);
    if (!nativeDoc->document || !waitForJob(nativeDoc->context, gSymbols.document_job(nativeDoc->document))) {
        closeDoc(nativeDoc);
        return 0;
    }

    nativeDoc->pageCount = gSymbols.document_get_pagenum(nativeDoc->document);
    if (nativeDoc->pageCount <= 0) {
        closeDoc(nativeDoc);
        return 0;
    }
    return static_cast<jlong>(reinterpret_cast<intptr_t>(nativeDoc));
}

extern "C" JNIEXPORT jint JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativePageCount(JNIEnv*, jobject, jlong handle) {
    NativeDoc* nativeDoc = asDoc(handle);
    return nativeDoc ? nativeDoc->pageCount : 0;
}

extern "C" JNIEXPORT jintArray JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativePageInfo(JNIEnv* env, jobject, jlong handle, jint pageIndex) {
    NativeDoc* nativeDoc = asDoc(handle);
    if (!loadSymbols() || !nativeDoc || pageIndex < 0 || pageIndex >= nativeDoc->pageCount) return nullptr;

    ddjvu_page_t* page = gSymbols.page_create_by_pageno(nativeDoc->document, pageIndex);
    if (!page || !waitForJob(nativeDoc->context, gSymbols.page_job(page))) {
        if (page) gSymbols.page_release(page);
        return nullptr;
    }

    jint values[3] = {
        gSymbols.page_get_width(page),
        gSymbols.page_get_height(page),
        gSymbols.page_get_resolution(page)
    };
    gSymbols.page_release(page);
    if (values[0] <= 0 || values[1] <= 0) return nullptr;

    jintArray result = env->NewIntArray(3);
    if (!result) return nullptr;
    env->SetIntArrayRegion(result, 0, 3, values);
    return result;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativeRenderPage(
    JNIEnv* env,
    jobject,
    jlong handle,
    jint pageIndex,
    jobject bitmap,
    jfloat scale
) {
    NativeDoc* nativeDoc = asDoc(handle);
    if (!loadSymbols() || !nativeDoc || !bitmap || pageIndex < 0 || pageIndex >= nativeDoc->pageCount) {
        return JNI_FALSE;
    }

    ddjvu_page_t* page = gSymbols.page_create_by_pageno(nativeDoc->document, pageIndex);
    if (!page || !waitForJob(nativeDoc->context, gSymbols.page_job(page))) {
        if (page) gSymbols.page_release(page);
        return JNI_FALSE;
    }

    AndroidBitmapInfo bitmapInfo;
    if (AndroidBitmap_getInfo(env, bitmap, &bitmapInfo) != ANDROID_BITMAP_RESULT_SUCCESS ||
        bitmapInfo.format != ANDROID_BITMAP_FORMAT_RGBA_8888) {
        gSymbols.page_release(page);
        return JNI_FALSE;
    }

    void* pixels = nullptr;
    if (AndroidBitmap_lockPixels(env, bitmap, &pixels) != ANDROID_BITMAP_RESULT_SUCCESS || !pixels) {
        gSymbols.page_release(page);
        return JNI_FALSE;
    }

    const int pageWidth = std::max(1, gSymbols.page_get_width(page));
    const int pageHeight = std::max(1, gSymbols.page_get_height(page));
    const float safeScale = std::max(0.05f, scale);
    const unsigned int renderWidth = std::min(
        static_cast<unsigned int>(std::max(1, static_cast<int>(std::round(pageWidth * safeScale)))),
        bitmapInfo.width
    );
    const unsigned int renderHeight = std::min(
        static_cast<unsigned int>(std::max(1, static_cast<int>(std::round(pageHeight * safeScale)))),
        bitmapInfo.height
    );
    ddjvu_rect_t pageRect {
        0,
        0,
        renderWidth,
        renderHeight
    };
    ddjvu_rect_t renderRect {
        0,
        0,
        renderWidth,
        renderHeight
    };

    fillWhite(pixels, bitmapInfo);
    int ok = renderWithMode(page, DDJVU_RENDER_COLOR, pageRect, renderRect, bitmapInfo, pixels);
    if (!ok || !hasInk(pixels, bitmapInfo)) {
        fillWhite(pixels, bitmapInfo);
        ok = renderWithMode(page, DDJVU_RENDER_BLACK, pageRect, renderRect, bitmapInfo, pixels);
    }
    AndroidBitmap_unlockPixels(env, bitmap);
    gSymbols.page_release(page);
    drainMessages(nativeDoc->context);
    return ok ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT void JNICALL
Java_io_leostrange_mrcomic_engine_formats_djvu_NativeDjvuBridge_nativeClose(JNIEnv*, jobject, jlong handle) {
    if (!loadSymbols()) return;
    closeDoc(asDoc(handle));
}
