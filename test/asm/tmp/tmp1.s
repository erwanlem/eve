
test/asm/tmp/tmp1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_ceil_0(float)>:
       0:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 9 <func_ceil_0(float)+0x9>
       7:	00 00 
       9:	c5 f8 57 d1          	vxorps %xmm1,%xmm0,%xmm2
       d:	c5 fa 5b da          	vcvttps2dq %xmm2,%xmm3
      11:	c4 e2 79 18 25 00 00 	vbroadcastss 0x0(%rip),%xmm4        # 1a <func_ceil_0(float)+0x1a>
      18:	00 00 
      1a:	c5 f8 5b db          	vcvtdq2ps %xmm3,%xmm3
      1e:	c5 f8 54 c4          	vandps %xmm4,%xmm0,%xmm0
      22:	c5 fa c2 05 00 00 00 	vcmpnless 0x0(%rip),%xmm0,%xmm0        # 2b <func_ceil_0(float)+0x2b>
      29:	00 06 
      2b:	c4 e3 61 4a c2 00    	vblendvps %xmm0,%xmm2,%xmm3,%xmm0
      31:	c5 fa 58 1d 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm3        # 39 <func_ceil_0(float)+0x39>
      38:	00 
      39:	c5 ea c2 d0 05       	vcmpnltss %xmm0,%xmm2,%xmm2
      3e:	c4 e3 61 4a c0 20    	vblendvps %xmm2,%xmm0,%xmm3,%xmm0
      44:	c5 f8 57 c1          	vxorps %xmm1,%xmm0,%xmm0
      48:	c3                   	ret    
      49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000050 <func_ceil_1(char)>:
      50:	89 f8                	mov    %edi,%eax
      52:	c3                   	ret    
      53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      5a:	00 00 00 
      5d:	0f 1f 00             	nopl   (%rax)

0000000000000060 <func_ceil_2(double)>:
      60:	c5 f9 28 0d 00 00 00 	vmovapd 0x0(%rip),%xmm1        # 68 <func_ceil_2(double)+0x8>
      67:	00 
      68:	c5 f9 57 d1          	vxorpd %xmm1,%xmm0,%xmm2
      6c:	c4 e1 fb 2c c2       	vcvttsd2si %xmm2,%rax
      71:	c4 e1 e3 2a d8       	vcvtsi2sd %rax,%xmm3,%xmm3
      76:	c5 f9 54 05 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm0        # 7e <func_ceil_2(double)+0x1e>
      7d:	00 
      7e:	c5 fb c2 05 00 00 00 	vcmpnlesd 0x0(%rip),%xmm0,%xmm0        # 87 <func_ceil_2(double)+0x27>
      85:	00 06 
      87:	c4 e3 61 4b c2 00    	vblendvpd %xmm0,%xmm2,%xmm3,%xmm0
      8d:	c5 fb 58 1d 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm3        # 95 <func_ceil_2(double)+0x35>
      94:	00 
      95:	c5 eb c2 d0 05       	vcmpnltsd %xmm0,%xmm2,%xmm2
      9a:	c4 e3 61 4b c0 20    	vblendvpd %xmm2,%xmm0,%xmm3,%xmm0
      a0:	c5 f9 57 c1          	vxorpd %xmm1,%xmm0,%xmm0
      a4:	c3                   	ret    
      a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      ac:	00 00 00 
      af:	90                   	nop

00000000000000b0 <func_ceil_3(int)>:
      b0:	89 f8                	mov    %edi,%eax
      b2:	c3                   	ret    
      b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      ba:	00 00 00 
      bd:	0f 1f 00             	nopl   (%rax)

00000000000000c0 <func_absmax_4(float, float)>:
      c0:	c5 f2 5f c0          	vmaxss %xmm0,%xmm1,%xmm0
      c4:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # cd <func_absmax_4(float, float)+0xd>
      cb:	00 00 
      cd:	c5 f8 54 c1          	vandps %xmm1,%xmm0,%xmm0
      d1:	c3                   	ret    
      d2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      d9:	00 00 00 
      dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000000e0 <func_absmax_5(double, double)>:
      e0:	c5 f3 5f c0          	vmaxsd %xmm0,%xmm1,%xmm0
      e4:	c5 f9 54 05 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm0        # ec <func_absmax_5(double, double)+0xc>
      eb:	00 
      ec:	c3                   	ret    
      ed:	0f 1f 00             	nopl   (%rax)

00000000000000f0 <func_absmax_6(long, long)>:
      f0:	48 39 fe             	cmp    %rdi,%rsi
      f3:	48 0f 4f fe          	cmovg  %rsi,%rdi
      f7:	48 89 f8             	mov    %rdi,%rax
      fa:	48 f7 d8             	neg    %rax
      fd:	48 0f 48 c7          	cmovs  %rdi,%rax
     101:	c3                   	ret    
     102:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     109:	00 00 00 
     10c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000110 <func_absmax_7(int, int)>:
     110:	39 fe                	cmp    %edi,%esi
     112:	0f 4f fe             	cmovg  %esi,%edi
     115:	89 f8                	mov    %edi,%eax
     117:	f7 d8                	neg    %eax
     119:	0f 48 c7             	cmovs  %edi,%eax
     11c:	c3                   	ret    
     11d:	0f 1f 00             	nopl   (%rax)

0000000000000120 <func_absmax_8(short, short)>:
     120:	66 39 fe             	cmp    %di,%si
     123:	0f 4f fe             	cmovg  %esi,%edi
     126:	89 f8                	mov    %edi,%eax
     128:	66 f7 d8             	neg    %ax
     12b:	66 0f 48 c7          	cmovs  %di,%ax
     12f:	c3                   	ret    

0000000000000130 <func_absmax_9(signed char, signed char)>:
     130:	40 38 fe             	cmp    %dil,%sil
     133:	0f 4f fe             	cmovg  %esi,%edi
     136:	89 f9                	mov    %edi,%ecx
     138:	c0 f9 07             	sar    $0x7,%cl
     13b:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     13e:	30 c8                	xor    %cl,%al
     140:	c3                   	ret    
     141:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     148:	00 00 00 
     14b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000150 <func_absmax_10(unsigned long, unsigned long)>:
     150:	48 89 f8             	mov    %rdi,%rax
     153:	48 39 fe             	cmp    %rdi,%rsi
     156:	48 0f 47 c6          	cmova  %rsi,%rax
     15a:	c3                   	ret    
     15b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000160 <func_absmax_11(unsigned int, unsigned int)>:
     160:	89 f8                	mov    %edi,%eax
     162:	39 fe                	cmp    %edi,%esi
     164:	0f 47 c6             	cmova  %esi,%eax
     167:	c3                   	ret    
     168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     16f:	00 

0000000000000170 <func_absmax_12(unsigned short, unsigned short)>:
     170:	89 f8                	mov    %edi,%eax
     172:	66 39 c6             	cmp    %ax,%si
     175:	0f 47 c6             	cmova  %esi,%eax
     178:	c3                   	ret    
     179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000180 <func_absmax_13(unsigned char, unsigned char)>:
     180:	89 f8                	mov    %edi,%eax
     182:	40 38 c6             	cmp    %al,%sil
     185:	0f 47 c6             	cmova  %esi,%eax
     188:	c3                   	ret    
     189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000190 <func_absmax_14(unsigned long, unsigned long)>:
     190:	48 89 f8             	mov    %rdi,%rax
     193:	48 39 fe             	cmp    %rdi,%rsi
     196:	48 0f 47 c6          	cmova  %rsi,%rax
     19a:	c3                   	ret    
     19b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000001a0 <func_absmax_15(unsigned int, unsigned int)>:
     1a0:	89 f8                	mov    %edi,%eax
     1a2:	39 fe                	cmp    %edi,%esi
     1a4:	0f 47 c6             	cmova  %esi,%eax
     1a7:	c3                   	ret    
     1a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     1af:	00 

00000000000001b0 <func_absmax_16(unsigned short, unsigned short)>:
     1b0:	89 f8                	mov    %edi,%eax
     1b2:	66 39 c6             	cmp    %ax,%si
     1b5:	0f 47 c6             	cmova  %esi,%eax
     1b8:	c3                   	ret    
     1b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001c0 <func_absmax_17(unsigned char, unsigned char)>:
     1c0:	89 f8                	mov    %edi,%eax
     1c2:	40 38 c6             	cmp    %al,%sil
     1c5:	0f 47 c6             	cmova  %esi,%eax
     1c8:	c3                   	ret    
     1c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001d0 <func_bit_xor_18(float, float)>:
     1d0:	c5 f0 57 c0          	vxorps %xmm0,%xmm1,%xmm0
     1d4:	c3                   	ret    
     1d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     1dc:	00 00 00 
     1df:	90                   	nop

00000000000001e0 <func_bit_xor_19(double, double)>:
     1e0:	c5 f0 57 c0          	vxorps %xmm0,%xmm1,%xmm0
     1e4:	c3                   	ret    
     1e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     1ec:	00 00 00 
     1ef:	90                   	nop

00000000000001f0 <func_bit_xor_20(long, long)>:
     1f0:	48 89 f8             	mov    %rdi,%rax
     1f3:	48 31 f0             	xor    %rsi,%rax
     1f6:	c3                   	ret    
     1f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     1fe:	00 00 

0000000000000200 <func_bit_xor_21(int, int)>:
     200:	89 f8                	mov    %edi,%eax
     202:	31 f0                	xor    %esi,%eax
     204:	c3                   	ret    
     205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     20c:	00 00 00 
     20f:	90                   	nop

0000000000000210 <func_bit_xor_22(short, short)>:
     210:	89 f8                	mov    %edi,%eax
     212:	31 f0                	xor    %esi,%eax
     214:	c3                   	ret    
     215:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     21c:	00 00 00 
     21f:	90                   	nop

0000000000000220 <func_bit_xor_23(signed char, signed char)>:
     220:	89 f8                	mov    %edi,%eax
     222:	31 f0                	xor    %esi,%eax
     224:	c3                   	ret    
     225:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     22c:	00 00 00 
     22f:	90                   	nop

0000000000000230 <func_bit_xor_24(unsigned long, unsigned long)>:
     230:	48 89 f8             	mov    %rdi,%rax
     233:	48 31 f0             	xor    %rsi,%rax
     236:	c3                   	ret    
     237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     23e:	00 00 

0000000000000240 <func_bit_xor_25(unsigned int, unsigned int)>:
     240:	89 f8                	mov    %edi,%eax
     242:	31 f0                	xor    %esi,%eax
     244:	c3                   	ret    
     245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     24c:	00 00 00 
     24f:	90                   	nop

0000000000000250 <func_bit_xor_26(unsigned short, unsigned short)>:
     250:	89 f8                	mov    %edi,%eax
     252:	31 f0                	xor    %esi,%eax
     254:	c3                   	ret    
     255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     25c:	00 00 00 
     25f:	90                   	nop

0000000000000260 <func_bit_xor_27(unsigned char, unsigned char)>:
     260:	89 f8                	mov    %edi,%eax
     262:	31 f0                	xor    %esi,%eax
     264:	c3                   	ret    
     265:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     26c:	00 00 00 
     26f:	90                   	nop

0000000000000270 <func_bit_xor_28(unsigned long, unsigned long)>:
     270:	48 89 f8             	mov    %rdi,%rax
     273:	48 31 f0             	xor    %rsi,%rax
     276:	c3                   	ret    
     277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     27e:	00 00 

0000000000000280 <func_bit_xor_29(unsigned int, unsigned int)>:
     280:	89 f8                	mov    %edi,%eax
     282:	31 f0                	xor    %esi,%eax
     284:	c3                   	ret    
     285:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     28c:	00 00 00 
     28f:	90                   	nop

0000000000000290 <func_bit_xor_30(unsigned short, unsigned short)>:
     290:	89 f8                	mov    %edi,%eax
     292:	31 f0                	xor    %esi,%eax
     294:	c3                   	ret    
     295:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     29c:	00 00 00 
     29f:	90                   	nop

00000000000002a0 <func_bit_xor_31(unsigned char, unsigned char)>:
     2a0:	89 f8                	mov    %edi,%eax
     2a2:	31 f0                	xor    %esi,%eax
     2a4:	c3                   	ret    
     2a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     2ac:	00 00 00 
     2af:	90                   	nop

00000000000002b0 <func_abs_32(float)>:
     2b0:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 2b9 <func_abs_32(float)+0x9>
     2b7:	00 00 
     2b9:	c5 f8 54 c1          	vandps %xmm1,%xmm0,%xmm0
     2bd:	c3                   	ret    
     2be:	66 90                	xchg   %ax,%ax

00000000000002c0 <func_abs_33(double)>:
     2c0:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # 2c8 <func_abs_33(double)+0x8>
     2c7:	00 
     2c8:	c3                   	ret    
     2c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002d0 <func_abs_34(long)>:
     2d0:	48 89 f8             	mov    %rdi,%rax
     2d3:	48 f7 d8             	neg    %rax
     2d6:	48 0f 48 c7          	cmovs  %rdi,%rax
     2da:	c3                   	ret    
     2db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002e0 <func_abs_35(int)>:
     2e0:	89 f8                	mov    %edi,%eax
     2e2:	f7 d8                	neg    %eax
     2e4:	0f 48 c7             	cmovs  %edi,%eax
     2e7:	c3                   	ret    
     2e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     2ef:	00 

00000000000002f0 <func_abs_36(short)>:
     2f0:	89 f8                	mov    %edi,%eax
     2f2:	66 f7 d8             	neg    %ax
     2f5:	66 0f 48 c7          	cmovs  %di,%ax
     2f9:	c3                   	ret    
     2fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000300 <func_abs_37(signed char)>:
     300:	89 f9                	mov    %edi,%ecx
     302:	c0 f9 07             	sar    $0x7,%cl
     305:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     308:	30 c8                	xor    %cl,%al
     30a:	c3                   	ret    
     30b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000310 <func_abs_38(unsigned long)>:
     310:	48 89 f8             	mov    %rdi,%rax
     313:	c3                   	ret    
     314:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     31b:	00 00 00 
     31e:	66 90                	xchg   %ax,%ax

0000000000000320 <func_abs_39(unsigned int)>:
     320:	89 f8                	mov    %edi,%eax
     322:	c3                   	ret    
     323:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     32a:	00 00 00 
     32d:	0f 1f 00             	nopl   (%rax)

0000000000000330 <func_abs_40(unsigned short)>:
     330:	89 f8                	mov    %edi,%eax
     332:	c3                   	ret    
     333:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     33a:	00 00 00 
     33d:	0f 1f 00             	nopl   (%rax)

0000000000000340 <func_abs_41(unsigned char)>:
     340:	89 f8                	mov    %edi,%eax
     342:	c3                   	ret    
     343:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     34a:	00 00 00 
     34d:	0f 1f 00             	nopl   (%rax)

0000000000000350 <func_abs_42(unsigned long)>:
     350:	48 89 f8             	mov    %rdi,%rax
     353:	c3                   	ret    
     354:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     35b:	00 00 00 
     35e:	66 90                	xchg   %ax,%ax

0000000000000360 <func_abs_43(unsigned int)>:
     360:	89 f8                	mov    %edi,%eax
     362:	c3                   	ret    
     363:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     36a:	00 00 00 
     36d:	0f 1f 00             	nopl   (%rax)

0000000000000370 <func_abs_44(unsigned short)>:
     370:	89 f8                	mov    %edi,%eax
     372:	c3                   	ret    
     373:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     37a:	00 00 00 
     37d:	0f 1f 00             	nopl   (%rax)

0000000000000380 <func_abs_45(unsigned char)>:
     380:	89 f8                	mov    %edi,%eax
     382:	c3                   	ret    
     383:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     38a:	00 00 00 
     38d:	0f 1f 00             	nopl   (%rax)

