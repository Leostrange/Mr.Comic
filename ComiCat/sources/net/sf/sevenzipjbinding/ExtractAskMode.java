package net.sf.sevenzipjbinding;

public enum ExtractAskMode {
    EXTRACT,
    TEST,
    SKIP,
    UNKNOWN_ASK_MODE;

    public static ExtractAskMode getExtractAskModeByIndex(int i) {
        ExtractAskMode extractAskMode = UNKNOWN_ASK_MODE;
        switch (i) {
            case 0:
                return EXTRACT;
            case 1:
                return TEST;
            case 2:
                return SKIP;
            default:
                return extractAskMode;
        }
    }
}
