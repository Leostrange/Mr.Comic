package com.fasterxml.jackson.core;

public interface SerializableString {
    byte[] asUnquotedUTF8();

    String getValue();
}
