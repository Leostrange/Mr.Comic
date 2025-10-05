package net.sf.sevenzipjbinding;

public interface IArchiveOpenVolumeCallback {
    Object getProperty(PropID propID);

    IInStream getStream(String str);
}
