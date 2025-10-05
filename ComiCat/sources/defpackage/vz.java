package defpackage;

/* renamed from: vz  reason: default package */
/* compiled from: VMCommands */
public enum vz {
    VM_MOV(0),
    VM_CMP(1),
    VM_ADD(2),
    VM_SUB(3),
    VM_JZ(4),
    VM_JNZ(5),
    VM_INC(6),
    VM_DEC(7),
    VM_JMP(8),
    VM_XOR(9),
    VM_AND(10),
    VM_OR(11),
    VM_TEST(12),
    VM_JS(13),
    VM_JNS(14),
    VM_JB(15),
    VM_JBE(16),
    VM_JA(17),
    VM_JAE(18),
    VM_PUSH(19),
    VM_POP(20),
    VM_CALL(21),
    VM_RET(22),
    VM_NOT(23),
    VM_SHL(24),
    VM_SHR(25),
    VM_SAR(26),
    VM_NEG(27),
    VM_PUSHA(28),
    VM_POPA(29),
    VM_PUSHF(30),
    VM_POPF(31),
    VM_MOVZX(32),
    VM_MOVSX(33),
    VM_XCHG(34),
    VM_MUL(35),
    VM_DIV(36),
    VM_ADC(37),
    VM_SBB(38),
    VM_PRINT(39),
    VM_MOVB(40),
    VM_MOVD(41),
    VM_CMPB(42),
    VM_CMPD(43),
    VM_ADDB(44),
    VM_ADDD(45),
    VM_SUBB(46),
    VM_SUBD(47),
    VM_INCB(48),
    VM_INCD(49),
    VM_DECB(50),
    VM_DECD(51),
    VM_NEGB(52),
    VM_NEGD(53),
    VM_STANDARD(54);
    
    int ad;

    private vz(int i) {
        this.ad = i;
    }

    public static vz a(int i) {
        if (VM_MOV.b(i)) {
            return VM_MOV;
        }
        if (VM_CMP.b(i)) {
            return VM_CMP;
        }
        if (VM_ADD.b(i)) {
            return VM_ADD;
        }
        if (VM_SUB.b(i)) {
            return VM_SUB;
        }
        if (VM_JZ.b(i)) {
            return VM_JZ;
        }
        if (VM_JNZ.b(i)) {
            return VM_JNZ;
        }
        if (VM_INC.b(i)) {
            return VM_INC;
        }
        if (VM_DEC.b(i)) {
            return VM_DEC;
        }
        if (VM_JMP.b(i)) {
            return VM_JMP;
        }
        if (VM_XOR.b(i)) {
            return VM_XOR;
        }
        if (VM_AND.b(i)) {
            return VM_AND;
        }
        if (VM_OR.b(i)) {
            return VM_OR;
        }
        if (VM_TEST.b(i)) {
            return VM_TEST;
        }
        if (VM_JS.b(i)) {
            return VM_JS;
        }
        if (VM_JNS.b(i)) {
            return VM_JNS;
        }
        if (VM_JB.b(i)) {
            return VM_JB;
        }
        if (VM_JBE.b(i)) {
            return VM_JBE;
        }
        if (VM_JA.b(i)) {
            return VM_JA;
        }
        if (VM_JAE.b(i)) {
            return VM_JAE;
        }
        if (VM_PUSH.b(i)) {
            return VM_PUSH;
        }
        if (VM_POP.b(i)) {
            return VM_POP;
        }
        if (VM_CALL.b(i)) {
            return VM_CALL;
        }
        if (VM_RET.b(i)) {
            return VM_RET;
        }
        if (VM_NOT.b(i)) {
            return VM_NOT;
        }
        if (VM_SHL.b(i)) {
            return VM_SHL;
        }
        if (VM_SHR.b(i)) {
            return VM_SHR;
        }
        if (VM_SAR.b(i)) {
            return VM_SAR;
        }
        if (VM_NEG.b(i)) {
            return VM_NEG;
        }
        if (VM_PUSHA.b(i)) {
            return VM_PUSHA;
        }
        if (VM_POPA.b(i)) {
            return VM_POPA;
        }
        if (VM_PUSHF.b(i)) {
            return VM_PUSHF;
        }
        if (VM_POPF.b(i)) {
            return VM_POPF;
        }
        if (VM_MOVZX.b(i)) {
            return VM_MOVZX;
        }
        if (VM_MOVSX.b(i)) {
            return VM_MOVSX;
        }
        if (VM_XCHG.b(i)) {
            return VM_XCHG;
        }
        if (VM_MUL.b(i)) {
            return VM_MUL;
        }
        if (VM_DIV.b(i)) {
            return VM_DIV;
        }
        if (VM_ADC.b(i)) {
            return VM_ADC;
        }
        if (VM_SBB.b(i)) {
            return VM_SBB;
        }
        if (VM_PRINT.b(i)) {
            return VM_PRINT;
        }
        if (VM_MOVB.b(i)) {
            return VM_MOVB;
        }
        if (VM_MOVD.b(i)) {
            return VM_MOVD;
        }
        if (VM_CMPB.b(i)) {
            return VM_CMPB;
        }
        if (VM_CMPD.b(i)) {
            return VM_CMPD;
        }
        if (VM_ADDB.b(i)) {
            return VM_ADDB;
        }
        if (VM_ADDD.b(i)) {
            return VM_ADDD;
        }
        if (VM_SUBB.b(i)) {
            return VM_SUBB;
        }
        if (VM_SUBD.b(i)) {
            return VM_SUBD;
        }
        if (VM_INCB.b(i)) {
            return VM_INCB;
        }
        if (VM_INCD.b(i)) {
            return VM_INCD;
        }
        if (VM_DECB.b(i)) {
            return VM_DECB;
        }
        if (VM_DECD.b(i)) {
            return VM_DECD;
        }
        if (VM_NEGB.b(i)) {
            return VM_NEGB;
        }
        if (VM_NEGD.b(i)) {
            return VM_NEGD;
        }
        if (VM_STANDARD.b(i)) {
            return VM_STANDARD;
        }
        return null;
    }

    private boolean b(int i) {
        return this.ad == i;
    }
}
