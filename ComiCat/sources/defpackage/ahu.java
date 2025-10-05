package defpackage;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

/* renamed from: ahu  reason: default package */
/* compiled from: IOFileFilter */
public interface ahu extends FileFilter, FilenameFilter {
    boolean accept(File file);

    boolean accept(File file, String str);
}
