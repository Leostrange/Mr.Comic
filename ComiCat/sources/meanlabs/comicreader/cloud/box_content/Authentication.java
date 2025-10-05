package meanlabs.comicreader.cloud.box_content;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxResponse;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

public class Authentication extends Activity {
    BoxSession a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new BoxSession(this, (String) null, "hlwu9uterchhjxtxivzrbri7qffefrrm", "LWb2mwSbFHzmFY2kvpnrZf9h7vdu7sO9", "https://www.meanlabs.com");
        this.a.getAuthInfo().wipeOutAuth();
        this.a.authenticate(ComicReaderApp.a(), new BoxFutureTask.OnCompletedListener<BoxSession>() {
            public final void onCompleted(BoxResponse<BoxSession> boxResponse) {
                BoxAuthentication.BoxAuthenticationInfo authInfo = boxResponse.isSuccess() ? boxResponse.getResult().getAuthInfo() : null;
                if (authInfo == null || authInfo.getUser() == null) {
                    Authentication authentication = Authentication.this;
                    Exception exception = boxResponse.getException();
                    if (exception != null) {
                        exception.getMessage();
                    }
                    authentication.runOnUiThread(new Runnable() {
                        public final void run() {
                            Toast.makeText(Authentication.this.getApplicationContext(), Authentication.this.getString(R.string.unableToLogIntoService, new Object[]{Authentication.this.getString(R.string.box)}), 1).show();
                            act.b().a(-1, false);
                        }
                    });
                    authentication.finish();
                    return;
                }
                Authentication authentication2 = Authentication.this;
                BoxAuthentication.BoxAuthenticationInfo authInfo2 = boxResponse.getResult().getAuthInfo();
                BoxUser user = authInfo2.getUser();
                new StringBuilder("Authenticated user id is: ").append(user.getLogin()).append(", ").append(user.getName());
                int intExtra = authentication2.getIntent().getIntExtra("serviecid", -1);
                if (intExtra == -1) {
                    aev aev = new aev();
                    aev.b = "box";
                    aev.h = authInfo2.accessToken();
                    aev.g = authInfo2.refreshToken();
                    aev.i = authInfo2.getRefreshTime().longValue();
                    aev.e = "uid:" + user.getId();
                    aev.f = user.getLogin();
                    aev.c = user.getName();
                    if (aei.a().g.a(aev)) {
                        act.b().a(aev.a, true);
                    } else {
                        act.b().a(-1, false);
                    }
                } else {
                    aev a2 = aei.a().g.a(intExtra);
                    if (a2 != null) {
                        a2.h = authInfo2.accessToken();
                        a2.g = authInfo2.refreshToken();
                        a2.i = authInfo2.getRefreshTime().longValue() + authInfo2.expiresIn().longValue();
                        a2.e = "uid:" + user.getId();
                        a2.f = user.getLogin();
                        a2.c = user.getName();
                        aew aew = aei.a().g;
                        if (aew.c(a2)) {
                            act.b().a(intExtra, false);
                        }
                    }
                }
                authentication2.a.getAuthInfo().wipeOutAuth();
                authentication2.finish();
            }
        });
    }
}
