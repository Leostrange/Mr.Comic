package com.box.androidsdk.content.listeners;

import com.box.androidsdk.content.models.BoxDownload;

public interface DownloadStartListener {
    void onStart(BoxDownload boxDownload);
}
