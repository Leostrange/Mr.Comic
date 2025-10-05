package net.sf.sevenzipjbinding;

public enum PropID {
    NO_PROPERTY1,
    NO_PROPERTY2,
    HANDLER_ITEM_INDEX,
    PATH,
    NAME,
    EXTENSION,
    IS_FOLDER,
    SIZE,
    PACKED_SIZE,
    ATTRIBUTES,
    CREATION_TIME,
    LAST_ACCESS_TIME,
    LAST_WRITE_TIME,
    SOLID,
    COMMENTED,
    ENCRYPTED,
    SPLIT_BEFORE,
    SPLIT_AFTER,
    DICTIONARY_SIZE,
    CRC,
    TYPE,
    IS_ANTI,
    METHOD,
    HOST_OS,
    FILE_SYSTEM,
    USER,
    GROUP,
    BLOCK,
    COMMENT,
    POSITION,
    PREFIX,
    TOTAL_SIZE(4352),
    FREE_SPACE(4353),
    CLUSTER_SIZE(4354),
    VOLUME_NAME(4355),
    LOCAL_NAME(4608),
    PROVIDER(4609),
    USER_DEFINED(65536),
    UNKNOWN(-1);
    
    private final int propIDIndex;

    private PropID(int i) {
        this.propIDIndex = i;
    }

    public static PropID getPropIDByIndex(int i) {
        if (i >= 0 && i < values().length && values()[i].getPropIDIndex() == i) {
            return values()[i];
        }
        int length = values().length;
        while (true) {
            length--;
            if (length == -1) {
                return UNKNOWN;
            }
            if (values()[length].getPropIDIndex() == i) {
                return values()[length];
            }
        }
    }

    public final int getPropIDIndex() {
        return this.propIDIndex;
    }
}
