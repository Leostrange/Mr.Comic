package net.sf.sevenzipjbinding;

public interface IArchiveExtractCallback extends IProgress {
    ISequentialOutStream getStream(int i, ExtractAskMode extractAskMode);

    void prepareOperation(ExtractAskMode extractAskMode);

    void setOperationResult(ExtractOperationResult extractOperationResult);
}
