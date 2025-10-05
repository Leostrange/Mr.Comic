package net.sf.sevenzipjbinding.simple;

import java.util.Date;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.ISequentialOutStream;

public interface ISimpleInArchiveItem {
    ExtractOperationResult extractSlow(ISequentialOutStream iSequentialOutStream);

    ExtractOperationResult extractSlow(ISequentialOutStream iSequentialOutStream, String str);

    Integer getAttributes();

    Integer getCRC();

    String getComment();

    Date getCreationTime();

    String getGroup();

    String getHostOS();

    int getItemIndex();

    Date getLastAccessTime();

    Date getLastWriteTime();

    String getMethod();

    Long getPackedSize();

    String getPath();

    Integer getPosition();

    Long getSize();

    String getUser();

    Boolean isCommented();

    boolean isEncrypted();

    boolean isFolder();
}