0000000000000390 <func_fmod_46(float, float)>:
     390:	c4 e3 71 21 d8 10    	vinsertps $0x10,%xmm0,%xmm1,%xmm3
     396:	c4 e2 79 18 15 00 00 	vbroadcastss 0x0(%rip),%xmm2        # 39f <func_fmod_46(float, float)+0xf>
     39d:	00 00 
     39f:	c5 e0 54 da          	vandps %xmm2,%xmm3,%xmm3
     3a3:	c4 e2 79 18 25 00 00 	vbroadcastss 0x0(%rip),%xmm4        # 3ac <func_fmod_46(float, float)+0x1c>
     3aa:	00 00 
     3ac:	c5 e0 c2 dc 04       	vcmpneqps %xmm4,%xmm3,%xmm3
     3b1:	c4 e2 79 25 db       	vpmovsxdq %xmm3,%xmm3
     3b6:	c5 f9 50 c3          	vmovmskpd %xmm3,%eax
     3ba:	a8 01                	test   $0x1,%al
     3bc:	75 21                	jne    3df <func_fmod_46(float, float)+0x4f>
     3be:	c5 f8 28 e0          	vmovaps %xmm0,%xmm4
     3c2:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
     3c6:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 3ce <func_fmod_46(float, float)+0x3e>
     3cd:	00 
     3ce:	a8 02                	test   $0x2,%al
     3d0:	74 54                	je     426 <func_fmod_46(float, float)+0x96>
     3d2:	c5 fa c2 eb 04       	vcmpneqss %xmm3,%xmm0,%xmm5
     3d7:	c4 e3 79 4a e4 50    	vblendvps %xmm5,%xmm4,%xmm0,%xmm4
     3dd:	eb 4b                	jmp    42a <func_fmod_46(float, float)+0x9a>
     3df:	c5 fa 5e d9          	vdivss %xmm1,%xmm0,%xmm3
     3e3:	c5 e0 54 d2          	vandps %xmm2,%xmm3,%xmm2
     3e7:	c5 fa 5b e3          	vcvttps2dq %xmm3,%xmm4
     3eb:	c5 f8 5b e4          	vcvtdq2ps %xmm4,%xmm4
     3ef:	c5 ea c2 15 00 00 00 	vcmpnless 0x0(%rip),%xmm2,%xmm2        # 3f8 <func_fmod_46(float, float)+0x68>
     3f6:	00 06 
     3f8:	c4 e3 59 4a d3 20    	vblendvps %xmm2,%xmm3,%xmm4,%xmm2
     3fe:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
     402:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
     406:	c5 e3 59 d2          	vmulsd %xmm2,%xmm3,%xmm2
     40a:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
     40e:	c5 e3 5c d2          	vsubsd %xmm2,%xmm3,%xmm2
     412:	c5 eb 5a e2          	vcvtsd2ss %xmm2,%xmm2,%xmm4
     416:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
     41a:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 422 <func_fmod_46(float, float)+0x92>
     421:	00 
     422:	a8 02                	test   $0x2,%al
     424:	75 ac                	jne    3d2 <func_fmod_46(float, float)+0x42>
     426:	c5 f8 28 e2          	vmovaps %xmm2,%xmm4
     42a:	c5 f2 c2 db 04       	vcmpneqss %xmm3,%xmm1,%xmm3
     42f:	c4 e3 69 4a dc 30    	vblendvps %xmm3,%xmm4,%xmm2,%xmm3
     435:	c5 fa c2 c1 07       	vcmpordss %xmm1,%xmm0,%xmm0
     43a:	c4 e3 69 4a c3 00    	vblendvps %xmm0,%xmm3,%xmm2,%xmm0
     440:	c3                   	ret    
     441:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     448:	00 00 00 
     44b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000450 <func_fmod_47(double, double)>:
     450:	53                   	push   %rbx
     451:	48 83 ec 20          	sub    $0x20,%rsp
     455:	c5 f9 28 d9          	vmovapd %xmm1,%xmm3
     459:	c5 f1 14 d0          	vunpcklpd %xmm0,%xmm1,%xmm2
     45d:	c5 f9 28 0d 00 00 00 	vmovapd 0x0(%rip),%xmm1        # 465 <func_fmod_47(double, double)+0x15>
     464:	00 
     465:	c5 e9 54 d1          	vandpd %xmm1,%xmm2,%xmm2
     469:	c5 e9 c2 15 00 00 00 	vcmpneqpd 0x0(%rip),%xmm2,%xmm2        # 472 <func_fmod_47(double, double)+0x22>
     470:	00 04 
     472:	c5 f9 50 da          	vmovmskpd %xmm2,%ebx
     476:	c5 fb 5e e3          	vdivsd %xmm3,%xmm0,%xmm4
     47a:	c5 f9 28 d0          	vmovapd %xmm0,%xmm2
     47e:	c5 f9 29 04 24       	vmovapd %xmm0,(%rsp)
     483:	c5 d9 54 c9          	vandpd %xmm1,%xmm4,%xmm1
     487:	c4 e1 fb 2c c4       	vcvttsd2si %xmm4,%rax
     48c:	c4 e1 d3 2a c0       	vcvtsi2sd %rax,%xmm5,%xmm0
     491:	c5 f3 c2 0d 00 00 00 	vcmpnlesd 0x0(%rip),%xmm1,%xmm1        # 49a <func_fmod_47(double, double)+0x4a>
     498:	00 06 
     49a:	c4 e3 79 4b cc 10    	vblendvpd %xmm1,%xmm4,%xmm0,%xmm1
     4a0:	c5 f9 29 5c 24 10    	vmovapd %xmm3,0x10(%rsp)
     4a6:	c5 e1 57 05 00 00 00 	vxorpd 0x0(%rip),%xmm3,%xmm0        # 4ae <func_fmod_47(double, double)+0x5e>
     4ad:	00 
     4ae:	e8 00 00 00 00       	call   4b3 <func_fmod_47(double, double)+0x63>
     4b3:	c5 f9 28 24 24       	vmovapd (%rsp),%xmm4
     4b8:	f6 c3 01             	test   $0x1,%bl
     4bb:	75 04                	jne    4c1 <func_fmod_47(double, double)+0x71>
     4bd:	c5 f9 28 c4          	vmovapd %xmm4,%xmm0
     4c1:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
     4c5:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 4cd <func_fmod_47(double, double)+0x7d>
     4cc:	00 
     4cd:	f6 c3 02             	test   $0x2,%bl
     4d0:	75 06                	jne    4d8 <func_fmod_47(double, double)+0x88>
     4d2:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
     4d6:	eb 0b                	jmp    4e3 <func_fmod_47(double, double)+0x93>
     4d8:	c5 db c2 da 04       	vcmpneqsd %xmm2,%xmm4,%xmm3
     4dd:	c4 e3 59 4b c0 30    	vblendvpd %xmm3,%xmm0,%xmm4,%xmm0
     4e3:	c5 f9 28 5c 24 10    	vmovapd 0x10(%rsp),%xmm3
     4e9:	c5 e3 c2 d2 04       	vcmpneqsd %xmm2,%xmm3,%xmm2
     4ee:	c4 e3 71 4b c0 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm0
     4f4:	c5 db c2 d3 07       	vcmpordsd %xmm3,%xmm4,%xmm2
     4f9:	c4 e3 71 4b c0 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm0
     4ff:	48 83 c4 20          	add    $0x20,%rsp
     503:	5b                   	pop    %rbx
     504:	c3                   	ret    
     505:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     50c:	00 00 00 
     50f:	90                   	nop

0000000000000510 <func_is_real_48(float)>:
     510:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     515:	c3                   	ret    
     516:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     51d:	00 00 00 

0000000000000520 <func_is_real_49(double)>:
     520:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     527:	c3                   	ret    
     528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     52f:	00 

0000000000000530 <func_is_real_50(long)>:
     530:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     537:	c3                   	ret    
     538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     53f:	00 

0000000000000540 <func_is_real_51(int)>:
     540:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     545:	c3                   	ret    
     546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     54d:	00 00 00 

0000000000000550 <func_is_real_52(short)>:
     550:	66 b8 ff ff          	mov    $0xffff,%ax
     554:	c3                   	ret    
     555:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     55c:	00 00 00 
     55f:	90                   	nop

0000000000000560 <func_is_real_53(signed char)>:
     560:	b0 ff                	mov    $0xff,%al
     562:	c3                   	ret    
     563:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     56a:	00 00 00 
     56d:	0f 1f 00             	nopl   (%rax)

0000000000000570 <func_is_real_54(unsigned long)>:
     570:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     577:	c3                   	ret    
     578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     57f:	00 

0000000000000580 <func_is_real_55(unsigned int)>:
     580:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     585:	c3                   	ret    
     586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     58d:	00 00 00 

0000000000000590 <func_is_real_56(unsigned short)>:
     590:	66 b8 ff ff          	mov    $0xffff,%ax
     594:	c3                   	ret    
     595:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     59c:	00 00 00 
     59f:	90                   	nop

00000000000005a0 <func_is_real_57(unsigned char)>:
     5a0:	b0 ff                	mov    $0xff,%al
     5a2:	c3                   	ret    
     5a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5aa:	00 00 00 
     5ad:	0f 1f 00             	nopl   (%rax)

00000000000005b0 <func_is_real_58(unsigned long)>:
     5b0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     5b7:	c3                   	ret    
     5b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     5bf:	00 

00000000000005c0 <func_is_real_59(unsigned int)>:
     5c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     5c5:	c3                   	ret    
     5c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5cd:	00 00 00 

00000000000005d0 <func_is_real_60(unsigned short)>:
     5d0:	66 b8 ff ff          	mov    $0xffff,%ax
     5d4:	c3                   	ret    
     5d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5dc:	00 00 00 
     5df:	90                   	nop

00000000000005e0 <func_is_real_61(unsigned char)>:
     5e0:	b0 ff                	mov    $0xff,%al
     5e2:	c3                   	ret    
     5e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ea:	00 00 00 
     5ed:	0f 1f 00             	nopl   (%rax)

00000000000005f0 <func_is_nan_62(float)>:
     5f0:	31 c0                	xor    %eax,%eax
     5f2:	c5 f8 2e c0          	vucomiss %xmm0,%xmm0
     5f6:	0f 9a c0             	setp   %al
     5f9:	f7 d8                	neg    %eax
     5fb:	c3                   	ret    
     5fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000600 <func_is_nan_63(double)>:
     600:	31 c0                	xor    %eax,%eax
     602:	c5 f9 2e c0          	vucomisd %xmm0,%xmm0
     606:	0f 9a c0             	setp   %al
     609:	48 f7 d8             	neg    %rax
     60c:	c3                   	ret    
     60d:	0f 1f 00             	nopl   (%rax)

0000000000000610 <func_is_nan_64(long)>:
     610:	31 c0                	xor    %eax,%eax
     612:	c3                   	ret    
     613:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     61a:	00 00 00 
     61d:	0f 1f 00             	nopl   (%rax)

0000000000000620 <func_is_nan_65(int)>:
     620:	31 c0                	xor    %eax,%eax
     622:	c3                   	ret    
     623:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     62a:	00 00 00 
     62d:	0f 1f 00             	nopl   (%rax)

0000000000000630 <func_is_nan_66(short)>:
     630:	31 c0                	xor    %eax,%eax
     632:	c3                   	ret    
     633:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     63a:	00 00 00 
     63d:	0f 1f 00             	nopl   (%rax)

0000000000000640 <func_is_nan_67(signed char)>:
     640:	31 c0                	xor    %eax,%eax
     642:	c3                   	ret    
     643:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     64a:	00 00 00 
     64d:	0f 1f 00             	nopl   (%rax)

0000000000000650 <func_is_nan_68(unsigned long)>:
     650:	31 c0                	xor    %eax,%eax
     652:	c3                   	ret    
     653:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     65a:	00 00 00 
     65d:	0f 1f 00             	nopl   (%rax)

0000000000000660 <func_is_nan_69(unsigned int)>:
     660:	31 c0                	xor    %eax,%eax
     662:	c3                   	ret    
     663:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     66a:	00 00 00 
     66d:	0f 1f 00             	nopl   (%rax)

0000000000000670 <func_is_nan_70(unsigned short)>:
     670:	31 c0                	xor    %eax,%eax
     672:	c3                   	ret    
     673:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     67a:	00 00 00 
     67d:	0f 1f 00             	nopl   (%rax)

0000000000000680 <func_is_nan_71(unsigned char)>:
     680:	31 c0                	xor    %eax,%eax
     682:	c3                   	ret    
     683:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     68a:	00 00 00 
     68d:	0f 1f 00             	nopl   (%rax)

0000000000000690 <func_is_nan_72(unsigned long)>:
     690:	31 c0                	xor    %eax,%eax
     692:	c3                   	ret    
     693:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     69a:	00 00 00 
     69d:	0f 1f 00             	nopl   (%rax)

00000000000006a0 <func_is_nan_73(unsigned int)>:
     6a0:	31 c0                	xor    %eax,%eax
     6a2:	c3                   	ret    
     6a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6aa:	00 00 00 
     6ad:	0f 1f 00             	nopl   (%rax)

00000000000006b0 <func_is_nan_74(unsigned short)>:
     6b0:	31 c0                	xor    %eax,%eax
     6b2:	c3                   	ret    
     6b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ba:	00 00 00 
     6bd:	0f 1f 00             	nopl   (%rax)

00000000000006c0 <func_is_nan_75(unsigned char)>:
     6c0:	31 c0                	xor    %eax,%eax
     6c2:	c3                   	ret    
     6c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ca:	00 00 00 
     6cd:	0f 1f 00             	nopl   (%rax)

00000000000006d0 <func_clamp_76(float, float, float)>:
     6d0:	c5 ea 5d d9          	vminss %xmm1,%xmm2,%xmm3
     6d4:	c5 f2 5f ca          	vmaxss %xmm2,%xmm1,%xmm1
     6d8:	c5 e2 5f c0          	vmaxss %xmm0,%xmm3,%xmm0
     6dc:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     6e0:	c3                   	ret    
     6e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6e8:	00 00 00 
     6eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006f0 <func_clamp_77(double, double, double)>:
     6f0:	c5 eb 5d d9          	vminsd %xmm1,%xmm2,%xmm3
     6f4:	c5 f3 5f ca          	vmaxsd %xmm2,%xmm1,%xmm1
     6f8:	c5 e3 5f c0          	vmaxsd %xmm0,%xmm3,%xmm0
     6fc:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     700:	c3                   	ret    
     701:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     708:	00 00 00 
     70b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000710 <func_clamp_78(int, int, int)>:
     710:	39 d6                	cmp    %edx,%esi
     712:	89 f0                	mov    %esi,%eax
     714:	0f 4f c2             	cmovg  %edx,%eax
     717:	0f 4f d6             	cmovg  %esi,%edx
     71a:	39 f8                	cmp    %edi,%eax
     71c:	0f 4e c7             	cmovle %edi,%eax
     71f:	39 c2                	cmp    %eax,%edx
     721:	0f 4e c2             	cmovle %edx,%eax
     724:	c3                   	ret    
     725:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     72c:	00 00 00 
     72f:	90                   	nop

0000000000000730 <func_dist_79(float, float)>:
     730:	c5 f2 5f d0          	vmaxss %xmm0,%xmm1,%xmm2
     734:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     738:	c5 ea 5c c0          	vsubss %xmm0,%xmm2,%xmm0
     73c:	c3                   	ret    
     73d:	0f 1f 00             	nopl   (%rax)

0000000000000740 <func_dist_80(double, double)>:
     740:	c5 f3 5f d0          	vmaxsd %xmm0,%xmm1,%xmm2
     744:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     748:	c5 eb 5c c0          	vsubsd %xmm0,%xmm2,%xmm0
     74c:	c3                   	ret    
     74d:	0f 1f 00             	nopl   (%rax)

0000000000000750 <func_dist_81(long, long)>:
     750:	48 39 fe             	cmp    %rdi,%rsi
     753:	48 89 f8             	mov    %rdi,%rax
     756:	48 0f 4f c6          	cmovg  %rsi,%rax
     75a:	48 0f 4f f7          	cmovg  %rdi,%rsi
     75e:	48 29 f0             	sub    %rsi,%rax
     761:	c3                   	ret    
     762:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     769:	00 00 00 
     76c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000770 <func_dist_82(int, int)>:
     770:	39 fe                	cmp    %edi,%esi
     772:	89 f8                	mov    %edi,%eax
     774:	0f 4f c6             	cmovg  %esi,%eax
     777:	0f 4f f7             	cmovg  %edi,%esi
     77a:	29 f0                	sub    %esi,%eax
     77c:	c3                   	ret    
     77d:	0f 1f 00             	nopl   (%rax)

0000000000000780 <func_dist_83(short, short)>:
     780:	66 39 fe             	cmp    %di,%si
     783:	89 f8                	mov    %edi,%eax
     785:	0f 4f c6             	cmovg  %esi,%eax
     788:	0f 4f f7             	cmovg  %edi,%esi
     78b:	29 f0                	sub    %esi,%eax
     78d:	c3                   	ret    
     78e:	66 90                	xchg   %ax,%ax

