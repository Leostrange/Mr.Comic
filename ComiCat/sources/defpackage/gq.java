package defpackage;

import android.content.Context;
import com.amazon.identity.auth.device.dataobject.RequestedScope;

/* renamed from: gq  reason: default package */
/* compiled from: TokenVendor */
public final class gq {
    public static final String a = gq.class.getName();
    public static final /* synthetic */ boolean b = (!gq.class.desiredAssertionStatus());
    private go c = new go();

    public static void a(String str, String[] strArr, Context context, gv gvVar, gx gxVar) {
        RequestedScope[] requestedScopeArr = new RequestedScope[strArr.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= requestedScopeArr.length) {
                break;
            }
            RequestedScope requestedScope = (RequestedScope) gh.a(context).a(new String[]{gh.c[RequestedScope.a.SCOPE.g], gh.c[RequestedScope.a.APP_FAMILY_ID.g], gh.c[RequestedScope.a.DIRECTED_ID.g]}, new String[]{strArr[i2], str, null});
            if (requestedScope != null) {
                requestedScopeArr[i2] = requestedScope;
            } else {
                gz.d(a, "RequestedScope shouldn't be null!!!! - " + requestedScope + ", but continuing anyway...");
                requestedScopeArr[i2] = new RequestedScope(strArr[i2], str, (String) null);
            }
            i = i2 + 1;
        }
        for (RequestedScope requestedScope2 : requestedScopeArr) {
            if (requestedScope2.a == -1) {
                requestedScope2.f = gvVar.a;
                requestedScope2.g = gxVar.a;
                gz.c(a, "Inserting " + requestedScope2 + " : rowid=" + requestedScope2.a(context));
            } else {
                ga gaVar = (ga) gv.d(context).a(requestedScope2.f);
                if (gaVar != null) {
                    gz.a(a, "Deleting old access token.", "accessAtzToken=" + gaVar + " : " + gaVar.b(context));
                }
                requestedScope2.f = gvVar.a;
                ga gaVar2 = (ga) gx.d(context).a(requestedScope2.g);
                if (gaVar2 != null) {
                    gz.a(a, "Deleting old refresh token ", "refreshAtzToken=" + gaVar2 + " : " + gaVar2.b(context));
                }
                requestedScope2.g = gxVar.a;
                gz.c(a, "Updating " + requestedScope2 + " : " + requestedScope2.c(context).a(requestedScope2.a, requestedScope2.a()));
            }
        }
    }
}
