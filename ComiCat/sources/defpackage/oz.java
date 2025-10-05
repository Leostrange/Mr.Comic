package defpackage;

import java.util.List;
import java.util.Map;

/* renamed from: oz  reason: default package */
/* compiled from: File */
public final class oz extends mu {
    @nz
    private String alternateLink;
    @nz
    private Boolean appDataContents;
    @nz
    private Boolean canComment;
    @nz
    private Boolean canReadRevisions;
    @nz
    private Boolean copyable;
    @nz
    private nu createdDate;
    @nz
    private String defaultOpenWithLink;
    @nz
    private String description;
    @nz
    public String downloadUrl;
    @nz
    private Boolean editable;
    @nz
    private String embedLink;
    @nz
    private String etag;
    @nz
    private Boolean explicitlyTrashed;
    @nz
    private Map<String, String> exportLinks;
    @nz
    private String fileExtension;
    @nz
    @na
    public Long fileSize;
    @nz
    private String folderColorRgb;
    @nz
    private String fullFileExtension;
    @nz
    private String headRevisionId;
    @nz
    private String iconLink;
    @nz
    public String id;
    @nz
    private a imageMediaMetadata;
    @nz
    private b indexableText;
    @nz
    private Boolean isAppAuthorized;
    @nz
    private String kind;
    @nz
    private c labels;
    @nz
    private pc lastModifyingUser;
    @nz
    private String lastModifyingUserName;
    @nz
    private nu lastViewedByMeDate;
    @nz
    private nu markedViewedByMeDate;
    @nz
    public String md5Checksum;
    @nz
    public String mimeType;
    @nz
    private nu modifiedByMeDate;
    @nz
    private nu modifiedDate;
    @nz
    private Map<String, String> openWithLinks;
    @nz
    private String originalFilename;
    @nz
    private Boolean ownedByMe;
    @nz
    private List<String> ownerNames;
    @nz
    private List<pc> owners;
    @nz
    private List<Object> parents;
    @nz
    private List<pb> permissions;
    @nz
    private List<Object> properties;
    @nz
    @na
    private Long quotaBytesUsed;
    @nz
    private String selfLink;
    @nz
    private Boolean shareable;
    @nz
    private Boolean shared;
    @nz
    private nu sharedWithMeDate;
    @nz
    private pc sharingUser;
    @nz
    private List<String> spaces;
    @nz
    private d thumbnail;
    @nz
    private String thumbnailLink;
    @nz
    public String title;
    @nz
    private pb userPermission;
    @nz
    @na
    private Long version;
    @nz
    private e videoMediaMetadata;
    @nz
    private String webContentLink;
    @nz
    private String webViewLink;
    @nz
    private Boolean writersCanShare;

    /* renamed from: oz$a */
    /* compiled from: File */
    public static final class a extends mu {
        @nz
        private Float aperture;
        @nz
        private String cameraMake;
        @nz
        private String cameraModel;
        @nz
        private String colorSpace;
        @nz
        private String date;
        @nz
        private Float exposureBias;
        @nz
        private String exposureMode;
        @nz
        private Float exposureTime;
        @nz
        private Boolean flashUsed;
        @nz
        private Float focalLength;
        @nz
        private Integer height;
        @nz
        private Integer isoSpeed;
        @nz
        private String lens;
        @nz
        private C0007a location;
        @nz
        private Float maxApertureValue;
        @nz
        private String meteringMode;
        @nz
        private Integer rotation;
        @nz
        private String sensor;
        @nz
        private Integer subjectDistance;
        @nz
        private String whiteBalance;
        @nz
        private Integer width;

        /* renamed from: oz$a$a  reason: collision with other inner class name */
        /* compiled from: File */
        public static final class C0007a extends mu {
            @nz
            private Double altitude;
            @nz
            private Double latitude;
            @nz
            private Double longitude;

            /* access modifiers changed from: private */
            /* renamed from: b */
            public C0007a d(String str, Object obj) {
                return (C0007a) super.d(str, obj);
            }

            public final /* bridge */ /* synthetic */ mu a() {
                return (C0007a) super.d();
            }

            public final /* synthetic */ Object clone() {
                return (C0007a) super.d();
            }

            public final /* synthetic */ nw d() {
                return (C0007a) super.d();
            }
        }

        /* access modifiers changed from: private */
        /* renamed from: b */
        public a d(String str, Object obj) {
            return (a) super.d(str, obj);
        }

        public final /* bridge */ /* synthetic */ mu a() {
            return (a) super.d();
        }

        public final /* synthetic */ Object clone() {
            return (a) super.d();
        }

        public final /* synthetic */ nw d() {
            return (a) super.d();
        }
    }

    /* renamed from: oz$b */
    /* compiled from: File */
    public static final class b extends mu {
        @nz
        private String text;

        /* access modifiers changed from: private */
        /* renamed from: b */
        public b d(String str, Object obj) {
            return (b) super.d(str, obj);
        }

        public final /* bridge */ /* synthetic */ mu a() {
            return (b) super.d();
        }

        public final /* synthetic */ Object clone() {
            return (b) super.d();
        }

        public final /* synthetic */ nw d() {
            return (b) super.d();
        }
    }

    /* renamed from: oz$c */
    /* compiled from: File */
    public static final class c extends mu {
        @nz
        private Boolean hidden;
        @nz
        private Boolean restricted;
        @nz
        private Boolean starred;
        @nz
        private Boolean trashed;
        @nz
        private Boolean viewed;

        /* access modifiers changed from: private */
        /* renamed from: b */
        public c d(String str, Object obj) {
            return (c) super.d(str, obj);
        }

        public final /* bridge */ /* synthetic */ mu a() {
            return (c) super.d();
        }

        public final /* synthetic */ Object clone() {
            return (c) super.d();
        }

        public final /* synthetic */ nw d() {
            return (c) super.d();
        }
    }

    /* renamed from: oz$d */
    /* compiled from: File */
    public static final class d extends mu {
        @nz
        private String image;
        @nz
        private String mimeType;

        /* access modifiers changed from: private */
        /* renamed from: b */
        public d d(String str, Object obj) {
            return (d) super.d(str, obj);
        }

        public final /* bridge */ /* synthetic */ mu a() {
            return (d) super.d();
        }

        public final /* synthetic */ Object clone() {
            return (d) super.d();
        }

        public final /* synthetic */ nw d() {
            return (d) super.d();
        }
    }

    /* renamed from: oz$e */
    /* compiled from: File */
    public static final class e extends mu {
        @nz
        @na
        private Long durationMillis;
        @nz
        private Integer height;
        @nz
        private Integer width;

        /* access modifiers changed from: private */
        /* renamed from: b */
        public e d(String str, Object obj) {
            return (e) super.d(str, obj);
        }

        public final /* bridge */ /* synthetic */ mu a() {
            return (e) super.d();
        }

        public final /* synthetic */ Object clone() {
            return (e) super.d();
        }

        public final /* synthetic */ nw d() {
            return (e) super.d();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public oz d(String str, Object obj) {
        return (oz) super.d(str, obj);
    }

    public final /* bridge */ /* synthetic */ mu a() {
        return (oz) super.d();
    }

    public final /* synthetic */ Object clone() {
        return (oz) super.d();
    }

    public final /* synthetic */ nw d() {
        return (oz) super.d();
    }
}