0000000000000790 <func_dist_84(signed char, signed char)>:
     790:	40 38 fe             	cmp    %dil,%sil
     793:	89 f8                	mov    %edi,%eax
     795:	0f 4f c6             	cmovg  %esi,%eax
     798:	0f 4f f7             	cmovg  %edi,%esi
     79b:	40 28 f0             	sub    %sil,%al
     79e:	c3                   	ret    
     79f:	90                   	nop

00000000000007a0 <func_dist_85(unsigned long, unsigned long)>:
     7a0:	48 39 fe             	cmp    %rdi,%rsi
     7a3:	48 89 f8             	mov    %rdi,%rax
     7a6:	48 0f 47 c6          	cmova  %rsi,%rax
     7aa:	48 0f 47 f7          	cmova  %rdi,%rsi
     7ae:	48 29 f0             	sub    %rsi,%rax
     7b1:	c3                   	ret    
     7b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     7b9:	00 00 00 
     7bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007c0 <func_dist_86(unsigned int, unsigned int)>:
     7c0:	39 fe                	cmp    %edi,%esi
     7c2:	89 f8                	mov    %edi,%eax
     7c4:	0f 47 c6             	cmova  %esi,%eax
     7c7:	0f 47 f7             	cmova  %edi,%esi
     7ca:	29 f0                	sub    %esi,%eax
     7cc:	c3                   	ret    
     7cd:	0f 1f 00             	nopl   (%rax)

00000000000007d0 <func_dist_87(unsigned short, unsigned short)>:
     7d0:	66 39 fe             	cmp    %di,%si
     7d3:	89 f8                	mov    %edi,%eax
     7d5:	0f 47 c6             	cmova  %esi,%eax
     7d8:	0f 47 f7             	cmova  %edi,%esi
     7db:	29 f0                	sub    %esi,%eax
     7dd:	c3                   	ret    
     7de:	66 90                	xchg   %ax,%ax

00000000000007e0 <func_dist_88(unsigned char, unsigned char)>:
     7e0:	40 38 fe             	cmp    %dil,%sil
     7e3:	89 f8                	mov    %edi,%eax
     7e5:	0f 47 c6             	cmova  %esi,%eax
     7e8:	0f 47 f7             	cmova  %edi,%esi
     7eb:	40 28 f0             	sub    %sil,%al
     7ee:	c3                   	ret    
     7ef:	90                   	nop

00000000000007f0 <func_dist_89(unsigned long, unsigned long)>:
     7f0:	48 39 fe             	cmp    %rdi,%rsi
     7f3:	48 89 f8             	mov    %rdi,%rax
     7f6:	48 0f 47 c6          	cmova  %rsi,%rax
     7fa:	48 0f 47 f7          	cmova  %rdi,%rsi
     7fe:	48 29 f0             	sub    %rsi,%rax
     801:	c3                   	ret    
     802:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     809:	00 00 00 
     80c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000810 <func_dist_90(unsigned int, unsigned int)>:
     810:	39 fe                	cmp    %edi,%esi
     812:	89 f8                	mov    %edi,%eax
     814:	0f 47 c6             	cmova  %esi,%eax
     817:	0f 47 f7             	cmova  %edi,%esi
     81a:	29 f0                	sub    %esi,%eax
     81c:	c3                   	ret    
     81d:	0f 1f 00             	nopl   (%rax)

0000000000000820 <func_dist_91(unsigned short, unsigned short)>:
     820:	66 39 fe             	cmp    %di,%si
     823:	89 f8                	mov    %edi,%eax
     825:	0f 47 c6             	cmova  %esi,%eax
     828:	0f 47 f7             	cmova  %edi,%esi
     82b:	29 f0                	sub    %esi,%eax
     82d:	c3                   	ret    
     82e:	66 90                	xchg   %ax,%ax

0000000000000830 <func_dist_92(unsigned char, unsigned char)>:
     830:	40 38 fe             	cmp    %dil,%sil
     833:	89 f8                	mov    %edi,%eax
     835:	0f 47 c6             	cmova  %esi,%eax
     838:	0f 47 f7             	cmova  %edi,%esi
     83b:	40 28 f0             	sub    %sil,%al
     83e:	c3                   	ret    
     83f:	90                   	nop

0000000000000840 <func_fracscale_93(float, int)>:
     840:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 849 <func_fracscale_93(float, int)+0x9>
     847:	00 00 
     849:	c5 f8 54 d1          	vandps %xmm1,%xmm0,%xmm2
     84d:	c1 e7 17             	shl    $0x17,%edi
     850:	8d 87 00 00 80 3f    	lea    0x3f800000(%rdi),%eax
     856:	c5 f9 6e d8          	vmovd  %eax,%xmm3
     85a:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     85e:	c5 f8 50 c3          	vmovmskps %xmm3,%eax
     862:	c1 e0 1f             	shl    $0x1f,%eax
     865:	c5 f9 6e e0          	vmovd  %eax,%xmm4
     869:	c5 e0 54 c9          	vandps %xmm1,%xmm3,%xmm1
     86d:	c5 fa 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm3        # 875 <func_fracscale_93(float, int)+0x35>
     874:	00 
     875:	c5 f2 58 eb          	vaddss %xmm3,%xmm1,%xmm5
     879:	c5 d2 58 2d 00 00 00 	vaddss 0x0(%rip),%xmm5,%xmm5        # 881 <func_fracscale_93(float, int)+0x41>
     880:	00 
     881:	c5 f2 c2 db 01       	vcmpltss %xmm3,%xmm1,%xmm3
     886:	c4 e3 71 4a cd 30    	vblendvps %xmm3,%xmm5,%xmm1,%xmm1
     88c:	c5 f0 57 cc          	vxorps %xmm4,%xmm1,%xmm1
     890:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
     895:	29 f8                	sub    %edi,%eax
     897:	c5 f9 6e d8          	vmovd  %eax,%xmm3
     89b:	c5 e2 59 c9          	vmulss %xmm1,%xmm3,%xmm1
     89f:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
     8a3:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 8ab <func_fracscale_93(float, int)+0x6b>
     8aa:	00 
     8ab:	c5 f2 c2 ca 06       	vcmpnless %xmm2,%xmm1,%xmm1
     8b0:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     8b4:	c3                   	ret    
     8b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     8bc:	00 00 00 
     8bf:	90                   	nop

00000000000008c0 <func_fracscale_94(double, int)>:
     8c0:	c5 f9 28 0d 00 00 00 	vmovapd 0x0(%rip),%xmm1        # 8c8 <func_fracscale_94(double, int)+0x8>
     8c7:	00 
     8c8:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
     8cc:	48 89 f8             	mov    %rdi,%rax
     8cf:	48 c1 e0 34          	shl    $0x34,%rax
     8d3:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
     8da:	00 f0 3f 
     8dd:	48 01 c8             	add    %rcx,%rax
     8e0:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
     8e5:	c5 e3 59 d8          	vmulsd %xmm0,%xmm3,%xmm3
     8e9:	c5 f9 50 c3          	vmovmskpd %xmm3,%eax
     8ed:	48 c1 e0 3f          	shl    $0x3f,%rax
     8f1:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
     8f6:	c5 e1 54 c9          	vandpd %xmm1,%xmm3,%xmm1
     8fa:	c5 fb 10 1d 00 00 00 	vmovsd 0x0(%rip),%xmm3        # 902 <func_fracscale_94(double, int)+0x42>
     901:	00 
     902:	c5 f3 58 eb          	vaddsd %xmm3,%xmm1,%xmm5
     906:	c5 d3 58 2d 00 00 00 	vaddsd 0x0(%rip),%xmm5,%xmm5        # 90e <func_fracscale_94(double, int)+0x4e>
     90d:	00 
     90e:	c5 f3 c2 db 01       	vcmpltsd %xmm3,%xmm1,%xmm3
     913:	c4 e3 71 4b cd 30    	vblendvpd %xmm3,%xmm5,%xmm1,%xmm1
     919:	c5 f1 57 cc          	vxorpd %xmm4,%xmm1,%xmm1
     91d:	f7 df                	neg    %edi
     91f:	48 c1 e7 34          	shl    $0x34,%rdi
     923:	48 01 cf             	add    %rcx,%rdi
     926:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
     92b:	c5 e3 59 c9          	vmulsd %xmm1,%xmm3,%xmm1
     92f:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     933:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 93b <func_fracscale_94(double, int)+0x7b>
     93a:	00 
     93b:	c5 f3 c2 ca 06       	vcmpnlesd %xmm2,%xmm1,%xmm1
     940:	c5 f1 54 c0          	vandpd %xmm0,%xmm1,%xmm0
     944:	c3                   	ret    
     945:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     94c:	00 00 00 
     94f:	90                   	nop

0000000000000950 <func_conj_95(float)>:
     950:	c3                   	ret    
     951:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     958:	00 00 00 
     95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <func_conj_96(double)>:
     960:	c3                   	ret    
     961:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     968:	00 00 00 
     96b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000970 <func_rem_97(long, long)>:
     970:	48 89 f8             	mov    %rdi,%rax
     973:	48 89 f9             	mov    %rdi,%rcx
     976:	48 09 f1             	or     %rsi,%rcx
     979:	48 c1 e9 20          	shr    $0x20,%rcx
     97d:	74 09                	je     988 <func_rem_97(long, long)+0x18>
     97f:	48 99                	cqto   
     981:	48 f7 fe             	idiv   %rsi
     984:	48 89 d0             	mov    %rdx,%rax
     987:	c3                   	ret    
     988:	31 d2                	xor    %edx,%edx
     98a:	f7 f6                	div    %esi
     98c:	89 d0                	mov    %edx,%eax
     98e:	c3                   	ret    
     98f:	90                   	nop

0000000000000990 <func_rem_98(int, int)>:
     990:	89 f8                	mov    %edi,%eax
     992:	99                   	cltd   
     993:	f7 fe                	idiv   %esi
     995:	89 d0                	mov    %edx,%eax
     997:	c3                   	ret    
     998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     99f:	00 

00000000000009a0 <func_rem_99(short, short)>:
     9a0:	89 f8                	mov    %edi,%eax
     9a2:	99                   	cltd   
     9a3:	f7 fe                	idiv   %esi
     9a5:	89 d0                	mov    %edx,%eax
     9a7:	c3                   	ret    
     9a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     9af:	00 

00000000000009b0 <func_rem_100(signed char, signed char)>:
     9b0:	89 f8                	mov    %edi,%eax
     9b2:	66 99                	cwtd   
     9b4:	66 f7 fe             	idiv   %si
     9b7:	89 d0                	mov    %edx,%eax
     9b9:	c3                   	ret    
     9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009c0 <func_rem_101(unsigned long, unsigned long)>:
     9c0:	48 89 f8             	mov    %rdi,%rax
     9c3:	48 89 f9             	mov    %rdi,%rcx
     9c6:	48 09 f1             	or     %rsi,%rcx
     9c9:	48 c1 e9 20          	shr    $0x20,%rcx
     9cd:	74 09                	je     9d8 <func_rem_101(unsigned long, unsigned long)+0x18>
     9cf:	31 d2                	xor    %edx,%edx
     9d1:	48 f7 f6             	div    %rsi
     9d4:	48 89 d0             	mov    %rdx,%rax
     9d7:	c3                   	ret    
     9d8:	31 d2                	xor    %edx,%edx
     9da:	f7 f6                	div    %esi
     9dc:	89 d0                	mov    %edx,%eax
     9de:	c3                   	ret    
     9df:	90                   	nop

00000000000009e0 <func_rem_102(unsigned int, unsigned int)>:
     9e0:	89 f8                	mov    %edi,%eax
     9e2:	31 d2                	xor    %edx,%edx
     9e4:	f7 f6                	div    %esi
     9e6:	89 d0                	mov    %edx,%eax
     9e8:	c3                   	ret    
     9e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000009f0 <func_rem_103(unsigned short, unsigned short)>:
     9f0:	89 f8                	mov    %edi,%eax
     9f2:	31 d2                	xor    %edx,%edx
     9f4:	66 f7 f6             	div    %si
     9f7:	89 d0                	mov    %edx,%eax
     9f9:	c3                   	ret    
     9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a00 <func_rem_104(unsigned char, unsigned char)>:
     a00:	40 0f b6 c7          	movzbl %dil,%eax
     a04:	40 f6 f6             	div    %sil
     a07:	0f b6 c4             	movzbl %ah,%eax
     a0a:	c3                   	ret    
     a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a10 <func_absmin_105(float, float)>:
     a10:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     a14:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # a1d <func_absmin_105(float, float)+0xd>
     a1b:	00 00 
     a1d:	c5 f8 54 c1          	vandps %xmm1,%xmm0,%xmm0
     a21:	c3                   	ret    
     a22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a29:	00 00 00 
     a2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a30 <func_absmin_106(double, double)>:
     a30:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     a34:	c5 f9 54 05 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm0        # a3c <func_absmin_106(double, double)+0xc>
     a3b:	00 
     a3c:	c3                   	ret    
     a3d:	0f 1f 00             	nopl   (%rax)

0000000000000a40 <func_absmin_107(long, long)>:
     a40:	48 39 fe             	cmp    %rdi,%rsi
     a43:	48 0f 4f f7          	cmovg  %rdi,%rsi
     a47:	48 89 f0             	mov    %rsi,%rax
     a4a:	48 f7 d8             	neg    %rax
     a4d:	48 0f 48 c6          	cmovs  %rsi,%rax
     a51:	c3                   	ret    
     a52:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a59:	00 00 00 
     a5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a60 <func_absmin_108(int, int)>:
     a60:	39 fe                	cmp    %edi,%esi
     a62:	0f 4f f7             	cmovg  %edi,%esi
     a65:	89 f0                	mov    %esi,%eax
     a67:	f7 d8                	neg    %eax
     a69:	0f 48 c6             	cmovs  %esi,%eax
     a6c:	c3                   	ret    
     a6d:	0f 1f 00             	nopl   (%rax)

0000000000000a70 <func_absmin_109(short, short)>:
     a70:	66 39 fe             	cmp    %di,%si
     a73:	0f 4f f7             	cmovg  %edi,%esi
     a76:	89 f0                	mov    %esi,%eax
     a78:	66 f7 d8             	neg    %ax
     a7b:	66 0f 48 c6          	cmovs  %si,%ax
     a7f:	c3                   	ret    

0000000000000a80 <func_absmin_110(signed char, signed char)>:
     a80:	40 38 fe             	cmp    %dil,%sil
     a83:	0f 4f f7             	cmovg  %edi,%esi
     a86:	89 f1                	mov    %esi,%ecx
     a88:	c0 f9 07             	sar    $0x7,%cl
     a8b:	8d 04 0e             	lea    (%rsi,%rcx,1),%eax
     a8e:	30 c8                	xor    %cl,%al
     a90:	c3                   	ret    
     a91:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a98:	00 00 00 
     a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000aa0 <func_absmin_111(unsigned long, unsigned long)>:
     aa0:	48 89 f0             	mov    %rsi,%rax
     aa3:	48 39 fe             	cmp    %rdi,%rsi
     aa6:	48 0f 47 c7          	cmova  %rdi,%rax
     aaa:	c3                   	ret    
     aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ab0 <func_absmin_112(unsigned int, unsigned int)>:
     ab0:	89 f0                	mov    %esi,%eax
     ab2:	39 fe                	cmp    %edi,%esi
     ab4:	0f 47 c7             	cmova  %edi,%eax
     ab7:	c3                   	ret    
     ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     abf:	00 

0000000000000ac0 <func_absmin_113(unsigned short, unsigned short)>:
     ac0:	89 f0                	mov    %esi,%eax
     ac2:	66 39 f8             	cmp    %di,%ax
     ac5:	0f 47 c7             	cmova  %edi,%eax
     ac8:	c3                   	ret    
     ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ad0 <func_absmin_114(unsigned char, unsigned char)>:
     ad0:	89 f0                	mov    %esi,%eax
     ad2:	40 38 f8             	cmp    %dil,%al
     ad5:	0f 47 c7             	cmova  %edi,%eax
     ad8:	c3                   	ret    
     ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ae0 <func_absmin_115(unsigned long, unsigned long)>:
     ae0:	48 89 f0             	mov    %rsi,%rax
     ae3:	48 39 fe             	cmp    %rdi,%rsi
     ae6:	48 0f 47 c7          	cmova  %rdi,%rax
     aea:	c3                   	ret    
     aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000af0 <func_absmin_116(unsigned int, unsigned int)>:
     af0:	89 f0                	mov    %esi,%eax
     af2:	39 fe                	cmp    %edi,%esi
     af4:	0f 47 c7             	cmova  %edi,%eax
     af7:	c3                   	ret    
     af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     aff:	00 

