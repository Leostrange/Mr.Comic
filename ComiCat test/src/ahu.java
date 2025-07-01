// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

public interface ahu
    extends FileFilter, FilenameFilter
{

    public abstract boolean accept(File file);

    public abstract boolean accept(File file, String s);
}
