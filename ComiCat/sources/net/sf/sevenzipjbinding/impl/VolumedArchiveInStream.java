package net.sf.sevenzipjbinding.impl;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import net.sf.sevenzipjbinding.IArchiveOpenVolumeCallback;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.SevenZipException;

public class VolumedArchiveInStream implements IInStream {
    private static final String SEVEN_ZIP_FIRST_VOLUME_POSTFIX = ".7z.001";
    private long absoluteLength;
    private long absoluteOffset;
    private final IArchiveOpenVolumeCallback archiveOpenVolumeCallback;
    private IInStream currentInStream;
    private int currentIndex;
    private long currentVolumeLength;
    private long currentVolumeOffset;
    private String cuttedVolumeFilename;
    private List<Long> volumePositions;

    public VolumedArchiveInStream(String str, IArchiveOpenVolumeCallback iArchiveOpenVolumeCallback) {
        this.absoluteLength = -1;
        this.currentIndex = -1;
        this.volumePositions = new ArrayList();
        this.archiveOpenVolumeCallback = iArchiveOpenVolumeCallback;
        this.volumePositions.add(0L);
        if (!str.endsWith(SEVEN_ZIP_FIRST_VOLUME_POSTFIX)) {
            throw new SevenZipException("The first 7z volume filename '" + str + "' don't ends with the postfix: '.7z.001'. Can't proceed");
        }
        this.cuttedVolumeFilename = str.substring(0, str.length() - 3);
        openVolume(1, true);
    }

    public VolumedArchiveInStream(IArchiveOpenVolumeCallback iArchiveOpenVolumeCallback) {
        this((String) iArchiveOpenVolumeCallback.getProperty(PropID.NAME), iArchiveOpenVolumeCallback);
    }

    private void openVolume(int i, boolean z) {
        if (this.currentIndex != i) {
            for (int size = this.volumePositions.size(); size < i && this.absoluteLength == -1; size++) {
                openVolume(size, false);
            }
            if (this.absoluteLength == -1 || this.volumePositions.size() > i) {
                IInStream stream = this.archiveOpenVolumeCallback.getStream(this.cuttedVolumeFilename + MessageFormat.format("{0,number,000}", new Object[]{Integer.valueOf(i)}));
                if (stream == null) {
                    this.absoluteLength = this.volumePositions.get(this.volumePositions.size() - 1).longValue();
                    return;
                }
                this.currentInStream = stream;
                if (this.volumePositions.size() == i) {
                    this.currentVolumeLength = this.currentInStream.seek(0, 2);
                    if (this.currentVolumeLength == 0) {
                        throw new RuntimeException("Volume " + i + " is empty");
                    }
                    this.volumePositions.add(Long.valueOf(this.volumePositions.get(i - 1).longValue() + this.currentVolumeLength));
                    if (z) {
                        this.currentInStream.seek(0, 0);
                    }
                } else {
                    this.currentVolumeLength = this.volumePositions.get(i).longValue() - this.volumePositions.get(i - 1).longValue();
                }
                if (z) {
                    this.currentVolumeOffset = 0;
                    this.absoluteOffset = this.volumePositions.get(i - 1).longValue();
                }
                this.currentIndex = i;
            }
        }
    }

    private void openVolumeToAbsoluteOffset() {
        int i;
        int size = this.volumePositions.size() - 1;
        if (this.absoluteLength == -1 || this.absoluteOffset < this.absoluteLength) {
            while (true) {
                i = size;
                if (this.volumePositions.get(i).longValue() <= this.absoluteOffset) {
                    break;
                }
                size = i - 1;
            }
            if (i < this.volumePositions.size() - 1) {
                openVolume(i + 1, false);
                return;
            }
            do {
                i++;
                openVolume(i, false);
                if ((this.absoluteLength != -1 && this.absoluteOffset >= this.absoluteLength) || this.volumePositions.get(i).longValue() > this.absoluteOffset) {
                }
                i++;
                openVolume(i, false);
                return;
            } while (this.volumePositions.get(i).longValue() > this.absoluteOffset);
        }
    }

    public void close() {
    }

    public int read(byte[] bArr) {
        if (this.absoluteLength != -1 && this.absoluteOffset >= this.absoluteLength) {
            return 0;
        }
        int read = this.currentInStream.read(bArr);
        this.absoluteOffset += (long) read;
        this.currentVolumeOffset += (long) read;
        if (this.currentVolumeOffset < this.currentVolumeLength) {
            return read;
        }
        openVolume(this.currentIndex + 1, true);
        return read;
    }

    public long seek(long j, int i) {
        boolean z;
        switch (i) {
            case 0:
                z = false;
                break;
            case 1:
                j += this.absoluteOffset;
                z = false;
                break;
            case 2:
                if (this.absoluteLength == -1) {
                    openVolume(Integer.MAX_VALUE, false);
                    z = true;
                } else {
                    z = false;
                }
                j += this.absoluteLength;
                break;
            default:
                throw new RuntimeException("Seek: unknown origin: " + i);
        }
        if (j == this.absoluteOffset && !z) {
            return j;
        }
        this.absoluteOffset = j;
        openVolumeToAbsoluteOffset();
        if (this.absoluteLength == -1 || this.absoluteLength > this.absoluteOffset) {
            this.currentVolumeOffset = this.absoluteOffset - this.volumePositions.get(this.currentIndex - 1).longValue();
            this.currentInStream.seek(this.currentVolumeOffset, 0);
            return j;
        }
        this.absoluteOffset = this.absoluteLength;
        return this.absoluteLength;
    }
}
