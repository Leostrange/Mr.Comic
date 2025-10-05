package defpackage;

/* renamed from: wb  reason: default package */
/* compiled from: VMOpType */
public enum wb {
    VM_OPREG(0),
    VM_OPINT(1),
    VM_OPREGMEM(2),
    VM_OPNONE(3);
    
    private int e;

    private wb(int i) {
        this.e = i;
    }
}
