// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class mm extends ll
{

    public Object b;

    public mm(Object obj)
    {
        super(mn.a);
        b = ni.a(obj);
    }

    private static boolean a(boolean flag, Writer writer, String s, Object obj)
    {
        boolean flag1 = flag;
        if (obj != null)
        {
            if (ns.a(obj))
            {
                flag1 = flag;
            } else
            {
                if (flag)
                {
                    flag = false;
                } else
                {
                    writer.write("&");
                }
                writer.write(s);
                if (obj instanceof Enum)
                {
                    s = nv.a((Enum)obj).c;
                } else
                {
                    s = obj.toString();
                }
                s = op.a(s);
                flag1 = flag;
                if (s.length() != 0)
                {
                    writer.write("=");
                    writer.write(s);
                    return flag;
                }
            }
        }
        return flag1;
    }

    public final void a(OutputStream outputstream)
    {
        outputstream = new BufferedWriter(new OutputStreamWriter(outputstream, b()));
        Iterator iterator = ns.b(b).entrySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj1 = (java.util.Map.Entry)iterator.next();
            Object obj = ((java.util.Map.Entry) (obj1)).getValue();
            if (obj != null)
            {
                obj1 = op.a((String)((java.util.Map.Entry) (obj1)).getKey());
                Class class1 = obj.getClass();
                if ((obj instanceof Iterable) || class1.isArray())
                {
                    obj = on.a(obj).iterator();
                    while (((Iterator) (obj)).hasNext()) 
                    {
                        flag = a(flag, ((Writer) (outputstream)), ((String) (obj1)), ((Iterator) (obj)).next());
                    }
                } else
                {
                    flag = a(flag, ((Writer) (outputstream)), ((String) (obj1)), obj);
                }
            }
        } while (true);
        outputstream.flush();
    }
}
