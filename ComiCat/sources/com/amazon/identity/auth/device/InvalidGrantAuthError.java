package com.amazon.identity.auth.device;

import com.amazon.identity.auth.device.AuthError;

public class InvalidGrantAuthError extends AuthError {
    public InvalidGrantAuthError(String str) {
        super(str, AuthError.b.ERROR_INVALID_GRANT);
    }
}
