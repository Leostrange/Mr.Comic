package net.sf.sevenzipjbinding;

public enum ExtractOperationResult {
    OK,
    UNSUPPORTEDMETHOD,
    DATAERROR,
    CRCERROR,
    UNKNOWN_OPERATION_RESULT;

    public static ExtractOperationResult getOperationResult(int i) {
        return (i < 0 || i >= values().length) ? UNKNOWN_OPERATION_RESULT : values()[i];
    }
}
