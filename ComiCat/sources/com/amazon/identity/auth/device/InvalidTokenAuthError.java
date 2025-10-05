package com.amazon.identity.auth.device;

import com.amazon.identity.auth.device.AuthError;

public class InvalidTokenAuthError extends AuthError {
    public InvalidTokenAuthError(String str) {
        super(str, AuthError.b.ERROR_INVALID_TOKEN);
    }
}