0000000000000b00 <func_absmin_117(unsigned short, unsigned short)>:
     b00:	89 f0                	mov    %esi,%eax
     b02:	66 39 f8             	cmp    %di,%ax
     b05:	0f 47 c7             	cmova  %edi,%eax
     b08:	c3                   	ret    
     b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b10 <func_absmin_118(unsigned char, unsigned char)>:
     b10:	89 f0                	mov    %esi,%eax
     b12:	40 38 f8             	cmp    %dil,%al
     b15:	0f 47 c7             	cmova  %edi,%eax
     b18:	c3                   	ret    
     b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b20 <func_lerp_119(eve::avx_abi_v0::wide<double, eve::fixed<4l> >, eve::avx_abi_v0::wide<double, eve::fixed<4l> >, double)>:
     b20:	c4 e2 7d 19 d2       	vbroadcastsd %xmm2,%ymm2
     b25:	c5 ed 59 d8          	vmulpd %ymm0,%ymm2,%ymm3
     b29:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
     b2d:	c5 ed 59 c9          	vmulpd %ymm1,%ymm2,%ymm1
     b31:	c5 f5 58 c0          	vaddpd %ymm0,%ymm1,%ymm0
     b35:	c3                   	ret    
     b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b3d:	00 00 00 

0000000000000b40 <func_bit_and_120(float, float)>:
     b40:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     b44:	c3                   	ret    
     b45:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b4c:	00 00 00 
     b4f:	90                   	nop

0000000000000b50 <func_bit_and_121(double, double)>:
     b50:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     b54:	c3                   	ret    
     b55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b5c:	00 00 00 
     b5f:	90                   	nop

0000000000000b60 <func_bit_and_122(long, long)>:
     b60:	48 89 f8             	mov    %rdi,%rax
     b63:	48 21 f0             	and    %rsi,%rax
     b66:	c3                   	ret    
     b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     b6e:	00 00 

0000000000000b70 <func_bit_and_123(int, int)>:
     b70:	89 f8                	mov    %edi,%eax
     b72:	21 f0                	and    %esi,%eax
     b74:	c3                   	ret    
     b75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b7c:	00 00 00 
     b7f:	90                   	nop

0000000000000b80 <func_bit_and_124(short, short)>:
     b80:	89 f8                	mov    %edi,%eax
     b82:	21 f0                	and    %esi,%eax
     b84:	c3                   	ret    
     b85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b8c:	00 00 00 
     b8f:	90                   	nop

0000000000000b90 <func_bit_and_125(signed char, signed char)>:
     b90:	89 f8                	mov    %edi,%eax
     b92:	21 f0                	and    %esi,%eax
     b94:	c3                   	ret    
     b95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b9c:	00 00 00 
     b9f:	90                   	nop

0000000000000ba0 <func_bit_and_126(unsigned long, unsigned long)>:
     ba0:	48 89 f8             	mov    %rdi,%rax
     ba3:	48 21 f0             	and    %rsi,%rax
     ba6:	c3                   	ret    
     ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     bae:	00 00 

0000000000000bb0 <func_bit_and_127(unsigned int, unsigned int)>:
     bb0:	89 f8                	mov    %edi,%eax
     bb2:	21 f0                	and    %esi,%eax
     bb4:	c3                   	ret    
     bb5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bbc:	00 00 00 
     bbf:	90                   	nop

0000000000000bc0 <func_bit_and_128(unsigned short, unsigned short)>:
     bc0:	89 f8                	mov    %edi,%eax
     bc2:	21 f0                	and    %esi,%eax
     bc4:	c3                   	ret    
     bc5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bcc:	00 00 00 
     bcf:	90                   	nop

0000000000000bd0 <func_bit_and_129(unsigned char, unsigned char)>:
     bd0:	89 f8                	mov    %edi,%eax
     bd2:	21 f0                	and    %esi,%eax
     bd4:	c3                   	ret    
     bd5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bdc:	00 00 00 
     bdf:	90                   	nop

0000000000000be0 <func_bit_and_130(unsigned long, unsigned long)>:
     be0:	48 89 f8             	mov    %rdi,%rax
     be3:	48 21 f0             	and    %rsi,%rax
     be6:	c3                   	ret    
     be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     bee:	00 00 

0000000000000bf0 <func_bit_and_131(unsigned int, unsigned int)>:
     bf0:	89 f8                	mov    %edi,%eax
     bf2:	21 f0                	and    %esi,%eax
     bf4:	c3                   	ret    
     bf5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bfc:	00 00 00 
     bff:	90                   	nop

0000000000000c00 <func_bit_and_132(unsigned short, unsigned short)>:
     c00:	89 f8                	mov    %edi,%eax
     c02:	21 f0                	and    %esi,%eax
     c04:	c3                   	ret    
     c05:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c0c:	00 00 00 
     c0f:	90                   	nop

0000000000000c10 <func_bit_and_133(unsigned char, unsigned char)>:
     c10:	89 f8                	mov    %edi,%eax
     c12:	21 f0                	and    %esi,%eax
     c14:	c3                   	ret    
     c15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c1c:	00 00 00 
     c1f:	90                   	nop

0000000000000c20 <func_max_134(float, float)>:
     c20:	c5 f2 5f c0          	vmaxss %xmm0,%xmm1,%xmm0
     c24:	c3                   	ret    
     c25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c2c:	00 00 00 
     c2f:	90                   	nop

0000000000000c30 <func_max_135(double, double)>:
     c30:	c5 f3 5f c0          	vmaxsd %xmm0,%xmm1,%xmm0
     c34:	c3                   	ret    
     c35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c3c:	00 00 00 
     c3f:	90                   	nop

0000000000000c40 <func_max_136(int, int)>:
     c40:	89 f8                	mov    %edi,%eax
     c42:	39 fe                	cmp    %edi,%esi
     c44:	0f 4f c6             	cmovg  %esi,%eax
     c47:	c3                   	ret    
     c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     c4f:	00 

0000000000000c50 <func_div_137(float, float)>:
     c50:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
     c54:	c3                   	ret    
     c55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c5c:	00 00 00 
     c5f:	90                   	nop

0000000000000c60 <func_div_138(double, double)>:
     c60:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
     c64:	c3                   	ret    
     c65:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c6c:	00 00 00 
     c6f:	90                   	nop

0000000000000c70 <func_div_139(long, long)>:
     c70:	48 89 f8             	mov    %rdi,%rax
     c73:	48 89 f9             	mov    %rdi,%rcx
     c76:	48 09 f1             	or     %rsi,%rcx
     c79:	48 c1 e9 20          	shr    $0x20,%rcx
     c7d:	74 06                	je     c85 <func_div_139(long, long)+0x15>
     c7f:	48 99                	cqto   
     c81:	48 f7 fe             	idiv   %rsi
     c84:	c3                   	ret    
     c85:	31 d2                	xor    %edx,%edx
     c87:	f7 f6                	div    %esi
     c89:	c3                   	ret    
     c8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c90 <func_div_140(int, int)>:
     c90:	89 f8                	mov    %edi,%eax
     c92:	99                   	cltd   
     c93:	f7 fe                	idiv   %esi
     c95:	c3                   	ret    
     c96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c9d:	00 00 00 

0000000000000ca0 <func_div_141(short, short)>:
     ca0:	89 f8                	mov    %edi,%eax
     ca2:	99                   	cltd   
     ca3:	f7 fe                	idiv   %esi
     ca5:	c3                   	ret    
     ca6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cad:	00 00 00 

0000000000000cb0 <func_div_142(signed char, signed char)>:
     cb0:	89 f8                	mov    %edi,%eax
     cb2:	66 99                	cwtd   
     cb4:	66 f7 fe             	idiv   %si
     cb7:	c3                   	ret    
     cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     cbf:	00 

0000000000000cc0 <func_div_143(unsigned long, unsigned long)>:
     cc0:	48 89 f8             	mov    %rdi,%rax
     cc3:	48 89 f9             	mov    %rdi,%rcx
     cc6:	48 09 f1             	or     %rsi,%rcx
     cc9:	48 c1 e9 20          	shr    $0x20,%rcx
     ccd:	74 06                	je     cd5 <func_div_143(unsigned long, unsigned long)+0x15>
     ccf:	31 d2                	xor    %edx,%edx
     cd1:	48 f7 f6             	div    %rsi
     cd4:	c3                   	ret    
     cd5:	31 d2                	xor    %edx,%edx
     cd7:	f7 f6                	div    %esi
     cd9:	c3                   	ret    
     cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ce0 <func_div_144(unsigned int, unsigned int)>:
     ce0:	89 f8                	mov    %edi,%eax
     ce2:	31 d2                	xor    %edx,%edx
     ce4:	f7 f6                	div    %esi
     ce6:	c3                   	ret    
     ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     cee:	00 00 

0000000000000cf0 <func_div_145(unsigned short, unsigned short)>:
     cf0:	89 f8                	mov    %edi,%eax
     cf2:	31 d2                	xor    %edx,%edx
     cf4:	66 f7 f6             	div    %si
     cf7:	c3                   	ret    
     cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     cff:	00 

0000000000000d00 <func_div_146(unsigned char, unsigned char)>:
     d00:	40 0f b6 c7          	movzbl %dil,%eax
     d04:	40 f6 f6             	div    %sil
     d07:	c3                   	ret    
     d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d0f:	00 

0000000000000d10 <func_div_147(unsigned long, unsigned long)>:
     d10:	48 89 f8             	mov    %rdi,%rax
     d13:	48 89 f9             	mov    %rdi,%rcx
     d16:	48 09 f1             	or     %rsi,%rcx
     d19:	48 c1 e9 20          	shr    $0x20,%rcx
     d1d:	74 06                	je     d25 <func_div_147(unsigned long, unsigned long)+0x15>
     d1f:	31 d2                	xor    %edx,%edx
     d21:	48 f7 f6             	div    %rsi
     d24:	c3                   	ret    
     d25:	31 d2                	xor    %edx,%edx
     d27:	f7 f6                	div    %esi
     d29:	c3                   	ret    
     d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d30 <func_div_148(unsigned int, unsigned int)>:
     d30:	89 f8                	mov    %edi,%eax
     d32:	31 d2                	xor    %edx,%edx
     d34:	f7 f6                	div    %esi
     d36:	c3                   	ret    
     d37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     d3e:	00 00 

0000000000000d40 <func_div_149(unsigned short, unsigned short)>:
     d40:	89 f8                	mov    %edi,%eax
     d42:	31 d2                	xor    %edx,%edx
     d44:	66 f7 f6             	div    %si
     d47:	c3                   	ret    
     d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d4f:	00 

0000000000000d50 <func_div_150(unsigned char, unsigned char)>:
     d50:	40 0f b6 c7          	movzbl %dil,%eax
     d54:	40 f6 f6             	div    %sil
     d57:	c3                   	ret    
     d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d5f:	00 

0000000000000d60 <func_fdim_151(float, float)>:
     d60:	c5 fa 5c d1          	vsubss %xmm1,%xmm0,%xmm2
     d64:	c5 f2 c2 c0 06       	vcmpnless %xmm0,%xmm1,%xmm0
     d69:	c5 f8 55 c2          	vandnps %xmm2,%xmm0,%xmm0
     d6d:	c3                   	ret    
     d6e:	66 90                	xchg   %ax,%ax

0000000000000d70 <func_fdim_152(double, double)>:
     d70:	c5 fb 5c d1          	vsubsd %xmm1,%xmm0,%xmm2
     d74:	c5 f3 c2 c0 06       	vcmpnlesd %xmm0,%xmm1,%xmm0
     d79:	c5 f9 55 c2          	vandnpd %xmm2,%xmm0,%xmm0
     d7d:	c3                   	ret    
     d7e:	66 90                	xchg   %ax,%ax

0000000000000d80 <func_fdim_153(long, long)>:
     d80:	31 c0                	xor    %eax,%eax
     d82:	48 29 f7             	sub    %rsi,%rdi
     d85:	48 0f 4d c7          	cmovge %rdi,%rax
     d89:	c3                   	ret    
     d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d90 <func_fdim_154(int, int)>:
     d90:	31 c0                	xor    %eax,%eax
     d92:	29 f7                	sub    %esi,%edi
     d94:	0f 4d c7             	cmovge %edi,%eax
     d97:	c3                   	ret    
     d98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d9f:	00 

0000000000000da0 <func_fdim_155(short, short)>:
     da0:	31 c0                	xor    %eax,%eax
     da2:	66 29 f7             	sub    %si,%di
     da5:	0f 4d c7             	cmovge %edi,%eax
     da8:	c3                   	ret    
     da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000db0 <func_fdim_156(signed char, signed char)>:
     db0:	31 c9                	xor    %ecx,%ecx
     db2:	40 28 f7             	sub    %sil,%dil
     db5:	40 0f b6 c7          	movzbl %dil,%eax
     db9:	0f 4c c1             	cmovl  %ecx,%eax
     dbc:	c3                   	ret    
     dbd:	0f 1f 00             	nopl   (%rax)

0000000000000dc0 <func_fdim_157(unsigned long, unsigned long)>:
     dc0:	31 c0                	xor    %eax,%eax
     dc2:	48 29 f7             	sub    %rsi,%rdi
     dc5:	48 0f 43 c7          	cmovae %rdi,%rax
     dc9:	c3                   	ret    
     dca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000dd0 <func_fdim_158(unsigned int, unsigned int)>:
     dd0:	31 c0                	xor    %eax,%eax
     dd2:	29 f7                	sub    %esi,%edi
     dd4:	0f 43 c7             	cmovae %edi,%eax
     dd7:	c3                   	ret    
     dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ddf:	00 

0000000000000de0 <func_fdim_159(unsigned short, unsigned short)>:
     de0:	31 c0                	xor    %eax,%eax
     de2:	66 29 f7             	sub    %si,%di
     de5:	0f 43 c7             	cmovae %edi,%eax
     de8:	c3                   	ret    
     de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000df0 <func_fdim_160(unsigned char, unsigned char)>:
     df0:	31 c9                	xor    %ecx,%ecx
     df2:	40 28 f7             	sub    %sil,%dil
     df5:	40 0f b6 c7          	movzbl %dil,%eax
     df9:	0f 42 c1             	cmovb  %ecx,%eax
     dfc:	c3                   	ret    
     dfd:	0f 1f 00             	nopl   (%rax)

0000000000000e00 <func_fdim_161(unsigned long, unsigned long)>:
     e00:	31 c0                	xor    %eax,%eax
     e02:	48 29 f7             	sub    %rsi,%rdi
     e05:	48 0f 43 c7          	cmovae %rdi,%rax
     e09:	c3                   	ret    
     e0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000e10 <func_fdim_162(unsigned int, unsigned int)>:
     e10:	31 c0                	xor    %eax,%eax
     e12:	29 f7                	sub    %esi,%edi
     e14:	0f 43 c7             	cmovae %edi,%eax
     e17:	c3                   	ret    
     e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     e1f:	00 

0000000000000e20 <func_fdim_163(unsigned short, unsigned short)>:
     e20:	31 c0                	xor    %eax,%eax
     e22:	66 29 f7             	sub    %si,%di
     e25:	0f 43 c7             	cmovae %edi,%eax
     e28:	c3                   	ret    
     e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e30 <func_fdim_164(unsigned char, unsigned char)>:
     e30:	31 c9                	xor    %ecx,%ecx
     e32:	40 28 f7             	sub    %sil,%dil
     e35:	40 0f b6 c7          	movzbl %dil,%eax
     e39:	0f 42 c1             	cmovb  %ecx,%eax
     e3c:	c3                   	ret    
     e3d:	0f 1f 00             	nopl   (%rax)

0000000000000e40 <func_copysign_165(float, float)>:
     e40:	c5 f9 7e c0          	vmovd  %xmm0,%eax
     e44:	c5 f8 50 c9          	vmovmskps %xmm1,%ecx
     e48:	c1 e1 1f             	shl    $0x1f,%ecx
     e4b:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     e50:	09 c8                	or     %ecx,%eax
     e52:	c5 f9 6e c0          	vmovd  %eax,%xmm0
     e56:	c3                   	ret    
     e57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     e5e:	00 00 

