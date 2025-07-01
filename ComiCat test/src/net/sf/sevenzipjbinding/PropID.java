// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


public final class PropID extends Enum
{

    private static final PropID $VALUES[];
    public static final PropID ATTRIBUTES;
    public static final PropID BLOCK;
    public static final PropID CLUSTER_SIZE;
    public static final PropID COMMENT;
    public static final PropID COMMENTED;
    public static final PropID CRC;
    public static final PropID CREATION_TIME;
    public static final PropID DICTIONARY_SIZE;
    public static final PropID ENCRYPTED;
    public static final PropID EXTENSION;
    public static final PropID FILE_SYSTEM;
    public static final PropID FREE_SPACE;
    public static final PropID GROUP;
    public static final PropID HANDLER_ITEM_INDEX;
    public static final PropID HOST_OS;
    public static final PropID IS_ANTI;
    public static final PropID IS_FOLDER;
    public static final PropID LAST_ACCESS_TIME;
    public static final PropID LAST_WRITE_TIME;
    public static final PropID LOCAL_NAME;
    public static final PropID METHOD;
    public static final PropID NAME;
    public static final PropID NO_PROPERTY1;
    public static final PropID NO_PROPERTY2;
    public static final PropID PACKED_SIZE;
    public static final PropID PATH;
    public static final PropID POSITION;
    public static final PropID PREFIX;
    public static final PropID PROVIDER;
    public static final PropID SIZE;
    public static final PropID SOLID;
    public static final PropID SPLIT_AFTER;
    public static final PropID SPLIT_BEFORE;
    public static final PropID TOTAL_SIZE;
    public static final PropID TYPE;
    public static final PropID UNKNOWN;
    public static final PropID USER;
    public static final PropID USER_DEFINED;
    public static final PropID VOLUME_NAME;
    private final int propIDIndex;

    private PropID(String s, int i)
    {
        super(s, i);
        propIDIndex = ordinal();
    }

    private PropID(String s, int i, int j)
    {
        super(s, i);
        propIDIndex = j;
    }

    public static PropID getPropIDByIndex(int i)
    {
        if (i >= 0 && i < values().length && values()[i].getPropIDIndex() == i)
        {
            return values()[i];
        }
        for (int j = values().length - 1; j != -1; j--)
        {
            if (values()[j].getPropIDIndex() == i)
            {
                return values()[j];
            }
        }

        return UNKNOWN;
    }

    public static PropID valueOf(String s)
    {
        return (PropID)Enum.valueOf(net/sf/sevenzipjbinding/PropID, s);
    }

    public static PropID[] values()
    {
        return (PropID[])$VALUES.clone();
    }

    public final int getPropIDIndex()
    {
        return propIDIndex;
    }

    static 
    {
        NO_PROPERTY1 = new PropID("NO_PROPERTY1", 0);
        NO_PROPERTY2 = new PropID("NO_PROPERTY2", 1);
        HANDLER_ITEM_INDEX = new PropID("HANDLER_ITEM_INDEX", 2);
        PATH = new PropID("PATH", 3);
        NAME = new PropID("NAME", 4);
        EXTENSION = new PropID("EXTENSION", 5);
        IS_FOLDER = new PropID("IS_FOLDER", 6);
        SIZE = new PropID("SIZE", 7);
        PACKED_SIZE = new PropID("PACKED_SIZE", 8);
        ATTRIBUTES = new PropID("ATTRIBUTES", 9);
        CREATION_TIME = new PropID("CREATION_TIME", 10);
        LAST_ACCESS_TIME = new PropID("LAST_ACCESS_TIME", 11);
        LAST_WRITE_TIME = new PropID("LAST_WRITE_TIME", 12);
        SOLID = new PropID("SOLID", 13);
        COMMENTED = new PropID("COMMENTED", 14);
        ENCRYPTED = new PropID("ENCRYPTED", 15);
        SPLIT_BEFORE = new PropID("SPLIT_BEFORE", 16);
        SPLIT_AFTER = new PropID("SPLIT_AFTER", 17);
        DICTIONARY_SIZE = new PropID("DICTIONARY_SIZE", 18);
        CRC = new PropID("CRC", 19);
        TYPE = new PropID("TYPE", 20);
        IS_ANTI = new PropID("IS_ANTI", 21);
        METHOD = new PropID("METHOD", 22);
        HOST_OS = new PropID("HOST_OS", 23);
        FILE_SYSTEM = new PropID("FILE_SYSTEM", 24);
        USER = new PropID("USER", 25);
        GROUP = new PropID("GROUP", 26);
        BLOCK = new PropID("BLOCK", 27);
        COMMENT = new PropID("COMMENT", 28);
        POSITION = new PropID("POSITION", 29);
        PREFIX = new PropID("PREFIX", 30);
        TOTAL_SIZE = new PropID("TOTAL_SIZE", 31, 4352);
        FREE_SPACE = new PropID("FREE_SPACE", 32, 4353);
        CLUSTER_SIZE = new PropID("CLUSTER_SIZE", 33, 4354);
        VOLUME_NAME = new PropID("VOLUME_NAME", 34, 4355);
        LOCAL_NAME = new PropID("LOCAL_NAME", 35, 4608);
        PROVIDER = new PropID("PROVIDER", 36, 4609);
        USER_DEFINED = new PropID("USER_DEFINED", 37, 0x10000);
        UNKNOWN = new PropID("UNKNOWN", 38, -1);
        $VALUES = (new PropID[] {
            NO_PROPERTY1, NO_PROPERTY2, HANDLER_ITEM_INDEX, PATH, NAME, EXTENSION, IS_FOLDER, SIZE, PACKED_SIZE, ATTRIBUTES, 
            CREATION_TIME, LAST_ACCESS_TIME, LAST_WRITE_TIME, SOLID, COMMENTED, ENCRYPTED, SPLIT_BEFORE, SPLIT_AFTER, DICTIONARY_SIZE, CRC, 
            TYPE, IS_ANTI, METHOD, HOST_OS, FILE_SYSTEM, USER, GROUP, BLOCK, COMMENT, POSITION, 
            PREFIX, TOTAL_SIZE, FREE_SPACE, CLUSTER_SIZE, VOLUME_NAME, LOCAL_NAME, PROVIDER, USER_DEFINED, UNKNOWN
        });
    }
}
