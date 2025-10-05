package defpackage;

import defpackage.afa;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.ExtractAskMode;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IArchiveExtractCallback;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.impl.InArchiveImpl;
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

/* renamed from: afc  reason: default package */
/* compiled from: GenericArchiveFile */
public final class afc implements afe {
    private ISevenZipInArchive a;
    private ArrayList<ISimpleInArchiveItem> b;
    private IInStream c;
    private File d;
    private boolean e;

    static String a(ISimpleInArchiveItem iSimpleInArchiveItem) {
        String str = null;
        try {
            str = iSimpleInArchiveItem.getPath();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str == null ? String.valueOf(iSimpleInArchiveItem.getItemIndex()) : str;
    }

    private boolean a(IInStream iInStream) {
        boolean z = false;
        this.c = iInStream;
        try {
            if (sk.a() != null) {
                this.a = sk.a((ArchiveFormat) null, this.c);
                if (this.a == null) {
                    this.a = sk.a(ArchiveFormat.ZIP, this.c);
                }
                if (this.a != null) {
                    this.b = new ArrayList<>();
                    try {
                        for (ISimpleInArchiveItem iSimpleInArchiveItem : this.a.getSimpleInterface().getArchiveItems()) {
                            if (iSimpleInArchiveItem != null && !iSimpleInArchiveItem.isFolder() && afa.a(a(iSimpleInArchiveItem), b(iSimpleInArchiveItem))) {
                                this.b.add(iSimpleInArchiveItem);
                            }
                        }
                        Collections.sort(this.b, new Comparator<ISimpleInArchiveItem>() {
                            public final /* synthetic */ int compare(Object obj, Object obj2) {
                                return agv.a(afc.a((ISimpleInArchiveItem) obj), afc.a((ISimpleInArchiveItem) obj2));
                            }
                        });
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    new StringBuilder("Opened Archived, Format: ").append(this.a.getArchiveFormat().getMethodName()).append(", Page count: ").append(this.b.size());
                    z = this.b.size() > 0 ? e() : true;
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            this.a = null;
        }
        if (this.a == null && this.c != null) {
            try {
                this.c.close();
                this.c = null;
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        return z;
    }

    private static long b(ISimpleInArchiveItem iSimpleInArchiveItem) {
        try {
            Long size = iSimpleInArchiveItem.getSize();
            if (size != null) {
                return size.longValue();
            }
            return -1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private static void b(File file) {
        int i = 0;
        File[] listFiles = file.listFiles();
        new StringBuilder("Purging Cache of ").append(listFiles == null ? 0 : listFiles.length).append(" files");
        if (listFiles != null) {
            for (File a2 : listFiles) {
                agz.a(a2);
            }
            File[] listFiles2 = file.listFiles();
            StringBuilder sb = new StringBuilder("Purged Cache ");
            if (listFiles2 != null) {
                i = listFiles2.length;
            }
            sb.append(i).append(" files remaining.");
        }
    }

    private boolean e() {
        ArchiveFormat archiveFormat = this.a.getArchiveFormat();
        if (archiveFormat == ArchiveFormat.SEVEN_ZIP || archiveFormat == ArchiveFormat.TAR) {
            return true;
        }
        try {
            InArchiveImpl.ExtractSlowCallback extractSlowCallback = new InArchiveImpl.ExtractSlowCallback((ISequentialOutStream) null);
            this.a.extract(new int[]{this.b.get(0).getItemIndex()}, true, extractSlowCallback);
            return extractSlowCallback.getExtractOperationResult() == ExtractOperationResult.OK;
        } catch (SevenZipException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void f() {
        long j;
        try {
            int[] iArr = new int[this.b.size()];
            long j2 = 0;
            Iterator<ISimpleInArchiveItem> it = this.b.iterator();
            int i = 0;
            while (it.hasNext()) {
                ISimpleInArchiveItem next = it.next();
                iArr[i] = next.getItemIndex();
                try {
                    j = next.getSize().longValue() + j2;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    j = j2;
                }
                i++;
                j2 = j;
            }
            File f = agv.f();
            if (f != null && f.exists() && j2 < ahc.a()) {
                this.d = new File(f.getAbsolutePath() + "/pages");
                if (this.d.exists()) {
                    b(this.d);
                } else {
                    this.d.mkdir();
                }
                this.a.extract(iArr, false, new IArchiveExtractCallback() {
                    public final ISequentialOutStream getStream(int i, ExtractAskMode extractAskMode) {
                        try {
                            return new sj(afc.this.b(i));
                        } catch (FileNotFoundException e) {
                            throw new SevenZipException((Throwable) e);
                        }
                    }

                    public final void prepareOperation(ExtractAskMode extractAskMode) {
                    }

                    public final void setCompleted(long j) {
                    }

                    public final void setOperationResult(ExtractOperationResult extractOperationResult) {
                    }

                    public final void setTotal(long j) {
                    }
                });
                this.e = true;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final aff a(int i) {
        return new afd(this.b.get(i), b(this.b.get(i).getItemIndex()));
    }

    public final void a() {
        ArchiveFormat archiveFormat = this.a.getArchiveFormat();
        if (archiveFormat == ArchiveFormat.SEVEN_ZIP || archiveFormat == ArchiveFormat.TAR) {
            new StringBuilder("Preparing page cache for format: ").append(archiveFormat);
            f();
        }
    }

    public final boolean a(File file) {
        try {
            return a((IInStream) new RandomAccessFileInStream(new RandomAccessFile(file, "r")));
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final File b(int i) {
        if (this.d != null) {
            return new File(this.d.getAbsolutePath() + "/" + i);
        }
        return null;
    }

    public final void b() {
        if (this.e) {
            b(this.d);
        }
        if (this.a != null) {
            try {
                this.a.close();
                this.a = null;
            } catch (SevenZipException e2) {
                e2.printStackTrace();
                this.a = null;
            }
        }
        if (this.c != null) {
            try {
                this.c.close();
                this.c = null;
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
    }

    public final int c() {
        return this.b.size();
    }

    public final afa.a d() {
        return afa.a.LIB7ZIP;
    }
}