0000000000000e60 <func_floor_166(float)>:
     e60:	c5 fa 5b c8          	vcvttps2dq %xmm0,%xmm1
     e64:	c4 e2 79 18 15 00 00 	vbroadcastss 0x0(%rip),%xmm2        # e6d <func_floor_166(float)+0xd>
     e6b:	00 00 
     e6d:	c5 f8 5b c9          	vcvtdq2ps %xmm1,%xmm1
     e71:	c5 f8 54 d2          	vandps %xmm2,%xmm0,%xmm2
     e75:	c5 ea c2 15 00 00 00 	vcmpnless 0x0(%rip),%xmm2,%xmm2        # e7e <func_floor_166(float)+0x1e>
     e7c:	00 06 
     e7e:	c4 e3 71 4a c8 20    	vblendvps %xmm2,%xmm0,%xmm1,%xmm1
     e84:	c5 f2 58 15 00 00 00 	vaddss 0x0(%rip),%xmm1,%xmm2        # e8c <func_floor_166(float)+0x2c>
     e8b:	00 
     e8c:	c5 fa c2 c1 05       	vcmpnltss %xmm1,%xmm0,%xmm0
     e91:	c4 e3 69 4a c1 00    	vblendvps %xmm0,%xmm1,%xmm2,%xmm0
     e97:	c3                   	ret    
     e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     e9f:	00 

0000000000000ea0 <func_floor_167(double)>:
     ea0:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
     ea5:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
     eaa:	c5 f9 54 15 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm2        # eb2 <func_floor_167(double)+0x12>
     eb1:	00 
     eb2:	c5 eb c2 15 00 00 00 	vcmpnlesd 0x0(%rip),%xmm2,%xmm2        # ebb <func_floor_167(double)+0x1b>
     eb9:	00 06 
     ebb:	c4 e3 71 4b c8 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm1
     ec1:	c5 f3 58 15 00 00 00 	vaddsd 0x0(%rip),%xmm1,%xmm2        # ec9 <func_floor_167(double)+0x29>
     ec8:	00 
     ec9:	c5 fb c2 c1 05       	vcmpnltsd %xmm1,%xmm0,%xmm0
     ece:	c4 e3 69 4b c1 00    	vblendvpd %xmm0,%xmm1,%xmm2,%xmm0
     ed4:	c3                   	ret    
     ed5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     edc:	00 00 00 
     edf:	90                   	nop

0000000000000ee0 <func_floor_168(long)>:
     ee0:	48 89 f8             	mov    %rdi,%rax
     ee3:	c3                   	ret    
     ee4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     eeb:	00 00 00 
     eee:	66 90                	xchg   %ax,%ax

0000000000000ef0 <func_floor_169(int)>:
     ef0:	89 f8                	mov    %edi,%eax
     ef2:	c3                   	ret    
     ef3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     efa:	00 00 00 
     efd:	0f 1f 00             	nopl   (%rax)

0000000000000f00 <func_floor_170(short)>:
     f00:	89 f8                	mov    %edi,%eax
     f02:	c3                   	ret    
     f03:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f0a:	00 00 00 
     f0d:	0f 1f 00             	nopl   (%rax)

0000000000000f10 <func_floor_171(signed char)>:
     f10:	89 f8                	mov    %edi,%eax
     f12:	c3                   	ret    
     f13:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f1a:	00 00 00 
     f1d:	0f 1f 00             	nopl   (%rax)

0000000000000f20 <func_floor_172(unsigned long)>:
     f20:	48 89 f8             	mov    %rdi,%rax
     f23:	c3                   	ret    
     f24:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f2b:	00 00 00 
     f2e:	66 90                	xchg   %ax,%ax

0000000000000f30 <func_floor_173(unsigned int)>:
     f30:	89 f8                	mov    %edi,%eax
     f32:	c3                   	ret    
     f33:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f3a:	00 00 00 
     f3d:	0f 1f 00             	nopl   (%rax)

0000000000000f40 <func_floor_174(unsigned short)>:
     f40:	89 f8                	mov    %edi,%eax
     f42:	c3                   	ret    
     f43:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f4a:	00 00 00 
     f4d:	0f 1f 00             	nopl   (%rax)

0000000000000f50 <func_floor_175(unsigned char)>:
     f50:	89 f8                	mov    %edi,%eax
     f52:	c3                   	ret    
     f53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f5a:	00 00 00 
     f5d:	0f 1f 00             	nopl   (%rax)

0000000000000f60 <func_floor_176(unsigned long)>:
     f60:	48 89 f8             	mov    %rdi,%rax
     f63:	c3                   	ret    
     f64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f6b:	00 00 00 
     f6e:	66 90                	xchg   %ax,%ax

0000000000000f70 <func_floor_177(unsigned int)>:
     f70:	89 f8                	mov    %edi,%eax
     f72:	c3                   	ret    
     f73:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f7a:	00 00 00 
     f7d:	0f 1f 00             	nopl   (%rax)

0000000000000f80 <func_floor_178(unsigned short)>:
     f80:	89 f8                	mov    %edi,%eax
     f82:	c3                   	ret    
     f83:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f8a:	00 00 00 
     f8d:	0f 1f 00             	nopl   (%rax)

0000000000000f90 <func_floor_179(unsigned char)>:
     f90:	89 f8                	mov    %edi,%eax
     f92:	c3                   	ret    
     f93:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f9a:	00 00 00 
     f9d:	0f 1f 00             	nopl   (%rax)

0000000000000fa0 <func_inc_180(float)>:
     fa0:	c5 fa 58 05 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm0        # fa8 <func_inc_180(float)+0x8>
     fa7:	00 
     fa8:	c3                   	ret    
     fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000fb0 <func_inc_181(double)>:
     fb0:	c5 fb 58 05 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm0        # fb8 <func_inc_181(double)+0x8>
     fb7:	00 
     fb8:	c3                   	ret    
     fb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000fc0 <func_inc_182(long)>:
     fc0:	48 8d 47 01          	lea    0x1(%rdi),%rax
     fc4:	c3                   	ret    
     fc5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fcc:	00 00 00 
     fcf:	90                   	nop

0000000000000fd0 <func_inc_183(int)>:
     fd0:	8d 47 01             	lea    0x1(%rdi),%eax
     fd3:	c3                   	ret    
     fd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fdb:	00 00 00 
     fde:	66 90                	xchg   %ax,%ax

0000000000000fe0 <func_inc_184(short)>:
     fe0:	8d 47 01             	lea    0x1(%rdi),%eax
     fe3:	c3                   	ret    
     fe4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     feb:	00 00 00 
     fee:	66 90                	xchg   %ax,%ax

0000000000000ff0 <func_inc_185(signed char)>:
     ff0:	8d 47 01             	lea    0x1(%rdi),%eax
     ff3:	c3                   	ret    
     ff4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ffb:	00 00 00 
     ffe:	66 90                	xchg   %ax,%ax

0000000000001000 <func_inc_186(unsigned long)>:
    1000:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1004:	c3                   	ret    
    1005:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    100c:	00 00 00 
    100f:	90                   	nop

0000000000001010 <func_inc_187(unsigned int)>:
    1010:	8d 47 01             	lea    0x1(%rdi),%eax
    1013:	c3                   	ret    
    1014:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    101b:	00 00 00 
    101e:	66 90                	xchg   %ax,%ax

0000000000001020 <func_inc_188(unsigned short)>:
    1020:	8d 47 01             	lea    0x1(%rdi),%eax
    1023:	c3                   	ret    
    1024:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    102b:	00 00 00 
    102e:	66 90                	xchg   %ax,%ax

0000000000001030 <func_inc_189(unsigned char)>:
    1030:	8d 47 01             	lea    0x1(%rdi),%eax
    1033:	c3                   	ret    
    1034:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    103b:	00 00 00 
    103e:	66 90                	xchg   %ax,%ax

0000000000001040 <func_inc_190(unsigned long)>:
    1040:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1044:	c3                   	ret    
    1045:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    104c:	00 00 00 
    104f:	90                   	nop

0000000000001050 <func_inc_191(unsigned int)>:
    1050:	8d 47 01             	lea    0x1(%rdi),%eax
    1053:	c3                   	ret    
    1054:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    105b:	00 00 00 
    105e:	66 90                	xchg   %ax,%ax

0000000000001060 <func_inc_192(unsigned short)>:
    1060:	8d 47 01             	lea    0x1(%rdi),%eax
    1063:	c3                   	ret    
    1064:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106b:	00 00 00 
    106e:	66 90                	xchg   %ax,%ax

0000000000001070 <func_inc_193(unsigned char)>:
    1070:	8d 47 01             	lea    0x1(%rdi),%eax
    1073:	c3                   	ret    
    1074:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107b:	00 00 00 
    107e:	66 90                	xchg   %ax,%ax

0000000000001080 <func_add_194(float, float)>:
    1080:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1084:	c3                   	ret    
    1085:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108c:	00 00 00 
    108f:	90                   	nop

0000000000001090 <func_add_195(double, double)>:
    1090:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1094:	c3                   	ret    
    1095:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    109c:	00 00 00 
    109f:	90                   	nop

00000000000010a0 <func_add_196(long, long)>:
    10a0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    10a4:	c3                   	ret    
    10a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ac:	00 00 00 
    10af:	90                   	nop

00000000000010b0 <func_add_197(int, int)>:
    10b0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    10b3:	c3                   	ret    
    10b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10bb:	00 00 00 
    10be:	66 90                	xchg   %ax,%ax

00000000000010c0 <func_add_198(short, short)>:
    10c0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    10c3:	c3                   	ret    
    10c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cb:	00 00 00 
    10ce:	66 90                	xchg   %ax,%ax

00000000000010d0 <func_add_199(signed char, signed char)>:
    10d0:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    10d3:	c3                   	ret    
    10d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10db:	00 00 00 
    10de:	66 90                	xchg   %ax,%ax

00000000000010e0 <func_add_200(unsigned long, unsigned long)>:
    10e0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    10e4:	c3                   	ret    
    10e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ec:	00 00 00 
    10ef:	90                   	nop

00000000000010f0 <func_add_201(unsigned int, unsigned int)>:
    10f0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    10f3:	c3                   	ret    
    10f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fb:	00 00 00 
    10fe:	66 90                	xchg   %ax,%ax

0000000000001100 <func_add_202(unsigned short, unsigned short)>:
    1100:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1103:	c3                   	ret    
    1104:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110b:	00 00 00 
    110e:	66 90                	xchg   %ax,%ax

0000000000001110 <func_add_203(unsigned char, unsigned char)>:
    1110:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1113:	c3                   	ret    
    1114:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    111b:	00 00 00 
    111e:	66 90                	xchg   %ax,%ax

0000000000001120 <func_add_204(unsigned long, unsigned long)>:
    1120:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1124:	c3                   	ret    
    1125:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112c:	00 00 00 
    112f:	90                   	nop

0000000000001130 <func_add_205(unsigned int, unsigned int)>:
    1130:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1133:	c3                   	ret    
    1134:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113b:	00 00 00 
    113e:	66 90                	xchg   %ax,%ax

0000000000001140 <func_add_206(unsigned short, unsigned short)>:
    1140:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1143:	c3                   	ret    
    1144:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114b:	00 00 00 
    114e:	66 90                	xchg   %ax,%ax

0000000000001150 <func_add_207(unsigned char, unsigned char)>:
    1150:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1153:	c3                   	ret    
    1154:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115b:	00 00 00 
    115e:	66 90                	xchg   %ax,%ax

0000000000001160 <func_average_208(float, float)>:
    1160:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 1168 <func_average_208(float, float)+0x8>
    1167:	00 
    1168:	c5 f2 59 ca          	vmulss %xmm2,%xmm1,%xmm1
    116c:	c5 fa 59 c2          	vmulss %xmm2,%xmm0,%xmm0
    1170:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1174:	c3                   	ret    
    1175:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117c:	00 00 00 
    117f:	90                   	nop

0000000000001180 <func_average_209(double, double)>:
    1180:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 1188 <func_average_209(double, double)+0x8>
    1187:	00 
    1188:	c5 f3 59 ca          	vmulsd %xmm2,%xmm1,%xmm1
    118c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
    1190:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1194:	c3                   	ret    
    1195:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    119c:	00 00 00 
    119f:	90                   	nop

00000000000011a0 <func_average_210(long, long)>:
    11a0:	48 89 f0             	mov    %rsi,%rax
    11a3:	48 21 f8             	and    %rdi,%rax
    11a6:	48 31 fe             	xor    %rdi,%rsi
    11a9:	48 d1 fe             	sar    %rsi
    11ac:	48 01 f0             	add    %rsi,%rax
    11af:	c3                   	ret    

00000000000011b0 <func_average_211(int, int)>:
    11b0:	89 f0                	mov    %esi,%eax
    11b2:	21 f8                	and    %edi,%eax
    11b4:	31 fe                	xor    %edi,%esi
    11b6:	d1 fe                	sar    %esi
    11b8:	01 f0                	add    %esi,%eax
    11ba:	c3                   	ret    
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <func_average_212(short, short)>:
    11c0:	89 f0                	mov    %esi,%eax
    11c2:	21 f8                	and    %edi,%eax
    11c4:	31 fe                	xor    %edi,%esi
    11c6:	d1 fe                	sar    %esi
    11c8:	01 f0                	add    %esi,%eax
    11ca:	c3                   	ret    
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <func_average_213(signed char, signed char)>:
    11d0:	89 f0                	mov    %esi,%eax
    11d2:	40 20 f8             	and    %dil,%al
    11d5:	40 30 fe             	xor    %dil,%sil
    11d8:	40 d0 fe             	sar    %sil
    11db:	40 00 f0             	add    %sil,%al
    11de:	c3                   	ret    
    11df:	90                   	nop

00000000000011e0 <func_average_214(unsigned long, unsigned long)>:
    11e0:	48 89 f0             	mov    %rsi,%rax
    11e3:	48 21 f8             	and    %rdi,%rax
    11e6:	48 31 fe             	xor    %rdi,%rsi
    11e9:	48 d1 ee             	shr    %rsi
    11ec:	48 01 f0             	add    %rsi,%rax
    11ef:	c3                   	ret    

00000000000011f0 <func_average_215(unsigned int, unsigned int)>:
    11f0:	89 f0                	mov    %esi,%eax
    11f2:	21 f8                	and    %edi,%eax
    11f4:	31 fe                	xor    %edi,%esi
    11f6:	d1 ee                	shr    %esi
    11f8:	01 f0                	add    %esi,%eax
    11fa:	c3                   	ret    
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <func_average_216(unsigned short, unsigned short)>:
    1200:	89 f0                	mov    %esi,%eax
    1202:	21 f8                	and    %edi,%eax
    1204:	31 fe                	xor    %edi,%esi
    1206:	d1 ee                	shr    %esi
    1208:	01 f0                	add    %esi,%eax
    120a:	c3                   	ret    
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <func_average_217(unsigned char, unsigned char)>:
    1210:	89 f0                	mov    %esi,%eax
    1212:	40 20 f8             	and    %dil,%al
    1215:	40 30 fe             	xor    %dil,%sil
    1218:	40 d0 ee             	shr    %sil
    121b:	40 00 f0             	add    %sil,%al
    121e:	c3                   	ret    
    121f:	90                   	nop

0000000000001220 <func_average_218(unsigned long, unsigned long)>:
    1220:	48 89 f0             	mov    %rsi,%rax
    1223:	48 21 f8             	and    %rdi,%rax
    1226:	48 31 fe             	xor    %rdi,%rsi
    1229:	48 d1 ee             	shr    %rsi
    122c:	48 01 f0             	add    %rsi,%rax
    122f:	c3                   	ret    

0000000000001230 <func_average_219(unsigned int, unsigned int)>:
    1230:	89 f0                	mov    %esi,%eax
    1232:	21 f8                	and    %edi,%eax
    1234:	31 fe                	xor    %edi,%esi
    1236:	d1 ee                	shr    %esi
    1238:	01 f0                	add    %esi,%eax
    123a:	c3                   	ret    
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <func_average_220(unsigned short, unsigned short)>:
    1240:	89 f0                	mov    %esi,%eax
    1242:	21 f8                	and    %edi,%eax
    1244:	31 fe                	xor    %edi,%esi
    1246:	d1 ee                	shr    %esi
    1248:	01 f0                	add    %esi,%eax
    124a:	c3                   	ret    
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <func_average_221(unsigned char, unsigned char)>:
    1250:	89 f0                	mov    %esi,%eax
    1252:	40 20 f8             	and    %dil,%al
    1255:	40 30 fe             	xor    %dil,%sil
    1258:	40 d0 ee             	shr    %sil
    125b:	40 00 f0             	add    %sil,%al
    125e:	c3                   	ret    
    125f:	90                   	nop

