// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.simple;

import java.util.Date;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.ISequentialOutStream;

public interface ISimpleInArchiveItem
{

    public abstract ExtractOperationResult extractSlow(ISequentialOutStream isequentialoutstream);

    public abstract ExtractOperationResult extractSlow(ISequentialOutStream isequentialoutstream, String s);

    public abstract Integer getAttributes();

    public abstract Integer getCRC();

    public abstract String getComment();

    public abstract Date getCreationTime();

    public abstract String getGroup();

    public abstract String getHostOS();

    public abstract int getItemIndex();

    public abstract Date getLastAccessTime();

    public abstract Date getLastWriteTime();

    public abstract String getMethod();

    public abstract Long getPackedSize();

    public abstract String getPath();

    public abstract Integer getPosition();

    public abstract Long getSize();

    public abstract String getUser();

    public abstract Boolean isCommented();

    public abstract boolean isEncrypted();

    public abstract boolean isFolder();
}
