// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class mk extends ll
{
    public static final class a
    {

        ls a;
        lw b;
        lt c;

        public a()
        {
            this(null);
        }

        public a(ls ls1)
        {
            this(ls1, (byte)0);
        }

        private a(ls ls1, byte byte0)
        {
            b = null;
            a = ls1;
        }
    }


    public ArrayList b;

    public mk()
    {
        super((new ly("multipart/related")).a("boundary", "__END_OF_PART__"));
        b = new ArrayList();
    }

    public final void a(OutputStream outputstream)
    {
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(outputstream, b());
        String s = super.a.a("boundary");
        Iterator iterator = b.iterator();
        while (iterator.hasNext()) 
        {
            Object obj1 = (a)iterator.next();
            lw lw1 = new lw();
            lw1.acceptEncoding = lw.a(null);
            if (((a) (obj1)).b != null)
            {
                lw1.a(((a) (obj1)).b);
            }
            lw1.b(null).e(null).d(null).a(null).a("Content-Transfer-Encoding", null);
            Object obj = ((a) (obj1)).a;
            if (obj != null)
            {
                lw1.a("Content-Transfer-Encoding", Arrays.asList(new String[] {
                    "binary"
                }));
                lw1.d(((ls) (obj)).c());
                obj1 = ((a) (obj1)).c;
                long l;
                if (obj1 == null)
                {
                    l = ((ls) (obj)).a();
                } else
                {
                    lw1.b(((lt) (obj1)).a());
                    obj1 = new lu(((oj) (obj)), ((lt) (obj1)));
                    l = ll.a(((ls) (obj)));
                    obj = obj1;
                }
                obj1 = obj;
                if (l != -1L)
                {
                    lw1.a(Long.valueOf(l));
                    obj1 = obj;
                }
            } else
            {
                obj1 = null;
            }
            outputstreamwriter.write("--");
            outputstreamwriter.write(s);
            outputstreamwriter.write("\r\n");
            lw.a(lw1, outputstreamwriter);
            if (obj1 != null)
            {
                outputstreamwriter.write("\r\n");
                outputstreamwriter.flush();
                ((oj) (obj1)).a(outputstream);
            }
            outputstreamwriter.write("\r\n");
        }
        outputstreamwriter.write("--");
        outputstreamwriter.write(s);
        outputstreamwriter.write("--");
        outputstreamwriter.write("\r\n");
        outputstreamwriter.flush();
    }

    public final boolean d()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            if (!((a)iterator.next()).a.d())
            {
                return false;
            }
        }

        return true;
    }
}
