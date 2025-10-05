package defpackage;

/* renamed from: fx  reason: default package */
/* compiled from: AuthzConstants */
public final class fx {

    /* renamed from: fx$a */
    /* compiled from: AuthzConstants */
    public enum a {
        TOKEN("com.amazon.identity.auth.device.authorization.token"),
        AUTHORIZATION_CODE("com.amazon.identity.auth.device.authorization.authorizationCode"),
        DIRECTED_ID("com.amazon.identity.auth.device.authorization.directedId"),
        DEVICE_ID("com.amazon.identity.auth.device.authorization.deviceId"),
        APP_ID("com.amazon.identity.auth.device.authorization.appId"),
        CAUSE_ID("com.amazon.identity.auth.device.authorization.causeId"),
        REJECTED_SCOPE_LIST("com.amazon.identity.auth.device.authorization.ungrantedScopes"),
        AUTHORIZE("com.amazon.identity.auth.device.authorization.authorize"),
        CLIENT_ID("com.amazon.identity.auth.device.authorization.clietId"),
        ON_CANCEL_TYPE("com.amazon.identity.auth.device.authorization.onCancelType"),
        ON_CANCEL_DESCRIPTION("com.amazon.identity.auth.device.authorization.onCancelDescription"),
        BROWSER_AUTHORIZATION("com.amazon.identity.auth.device.authorization.useBrowserForAuthorization"),
        PROFILE("com.amazon.identity.auth.device.authorization.profile"),
        FUTURE("com.amazon.identity.auth.device.authorization.future.type");
        
        public final String o;

        private a(String str) {
            this.o = str;
        }
    }
}
