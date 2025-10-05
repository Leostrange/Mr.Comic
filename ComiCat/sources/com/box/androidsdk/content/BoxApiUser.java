package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsFile;
import com.box.androidsdk.content.requests.BoxRequestsUser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;

public class BoxApiUser extends BoxApi {
    public BoxApiUser(BoxSession boxSession) {
        super(boxSession);
    }

    /* access modifiers changed from: protected */
    public String getAvatarDownloadUrl(String str) {
        return getUserInformationUrl(str) + "/avatar";
    }

    public BoxRequestsUser.CreateEnterpriseUser getCreateEnterpriseUserRequest(String str, String str2) {
        return new BoxRequestsUser.CreateEnterpriseUser(getUsersUrl(), this.mSession, str, str2);
    }

    public BoxRequestsUser.GetUserInfo getCurrentUserInfoRequest() {
        return new BoxRequestsUser.GetUserInfo(getUserInformationUrl("me"), this.mSession);
    }

    public BoxRequestsUser.DeleteEnterpriseUser getDeleteEnterpriseUserRequest(String str) {
        return new BoxRequestsUser.DeleteEnterpriseUser(getUserInformationUrl(str), this.mSession, str);
    }

    public BoxRequestsFile.DownloadFile getDownloadAvatarRequest(File file, String str) {
        if (file.exists()) {
            return new BoxRequestsFile.DownloadFile(str, file, getAvatarDownloadUrl(str), this.mSession);
        }
        throw new FileNotFoundException();
    }

    public BoxRequestsFile.DownloadFile getDownloadAvatarRequest(OutputStream outputStream, String str) {
        return new BoxRequestsFile.DownloadFile(str, outputStream, getAvatarDownloadUrl(str), this.mSession);
    }

    public BoxRequestsUser.GetEnterpriseUsers getEnterpriseUsersRequest() {
        return new BoxRequestsUser.GetEnterpriseUsers(getUsersUrl(), this.mSession);
    }

    public BoxRequestsUser.GetUserInfo getUserInfoRequest(String str) {
        return new BoxRequestsUser.GetUserInfo(getUserInformationUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getUserInformationUrl(String str) {
        return String.format("%s/%s", new Object[]{getUsersUrl(), str});
    }

    /* access modifiers changed from: protected */
    public String getUsersUrl() {
        return String.format("%s/users", new Object[]{getBaseUri()});
    }
}