0000000000001260 <func_is_positive_222(float)>:
    1260:	c5 f8 50 c0          	vmovmskps %xmm0,%eax
    1264:	c1 e0 1f             	shl    $0x1f,%eax
    1267:	c1 f8 1f             	sar    $0x1f,%eax
    126a:	f7 d0                	not    %eax
    126c:	c3                   	ret    
    126d:	0f 1f 00             	nopl   (%rax)

0000000000001270 <func_is_positive_223(double)>:
    1270:	c5 f9 50 c0          	vmovmskpd %xmm0,%eax
    1274:	48 c1 e0 3f          	shl    $0x3f,%rax
    1278:	48 c1 f8 3f          	sar    $0x3f,%rax
    127c:	48 f7 d0             	not    %rax
    127f:	c3                   	ret    

0000000000001280 <func_is_positive_224(long)>:
    1280:	48 89 f8             	mov    %rdi,%rax
    1283:	48 c1 f8 3f          	sar    $0x3f,%rax
    1287:	48 f7 d0             	not    %rax
    128a:	c3                   	ret    
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <func_is_positive_225(int)>:
    1290:	89 f8                	mov    %edi,%eax
    1292:	c1 f8 1f             	sar    $0x1f,%eax
    1295:	f7 d0                	not    %eax
    1297:	c3                   	ret    
    1298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    129f:	00 

00000000000012a0 <func_is_positive_226(short)>:
    12a0:	89 f8                	mov    %edi,%eax
    12a2:	c1 f8 0f             	sar    $0xf,%eax
    12a5:	f7 d0                	not    %eax
    12a7:	c3                   	ret    
    12a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12af:	00 

00000000000012b0 <func_is_positive_227(signed char)>:
    12b0:	89 f8                	mov    %edi,%eax
    12b2:	c0 f8 07             	sar    $0x7,%al
    12b5:	f6 d0                	not    %al
    12b7:	c3                   	ret    
    12b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12bf:	00 

00000000000012c0 <func_is_positive_228(unsigned long)>:
    12c0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    12c7:	c3                   	ret    
    12c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12cf:	00 

00000000000012d0 <func_is_positive_229(unsigned int)>:
    12d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    12d5:	c3                   	ret    
    12d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12dd:	00 00 00 

00000000000012e0 <func_is_positive_230(unsigned short)>:
    12e0:	66 b8 ff ff          	mov    $0xffff,%ax
    12e4:	c3                   	ret    
    12e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12ec:	00 00 00 
    12ef:	90                   	nop

00000000000012f0 <func_is_positive_231(unsigned char)>:
    12f0:	b0 ff                	mov    $0xff,%al
    12f2:	c3                   	ret    
    12f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fa:	00 00 00 
    12fd:	0f 1f 00             	nopl   (%rax)

0000000000001300 <func_is_positive_232(unsigned long)>:
    1300:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1307:	c3                   	ret    
    1308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    130f:	00 

0000000000001310 <func_is_positive_233(unsigned int)>:
    1310:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1315:	c3                   	ret    
    1316:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    131d:	00 00 00 

0000000000001320 <func_is_positive_234(unsigned short)>:
    1320:	66 b8 ff ff          	mov    $0xffff,%ax
    1324:	c3                   	ret    
    1325:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    132c:	00 00 00 
    132f:	90                   	nop

0000000000001330 <func_is_positive_235(unsigned char)>:
    1330:	b0 ff                	mov    $0xff,%al
    1332:	c3                   	ret    
    1333:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    133a:	00 00 00 
    133d:	0f 1f 00             	nopl   (%rax)

0000000000001340 <func_dec_236(float)>:
    1340:	c5 fa 58 05 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm0        # 1348 <func_dec_236(float)+0x8>
    1347:	00 
    1348:	c3                   	ret    
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001350 <func_dec_237(double)>:
    1350:	c5 fb 58 05 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm0        # 1358 <func_dec_237(double)+0x8>
    1357:	00 
    1358:	c3                   	ret    
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <func_dec_238(long)>:
    1360:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1364:	c3                   	ret    
    1365:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    136c:	00 00 00 
    136f:	90                   	nop

0000000000001370 <func_dec_239(int)>:
    1370:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1373:	c3                   	ret    
    1374:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    137b:	00 00 00 
    137e:	66 90                	xchg   %ax,%ax

0000000000001380 <func_dec_240(short)>:
    1380:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1383:	c3                   	ret    
    1384:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    138b:	00 00 00 
    138e:	66 90                	xchg   %ax,%ax

0000000000001390 <func_dec_241(signed char)>:
    1390:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1393:	c3                   	ret    
    1394:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    139b:	00 00 00 
    139e:	66 90                	xchg   %ax,%ax

00000000000013a0 <func_dec_242(unsigned long)>:
    13a0:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    13a4:	c3                   	ret    
    13a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ac:	00 00 00 
    13af:	90                   	nop

00000000000013b0 <func_dec_243(unsigned int)>:
    13b0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13b3:	c3                   	ret    
    13b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13bb:	00 00 00 
    13be:	66 90                	xchg   %ax,%ax

00000000000013c0 <func_dec_244(unsigned short)>:
    13c0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13c3:	c3                   	ret    
    13c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cb:	00 00 00 
    13ce:	66 90                	xchg   %ax,%ax

00000000000013d0 <func_dec_245(unsigned char)>:
    13d0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13d3:	c3                   	ret    
    13d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13db:	00 00 00 
    13de:	66 90                	xchg   %ax,%ax

00000000000013e0 <func_dec_246(unsigned long)>:
    13e0:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    13e4:	c3                   	ret    
    13e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ec:	00 00 00 
    13ef:	90                   	nop

00000000000013f0 <func_dec_247(unsigned int)>:
    13f0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13f3:	c3                   	ret    
    13f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13fb:	00 00 00 
    13fe:	66 90                	xchg   %ax,%ax

0000000000001400 <func_dec_248(unsigned short)>:
    1400:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1403:	c3                   	ret    
    1404:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    140b:	00 00 00 
    140e:	66 90                	xchg   %ax,%ax

0000000000001410 <func_dec_249(unsigned char)>:
    1410:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1413:	c3                   	ret    
    1414:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141b:	00 00 00 
    141e:	66 90                	xchg   %ax,%ax

0000000000001420 <func_frac_250(float)>:
    1420:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    1424:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
    1428:	75 02                	jne    142c <func_frac_250(float)+0xc>
    142a:	7b 28                	jnp    1454 <func_frac_250(float)+0x34>
    142c:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 1435 <func_frac_250(float)+0x15>
    1433:	00 00 
    1435:	c5 f8 54 c9          	vandps %xmm1,%xmm0,%xmm1
    1439:	c5 fa 5b d0          	vcvttps2dq %xmm0,%xmm2
    143d:	c5 f2 c2 0d 00 00 00 	vcmpnless 0x0(%rip),%xmm1,%xmm1        # 1446 <func_frac_250(float)+0x26>
    1444:	00 06 
    1446:	c5 f8 5b d2          	vcvtdq2ps %xmm2,%xmm2
    144a:	c4 e3 69 4a c8 10    	vblendvps %xmm1,%xmm0,%xmm2,%xmm1
    1450:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    1454:	c3                   	ret    
    1455:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    145c:	00 00 00 
    145f:	90                   	nop

0000000000001460 <func_frac_251(double)>:
    1460:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1464:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    1468:	75 02                	jne    146c <func_frac_251(double)+0xc>
    146a:	7b 25                	jnp    1491 <func_frac_251(double)+0x31>
    146c:	c5 f9 54 0d 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm1        # 1474 <func_frac_251(double)+0x14>
    1473:	00 
    1474:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1479:	c4 e1 eb 2a d0       	vcvtsi2sd %rax,%xmm2,%xmm2
    147e:	c5 f3 c2 0d 00 00 00 	vcmpnlesd 0x0(%rip),%xmm1,%xmm1        # 1487 <func_frac_251(double)+0x27>
    1485:	00 06 
    1487:	c4 e3 69 4b c8 10    	vblendvpd %xmm1,%xmm0,%xmm2,%xmm1
    148d:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    1491:	c3                   	ret    
    1492:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1499:	00 00 00 
    149c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000014a0 <func_frac_252(long)>:
    14a0:	31 c0                	xor    %eax,%eax
    14a2:	c3                   	ret    
    14a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14aa:	00 00 00 
    14ad:	0f 1f 00             	nopl   (%rax)

00000000000014b0 <func_frac_253(int)>:
    14b0:	31 c0                	xor    %eax,%eax
    14b2:	c3                   	ret    
    14b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ba:	00 00 00 
    14bd:	0f 1f 00             	nopl   (%rax)

00000000000014c0 <func_frac_254(short)>:
    14c0:	31 c0                	xor    %eax,%eax
    14c2:	c3                   	ret    
    14c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ca:	00 00 00 
    14cd:	0f 1f 00             	nopl   (%rax)

00000000000014d0 <func_frac_255(signed char)>:
    14d0:	31 c0                	xor    %eax,%eax
    14d2:	c3                   	ret    
    14d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14da:	00 00 00 
    14dd:	0f 1f 00             	nopl   (%rax)

00000000000014e0 <func_frac_256(unsigned long)>:
    14e0:	31 c0                	xor    %eax,%eax
    14e2:	c3                   	ret    
    14e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ea:	00 00 00 
    14ed:	0f 1f 00             	nopl   (%rax)

00000000000014f0 <func_frac_257(unsigned int)>:
    14f0:	31 c0                	xor    %eax,%eax
    14f2:	c3                   	ret    
    14f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14fa:	00 00 00 
    14fd:	0f 1f 00             	nopl   (%rax)

0000000000001500 <func_frac_258(unsigned short)>:
    1500:	31 c0                	xor    %eax,%eax
    1502:	c3                   	ret    
    1503:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    150a:	00 00 00 
    150d:	0f 1f 00             	nopl   (%rax)

0000000000001510 <func_frac_259(unsigned char)>:
    1510:	31 c0                	xor    %eax,%eax
    1512:	c3                   	ret    
    1513:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    151a:	00 00 00 
    151d:	0f 1f 00             	nopl   (%rax)

0000000000001520 <func_frac_260(unsigned long)>:
    1520:	31 c0                	xor    %eax,%eax
    1522:	c3                   	ret    
    1523:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    152a:	00 00 00 
    152d:	0f 1f 00             	nopl   (%rax)

0000000000001530 <func_frac_261(unsigned int)>:
    1530:	31 c0                	xor    %eax,%eax
    1532:	c3                   	ret    
    1533:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    153a:	00 00 00 
    153d:	0f 1f 00             	nopl   (%rax)

0000000000001540 <func_frac_262(unsigned short)>:
    1540:	31 c0                	xor    %eax,%eax
    1542:	c3                   	ret    
    1543:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    154a:	00 00 00 
    154d:	0f 1f 00             	nopl   (%rax)

0000000000001550 <func_frac_263(unsigned char)>:
    1550:	31 c0                	xor    %eax,%eax
    1552:	c3                   	ret    
    1553:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    155a:	00 00 00 
    155d:	0f 1f 00             	nopl   (%rax)

0000000000001560 <func_agm_264(float, float)>:
    1560:	55                   	push   %rbp
    1561:	41 56                	push   %r14
    1563:	53                   	push   %rbx
    1564:	48 83 ec 50          	sub    $0x50,%rsp
    1568:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
    156c:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 1574 <func_agm_264(float, float)+0x14>
    1573:	00 
    1574:	c5 f2 59 d5          	vmulss %xmm5,%xmm1,%xmm2
    1578:	c5 f8 29 44 24 10    	vmovaps %xmm0,0x10(%rsp)
    157e:	c5 fa 59 cd          	vmulss %xmm5,%xmm0,%xmm1
    1582:	c5 f2 58 c2          	vaddss %xmm2,%xmm1,%xmm0
    1586:	c5 fa 5c c8          	vsubss %xmm0,%xmm0,%xmm1
    158a:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
    158e:	0f 8a fe 01 00 00    	jp     1792 <func_agm_264(float, float)+0x232>
    1594:	c5 f9 7e c3          	vmovd  %xmm0,%ebx
    1598:	81 e3 00 00 80 7f    	and    $0x7f800000,%ebx
    159e:	8d 83 00 00 80 c0    	lea    -0x3f800000(%rbx),%eax
    15a4:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    15a8:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
    15ac:	0f 45 d8             	cmovne %eax,%ebx
    15af:	0f 4a d8             	cmovp  %eax,%ebx
    15b2:	c4 62 79 18 05 00 00 	vbroadcastss 0x0(%rip),%xmm8        # 15bb <func_agm_264(float, float)+0x5b>
    15b9:	00 00 
    15bb:	c5 f8 28 64 24 10    	vmovaps 0x10(%rsp),%xmm4
    15c1:	c4 e3 59 21 f3 10    	vinsertps $0x10,%xmm3,%xmm4,%xmm6
    15c7:	c5 b8 54 c6          	vandps %xmm6,%xmm8,%xmm0
    15cb:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 15d4 <func_agm_264(float, float)+0x74>
    15d2:	00 00 
    15d4:	c5 f8 c2 c1 00       	vcmpeqps %xmm1,%xmm0,%xmm0
    15d9:	c4 e2 79 25 c0       	vpmovsxdq %xmm0,%xmm0
    15de:	c5 f9 50 c0          	vmovmskpd %xmm0,%eax
    15e2:	85 c0                	test   %eax,%eax
    15e4:	41 0f 95 c6          	setne  %r14b
    15e8:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    15ec:	c5 c8 c2 c0 04       	vcmpneqps %xmm0,%xmm6,%xmm0
    15f1:	c4 e2 79 18 0d 00 00 	vbroadcastss 0x0(%rip),%xmm1        # 15fa <func_agm_264(float, float)+0x9a>
    15f8:	00 00 
    15fa:	c5 c8 54 c9          	vandps %xmm1,%xmm6,%xmm1
    15fe:	c4 e2 79 18 15 00 00 	vbroadcastss 0x0(%rip),%xmm2        # 1607 <func_agm_264(float, float)+0xa7>
    1605:	00 00 
    1607:	c5 f0 56 ca          	vorps  %xmm2,%xmm1,%xmm1
    160b:	c5 f8 29 74 24 30    	vmovaps %xmm6,0x30(%rsp)
    1611:	c4 e3 49 4a c1 00    	vblendvps %xmm0,%xmm1,%xmm6,%xmm0
    1617:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
    161b:	c5 fa 59 c9          	vmulss %xmm1,%xmm0,%xmm1
    161f:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1623:	c5 f0 c2 c8 02       	vcmpleps %xmm0,%xmm1,%xmm1
    1628:	c5 e0 c2 d4 03       	vcmpunordps %xmm4,%xmm3,%xmm2
    162d:	c5 e8 56 c9          	vorps  %xmm1,%xmm2,%xmm1
    1631:	c5 f9 7e cd          	vmovd  %xmm1,%ebp
    1635:	44 08 f5             	or     %r14b,%bpl
    1638:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    163c:	40 f6 c5 01          	test   $0x1,%bpl
    1640:	75 0a                	jne    164c <func_agm_264(float, float)+0xec>
    1642:	c5 f8 28 44 24 10    	vmovaps 0x10(%rsp),%xmm0
    1648:	c5 f8 28 cb          	vmovaps %xmm3,%xmm1
    164c:	c5 f8 29 5c 24 20    	vmovaps %xmm3,0x20(%rsp)
    1652:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
    1657:	29 d8                	sub    %ebx,%eax
    1659:	c5 f9 6e d0          	vmovd  %eax,%xmm2
    165d:	c5 f2 59 e2          	vmulss %xmm2,%xmm1,%xmm4
    1661:	c5 da 59 0d 00 00 00 	vmulss 0x0(%rip),%xmm4,%xmm1        # 1669 <func_agm_264(float, float)+0x109>
    1668:	00 
    1669:	c5 fa 59 da          	vmulss %xmm2,%xmm0,%xmm3
    166d:	c5 e2 59 05 00 00 00 	vmulss 0x0(%rip),%xmm3,%xmm0        # 1675 <func_agm_264(float, float)+0x115>
    1674:	00 
    1675:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1679:	c5 b8 54 c0          	vandps %xmm0,%xmm8,%xmm0
    167d:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1685 <func_agm_264(float, float)+0x125>
    1684:	00 
    1685:	0f 86 a0 00 00 00    	jbe    172b <func_agm_264(float, float)+0x1cb>
    168b:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    1690:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 1698 <func_agm_264(float, float)+0x138>
    1697:	00 
    1698:	c5 fa 10 35 00 00 00 	vmovss 0x0(%rip),%xmm6        # 16a0 <func_agm_264(float, float)+0x140>
    169f:	00 
    16a0:	c5 78 29 44 24 40    	vmovaps %xmm8,0x40(%rsp)
    16a6:	eb 72                	jmp    171a <func_agm_264(float, float)+0x1ba>
    16a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    16af:	00 
    16b0:	c5 fa 11 64 24 0c    	vmovss %xmm4,0xc(%rsp)
    16b6:	c5 fa 11 5c 24 08    	vmovss %xmm3,0x8(%rsp)
    16bc:	e8 00 00 00 00       	call   16c1 <func_agm_264(float, float)+0x161>
    16c1:	c5 fa 10 35 00 00 00 	vmovss 0x0(%rip),%xmm6        # 16c9 <func_agm_264(float, float)+0x169>
    16c8:	00 
    16c9:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 16d1 <func_agm_264(float, float)+0x171>
    16d0:	00 
    16d1:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    16d6:	c5 fa 10 5c 24 08    	vmovss 0x8(%rsp),%xmm3
    16dc:	c5 fa 10 64 24 0c    	vmovss 0xc(%rsp),%xmm4
    16e2:	c5 78 28 44 24 40    	vmovaps 0x40(%rsp),%xmm8
    16e8:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 16f0 <func_agm_264(float, float)+0x190>
    16ef:	00 
    16f0:	c5 da 59 cd          	vmulss %xmm5,%xmm4,%xmm1
    16f4:	c5 e2 59 d5          	vmulss %xmm5,%xmm3,%xmm2
    16f8:	c5 e2 59 dd          	vmulss %xmm5,%xmm3,%xmm3
    16fc:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
    1700:	c5 da 59 d7          	vmulss %xmm7,%xmm4,%xmm2
    1704:	c5 e2 58 d2          	vaddss %xmm2,%xmm3,%xmm2
    1708:	c5 b8 54 d2          	vandps %xmm2,%xmm8,%xmm2
    170c:	c5 f8 2e d6          	vucomiss %xmm6,%xmm2
    1710:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
    1714:	c5 f8 28 e0          	vmovaps %xmm0,%xmm4
    1718:	76 15                	jbe    172f <func_agm_264(float, float)+0x1cf>
    171a:	c5 e2 59 c4          	vmulss %xmm4,%xmm3,%xmm0
    171e:	c4 c1 78 2e c1       	vucomiss %xmm9,%xmm0
    1723:	72 8b                	jb     16b0 <func_agm_264(float, float)+0x150>
    1725:	c5 fa 51 c0          	vsqrtss %xmm0,%xmm0,%xmm0
    1729:	eb c5                	jmp    16f0 <func_agm_264(float, float)+0x190>
    172b:	c5 f8 28 c4          	vmovaps %xmm4,%xmm0
    172f:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    1733:	c5 f0 c2 4c 24 30 04 	vcmpneqps 0x30(%rsp),%xmm1,%xmm1
    173a:	c4 e2 79 25 c9       	vpmovsxdq %xmm1,%xmm1
    173f:	c5 f9 50 c1          	vmovmskpd %xmm1,%eax
    1743:	3c 03                	cmp    $0x3,%al
    1745:	74 11                	je     1758 <func_agm_264(float, float)+0x1f8>
    1747:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    174b:	c5 f8 28 54 24 20    	vmovaps 0x20(%rsp),%xmm2
    1751:	45 84 f6             	test   %r14b,%r14b
    1754:	75 15                	jne    176b <func_agm_264(float, float)+0x20b>
    1756:	eb 19                	jmp    1771 <func_agm_264(float, float)+0x211>
    1758:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 1760 <func_agm_264(float, float)+0x200>
    175f:	00 
    1760:	c5 f8 28 54 24 20    	vmovaps 0x20(%rsp),%xmm2
    1766:	45 84 f6             	test   %r14b,%r14b
    1769:	74 06                	je     1771 <func_agm_264(float, float)+0x211>
    176b:	c5 ea 58 4c 24 10    	vaddss 0x10(%rsp),%xmm2,%xmm1
    1771:	40 f6 c5 01          	test   $0x1,%bpl
    1775:	75 0e                	jne    1785 <func_agm_264(float, float)+0x225>
    1777:	81 c3 00 00 80 3f    	add    $0x3f800000,%ebx
    177d:	c5 f9 6e cb          	vmovd  %ebx,%xmm1
    1781:	c5 fa 59 c9          	vmulss %xmm1,%xmm0,%xmm1
    1785:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    1789:	48 83 c4 50          	add    $0x50,%rsp
    178d:	5b                   	pop    %rbx
    178e:	41 5e                	pop    %r14
    1790:	5d                   	pop    %rbp
    1791:	c3                   	ret    
    1792:	31 db                	xor    %ebx,%ebx
    1794:	e9 19 fe ff ff       	jmp    15b2 <func_agm_264(float, float)+0x52>
    1799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000017a0 <func_agm_265(double, double)>:
    17a0:	55                   	push   %rbp
    17a1:	41 57                	push   %r15
    17a3:	41 56                	push   %r14
    17a5:	53                   	push   %rbx
    17a6:	48 83 ec 58          	sub    $0x58,%rsp
    17aa:	c5 fb 10 35 00 00 00 	vmovsd 0x0(%rip),%xmm6        # 17b2 <func_agm_265(double, double)+0x12>
    17b1:	00 
    17b2:	c5 f3 59 de          	vmulsd %xmm6,%xmm1,%xmm3
    17b6:	c5 f9 29 44 24 10    	vmovapd %xmm0,0x10(%rsp)
    17bc:	c5 fb 59 d6          	vmulsd %xmm6,%xmm0,%xmm2
    17c0:	c5 eb 58 c3          	vaddsd %xmm3,%xmm2,%xmm0
    17c4:	c5 fb 5c d0          	vsubsd %xmm0,%xmm0,%xmm2
    17c8:	c5 f9 2e d2          	vucomisd %xmm2,%xmm2
    17cc:	0f 8a 09 02 00 00    	jp     19db <func_agm_265(double, double)+0x23b>
    17d2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    17d7:	48 bb 00 00 00 00 00 	movabs $0x7ff0000000000000,%rbx
    17de:	00 f0 7f 
    17e1:	48 21 c3             	and    %rax,%rbx
    17e4:	48 b8 00 00 00 00 00 	movabs $0xc010000000000000,%rax
    17eb:	00 10 c0 
    17ee:	48 01 d8             	add    %rbx,%rax
    17f1:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    17f5:	c5 f9 2e c2          	vucomisd %xmm2,%xmm0
    17f9:	48 0f 45 d8          	cmovne %rax,%rbx
    17fd:	48 0f 4a d8          	cmovp  %rax,%rbx
    1801:	49 be 00 00 00 00 00 	movabs $0x3ff0000000000000,%r14
    1808:	00 f0 3f 
    180b:	c5 f9 28 6c 24 10    	vmovapd 0x10(%rsp),%xmm5
    1811:	c5 d1 14 e1          	vunpcklpd %xmm1,%xmm5,%xmm4
    1815:	c5 f9 28 05 00 00 00 	vmovapd 0x0(%rip),%xmm0        # 181d <func_agm_265(double, double)+0x7d>
    181c:	00 
    181d:	c5 d9 54 d0          	vandpd %xmm0,%xmm4,%xmm2
    1821:	c5 e9 c2 15 00 00 00 	vcmpeqpd 0x0(%rip),%xmm2,%xmm2        # 182a <func_agm_265(double, double)+0x8a>
    1828:	00 00 
    182a:	c5 f9 50 c2          	vmovmskpd %xmm2,%eax
    182e:	85 c0                	test   %eax,%eax
    1830:	41 0f 95 c7          	setne  %r15b
    1834:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1838:	c5 d9 c2 da 04       	vcmpneqpd %xmm2,%xmm4,%xmm3
    183d:	c5 d9 54 15 00 00 00 	vandpd 0x0(%rip),%xmm4,%xmm2        # 1845 <func_agm_265(double, double)+0xa5>
    1844:	00 
    1845:	c5 e9 56 15 00 00 00 	vorpd  0x0(%rip),%xmm2,%xmm2        # 184d <func_agm_265(double, double)+0xad>
    184c:	00 
    184d:	c5 f9 29 64 24 30    	vmovapd %xmm4,0x30(%rsp)
    1853:	c4 e3 59 4b da 30    	vblendvpd %xmm3,%xmm2,%xmm4,%xmm3
    1859:	c4 e3 79 05 d3 01    	vpermilpd $0x1,%xmm3,%xmm2
    185f:	c5 e1 59 d2          	vmulpd %xmm2,%xmm3,%xmm2
    1863:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    1867:	c5 e9 c2 d4 02       	vcmplepd %xmm4,%xmm2,%xmm2
    186c:	c5 f9 29 0c 24       	vmovapd %xmm1,(%rsp)
    1871:	c5 f1 c2 dd 03       	vcmpunordpd %xmm5,%xmm1,%xmm3
    1876:	c5 e1 56 d2          	vorpd  %xmm2,%xmm3,%xmm2
    187a:	c5 f9 7e d5          	vmovd  %xmm2,%ebp
    187e:	44 08 fd             	or     %r15b,%bpl
    1881:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1885:	40 f6 c5 01          	test   $0x1,%bpl
    1889:	75 0b                	jne    1896 <func_agm_265(double, double)+0xf6>
    188b:	c5 f9 28 64 24 10    	vmovapd 0x10(%rsp),%xmm4
    1891:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    1896:	4c 89 f0             	mov    %r14,%rax
    1899:	48 29 d8             	sub    %rbx,%rax
    189c:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
    18a1:	c5 eb 59 eb          	vmulsd %xmm3,%xmm2,%xmm5
    18a5:	c5 d3 59 15 00 00 00 	vmulsd 0x0(%rip),%xmm5,%xmm2        # 18ad <func_agm_265(double, double)+0x10d>
    18ac:	00 
    18ad:	c5 db 59 db          	vmulsd %xmm3,%xmm4,%xmm3
    18b1:	c5 e3 59 0d 00 00 00 	vmulsd 0x0(%rip),%xmm3,%xmm1        # 18b9 <func_agm_265(double, double)+0x119>
    18b8:	00 
    18b9:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    18bd:	c5 f1 54 c0          	vandpd %xmm0,%xmm1,%xmm0
    18c1:	c5 f9 2e 05 00 00 00 	vucomisd 0x0(%rip),%xmm0        # 18c9 <func_agm_265(double, double)+0x129>
    18c8:	00 
    18c9:	0f 86 ac 00 00 00    	jbe    197b <func_agm_265(double, double)+0x1db>
    18cf:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    18d6:	ff ff 7f 
    18d9:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    18de:	c5 fb 10 3d 00 00 00 	vmovsd 0x0(%rip),%xmm7        # 18e6 <func_agm_265(double, double)+0x146>
    18e5:	00 
    18e6:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
    18eb:	c5 fb 10 25 00 00 00 	vmovsd 0x0(%rip),%xmm4        # 18f3 <func_agm_265(double, double)+0x153>
    18f2:	00 
    18f3:	c5 79 7f 4c 24 40    	vmovdqa %xmm9,0x40(%rsp)
    18f9:	eb 6f                	jmp    196a <func_agm_265(double, double)+0x1ca>
    18fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1900:	c5 fb 11 6c 24 28    	vmovsd %xmm5,0x28(%rsp)
    1906:	c5 fb 11 5c 24 20    	vmovsd %xmm3,0x20(%rsp)
    190c:	e8 00 00 00 00       	call   1911 <func_agm_265(double, double)+0x171>
    1911:	c5 fb 10 25 00 00 00 	vmovsd 0x0(%rip),%xmm4        # 1919 <func_agm_265(double, double)+0x179>
    1918:	00 
    1919:	c5 79 6f 4c 24 40    	vmovdqa 0x40(%rsp),%xmm9
    191f:	c5 fb 10 3d 00 00 00 	vmovsd 0x0(%rip),%xmm7        # 1927 <func_agm_265(double, double)+0x187>
    1926:	00 
    1927:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    192c:	c5 fb 10 5c 24 20    	vmovsd 0x20(%rsp),%xmm3
    1932:	c5 fb 10 6c 24 28    	vmovsd 0x28(%rsp),%xmm5
    1938:	c5 fb 10 35 00 00 00 	vmovsd 0x0(%rip),%xmm6        # 1940 <func_agm_265(double, double)+0x1a0>
    193f:	00 
    1940:	c5 d3 59 ce          	vmulsd %xmm6,%xmm5,%xmm1
    1944:	c5 e3 59 d6          	vmulsd %xmm6,%xmm3,%xmm2
    1948:	c5 e3 59 de          	vmulsd %xmm6,%xmm3,%xmm3
    194c:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
    1950:	c5 d3 59 d7          	vmulsd %xmm7,%xmm5,%xmm2
    1954:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
    1958:	c5 b1 54 d2          	vandpd %xmm2,%xmm9,%xmm2
    195c:	c5 f9 2e d4          	vucomisd %xmm4,%xmm2
    1960:	c5 f9 28 d9          	vmovapd %xmm1,%xmm3
    1964:	c5 f9 28 e8          	vmovapd %xmm0,%xmm5
    1968:	76 15                	jbe    197f <func_agm_265(double, double)+0x1df>
    196a:	c5 e3 59 c5          	vmulsd %xmm5,%xmm3,%xmm0
    196e:	c4 c1 79 2e c0       	vucomisd %xmm8,%xmm0
    1973:	72 8b                	jb     1900 <func_agm_265(double, double)+0x160>
    1975:	c5 fb 51 c0          	vsqrtsd %xmm0,%xmm0,%xmm0
    1979:	eb c5                	jmp    1940 <func_agm_265(double, double)+0x1a0>
    197b:	c5 f9 28 c5          	vmovapd %xmm5,%xmm0
    197f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1983:	c5 f1 c2 4c 24 30 04 	vcmpneqpd 0x30(%rsp),%xmm1,%xmm1
    198a:	c5 f9 50 c1          	vmovmskpd %xmm1,%eax
    198e:	3c 03                	cmp    $0x3,%al
    1990:	74 10                	je     19a2 <func_agm_265(double, double)+0x202>
    1992:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1996:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    199b:	45 84 ff             	test   %r15b,%r15b
    199e:	75 14                	jne    19b4 <func_agm_265(double, double)+0x214>
    19a0:	eb 18                	jmp    19ba <func_agm_265(double, double)+0x21a>
    19a2:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 19aa <func_agm_265(double, double)+0x20a>
    19a9:	00 
    19aa:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    19af:	45 84 ff             	test   %r15b,%r15b
    19b2:	74 06                	je     19ba <func_agm_265(double, double)+0x21a>
    19b4:	c5 eb 58 4c 24 10    	vaddsd 0x10(%rsp),%xmm2,%xmm1
    19ba:	40 f6 c5 01          	test   $0x1,%bpl
    19be:	75 0c                	jne    19cc <func_agm_265(double, double)+0x22c>
    19c0:	4c 01 f3             	add    %r14,%rbx
    19c3:	c4 e1 f9 6e cb       	vmovq  %rbx,%xmm1
    19c8:	c5 fb 59 c9          	vmulsd %xmm1,%xmm0,%xmm1
    19cc:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
    19d0:	48 83 c4 58          	add    $0x58,%rsp
    19d4:	5b                   	pop    %rbx
    19d5:	41 5e                	pop    %r14
    19d7:	41 5f                	pop    %r15
    19d9:	5d                   	pop    %rbp
    19da:	c3                   	ret    
    19db:	31 db                	xor    %ebx,%ebx
    19dd:	e9 1f fe ff ff       	jmp    1801 <func_agm_265(double, double)+0x61>
    19e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19e9:	00 00 00 
    19ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000019f0 <func_mul_266(float, float)>:
    19f0:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
    19f4:	c3                   	ret    
    19f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19fc:	00 00 00 
    19ff:	90                   	nop

0000000000001a00 <func_mul_267(double, double)>:
    1a00:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    1a04:	c3                   	ret    
    1a05:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a0c:	00 00 00 
    1a0f:	90                   	nop

0000000000001a10 <func_mul_268(long, long)>:
    1a10:	48 89 f8             	mov    %rdi,%rax
    1a13:	48 0f af c6          	imul   %rsi,%rax
    1a17:	c3                   	ret    
    1a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a1f:	00 

0000000000001a20 <func_mul_269(int, int)>:
    1a20:	89 f8                	mov    %edi,%eax
    1a22:	0f af c6             	imul   %esi,%eax
    1a25:	c3                   	ret    
    1a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a2d:	00 00 00 

0000000000001a30 <func_mul_270(short, short)>:
    1a30:	89 f8                	mov    %edi,%eax
    1a32:	0f af c6             	imul   %esi,%eax
    1a35:	c3                   	ret    
    1a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a3d:	00 00 00 

0000000000001a40 <func_mul_271(signed char, signed char)>:
    1a40:	89 f0                	mov    %esi,%eax
    1a42:	40 f6 e7             	mul    %dil
    1a45:	c3                   	ret    
    1a46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a4d:	00 00 00 

0000000000001a50 <func_mul_272(unsigned long, unsigned long)>:
    1a50:	48 89 f8             	mov    %rdi,%rax
    1a53:	48 0f af c6          	imul   %rsi,%rax
    1a57:	c3                   	ret    
    1a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a5f:	00 

0000000000001a60 <func_mul_273(unsigned int, unsigned int)>:
    1a60:	89 f8                	mov    %edi,%eax
    1a62:	0f af c6             	imul   %esi,%eax
    1a65:	c3                   	ret    
    1a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a6d:	00 00 00 

0000000000001a70 <func_mul_274(unsigned short, unsigned short)>:
    1a70:	89 f8                	mov    %edi,%eax
    1a72:	0f af c6             	imul   %esi,%eax
    1a75:	c3                   	ret    
    1a76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a7d:	00 00 00 

0000000000001a80 <func_mul_275(unsigned char, unsigned char)>:
    1a80:	89 f0                	mov    %esi,%eax
    1a82:	40 f6 e7             	mul    %dil
    1a85:	c3                   	ret    
    1a86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a8d:	00 00 00 

0000000000001a90 <func_mul_276(unsigned long, unsigned long)>:
    1a90:	48 89 f8             	mov    %rdi,%rax
    1a93:	48 0f af c6          	imul   %rsi,%rax
    1a97:	c3                   	ret    
    1a98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a9f:	00 

0000000000001aa0 <func_mul_277(unsigned int, unsigned int)>:
    1aa0:	89 f8                	mov    %edi,%eax
    1aa2:	0f af c6             	imul   %esi,%eax
    1aa5:	c3                   	ret    
    1aa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1aad:	00 00 00 

0000000000001ab0 <func_mul_278(unsigned short, unsigned short)>:
    1ab0:	89 f8                	mov    %edi,%eax
    1ab2:	0f af c6             	imul   %esi,%eax
    1ab5:	c3                   	ret    
    1ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1abd:	00 00 00 

0000000000001ac0 <func_mul_279(unsigned char, unsigned char)>:
    1ac0:	89 f0                	mov    %esi,%eax
    1ac2:	40 f6 e7             	mul    %dil
    1ac5:	c3                   	ret    
    1ac6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1acd:	00 00 00 

0000000000001ad0 <func_bit_ornot_280(float, float)>:
    1ad0:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 1ad8 <func_bit_ornot_280(float, float)+0x8>
    1ad7:	00 
    1ad8:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
    1adc:	c5 f8 56 c1          	vorps  %xmm1,%xmm0,%xmm0
    1ae0:	c3                   	ret    
    1ae1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ae8:	00 00 00 
    1aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001af0 <func_bit_ornot_281(double, double)>:
    1af0:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 1af8 <func_bit_ornot_281(double, double)+0x8>
    1af7:	00 
    1af8:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
    1afc:	c5 f8 56 c1          	vorps  %xmm1,%xmm0,%xmm0
    1b00:	c3                   	ret    
    1b01:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b08:	00 00 00 
    1b0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001b10 <func_bit_ornot_282(long, long)>:
    1b10:	48 89 f0             	mov    %rsi,%rax
    1b13:	48 f7 d0             	not    %rax
    1b16:	48 09 f8             	or     %rdi,%rax
    1b19:	c3                   	ret    
    1b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001b20 <func_bit_ornot_283(int, int)>:
    1b20:	89 f0                	mov    %esi,%eax
    1b22:	f7 d0                	not    %eax
    1b24:	09 f8                	or     %edi,%eax
    1b26:	c3                   	ret    
    1b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b2e:	00 00 

0000000000001b30 <func_bit_ornot_284(short, short)>:
    1b30:	89 f0                	mov    %esi,%eax
    1b32:	f7 d0                	not    %eax
    1b34:	09 f8                	or     %edi,%eax
    1b36:	c3                   	ret    
    1b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b3e:	00 00 

0000000000001b40 <func_bit_ornot_285(signed char, signed char)>:
    1b40:	89 f0                	mov    %esi,%eax
    1b42:	f6 d0                	not    %al
    1b44:	40 08 f8             	or     %dil,%al
    1b47:	c3                   	ret    
    1b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b4f:	00 

0000000000001b50 <func_bit_ornot_286(unsigned long, unsigned long)>:
    1b50:	48 89 f0             	mov    %rsi,%rax
    1b53:	48 f7 d0             	not    %rax
    1b56:	48 09 f8             	or     %rdi,%rax
    1b59:	c3                   	ret    
    1b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001b60 <func_bit_ornot_287(unsigned int, unsigned int)>:
    1b60:	89 f0                	mov    %esi,%eax
    1b62:	f7 d0                	not    %eax
    1b64:	09 f8                	or     %edi,%eax
    1b66:	c3                   	ret    
    1b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b6e:	00 00 

0000000000001b70 <func_bit_ornot_288(unsigned short, unsigned short)>:
    1b70:	89 f0                	mov    %esi,%eax
    1b72:	f7 d0                	not    %eax
    1b74:	09 f8                	or     %edi,%eax
    1b76:	c3                   	ret    
    1b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b7e:	00 00 

0000000000001b80 <func_bit_ornot_289(unsigned char, unsigned char)>:
    1b80:	89 f0                	mov    %esi,%eax
    1b82:	f6 d0                	not    %al
    1b84:	40 08 f8             	or     %dil,%al
    1b87:	c3                   	ret    
    1b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b8f:	00 

0000000000001b90 <func_bit_ornot_290(unsigned long, unsigned long)>:
    1b90:	48 89 f0             	mov    %rsi,%rax
    1b93:	48 f7 d0             	not    %rax
    1b96:	48 09 f8             	or     %rdi,%rax
    1b99:	c3                   	ret    
    1b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ba0 <func_bit_ornot_291(unsigned int, unsigned int)>:
    1ba0:	89 f0                	mov    %esi,%eax
    1ba2:	f7 d0                	not    %eax
    1ba4:	09 f8                	or     %edi,%eax
    1ba6:	c3                   	ret    
    1ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1bae:	00 00 

0000000000001bb0 <func_bit_ornot_292(unsigned short, unsigned short)>:
    1bb0:	89 f0                	mov    %esi,%eax
    1bb2:	f7 d0                	not    %eax
    1bb4:	09 f8                	or     %edi,%eax
    1bb6:	c3                   	ret    
    1bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1bbe:	00 00 

0000000000001bc0 <func_bit_ornot_293(unsigned char, unsigned char)>:
    1bc0:	89 f0                	mov    %esi,%eax
    1bc2:	f6 d0                	not    %al
    1bc4:	40 08 f8             	or     %dil,%al
    1bc7:	c3                   	ret    
    1bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bcf:	00 

0000000000001bd0 <func_dot_294(float, float)>:
    1bd0:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
    1bd4:	c3                   	ret    
    1bd5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bdc:	00 00 00 
    1bdf:	90                   	nop

0000000000001be0 <func_dot_295(double, double)>:
    1be0:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    1be4:	c3                   	ret    
    1be5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bec:	00 00 00 
    1bef:	90                   	nop

0000000000001bf0 <func_dot_296(long, long)>:
    1bf0:	48 89 f8             	mov    %rdi,%rax
    1bf3:	48 0f af c6          	imul   %rsi,%rax
    1bf7:	c3                   	ret    
    1bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bff:	00 

0000000000001c00 <func_dot_297(int, int)>:
    1c00:	89 f8                	mov    %edi,%eax
    1c02:	0f af c6             	imul   %esi,%eax
    1c05:	c3                   	ret    
    1c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c0d:	00 00 00 

0000000000001c10 <func_dot_298(short, short)>:
    1c10:	89 f8                	mov    %edi,%eax
    1c12:	0f af c6             	imul   %esi,%eax
    1c15:	c3                   	ret    
    1c16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c1d:	00 00 00 

0000000000001c20 <func_dot_299(signed char, signed char)>:
    1c20:	89 f0                	mov    %esi,%eax
    1c22:	40 f6 e7             	mul    %dil
    1c25:	c3                   	ret    
    1c26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c2d:	00 00 00 

0000000000001c30 <func_dot_300(unsigned long, unsigned long)>:
    1c30:	48 89 f8             	mov    %rdi,%rax
    1c33:	48 0f af c6          	imul   %rsi,%rax
    1c37:	c3                   	ret    
    1c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c3f:	00 

0000000000001c40 <func_dot_301(unsigned int, unsigned int)>:
    1c40:	89 f8                	mov    %edi,%eax
    1c42:	0f af c6             	imul   %esi,%eax
    1c45:	c3                   	ret    
    1c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c4d:	00 00 00 

0000000000001c50 <func_dot_302(unsigned short, unsigned short)>:
    1c50:	89 f8                	mov    %edi,%eax
    1c52:	0f af c6             	imul   %esi,%eax
    1c55:	c3                   	ret    
    1c56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c5d:	00 00 00 

0000000000001c60 <func_dot_303(unsigned char, unsigned char)>:
    1c60:	89 f0                	mov    %esi,%eax
    1c62:	40 f6 e7             	mul    %dil
    1c65:	c3                   	ret    
    1c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c6d:	00 00 00 

0000000000001c70 <func_dot_304(unsigned long, unsigned long)>:
    1c70:	48 89 f8             	mov    %rdi,%rax
    1c73:	48 0f af c6          	imul   %rsi,%rax
    1c77:	c3                   	ret    
    1c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c7f:	00 

0000000000001c80 <func_dot_305(unsigned int, unsigned int)>:
    1c80:	89 f8                	mov    %edi,%eax
    1c82:	0f af c6             	imul   %esi,%eax
    1c85:	c3                   	ret    
    1c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c8d:	00 00 00 

0000000000001c90 <func_dot_306(unsigned short, unsigned short)>:
    1c90:	89 f8                	mov    %edi,%eax
    1c92:	0f af c6             	imul   %esi,%eax
    1c95:	c3                   	ret    
    1c96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c9d:	00 00 00 

0000000000001ca0 <func_dot_307(unsigned char, unsigned char)>:
    1ca0:	89 f0                	mov    %esi,%eax
    1ca2:	40 f6 e7             	mul    %dil
    1ca5:	c3                   	ret    
    1ca6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cad:	00 00 00 

0000000000001cb0 <func_min_308(float, float)>:
    1cb0:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
    1cb4:	c3                   	ret    
    1cb5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cbc:	00 00 00 
    1cbf:	90                   	nop

0000000000001cc0 <func_min_309(double, double)>:
    1cc0:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
    1cc4:	c3                   	ret    
    1cc5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ccc:	00 00 00 
    1ccf:	90                   	nop

0000000000001cd0 <func_min_310(long, long)>:
    1cd0:	48 89 f0             	mov    %rsi,%rax
    1cd3:	48 39 fe             	cmp    %rdi,%rsi
    1cd6:	48 0f 4f c7          	cmovg  %rdi,%rax
    1cda:	c3                   	ret    
    1cdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001ce0 <func_min_311(int, int)>:
    1ce0:	89 f0                	mov    %esi,%eax
    1ce2:	39 fe                	cmp    %edi,%esi
    1ce4:	0f 4f c7             	cmovg  %edi,%eax
    1ce7:	c3                   	ret    
    1ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1cef:	00 

0000000000001cf0 <func_min_312(short, short)>:
    1cf0:	89 f0                	mov    %esi,%eax
    1cf2:	66 39 f8             	cmp    %di,%ax
    1cf5:	0f 4f c7             	cmovg  %edi,%eax
    1cf8:	c3                   	ret    
    1cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d00 <func_min_313(signed char, signed char)>:
    1d00:	89 f0                	mov    %esi,%eax
    1d02:	40 38 f8             	cmp    %dil,%al
    1d05:	0f 4f c7             	cmovg  %edi,%eax
    1d08:	c3                   	ret    
    1d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d10 <func_min_314(unsigned long, unsigned long)>:
    1d10:	48 89 f0             	mov    %rsi,%rax
    1d13:	48 39 fe             	cmp    %rdi,%rsi
    1d16:	48 0f 47 c7          	cmova  %rdi,%rax
    1d1a:	c3                   	ret    
    1d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001d20 <func_min_315(unsigned int, unsigned int)>:
    1d20:	89 f0                	mov    %esi,%eax
    1d22:	39 fe                	cmp    %edi,%esi
    1d24:	0f 47 c7             	cmova  %edi,%eax
    1d27:	c3                   	ret    
    1d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d2f:	00 

0000000000001d30 <func_min_316(unsigned short, unsigned short)>:
    1d30:	89 f0                	mov    %esi,%eax
    1d32:	66 39 f8             	cmp    %di,%ax
    1d35:	0f 47 c7             	cmova  %edi,%eax
    1d38:	c3                   	ret    
    1d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d40 <func_min_317(unsigned char, unsigned char)>:
    1d40:	89 f0                	mov    %esi,%eax
    1d42:	40 38 f8             	cmp    %dil,%al
    1d45:	0f 47 c7             	cmova  %edi,%eax
    1d48:	c3                   	ret    
    1d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d50 <func_min_318(unsigned long, unsigned long)>:
    1d50:	48 89 f0             	mov    %rsi,%rax
    1d53:	48 39 fe             	cmp    %rdi,%rsi
    1d56:	48 0f 47 c7          	cmova  %rdi,%rax
    1d5a:	c3                   	ret    
    1d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001d60 <func_min_319(unsigned int, unsigned int)>:
    1d60:	89 f0                	mov    %esi,%eax
    1d62:	39 fe                	cmp    %edi,%esi
    1d64:	0f 47 c7             	cmova  %edi,%eax
    1d67:	c3                   	ret    
    1d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d6f:	00 

0000000000001d70 <func_min_320(unsigned short, unsigned short)>:
    1d70:	89 f0                	mov    %esi,%eax
    1d72:	66 39 f8             	cmp    %di,%ax
    1d75:	0f 47 c7             	cmova  %edi,%eax
    1d78:	c3                   	ret    
    1d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d80 <func_min_321(unsigned char, unsigned char)>:
    1d80:	89 f0                	mov    %esi,%eax
    1d82:	40 38 f8             	cmp    %dil,%al
    1d85:	0f 47 c7             	cmova  %edi,%eax
    1d88:	c3                   	ret    
    1d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d90 <func_bit_reverse_322(int)>:
    1d90:	89 f8                	mov    %edi,%eax
    1d92:	25 55 55 55 d5       	and    $0xd5555555,%eax
    1d97:	d1 ef                	shr    %edi
    1d99:	81 e7 55 55 55 55    	and    $0x55555555,%edi
    1d9f:	8d 04 47             	lea    (%rdi,%rax,2),%eax
    1da2:	89 c1                	mov    %eax,%ecx
    1da4:	81 e1 33 33 33 f3    	and    $0xf3333333,%ecx
    1daa:	c1 e8 02             	shr    $0x2,%eax
    1dad:	25 33 33 33 33       	and    $0x33333333,%eax
    1db2:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    1db5:	89 c1                	mov    %eax,%ecx
    1db7:	c1 e1 04             	shl    $0x4,%ecx
    1dba:	81 e1 f0 f0 f0 f0    	and    $0xf0f0f0f0,%ecx
    1dc0:	c1 e8 04             	shr    $0x4,%eax
    1dc3:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
    1dc8:	09 c8                	or     %ecx,%eax
    1dca:	0f c8                	bswap  %eax
    1dcc:	c1 c8 10             	ror    $0x10,%eax
    1dcf:	89 c1                	mov    %eax,%ecx
    1dd1:	c1 e1 10             	shl    $0x10,%ecx
    1dd4:	c1 f8 10             	sar    $0x10,%eax
    1dd7:	09 c8                	or     %ecx,%eax
    1dd9:	c3                   	ret    
