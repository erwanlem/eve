
test/asm/tmp/tmp2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_ceil_0(float)>:
       0:	c5 f8 28 0d 00 00 00 	vmovaps 0x0(%rip),%xmm1        # 8 <func_ceil_0(float)+0x8>
       7:	00 
       8:	c5 f8 57 d1          	vxorps %xmm1,%xmm0,%xmm2
       c:	c5 fa 5b da          	vcvttps2dq %xmm2,%xmm3
      10:	c5 f8 5b db          	vcvtdq2ps %xmm3,%xmm3
      14:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # 1c <func_ceil_0(float)+0x1c>
      1b:	00 
      1c:	c5 fa c2 05 00 00 00 	vcmpnless 0x0(%rip),%xmm0,%xmm0        # 25 <func_ceil_0(float)+0x25>
      23:	00 06 
      25:	c4 e3 61 4a c2 00    	vblendvps %xmm0,%xmm2,%xmm3,%xmm0
      2b:	c5 fa 58 1d 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm3        # 33 <func_ceil_0(float)+0x33>
      32:	00 
      33:	c5 ea c2 d0 05       	vcmpnltss %xmm0,%xmm2,%xmm2
      38:	c4 e3 61 4a c0 20    	vblendvps %xmm2,%xmm0,%xmm3,%xmm0
      3e:	c5 f8 57 c1          	vxorps %xmm1,%xmm0,%xmm0
      42:	c3                   	ret    
      43:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      4a:	00 00 00 
      4d:	0f 1f 00             	nopl   (%rax)

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
      c4:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # cc <func_absmax_4(float, float)+0xc>
      cb:	00 
      cc:	c3                   	ret    
      cd:	0f 1f 00             	nopl   (%rax)

00000000000000d0 <func_absmax_5(double, double)>:
      d0:	c5 f3 5f c0          	vmaxsd %xmm0,%xmm1,%xmm0
      d4:	c5 f9 54 05 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm0        # dc <func_absmax_5(double, double)+0xc>
      db:	00 
      dc:	c3                   	ret    
      dd:	0f 1f 00             	nopl   (%rax)

00000000000000e0 <func_absmax_6(long, long)>:
      e0:	48 39 fe             	cmp    %rdi,%rsi
      e3:	48 0f 4f fe          	cmovg  %rsi,%rdi
      e7:	48 89 f8             	mov    %rdi,%rax
      ea:	48 f7 d8             	neg    %rax
      ed:	48 0f 48 c7          	cmovs  %rdi,%rax
      f1:	c3                   	ret    
      f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      f9:	00 00 00 
      fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000100 <func_absmax_7(int, int)>:
     100:	39 fe                	cmp    %edi,%esi
     102:	0f 4f fe             	cmovg  %esi,%edi
     105:	89 f8                	mov    %edi,%eax
     107:	f7 d8                	neg    %eax
     109:	0f 48 c7             	cmovs  %edi,%eax
     10c:	c3                   	ret    
     10d:	0f 1f 00             	nopl   (%rax)

0000000000000110 <func_absmax_8(short, short)>:
     110:	66 39 fe             	cmp    %di,%si
     113:	0f 4f fe             	cmovg  %esi,%edi
     116:	89 f8                	mov    %edi,%eax
     118:	66 f7 d8             	neg    %ax
     11b:	66 0f 48 c7          	cmovs  %di,%ax
     11f:	c3                   	ret    

0000000000000120 <func_absmax_9(signed char, signed char)>:
     120:	40 38 fe             	cmp    %dil,%sil
     123:	0f 4f fe             	cmovg  %esi,%edi
     126:	89 f9                	mov    %edi,%ecx
     128:	c0 f9 07             	sar    $0x7,%cl
     12b:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     12e:	30 c8                	xor    %cl,%al
     130:	c3                   	ret    
     131:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     138:	00 00 00 
     13b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000140 <func_absmax_10(unsigned long, unsigned long)>:
     140:	48 89 f8             	mov    %rdi,%rax
     143:	48 39 fe             	cmp    %rdi,%rsi
     146:	48 0f 47 c6          	cmova  %rsi,%rax
     14a:	c3                   	ret    
     14b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000150 <func_absmax_11(unsigned int, unsigned int)>:
     150:	89 f8                	mov    %edi,%eax
     152:	39 fe                	cmp    %edi,%esi
     154:	0f 47 c6             	cmova  %esi,%eax
     157:	c3                   	ret    
     158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     15f:	00 

0000000000000160 <func_absmax_12(unsigned short, unsigned short)>:
     160:	89 f8                	mov    %edi,%eax
     162:	66 39 c6             	cmp    %ax,%si
     165:	0f 47 c6             	cmova  %esi,%eax
     168:	c3                   	ret    
     169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000170 <func_absmax_13(unsigned char, unsigned char)>:
     170:	89 f8                	mov    %edi,%eax
     172:	40 38 c6             	cmp    %al,%sil
     175:	0f 47 c6             	cmova  %esi,%eax
     178:	c3                   	ret    
     179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000180 <func_absmax_14(unsigned long, unsigned long)>:
     180:	48 89 f8             	mov    %rdi,%rax
     183:	48 39 fe             	cmp    %rdi,%rsi
     186:	48 0f 47 c6          	cmova  %rsi,%rax
     18a:	c3                   	ret    
     18b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000190 <func_absmax_15(unsigned int, unsigned int)>:
     190:	89 f8                	mov    %edi,%eax
     192:	39 fe                	cmp    %edi,%esi
     194:	0f 47 c6             	cmova  %esi,%eax
     197:	c3                   	ret    
     198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     19f:	00 

00000000000001a0 <func_absmax_16(unsigned short, unsigned short)>:
     1a0:	89 f8                	mov    %edi,%eax
     1a2:	66 39 c6             	cmp    %ax,%si
     1a5:	0f 47 c6             	cmova  %esi,%eax
     1a8:	c3                   	ret    
     1a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001b0 <func_absmax_17(unsigned char, unsigned char)>:
     1b0:	89 f8                	mov    %edi,%eax
     1b2:	40 38 c6             	cmp    %al,%sil
     1b5:	0f 47 c6             	cmova  %esi,%eax
     1b8:	c3                   	ret    
     1b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001c0 <func_bit_xor_18(float, float)>:
     1c0:	c5 f0 57 c0          	vxorps %xmm0,%xmm1,%xmm0
     1c4:	c3                   	ret    
     1c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     1cc:	00 00 00 
     1cf:	90                   	nop

00000000000001d0 <func_bit_xor_19(double, double)>:
     1d0:	c5 f0 57 c0          	vxorps %xmm0,%xmm1,%xmm0
     1d4:	c3                   	ret    
     1d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     1dc:	00 00 00 
     1df:	90                   	nop

00000000000001e0 <func_bit_xor_20(long, long)>:
     1e0:	48 89 f8             	mov    %rdi,%rax
     1e3:	48 31 f0             	xor    %rsi,%rax
     1e6:	c3                   	ret    
     1e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     1ee:	00 00 

00000000000001f0 <func_bit_xor_21(int, int)>:
     1f0:	89 f8                	mov    %edi,%eax
     1f2:	31 f0                	xor    %esi,%eax
     1f4:	c3                   	ret    
     1f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     1fc:	00 00 00 
     1ff:	90                   	nop

0000000000000200 <func_bit_xor_22(short, short)>:
     200:	89 f8                	mov    %edi,%eax
     202:	31 f0                	xor    %esi,%eax
     204:	c3                   	ret    
     205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     20c:	00 00 00 
     20f:	90                   	nop

0000000000000210 <func_bit_xor_23(signed char, signed char)>:
     210:	89 f8                	mov    %edi,%eax
     212:	31 f0                	xor    %esi,%eax
     214:	c3                   	ret    
     215:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     21c:	00 00 00 
     21f:	90                   	nop

0000000000000220 <func_bit_xor_24(unsigned long, unsigned long)>:
     220:	48 89 f8             	mov    %rdi,%rax
     223:	48 31 f0             	xor    %rsi,%rax
     226:	c3                   	ret    
     227:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     22e:	00 00 

0000000000000230 <func_bit_xor_25(unsigned int, unsigned int)>:
     230:	89 f8                	mov    %edi,%eax
     232:	31 f0                	xor    %esi,%eax
     234:	c3                   	ret    
     235:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     23c:	00 00 00 
     23f:	90                   	nop

0000000000000240 <func_bit_xor_26(unsigned short, unsigned short)>:
     240:	89 f8                	mov    %edi,%eax
     242:	31 f0                	xor    %esi,%eax
     244:	c3                   	ret    
     245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     24c:	00 00 00 
     24f:	90                   	nop

0000000000000250 <func_bit_xor_27(unsigned char, unsigned char)>:
     250:	89 f8                	mov    %edi,%eax
     252:	31 f0                	xor    %esi,%eax
     254:	c3                   	ret    
     255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     25c:	00 00 00 
     25f:	90                   	nop

0000000000000260 <func_bit_xor_28(unsigned long, unsigned long)>:
     260:	48 89 f8             	mov    %rdi,%rax
     263:	48 31 f0             	xor    %rsi,%rax
     266:	c3                   	ret    
     267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     26e:	00 00 

0000000000000270 <func_bit_xor_29(unsigned int, unsigned int)>:
     270:	89 f8                	mov    %edi,%eax
     272:	31 f0                	xor    %esi,%eax
     274:	c3                   	ret    
     275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     27c:	00 00 00 
     27f:	90                   	nop

0000000000000280 <func_bit_xor_30(unsigned short, unsigned short)>:
     280:	89 f8                	mov    %edi,%eax
     282:	31 f0                	xor    %esi,%eax
     284:	c3                   	ret    
     285:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     28c:	00 00 00 
     28f:	90                   	nop

0000000000000290 <func_bit_xor_31(unsigned char, unsigned char)>:
     290:	89 f8                	mov    %edi,%eax
     292:	31 f0                	xor    %esi,%eax
     294:	c3                   	ret    
     295:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     29c:	00 00 00 
     29f:	90                   	nop

00000000000002a0 <func_abs_32(float)>:
     2a0:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # 2a8 <func_abs_32(float)+0x8>
     2a7:	00 
     2a8:	c3                   	ret    
     2a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002b0 <func_abs_33(double)>:
     2b0:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # 2b8 <func_abs_33(double)+0x8>
     2b7:	00 
     2b8:	c3                   	ret    
     2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002c0 <func_abs_34(long)>:
     2c0:	48 89 f8             	mov    %rdi,%rax
     2c3:	48 f7 d8             	neg    %rax
     2c6:	48 0f 48 c7          	cmovs  %rdi,%rax
     2ca:	c3                   	ret    
     2cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002d0 <func_abs_35(int)>:
     2d0:	89 f8                	mov    %edi,%eax
     2d2:	f7 d8                	neg    %eax
     2d4:	0f 48 c7             	cmovs  %edi,%eax
     2d7:	c3                   	ret    
     2d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     2df:	00 

00000000000002e0 <func_abs_36(short)>:
     2e0:	89 f8                	mov    %edi,%eax
     2e2:	66 f7 d8             	neg    %ax
     2e5:	66 0f 48 c7          	cmovs  %di,%ax
     2e9:	c3                   	ret    
     2ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000002f0 <func_abs_37(signed char)>:
     2f0:	89 f9                	mov    %edi,%ecx
     2f2:	c0 f9 07             	sar    $0x7,%cl
     2f5:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     2f8:	30 c8                	xor    %cl,%al
     2fa:	c3                   	ret    
     2fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000300 <func_abs_38(unsigned long)>:
     300:	48 89 f8             	mov    %rdi,%rax
     303:	c3                   	ret    
     304:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     30b:	00 00 00 
     30e:	66 90                	xchg   %ax,%ax

0000000000000310 <func_abs_39(unsigned int)>:
     310:	89 f8                	mov    %edi,%eax
     312:	c3                   	ret    
     313:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     31a:	00 00 00 
     31d:	0f 1f 00             	nopl   (%rax)

0000000000000320 <func_abs_40(unsigned short)>:
     320:	89 f8                	mov    %edi,%eax
     322:	c3                   	ret    
     323:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     32a:	00 00 00 
     32d:	0f 1f 00             	nopl   (%rax)

0000000000000330 <func_abs_41(unsigned char)>:
     330:	89 f8                	mov    %edi,%eax
     332:	c3                   	ret    
     333:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     33a:	00 00 00 
     33d:	0f 1f 00             	nopl   (%rax)

0000000000000340 <func_abs_42(unsigned long)>:
     340:	48 89 f8             	mov    %rdi,%rax
     343:	c3                   	ret    
     344:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     34b:	00 00 00 
     34e:	66 90                	xchg   %ax,%ax

0000000000000350 <func_abs_43(unsigned int)>:
     350:	89 f8                	mov    %edi,%eax
     352:	c3                   	ret    
     353:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     35a:	00 00 00 
     35d:	0f 1f 00             	nopl   (%rax)

0000000000000360 <func_abs_44(unsigned short)>:
     360:	89 f8                	mov    %edi,%eax
     362:	c3                   	ret    
     363:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     36a:	00 00 00 
     36d:	0f 1f 00             	nopl   (%rax)

0000000000000370 <func_abs_45(unsigned char)>:
     370:	89 f8                	mov    %edi,%eax
     372:	c3                   	ret    
     373:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     37a:	00 00 00 
     37d:	0f 1f 00             	nopl   (%rax)

0000000000000380 <func_fmod_46(float, float)>:
     380:	c4 e3 71 21 d8 10    	vinsertps $0x10,%xmm0,%xmm1,%xmm3
     386:	c5 f8 28 15 00 00 00 	vmovaps 0x0(%rip),%xmm2        # 38e <func_fmod_46(float, float)+0xe>
     38d:	00 
     38e:	c5 e0 54 da          	vandps %xmm2,%xmm3,%xmm3
     392:	c5 e0 c2 1d 00 00 00 	vcmpneqps 0x0(%rip),%xmm3,%xmm3        # 39b <func_fmod_46(float, float)+0x1b>
     399:	00 04 
     39b:	c4 e2 79 25 db       	vpmovsxdq %xmm3,%xmm3
     3a0:	c5 f9 50 c3          	vmovmskpd %xmm3,%eax
     3a4:	a8 01                	test   $0x1,%al
     3a6:	75 21                	jne    3c9 <func_fmod_46(float, float)+0x49>
     3a8:	c5 f8 28 e0          	vmovaps %xmm0,%xmm4
     3ac:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
     3b0:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 3b8 <func_fmod_46(float, float)+0x38>
     3b7:	00 
     3b8:	a8 02                	test   $0x2,%al
     3ba:	74 54                	je     410 <func_fmod_46(float, float)+0x90>
     3bc:	c5 fa c2 eb 04       	vcmpneqss %xmm3,%xmm0,%xmm5
     3c1:	c4 e3 79 4a e4 50    	vblendvps %xmm5,%xmm4,%xmm0,%xmm4
     3c7:	eb 4b                	jmp    414 <func_fmod_46(float, float)+0x94>
     3c9:	c5 fa 5e d9          	vdivss %xmm1,%xmm0,%xmm3
     3cd:	c5 e0 54 d2          	vandps %xmm2,%xmm3,%xmm2
     3d1:	c5 fa 5b e3          	vcvttps2dq %xmm3,%xmm4
     3d5:	c5 f8 5b e4          	vcvtdq2ps %xmm4,%xmm4
     3d9:	c5 ea c2 15 00 00 00 	vcmpnless 0x0(%rip),%xmm2,%xmm2        # 3e2 <func_fmod_46(float, float)+0x62>
     3e0:	00 06 
     3e2:	c4 e3 59 4a d3 20    	vblendvps %xmm2,%xmm3,%xmm4,%xmm2
     3e8:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
     3ec:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
     3f0:	c5 e3 59 d2          	vmulsd %xmm2,%xmm3,%xmm2
     3f4:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
     3f8:	c5 e3 5c d2          	vsubsd %xmm2,%xmm3,%xmm2
     3fc:	c5 eb 5a e2          	vcvtsd2ss %xmm2,%xmm2,%xmm4
     400:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
     404:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 40c <func_fmod_46(float, float)+0x8c>
     40b:	00 
     40c:	a8 02                	test   $0x2,%al
     40e:	75 ac                	jne    3bc <func_fmod_46(float, float)+0x3c>
     410:	c5 f8 28 e2          	vmovaps %xmm2,%xmm4
     414:	c5 f2 c2 db 04       	vcmpneqss %xmm3,%xmm1,%xmm3
     419:	c4 e3 69 4a dc 30    	vblendvps %xmm3,%xmm4,%xmm2,%xmm3
     41f:	c5 fa c2 c1 07       	vcmpordss %xmm1,%xmm0,%xmm0
     424:	c4 e3 69 4a c3 00    	vblendvps %xmm0,%xmm3,%xmm2,%xmm0
     42a:	c3                   	ret    
     42b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000430 <func_fmod_47(double, double)>:
     430:	53                   	push   %rbx
     431:	48 83 ec 20          	sub    $0x20,%rsp
     435:	c5 f9 28 d9          	vmovapd %xmm1,%xmm3
     439:	c5 f1 14 d0          	vunpcklpd %xmm0,%xmm1,%xmm2
     43d:	c5 f9 28 0d 00 00 00 	vmovapd 0x0(%rip),%xmm1        # 445 <func_fmod_47(double, double)+0x15>
     444:	00 
     445:	c5 e9 54 d1          	vandpd %xmm1,%xmm2,%xmm2
     449:	c5 e9 c2 15 00 00 00 	vcmpneqpd 0x0(%rip),%xmm2,%xmm2        # 452 <func_fmod_47(double, double)+0x22>
     450:	00 04 
     452:	c5 f9 50 da          	vmovmskpd %xmm2,%ebx
     456:	c5 fb 5e e3          	vdivsd %xmm3,%xmm0,%xmm4
     45a:	c5 f9 28 d0          	vmovapd %xmm0,%xmm2
     45e:	c5 f9 29 04 24       	vmovapd %xmm0,(%rsp)
     463:	c5 d9 54 c9          	vandpd %xmm1,%xmm4,%xmm1
     467:	c4 e1 fb 2c c4       	vcvttsd2si %xmm4,%rax
     46c:	c4 e1 d3 2a c0       	vcvtsi2sd %rax,%xmm5,%xmm0
     471:	c5 f3 c2 0d 00 00 00 	vcmpnlesd 0x0(%rip),%xmm1,%xmm1        # 47a <func_fmod_47(double, double)+0x4a>
     478:	00 06 
     47a:	c4 e3 79 4b cc 10    	vblendvpd %xmm1,%xmm4,%xmm0,%xmm1
     480:	c5 f9 29 5c 24 10    	vmovapd %xmm3,0x10(%rsp)
     486:	c5 e1 57 05 00 00 00 	vxorpd 0x0(%rip),%xmm3,%xmm0        # 48e <func_fmod_47(double, double)+0x5e>
     48d:	00 
     48e:	e8 00 00 00 00       	call   493 <func_fmod_47(double, double)+0x63>
     493:	c5 f9 28 24 24       	vmovapd (%rsp),%xmm4
     498:	f6 c3 01             	test   $0x1,%bl
     49b:	75 04                	jne    4a1 <func_fmod_47(double, double)+0x71>
     49d:	c5 f9 28 c4          	vmovapd %xmm4,%xmm0
     4a1:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
     4a5:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 4ad <func_fmod_47(double, double)+0x7d>
     4ac:	00 
     4ad:	f6 c3 02             	test   $0x2,%bl
     4b0:	75 06                	jne    4b8 <func_fmod_47(double, double)+0x88>
     4b2:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
     4b6:	eb 0b                	jmp    4c3 <func_fmod_47(double, double)+0x93>
     4b8:	c5 db c2 da 04       	vcmpneqsd %xmm2,%xmm4,%xmm3
     4bd:	c4 e3 59 4b c0 30    	vblendvpd %xmm3,%xmm0,%xmm4,%xmm0
     4c3:	c5 f9 28 5c 24 10    	vmovapd 0x10(%rsp),%xmm3
     4c9:	c5 e3 c2 d2 04       	vcmpneqsd %xmm2,%xmm3,%xmm2
     4ce:	c4 e3 71 4b c0 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm0
     4d4:	c5 db c2 d3 07       	vcmpordsd %xmm3,%xmm4,%xmm2
     4d9:	c4 e3 71 4b c0 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm0
     4df:	48 83 c4 20          	add    $0x20,%rsp
     4e3:	5b                   	pop    %rbx
     4e4:	c3                   	ret    
     4e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     4ec:	00 00 00 
     4ef:	90                   	nop

00000000000004f0 <func_is_real_48(float)>:
     4f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     4f5:	c3                   	ret    
     4f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     4fd:	00 00 00 

0000000000000500 <func_is_real_49(double)>:
     500:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     507:	c3                   	ret    
     508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     50f:	00 

0000000000000510 <func_is_real_50(long)>:
     510:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     517:	c3                   	ret    
     518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     51f:	00 

0000000000000520 <func_is_real_51(int)>:
     520:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     525:	c3                   	ret    
     526:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     52d:	00 00 00 

0000000000000530 <func_is_real_52(short)>:
     530:	66 b8 ff ff          	mov    $0xffff,%ax
     534:	c3                   	ret    
     535:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     53c:	00 00 00 
     53f:	90                   	nop

0000000000000540 <func_is_real_53(signed char)>:
     540:	b0 ff                	mov    $0xff,%al
     542:	c3                   	ret    
     543:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     54a:	00 00 00 
     54d:	0f 1f 00             	nopl   (%rax)

0000000000000550 <func_is_real_54(unsigned long)>:
     550:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     557:	c3                   	ret    
     558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     55f:	00 

0000000000000560 <func_is_real_55(unsigned int)>:
     560:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     565:	c3                   	ret    
     566:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     56d:	00 00 00 

0000000000000570 <func_is_real_56(unsigned short)>:
     570:	66 b8 ff ff          	mov    $0xffff,%ax
     574:	c3                   	ret    
     575:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     57c:	00 00 00 
     57f:	90                   	nop

0000000000000580 <func_is_real_57(unsigned char)>:
     580:	b0 ff                	mov    $0xff,%al
     582:	c3                   	ret    
     583:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     58a:	00 00 00 
     58d:	0f 1f 00             	nopl   (%rax)

0000000000000590 <func_is_real_58(unsigned long)>:
     590:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     597:	c3                   	ret    
     598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     59f:	00 

00000000000005a0 <func_is_real_59(unsigned int)>:
     5a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     5a5:	c3                   	ret    
     5a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ad:	00 00 00 

00000000000005b0 <func_is_real_60(unsigned short)>:
     5b0:	66 b8 ff ff          	mov    $0xffff,%ax
     5b4:	c3                   	ret    
     5b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5bc:	00 00 00 
     5bf:	90                   	nop

00000000000005c0 <func_is_real_61(unsigned char)>:
     5c0:	b0 ff                	mov    $0xff,%al
     5c2:	c3                   	ret    
     5c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ca:	00 00 00 
     5cd:	0f 1f 00             	nopl   (%rax)

00000000000005d0 <func_is_nan_62(float)>:
     5d0:	31 c0                	xor    %eax,%eax
     5d2:	c5 f8 2e c0          	vucomiss %xmm0,%xmm0
     5d6:	0f 9a c0             	setp   %al
     5d9:	f7 d8                	neg    %eax
     5db:	c3                   	ret    
     5dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005e0 <func_is_nan_63(double)>:
     5e0:	31 c0                	xor    %eax,%eax
     5e2:	c5 f9 2e c0          	vucomisd %xmm0,%xmm0
     5e6:	0f 9a c0             	setp   %al
     5e9:	48 f7 d8             	neg    %rax
     5ec:	c3                   	ret    
     5ed:	0f 1f 00             	nopl   (%rax)

00000000000005f0 <func_is_nan_64(long)>:
     5f0:	31 c0                	xor    %eax,%eax
     5f2:	c3                   	ret    
     5f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5fa:	00 00 00 
     5fd:	0f 1f 00             	nopl   (%rax)

0000000000000600 <func_is_nan_65(int)>:
     600:	31 c0                	xor    %eax,%eax
     602:	c3                   	ret    
     603:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     60a:	00 00 00 
     60d:	0f 1f 00             	nopl   (%rax)

0000000000000610 <func_is_nan_66(short)>:
     610:	31 c0                	xor    %eax,%eax
     612:	c3                   	ret    
     613:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     61a:	00 00 00 
     61d:	0f 1f 00             	nopl   (%rax)

0000000000000620 <func_is_nan_67(signed char)>:
     620:	31 c0                	xor    %eax,%eax
     622:	c3                   	ret    
     623:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     62a:	00 00 00 
     62d:	0f 1f 00             	nopl   (%rax)

0000000000000630 <func_is_nan_68(unsigned long)>:
     630:	31 c0                	xor    %eax,%eax
     632:	c3                   	ret    
     633:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     63a:	00 00 00 
     63d:	0f 1f 00             	nopl   (%rax)

0000000000000640 <func_is_nan_69(unsigned int)>:
     640:	31 c0                	xor    %eax,%eax
     642:	c3                   	ret    
     643:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     64a:	00 00 00 
     64d:	0f 1f 00             	nopl   (%rax)

0000000000000650 <func_is_nan_70(unsigned short)>:
     650:	31 c0                	xor    %eax,%eax
     652:	c3                   	ret    
     653:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     65a:	00 00 00 
     65d:	0f 1f 00             	nopl   (%rax)

0000000000000660 <func_is_nan_71(unsigned char)>:
     660:	31 c0                	xor    %eax,%eax
     662:	c3                   	ret    
     663:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     66a:	00 00 00 
     66d:	0f 1f 00             	nopl   (%rax)

0000000000000670 <func_is_nan_72(unsigned long)>:
     670:	31 c0                	xor    %eax,%eax
     672:	c3                   	ret    
     673:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     67a:	00 00 00 
     67d:	0f 1f 00             	nopl   (%rax)

0000000000000680 <func_is_nan_73(unsigned int)>:
     680:	31 c0                	xor    %eax,%eax
     682:	c3                   	ret    
     683:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     68a:	00 00 00 
     68d:	0f 1f 00             	nopl   (%rax)

0000000000000690 <func_is_nan_74(unsigned short)>:
     690:	31 c0                	xor    %eax,%eax
     692:	c3                   	ret    
     693:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     69a:	00 00 00 
     69d:	0f 1f 00             	nopl   (%rax)

00000000000006a0 <func_is_nan_75(unsigned char)>:
     6a0:	31 c0                	xor    %eax,%eax
     6a2:	c3                   	ret    
     6a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6aa:	00 00 00 
     6ad:	0f 1f 00             	nopl   (%rax)

00000000000006b0 <func_clamp_76(float, float, float)>:
     6b0:	c5 ea 5d d9          	vminss %xmm1,%xmm2,%xmm3
     6b4:	c5 f2 5f ca          	vmaxss %xmm2,%xmm1,%xmm1
     6b8:	c5 e2 5f c0          	vmaxss %xmm0,%xmm3,%xmm0
     6bc:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     6c0:	c3                   	ret    
     6c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6c8:	00 00 00 
     6cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006d0 <func_clamp_77(double, double, double)>:
     6d0:	c5 eb 5d d9          	vminsd %xmm1,%xmm2,%xmm3
     6d4:	c5 f3 5f ca          	vmaxsd %xmm2,%xmm1,%xmm1
     6d8:	c5 e3 5f c0          	vmaxsd %xmm0,%xmm3,%xmm0
     6dc:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     6e0:	c3                   	ret    
     6e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6e8:	00 00 00 
     6eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006f0 <func_clamp_78(int, int, int)>:
     6f0:	39 d6                	cmp    %edx,%esi
     6f2:	89 f0                	mov    %esi,%eax
     6f4:	0f 4f c2             	cmovg  %edx,%eax
     6f7:	0f 4f d6             	cmovg  %esi,%edx
     6fa:	39 f8                	cmp    %edi,%eax
     6fc:	0f 4e c7             	cmovle %edi,%eax
     6ff:	39 c2                	cmp    %eax,%edx
     701:	0f 4e c2             	cmovle %edx,%eax
     704:	c3                   	ret    
     705:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     70c:	00 00 00 
     70f:	90                   	nop

0000000000000710 <func_dist_79(float, float)>:
     710:	c5 f2 5f d0          	vmaxss %xmm0,%xmm1,%xmm2
     714:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     718:	c5 ea 5c c0          	vsubss %xmm0,%xmm2,%xmm0
     71c:	c3                   	ret    
     71d:	0f 1f 00             	nopl   (%rax)

0000000000000720 <func_dist_80(double, double)>:
     720:	c5 f3 5f d0          	vmaxsd %xmm0,%xmm1,%xmm2
     724:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     728:	c5 eb 5c c0          	vsubsd %xmm0,%xmm2,%xmm0
     72c:	c3                   	ret    
     72d:	0f 1f 00             	nopl   (%rax)

0000000000000730 <func_dist_81(long, long)>:
     730:	48 39 fe             	cmp    %rdi,%rsi
     733:	48 89 f8             	mov    %rdi,%rax
     736:	48 0f 4f c6          	cmovg  %rsi,%rax
     73a:	48 0f 4f f7          	cmovg  %rdi,%rsi
     73e:	48 29 f0             	sub    %rsi,%rax
     741:	c3                   	ret    
     742:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     749:	00 00 00 
     74c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000750 <func_dist_82(int, int)>:
     750:	39 fe                	cmp    %edi,%esi
     752:	89 f8                	mov    %edi,%eax
     754:	0f 4f c6             	cmovg  %esi,%eax
     757:	0f 4f f7             	cmovg  %edi,%esi
     75a:	29 f0                	sub    %esi,%eax
     75c:	c3                   	ret    
     75d:	0f 1f 00             	nopl   (%rax)

0000000000000760 <func_dist_83(short, short)>:
     760:	66 39 fe             	cmp    %di,%si
     763:	89 f8                	mov    %edi,%eax
     765:	0f 4f c6             	cmovg  %esi,%eax
     768:	0f 4f f7             	cmovg  %edi,%esi
     76b:	29 f0                	sub    %esi,%eax
     76d:	c3                   	ret    
     76e:	66 90                	xchg   %ax,%ax

0000000000000770 <func_dist_84(signed char, signed char)>:
     770:	40 38 fe             	cmp    %dil,%sil
     773:	89 f8                	mov    %edi,%eax
     775:	0f 4f c6             	cmovg  %esi,%eax
     778:	0f 4f f7             	cmovg  %edi,%esi
     77b:	40 28 f0             	sub    %sil,%al
     77e:	c3                   	ret    
     77f:	90                   	nop

0000000000000780 <func_dist_85(unsigned long, unsigned long)>:
     780:	48 39 fe             	cmp    %rdi,%rsi
     783:	48 89 f8             	mov    %rdi,%rax
     786:	48 0f 47 c6          	cmova  %rsi,%rax
     78a:	48 0f 47 f7          	cmova  %rdi,%rsi
     78e:	48 29 f0             	sub    %rsi,%rax
     791:	c3                   	ret    
     792:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     799:	00 00 00 
     79c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007a0 <func_dist_86(unsigned int, unsigned int)>:
     7a0:	39 fe                	cmp    %edi,%esi
     7a2:	89 f8                	mov    %edi,%eax
     7a4:	0f 47 c6             	cmova  %esi,%eax
     7a7:	0f 47 f7             	cmova  %edi,%esi
     7aa:	29 f0                	sub    %esi,%eax
     7ac:	c3                   	ret    
     7ad:	0f 1f 00             	nopl   (%rax)

00000000000007b0 <func_dist_87(unsigned short, unsigned short)>:
     7b0:	66 39 fe             	cmp    %di,%si
     7b3:	89 f8                	mov    %edi,%eax
     7b5:	0f 47 c6             	cmova  %esi,%eax
     7b8:	0f 47 f7             	cmova  %edi,%esi
     7bb:	29 f0                	sub    %esi,%eax
     7bd:	c3                   	ret    
     7be:	66 90                	xchg   %ax,%ax

00000000000007c0 <func_dist_88(unsigned char, unsigned char)>:
     7c0:	40 38 fe             	cmp    %dil,%sil
     7c3:	89 f8                	mov    %edi,%eax
     7c5:	0f 47 c6             	cmova  %esi,%eax
     7c8:	0f 47 f7             	cmova  %edi,%esi
     7cb:	40 28 f0             	sub    %sil,%al
     7ce:	c3                   	ret    
     7cf:	90                   	nop

00000000000007d0 <func_dist_89(unsigned long, unsigned long)>:
     7d0:	48 39 fe             	cmp    %rdi,%rsi
     7d3:	48 89 f8             	mov    %rdi,%rax
     7d6:	48 0f 47 c6          	cmova  %rsi,%rax
     7da:	48 0f 47 f7          	cmova  %rdi,%rsi
     7de:	48 29 f0             	sub    %rsi,%rax
     7e1:	c3                   	ret    
     7e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     7e9:	00 00 00 
     7ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007f0 <func_dist_90(unsigned int, unsigned int)>:
     7f0:	39 fe                	cmp    %edi,%esi
     7f2:	89 f8                	mov    %edi,%eax
     7f4:	0f 47 c6             	cmova  %esi,%eax
     7f7:	0f 47 f7             	cmova  %edi,%esi
     7fa:	29 f0                	sub    %esi,%eax
     7fc:	c3                   	ret    
     7fd:	0f 1f 00             	nopl   (%rax)

0000000000000800 <func_dist_91(unsigned short, unsigned short)>:
     800:	66 39 fe             	cmp    %di,%si
     803:	89 f8                	mov    %edi,%eax
     805:	0f 47 c6             	cmova  %esi,%eax
     808:	0f 47 f7             	cmova  %edi,%esi
     80b:	29 f0                	sub    %esi,%eax
     80d:	c3                   	ret    
     80e:	66 90                	xchg   %ax,%ax

0000000000000810 <func_dist_92(unsigned char, unsigned char)>:
     810:	40 38 fe             	cmp    %dil,%sil
     813:	89 f8                	mov    %edi,%eax
     815:	0f 47 c6             	cmova  %esi,%eax
     818:	0f 47 f7             	cmova  %edi,%esi
     81b:	40 28 f0             	sub    %sil,%al
     81e:	c3                   	ret    
     81f:	90                   	nop

0000000000000820 <func_fracscale_93(float, int)>:
     820:	c5 f8 28 0d 00 00 00 	vmovaps 0x0(%rip),%xmm1        # 828 <func_fracscale_93(float, int)+0x8>
     827:	00 
     828:	c5 f8 54 d1          	vandps %xmm1,%xmm0,%xmm2
     82c:	c1 e7 17             	shl    $0x17,%edi
     82f:	8d 87 00 00 80 3f    	lea    0x3f800000(%rdi),%eax
     835:	c5 f9 6e d8          	vmovd  %eax,%xmm3
     839:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     83d:	c5 f8 50 c3          	vmovmskps %xmm3,%eax
     841:	c1 e0 1f             	shl    $0x1f,%eax
     844:	c5 f9 6e e0          	vmovd  %eax,%xmm4
     848:	c5 e0 54 c9          	vandps %xmm1,%xmm3,%xmm1
     84c:	c5 fa 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm3        # 854 <func_fracscale_93(float, int)+0x34>
     853:	00 
     854:	c5 f2 58 eb          	vaddss %xmm3,%xmm1,%xmm5
     858:	c5 d2 58 2d 00 00 00 	vaddss 0x0(%rip),%xmm5,%xmm5        # 860 <func_fracscale_93(float, int)+0x40>
     85f:	00 
     860:	c5 f2 c2 db 01       	vcmpltss %xmm3,%xmm1,%xmm3
     865:	c4 e3 71 4a cd 30    	vblendvps %xmm3,%xmm5,%xmm1,%xmm1
     86b:	c5 f0 57 cc          	vxorps %xmm4,%xmm1,%xmm1
     86f:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
     874:	29 f8                	sub    %edi,%eax
     876:	c5 f9 6e d8          	vmovd  %eax,%xmm3
     87a:	c5 e2 59 c9          	vmulss %xmm1,%xmm3,%xmm1
     87e:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
     882:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 88a <func_fracscale_93(float, int)+0x6a>
     889:	00 
     88a:	c5 f2 c2 ca 06       	vcmpnless %xmm2,%xmm1,%xmm1
     88f:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     893:	c3                   	ret    
     894:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     89b:	00 00 00 
     89e:	66 90                	xchg   %ax,%ax

00000000000008a0 <func_fracscale_94(double, int)>:
     8a0:	c5 f9 28 0d 00 00 00 	vmovapd 0x0(%rip),%xmm1        # 8a8 <func_fracscale_94(double, int)+0x8>
     8a7:	00 
     8a8:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
     8ac:	48 89 f8             	mov    %rdi,%rax
     8af:	48 c1 e0 34          	shl    $0x34,%rax
     8b3:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
     8ba:	00 f0 3f 
     8bd:	48 01 c8             	add    %rcx,%rax
     8c0:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
     8c5:	c5 e3 59 d8          	vmulsd %xmm0,%xmm3,%xmm3
     8c9:	c5 f9 50 c3          	vmovmskpd %xmm3,%eax
     8cd:	48 c1 e0 3f          	shl    $0x3f,%rax
     8d1:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
     8d6:	c5 e1 54 c9          	vandpd %xmm1,%xmm3,%xmm1
     8da:	c5 fb 10 1d 00 00 00 	vmovsd 0x0(%rip),%xmm3        # 8e2 <func_fracscale_94(double, int)+0x42>
     8e1:	00 
     8e2:	c5 f3 58 eb          	vaddsd %xmm3,%xmm1,%xmm5
     8e6:	c5 d3 58 2d 00 00 00 	vaddsd 0x0(%rip),%xmm5,%xmm5        # 8ee <func_fracscale_94(double, int)+0x4e>
     8ed:	00 
     8ee:	c5 f3 c2 db 01       	vcmpltsd %xmm3,%xmm1,%xmm3
     8f3:	c4 e3 71 4b cd 30    	vblendvpd %xmm3,%xmm5,%xmm1,%xmm1
     8f9:	c5 f1 57 cc          	vxorpd %xmm4,%xmm1,%xmm1
     8fd:	f7 df                	neg    %edi
     8ff:	48 c1 e7 34          	shl    $0x34,%rdi
     903:	48 01 cf             	add    %rcx,%rdi
     906:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
     90b:	c5 e3 59 c9          	vmulsd %xmm1,%xmm3,%xmm1
     90f:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
     913:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 91b <func_fracscale_94(double, int)+0x7b>
     91a:	00 
     91b:	c5 f3 c2 ca 06       	vcmpnlesd %xmm2,%xmm1,%xmm1
     920:	c5 f1 54 c0          	vandpd %xmm0,%xmm1,%xmm0
     924:	c3                   	ret    
     925:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     92c:	00 00 00 
     92f:	90                   	nop

0000000000000930 <func_conj_95(float)>:
     930:	c3                   	ret    
     931:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     938:	00 00 00 
     93b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000940 <func_conj_96(double)>:
     940:	c3                   	ret    
     941:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     948:	00 00 00 
     94b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000950 <func_rem_97(long, long)>:
     950:	48 89 f8             	mov    %rdi,%rax
     953:	48 89 f9             	mov    %rdi,%rcx
     956:	48 09 f1             	or     %rsi,%rcx
     959:	48 c1 e9 20          	shr    $0x20,%rcx
     95d:	74 09                	je     968 <func_rem_97(long, long)+0x18>
     95f:	48 99                	cqto   
     961:	48 f7 fe             	idiv   %rsi
     964:	48 89 d0             	mov    %rdx,%rax
     967:	c3                   	ret    
     968:	31 d2                	xor    %edx,%edx
     96a:	f7 f6                	div    %esi
     96c:	89 d0                	mov    %edx,%eax
     96e:	c3                   	ret    
     96f:	90                   	nop

0000000000000970 <func_rem_98(int, int)>:
     970:	89 f8                	mov    %edi,%eax
     972:	99                   	cltd   
     973:	f7 fe                	idiv   %esi
     975:	89 d0                	mov    %edx,%eax
     977:	c3                   	ret    
     978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     97f:	00 

0000000000000980 <func_rem_99(short, short)>:
     980:	89 f8                	mov    %edi,%eax
     982:	99                   	cltd   
     983:	f7 fe                	idiv   %esi
     985:	89 d0                	mov    %edx,%eax
     987:	c3                   	ret    
     988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     98f:	00 

0000000000000990 <func_rem_100(signed char, signed char)>:
     990:	89 f8                	mov    %edi,%eax
     992:	66 99                	cwtd   
     994:	66 f7 fe             	idiv   %si
     997:	89 d0                	mov    %edx,%eax
     999:	c3                   	ret    
     99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009a0 <func_rem_101(unsigned long, unsigned long)>:
     9a0:	48 89 f8             	mov    %rdi,%rax
     9a3:	48 89 f9             	mov    %rdi,%rcx
     9a6:	48 09 f1             	or     %rsi,%rcx
     9a9:	48 c1 e9 20          	shr    $0x20,%rcx
     9ad:	74 09                	je     9b8 <func_rem_101(unsigned long, unsigned long)+0x18>
     9af:	31 d2                	xor    %edx,%edx
     9b1:	48 f7 f6             	div    %rsi
     9b4:	48 89 d0             	mov    %rdx,%rax
     9b7:	c3                   	ret    
     9b8:	31 d2                	xor    %edx,%edx
     9ba:	f7 f6                	div    %esi
     9bc:	89 d0                	mov    %edx,%eax
     9be:	c3                   	ret    
     9bf:	90                   	nop

00000000000009c0 <func_rem_102(unsigned int, unsigned int)>:
     9c0:	89 f8                	mov    %edi,%eax
     9c2:	31 d2                	xor    %edx,%edx
     9c4:	f7 f6                	div    %esi
     9c6:	89 d0                	mov    %edx,%eax
     9c8:	c3                   	ret    
     9c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000009d0 <func_rem_103(unsigned short, unsigned short)>:
     9d0:	89 f8                	mov    %edi,%eax
     9d2:	31 d2                	xor    %edx,%edx
     9d4:	66 f7 f6             	div    %si
     9d7:	89 d0                	mov    %edx,%eax
     9d9:	c3                   	ret    
     9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000009e0 <func_rem_104(unsigned char, unsigned char)>:
     9e0:	40 0f b6 c7          	movzbl %dil,%eax
     9e4:	40 f6 f6             	div    %sil
     9e7:	0f b6 c4             	movzbl %ah,%eax
     9ea:	c3                   	ret    
     9eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009f0 <func_absmin_105(float, float)>:
     9f0:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     9f4:	c5 f8 54 05 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm0        # 9fc <func_absmin_105(float, float)+0xc>
     9fb:	00 
     9fc:	c3                   	ret    
     9fd:	0f 1f 00             	nopl   (%rax)

0000000000000a00 <func_absmin_106(double, double)>:
     a00:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     a04:	c5 f9 54 05 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm0        # a0c <func_absmin_106(double, double)+0xc>
     a0b:	00 
     a0c:	c3                   	ret    
     a0d:	0f 1f 00             	nopl   (%rax)

0000000000000a10 <func_absmin_107(long, long)>:
     a10:	48 39 fe             	cmp    %rdi,%rsi
     a13:	48 0f 4f f7          	cmovg  %rdi,%rsi
     a17:	48 89 f0             	mov    %rsi,%rax
     a1a:	48 f7 d8             	neg    %rax
     a1d:	48 0f 48 c6          	cmovs  %rsi,%rax
     a21:	c3                   	ret    
     a22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a29:	00 00 00 
     a2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a30 <func_absmin_108(int, int)>:
     a30:	39 fe                	cmp    %edi,%esi
     a32:	0f 4f f7             	cmovg  %edi,%esi
     a35:	89 f0                	mov    %esi,%eax
     a37:	f7 d8                	neg    %eax
     a39:	0f 48 c6             	cmovs  %esi,%eax
     a3c:	c3                   	ret    
     a3d:	0f 1f 00             	nopl   (%rax)

0000000000000a40 <func_absmin_109(short, short)>:
     a40:	66 39 fe             	cmp    %di,%si
     a43:	0f 4f f7             	cmovg  %edi,%esi
     a46:	89 f0                	mov    %esi,%eax
     a48:	66 f7 d8             	neg    %ax
     a4b:	66 0f 48 c6          	cmovs  %si,%ax
     a4f:	c3                   	ret    

0000000000000a50 <func_absmin_110(signed char, signed char)>:
     a50:	40 38 fe             	cmp    %dil,%sil
     a53:	0f 4f f7             	cmovg  %edi,%esi
     a56:	89 f1                	mov    %esi,%ecx
     a58:	c0 f9 07             	sar    $0x7,%cl
     a5b:	8d 04 0e             	lea    (%rsi,%rcx,1),%eax
     a5e:	30 c8                	xor    %cl,%al
     a60:	c3                   	ret    
     a61:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     a68:	00 00 00 
     a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a70 <func_absmin_111(unsigned long, unsigned long)>:
     a70:	48 89 f0             	mov    %rsi,%rax
     a73:	48 39 fe             	cmp    %rdi,%rsi
     a76:	48 0f 47 c7          	cmova  %rdi,%rax
     a7a:	c3                   	ret    
     a7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a80 <func_absmin_112(unsigned int, unsigned int)>:
     a80:	89 f0                	mov    %esi,%eax
     a82:	39 fe                	cmp    %edi,%esi
     a84:	0f 47 c7             	cmova  %edi,%eax
     a87:	c3                   	ret    
     a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     a8f:	00 

0000000000000a90 <func_absmin_113(unsigned short, unsigned short)>:
     a90:	89 f0                	mov    %esi,%eax
     a92:	66 39 f8             	cmp    %di,%ax
     a95:	0f 47 c7             	cmova  %edi,%eax
     a98:	c3                   	ret    
     a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000aa0 <func_absmin_114(unsigned char, unsigned char)>:
     aa0:	89 f0                	mov    %esi,%eax
     aa2:	40 38 f8             	cmp    %dil,%al
     aa5:	0f 47 c7             	cmova  %edi,%eax
     aa8:	c3                   	ret    
     aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ab0 <func_absmin_115(unsigned long, unsigned long)>:
     ab0:	48 89 f0             	mov    %rsi,%rax
     ab3:	48 39 fe             	cmp    %rdi,%rsi
     ab6:	48 0f 47 c7          	cmova  %rdi,%rax
     aba:	c3                   	ret    
     abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ac0 <func_absmin_116(unsigned int, unsigned int)>:
     ac0:	89 f0                	mov    %esi,%eax
     ac2:	39 fe                	cmp    %edi,%esi
     ac4:	0f 47 c7             	cmova  %edi,%eax
     ac7:	c3                   	ret    
     ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     acf:	00 

0000000000000ad0 <func_absmin_117(unsigned short, unsigned short)>:
     ad0:	89 f0                	mov    %esi,%eax
     ad2:	66 39 f8             	cmp    %di,%ax
     ad5:	0f 47 c7             	cmova  %edi,%eax
     ad8:	c3                   	ret    
     ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ae0 <func_absmin_118(unsigned char, unsigned char)>:
     ae0:	89 f0                	mov    %esi,%eax
     ae2:	40 38 f8             	cmp    %dil,%al
     ae5:	0f 47 c7             	cmova  %edi,%eax
     ae8:	c3                   	ret    
     ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000af0 <func_lerp_119(eve::avx_abi_v0::wide<double, eve::fixed<4l> >, eve::avx_abi_v0::wide<double, eve::fixed<4l> >, double)>:
     af0:	c5 fb 12 d2          	vmovddup %xmm2,%xmm2
     af4:	c4 e3 6d 18 d2 01    	vinsertf128 $0x1,%xmm2,%ymm2,%ymm2
     afa:	c5 ed 59 d8          	vmulpd %ymm0,%ymm2,%ymm3
     afe:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
     b02:	c5 ed 59 c9          	vmulpd %ymm1,%ymm2,%ymm1
     b06:	c5 f5 58 c0          	vaddpd %ymm0,%ymm1,%ymm0
     b0a:	c3                   	ret    
     b0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b10 <func_bit_and_120(float, float)>:
     b10:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     b14:	c3                   	ret    
     b15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b1c:	00 00 00 
     b1f:	90                   	nop

0000000000000b20 <func_bit_and_121(double, double)>:
     b20:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
     b24:	c3                   	ret    
     b25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b2c:	00 00 00 
     b2f:	90                   	nop

0000000000000b30 <func_bit_and_122(long, long)>:
     b30:	48 89 f8             	mov    %rdi,%rax
     b33:	48 21 f0             	and    %rsi,%rax
     b36:	c3                   	ret    
     b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     b3e:	00 00 

0000000000000b40 <func_bit_and_123(int, int)>:
     b40:	89 f8                	mov    %edi,%eax
     b42:	21 f0                	and    %esi,%eax
     b44:	c3                   	ret    
     b45:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b4c:	00 00 00 
     b4f:	90                   	nop

0000000000000b50 <func_bit_and_124(short, short)>:
     b50:	89 f8                	mov    %edi,%eax
     b52:	21 f0                	and    %esi,%eax
     b54:	c3                   	ret    
     b55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b5c:	00 00 00 
     b5f:	90                   	nop

0000000000000b60 <func_bit_and_125(signed char, signed char)>:
     b60:	89 f8                	mov    %edi,%eax
     b62:	21 f0                	and    %esi,%eax
     b64:	c3                   	ret    
     b65:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b6c:	00 00 00 
     b6f:	90                   	nop

0000000000000b70 <func_bit_and_126(unsigned long, unsigned long)>:
     b70:	48 89 f8             	mov    %rdi,%rax
     b73:	48 21 f0             	and    %rsi,%rax
     b76:	c3                   	ret    
     b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     b7e:	00 00 

0000000000000b80 <func_bit_and_127(unsigned int, unsigned int)>:
     b80:	89 f8                	mov    %edi,%eax
     b82:	21 f0                	and    %esi,%eax
     b84:	c3                   	ret    
     b85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b8c:	00 00 00 
     b8f:	90                   	nop

0000000000000b90 <func_bit_and_128(unsigned short, unsigned short)>:
     b90:	89 f8                	mov    %edi,%eax
     b92:	21 f0                	and    %esi,%eax
     b94:	c3                   	ret    
     b95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b9c:	00 00 00 
     b9f:	90                   	nop

0000000000000ba0 <func_bit_and_129(unsigned char, unsigned char)>:
     ba0:	89 f8                	mov    %edi,%eax
     ba2:	21 f0                	and    %esi,%eax
     ba4:	c3                   	ret    
     ba5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bac:	00 00 00 
     baf:	90                   	nop

0000000000000bb0 <func_bit_and_130(unsigned long, unsigned long)>:
     bb0:	48 89 f8             	mov    %rdi,%rax
     bb3:	48 21 f0             	and    %rsi,%rax
     bb6:	c3                   	ret    
     bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     bbe:	00 00 

0000000000000bc0 <func_bit_and_131(unsigned int, unsigned int)>:
     bc0:	89 f8                	mov    %edi,%eax
     bc2:	21 f0                	and    %esi,%eax
     bc4:	c3                   	ret    
     bc5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bcc:	00 00 00 
     bcf:	90                   	nop

0000000000000bd0 <func_bit_and_132(unsigned short, unsigned short)>:
     bd0:	89 f8                	mov    %edi,%eax
     bd2:	21 f0                	and    %esi,%eax
     bd4:	c3                   	ret    
     bd5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bdc:	00 00 00 
     bdf:	90                   	nop

0000000000000be0 <func_bit_and_133(unsigned char, unsigned char)>:
     be0:	89 f8                	mov    %edi,%eax
     be2:	21 f0                	and    %esi,%eax
     be4:	c3                   	ret    
     be5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bec:	00 00 00 
     bef:	90                   	nop

0000000000000bf0 <func_max_134(float, float)>:
     bf0:	c5 f2 5f c0          	vmaxss %xmm0,%xmm1,%xmm0
     bf4:	c3                   	ret    
     bf5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bfc:	00 00 00 
     bff:	90                   	nop

0000000000000c00 <func_max_135(double, double)>:
     c00:	c5 f3 5f c0          	vmaxsd %xmm0,%xmm1,%xmm0
     c04:	c3                   	ret    
     c05:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c0c:	00 00 00 
     c0f:	90                   	nop

0000000000000c10 <func_max_136(int, int)>:
     c10:	89 f8                	mov    %edi,%eax
     c12:	39 fe                	cmp    %edi,%esi
     c14:	0f 4f c6             	cmovg  %esi,%eax
     c17:	c3                   	ret    
     c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     c1f:	00 

0000000000000c20 <func_div_137(float, float)>:
     c20:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
     c24:	c3                   	ret    
     c25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c2c:	00 00 00 
     c2f:	90                   	nop

0000000000000c30 <func_div_138(double, double)>:
     c30:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
     c34:	c3                   	ret    
     c35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c3c:	00 00 00 
     c3f:	90                   	nop

0000000000000c40 <func_div_139(long, long)>:
     c40:	48 89 f8             	mov    %rdi,%rax
     c43:	48 89 f9             	mov    %rdi,%rcx
     c46:	48 09 f1             	or     %rsi,%rcx
     c49:	48 c1 e9 20          	shr    $0x20,%rcx
     c4d:	74 06                	je     c55 <func_div_139(long, long)+0x15>
     c4f:	48 99                	cqto   
     c51:	48 f7 fe             	idiv   %rsi
     c54:	c3                   	ret    
     c55:	31 d2                	xor    %edx,%edx
     c57:	f7 f6                	div    %esi
     c59:	c3                   	ret    
     c5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c60 <func_div_140(int, int)>:
     c60:	89 f8                	mov    %edi,%eax
     c62:	99                   	cltd   
     c63:	f7 fe                	idiv   %esi
     c65:	c3                   	ret    
     c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c6d:	00 00 00 

0000000000000c70 <func_div_141(short, short)>:
     c70:	89 f8                	mov    %edi,%eax
     c72:	99                   	cltd   
     c73:	f7 fe                	idiv   %esi
     c75:	c3                   	ret    
     c76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c7d:	00 00 00 

0000000000000c80 <func_div_142(signed char, signed char)>:
     c80:	89 f8                	mov    %edi,%eax
     c82:	66 99                	cwtd   
     c84:	66 f7 fe             	idiv   %si
     c87:	c3                   	ret    
     c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     c8f:	00 

0000000000000c90 <func_div_143(unsigned long, unsigned long)>:
     c90:	48 89 f8             	mov    %rdi,%rax
     c93:	48 89 f9             	mov    %rdi,%rcx
     c96:	48 09 f1             	or     %rsi,%rcx
     c99:	48 c1 e9 20          	shr    $0x20,%rcx
     c9d:	74 06                	je     ca5 <func_div_143(unsigned long, unsigned long)+0x15>
     c9f:	31 d2                	xor    %edx,%edx
     ca1:	48 f7 f6             	div    %rsi
     ca4:	c3                   	ret    
     ca5:	31 d2                	xor    %edx,%edx
     ca7:	f7 f6                	div    %esi
     ca9:	c3                   	ret    
     caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000cb0 <func_div_144(unsigned int, unsigned int)>:
     cb0:	89 f8                	mov    %edi,%eax
     cb2:	31 d2                	xor    %edx,%edx
     cb4:	f7 f6                	div    %esi
     cb6:	c3                   	ret    
     cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     cbe:	00 00 

0000000000000cc0 <func_div_145(unsigned short, unsigned short)>:
     cc0:	89 f8                	mov    %edi,%eax
     cc2:	31 d2                	xor    %edx,%edx
     cc4:	66 f7 f6             	div    %si
     cc7:	c3                   	ret    
     cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ccf:	00 

0000000000000cd0 <func_div_146(unsigned char, unsigned char)>:
     cd0:	40 0f b6 c7          	movzbl %dil,%eax
     cd4:	40 f6 f6             	div    %sil
     cd7:	c3                   	ret    
     cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     cdf:	00 

0000000000000ce0 <func_div_147(unsigned long, unsigned long)>:
     ce0:	48 89 f8             	mov    %rdi,%rax
     ce3:	48 89 f9             	mov    %rdi,%rcx
     ce6:	48 09 f1             	or     %rsi,%rcx
     ce9:	48 c1 e9 20          	shr    $0x20,%rcx
     ced:	74 06                	je     cf5 <func_div_147(unsigned long, unsigned long)+0x15>
     cef:	31 d2                	xor    %edx,%edx
     cf1:	48 f7 f6             	div    %rsi
     cf4:	c3                   	ret    
     cf5:	31 d2                	xor    %edx,%edx
     cf7:	f7 f6                	div    %esi
     cf9:	c3                   	ret    
     cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d00 <func_div_148(unsigned int, unsigned int)>:
     d00:	89 f8                	mov    %edi,%eax
     d02:	31 d2                	xor    %edx,%edx
     d04:	f7 f6                	div    %esi
     d06:	c3                   	ret    
     d07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     d0e:	00 00 

0000000000000d10 <func_div_149(unsigned short, unsigned short)>:
     d10:	89 f8                	mov    %edi,%eax
     d12:	31 d2                	xor    %edx,%edx
     d14:	66 f7 f6             	div    %si
     d17:	c3                   	ret    
     d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d1f:	00 

0000000000000d20 <func_div_150(unsigned char, unsigned char)>:
     d20:	40 0f b6 c7          	movzbl %dil,%eax
     d24:	40 f6 f6             	div    %sil
     d27:	c3                   	ret    
     d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d2f:	00 

0000000000000d30 <func_fdim_151(float, float)>:
     d30:	c5 fa 5c d1          	vsubss %xmm1,%xmm0,%xmm2
     d34:	c5 f2 c2 c0 06       	vcmpnless %xmm0,%xmm1,%xmm0
     d39:	c5 f8 55 c2          	vandnps %xmm2,%xmm0,%xmm0
     d3d:	c3                   	ret    
     d3e:	66 90                	xchg   %ax,%ax

0000000000000d40 <func_fdim_152(double, double)>:
     d40:	c5 fb 5c d1          	vsubsd %xmm1,%xmm0,%xmm2
     d44:	c5 f3 c2 c0 06       	vcmpnlesd %xmm0,%xmm1,%xmm0
     d49:	c5 f9 55 c2          	vandnpd %xmm2,%xmm0,%xmm0
     d4d:	c3                   	ret    
     d4e:	66 90                	xchg   %ax,%ax

0000000000000d50 <func_fdim_153(long, long)>:
     d50:	31 c0                	xor    %eax,%eax
     d52:	48 29 f7             	sub    %rsi,%rdi
     d55:	48 0f 4d c7          	cmovge %rdi,%rax
     d59:	c3                   	ret    
     d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d60 <func_fdim_154(int, int)>:
     d60:	31 c0                	xor    %eax,%eax
     d62:	29 f7                	sub    %esi,%edi
     d64:	0f 4d c7             	cmovge %edi,%eax
     d67:	c3                   	ret    
     d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d6f:	00 

0000000000000d70 <func_fdim_155(short, short)>:
     d70:	31 c0                	xor    %eax,%eax
     d72:	66 29 f7             	sub    %si,%di
     d75:	0f 4d c7             	cmovge %edi,%eax
     d78:	c3                   	ret    
     d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000d80 <func_fdim_156(signed char, signed char)>:
     d80:	31 c9                	xor    %ecx,%ecx
     d82:	40 28 f7             	sub    %sil,%dil
     d85:	40 0f b6 c7          	movzbl %dil,%eax
     d89:	0f 4c c1             	cmovl  %ecx,%eax
     d8c:	c3                   	ret    
     d8d:	0f 1f 00             	nopl   (%rax)

0000000000000d90 <func_fdim_157(unsigned long, unsigned long)>:
     d90:	31 c0                	xor    %eax,%eax
     d92:	48 29 f7             	sub    %rsi,%rdi
     d95:	48 0f 43 c7          	cmovae %rdi,%rax
     d99:	c3                   	ret    
     d9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000da0 <func_fdim_158(unsigned int, unsigned int)>:
     da0:	31 c0                	xor    %eax,%eax
     da2:	29 f7                	sub    %esi,%edi
     da4:	0f 43 c7             	cmovae %edi,%eax
     da7:	c3                   	ret    
     da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     daf:	00 

0000000000000db0 <func_fdim_159(unsigned short, unsigned short)>:
     db0:	31 c0                	xor    %eax,%eax
     db2:	66 29 f7             	sub    %si,%di
     db5:	0f 43 c7             	cmovae %edi,%eax
     db8:	c3                   	ret    
     db9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000dc0 <func_fdim_160(unsigned char, unsigned char)>:
     dc0:	31 c9                	xor    %ecx,%ecx
     dc2:	40 28 f7             	sub    %sil,%dil
     dc5:	40 0f b6 c7          	movzbl %dil,%eax
     dc9:	0f 42 c1             	cmovb  %ecx,%eax
     dcc:	c3                   	ret    
     dcd:	0f 1f 00             	nopl   (%rax)

0000000000000dd0 <func_fdim_161(unsigned long, unsigned long)>:
     dd0:	31 c0                	xor    %eax,%eax
     dd2:	48 29 f7             	sub    %rsi,%rdi
     dd5:	48 0f 43 c7          	cmovae %rdi,%rax
     dd9:	c3                   	ret    
     dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000de0 <func_fdim_162(unsigned int, unsigned int)>:
     de0:	31 c0                	xor    %eax,%eax
     de2:	29 f7                	sub    %esi,%edi
     de4:	0f 43 c7             	cmovae %edi,%eax
     de7:	c3                   	ret    
     de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     def:	00 

0000000000000df0 <func_fdim_163(unsigned short, unsigned short)>:
     df0:	31 c0                	xor    %eax,%eax
     df2:	66 29 f7             	sub    %si,%di
     df5:	0f 43 c7             	cmovae %edi,%eax
     df8:	c3                   	ret    
     df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e00 <func_fdim_164(unsigned char, unsigned char)>:
     e00:	31 c9                	xor    %ecx,%ecx
     e02:	40 28 f7             	sub    %sil,%dil
     e05:	40 0f b6 c7          	movzbl %dil,%eax
     e09:	0f 42 c1             	cmovb  %ecx,%eax
     e0c:	c3                   	ret    
     e0d:	0f 1f 00             	nopl   (%rax)

0000000000000e10 <func_copysign_165(float, float)>:
     e10:	c5 f9 7e c0          	vmovd  %xmm0,%eax
     e14:	c5 f8 50 c9          	vmovmskps %xmm1,%ecx
     e18:	c1 e1 1f             	shl    $0x1f,%ecx
     e1b:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     e20:	09 c8                	or     %ecx,%eax
     e22:	c5 f9 6e c0          	vmovd  %eax,%xmm0
     e26:	c3                   	ret    
     e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     e2e:	00 00 

0000000000000e30 <func_floor_166(float)>:
     e30:	c5 fa 5b c8          	vcvttps2dq %xmm0,%xmm1
     e34:	c5 f8 5b c9          	vcvtdq2ps %xmm1,%xmm1
     e38:	c5 f8 54 15 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm2        # e40 <func_floor_166(float)+0x10>
     e3f:	00 
     e40:	c5 ea c2 15 00 00 00 	vcmpnless 0x0(%rip),%xmm2,%xmm2        # e49 <func_floor_166(float)+0x19>
     e47:	00 06 
     e49:	c4 e3 71 4a c8 20    	vblendvps %xmm2,%xmm0,%xmm1,%xmm1
     e4f:	c5 f2 58 15 00 00 00 	vaddss 0x0(%rip),%xmm1,%xmm2        # e57 <func_floor_166(float)+0x27>
     e56:	00 
     e57:	c5 fa c2 c1 05       	vcmpnltss %xmm1,%xmm0,%xmm0
     e5c:	c4 e3 69 4a c1 00    	vblendvps %xmm0,%xmm1,%xmm2,%xmm0
     e62:	c3                   	ret    
     e63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     e6a:	00 00 00 
     e6d:	0f 1f 00             	nopl   (%rax)

0000000000000e70 <func_floor_167(double)>:
     e70:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
     e75:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
     e7a:	c5 f9 54 15 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm2        # e82 <func_floor_167(double)+0x12>
     e81:	00 
     e82:	c5 eb c2 15 00 00 00 	vcmpnlesd 0x0(%rip),%xmm2,%xmm2        # e8b <func_floor_167(double)+0x1b>
     e89:	00 06 
     e8b:	c4 e3 71 4b c8 20    	vblendvpd %xmm2,%xmm0,%xmm1,%xmm1
     e91:	c5 f3 58 15 00 00 00 	vaddsd 0x0(%rip),%xmm1,%xmm2        # e99 <func_floor_167(double)+0x29>
     e98:	00 
     e99:	c5 fb c2 c1 05       	vcmpnltsd %xmm1,%xmm0,%xmm0
     e9e:	c4 e3 69 4b c1 00    	vblendvpd %xmm0,%xmm1,%xmm2,%xmm0
     ea4:	c3                   	ret    
     ea5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     eac:	00 00 00 
     eaf:	90                   	nop

0000000000000eb0 <func_floor_168(long)>:
     eb0:	48 89 f8             	mov    %rdi,%rax
     eb3:	c3                   	ret    
     eb4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ebb:	00 00 00 
     ebe:	66 90                	xchg   %ax,%ax

0000000000000ec0 <func_floor_169(int)>:
     ec0:	89 f8                	mov    %edi,%eax
     ec2:	c3                   	ret    
     ec3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     eca:	00 00 00 
     ecd:	0f 1f 00             	nopl   (%rax)

0000000000000ed0 <func_floor_170(short)>:
     ed0:	89 f8                	mov    %edi,%eax
     ed2:	c3                   	ret    
     ed3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     eda:	00 00 00 
     edd:	0f 1f 00             	nopl   (%rax)

0000000000000ee0 <func_floor_171(signed char)>:
     ee0:	89 f8                	mov    %edi,%eax
     ee2:	c3                   	ret    
     ee3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     eea:	00 00 00 
     eed:	0f 1f 00             	nopl   (%rax)

0000000000000ef0 <func_floor_172(unsigned long)>:
     ef0:	48 89 f8             	mov    %rdi,%rax
     ef3:	c3                   	ret    
     ef4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     efb:	00 00 00 
     efe:	66 90                	xchg   %ax,%ax

0000000000000f00 <func_floor_173(unsigned int)>:
     f00:	89 f8                	mov    %edi,%eax
     f02:	c3                   	ret    
     f03:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f0a:	00 00 00 
     f0d:	0f 1f 00             	nopl   (%rax)

0000000000000f10 <func_floor_174(unsigned short)>:
     f10:	89 f8                	mov    %edi,%eax
     f12:	c3                   	ret    
     f13:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f1a:	00 00 00 
     f1d:	0f 1f 00             	nopl   (%rax)

0000000000000f20 <func_floor_175(unsigned char)>:
     f20:	89 f8                	mov    %edi,%eax
     f22:	c3                   	ret    
     f23:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f2a:	00 00 00 
     f2d:	0f 1f 00             	nopl   (%rax)

0000000000000f30 <func_floor_176(unsigned long)>:
     f30:	48 89 f8             	mov    %rdi,%rax
     f33:	c3                   	ret    
     f34:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f3b:	00 00 00 
     f3e:	66 90                	xchg   %ax,%ax

0000000000000f40 <func_floor_177(unsigned int)>:
     f40:	89 f8                	mov    %edi,%eax
     f42:	c3                   	ret    
     f43:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f4a:	00 00 00 
     f4d:	0f 1f 00             	nopl   (%rax)

0000000000000f50 <func_floor_178(unsigned short)>:
     f50:	89 f8                	mov    %edi,%eax
     f52:	c3                   	ret    
     f53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f5a:	00 00 00 
     f5d:	0f 1f 00             	nopl   (%rax)

0000000000000f60 <func_floor_179(unsigned char)>:
     f60:	89 f8                	mov    %edi,%eax
     f62:	c3                   	ret    
     f63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f6a:	00 00 00 
     f6d:	0f 1f 00             	nopl   (%rax)

0000000000000f70 <func_inc_180(float)>:
     f70:	c5 fa 58 05 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm0        # f78 <func_inc_180(float)+0x8>
     f77:	00 
     f78:	c3                   	ret    
     f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000f80 <func_inc_181(double)>:
     f80:	c5 fb 58 05 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm0        # f88 <func_inc_181(double)+0x8>
     f87:	00 
     f88:	c3                   	ret    
     f89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000f90 <func_inc_182(long)>:
     f90:	48 8d 47 01          	lea    0x1(%rdi),%rax
     f94:	c3                   	ret    
     f95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f9c:	00 00 00 
     f9f:	90                   	nop

0000000000000fa0 <func_inc_183(int)>:
     fa0:	8d 47 01             	lea    0x1(%rdi),%eax
     fa3:	c3                   	ret    
     fa4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fab:	00 00 00 
     fae:	66 90                	xchg   %ax,%ax

0000000000000fb0 <func_inc_184(short)>:
     fb0:	8d 47 01             	lea    0x1(%rdi),%eax
     fb3:	c3                   	ret    
     fb4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fbb:	00 00 00 
     fbe:	66 90                	xchg   %ax,%ax

0000000000000fc0 <func_inc_185(signed char)>:
     fc0:	8d 47 01             	lea    0x1(%rdi),%eax
     fc3:	c3                   	ret    
     fc4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fcb:	00 00 00 
     fce:	66 90                	xchg   %ax,%ax

0000000000000fd0 <func_inc_186(unsigned long)>:
     fd0:	48 8d 47 01          	lea    0x1(%rdi),%rax
     fd4:	c3                   	ret    
     fd5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fdc:	00 00 00 
     fdf:	90                   	nop

0000000000000fe0 <func_inc_187(unsigned int)>:
     fe0:	8d 47 01             	lea    0x1(%rdi),%eax
     fe3:	c3                   	ret    
     fe4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     feb:	00 00 00 
     fee:	66 90                	xchg   %ax,%ax

0000000000000ff0 <func_inc_188(unsigned short)>:
     ff0:	8d 47 01             	lea    0x1(%rdi),%eax
     ff3:	c3                   	ret    
     ff4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ffb:	00 00 00 
     ffe:	66 90                	xchg   %ax,%ax

0000000000001000 <func_inc_189(unsigned char)>:
    1000:	8d 47 01             	lea    0x1(%rdi),%eax
    1003:	c3                   	ret    
    1004:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    100b:	00 00 00 
    100e:	66 90                	xchg   %ax,%ax

0000000000001010 <func_inc_190(unsigned long)>:
    1010:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1014:	c3                   	ret    
    1015:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    101c:	00 00 00 
    101f:	90                   	nop

0000000000001020 <func_inc_191(unsigned int)>:
    1020:	8d 47 01             	lea    0x1(%rdi),%eax
    1023:	c3                   	ret    
    1024:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    102b:	00 00 00 
    102e:	66 90                	xchg   %ax,%ax

0000000000001030 <func_inc_192(unsigned short)>:
    1030:	8d 47 01             	lea    0x1(%rdi),%eax
    1033:	c3                   	ret    
    1034:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    103b:	00 00 00 
    103e:	66 90                	xchg   %ax,%ax

0000000000001040 <func_inc_193(unsigned char)>:
    1040:	8d 47 01             	lea    0x1(%rdi),%eax
    1043:	c3                   	ret    
    1044:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    104b:	00 00 00 
    104e:	66 90                	xchg   %ax,%ax

0000000000001050 <func_add_194(float, float)>:
    1050:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1054:	c3                   	ret    
    1055:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    105c:	00 00 00 
    105f:	90                   	nop

0000000000001060 <func_add_195(double, double)>:
    1060:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1064:	c3                   	ret    
    1065:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106c:	00 00 00 
    106f:	90                   	nop

0000000000001070 <func_add_196(long, long)>:
    1070:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1074:	c3                   	ret    
    1075:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107c:	00 00 00 
    107f:	90                   	nop

0000000000001080 <func_add_197(int, int)>:
    1080:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1083:	c3                   	ret    
    1084:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108b:	00 00 00 
    108e:	66 90                	xchg   %ax,%ax

0000000000001090 <func_add_198(short, short)>:
    1090:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1093:	c3                   	ret    
    1094:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    109b:	00 00 00 
    109e:	66 90                	xchg   %ax,%ax

00000000000010a0 <func_add_199(signed char, signed char)>:
    10a0:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    10a3:	c3                   	ret    
    10a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ab:	00 00 00 
    10ae:	66 90                	xchg   %ax,%ax

00000000000010b0 <func_add_200(unsigned long, unsigned long)>:
    10b0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    10b4:	c3                   	ret    
    10b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10bc:	00 00 00 
    10bf:	90                   	nop

00000000000010c0 <func_add_201(unsigned int, unsigned int)>:
    10c0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    10c3:	c3                   	ret    
    10c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cb:	00 00 00 
    10ce:	66 90                	xchg   %ax,%ax

00000000000010d0 <func_add_202(unsigned short, unsigned short)>:
    10d0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    10d3:	c3                   	ret    
    10d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10db:	00 00 00 
    10de:	66 90                	xchg   %ax,%ax

00000000000010e0 <func_add_203(unsigned char, unsigned char)>:
    10e0:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    10e3:	c3                   	ret    
    10e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10eb:	00 00 00 
    10ee:	66 90                	xchg   %ax,%ax

00000000000010f0 <func_add_204(unsigned long, unsigned long)>:
    10f0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    10f4:	c3                   	ret    
    10f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fc:	00 00 00 
    10ff:	90                   	nop

0000000000001100 <func_add_205(unsigned int, unsigned int)>:
    1100:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1103:	c3                   	ret    
    1104:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110b:	00 00 00 
    110e:	66 90                	xchg   %ax,%ax

0000000000001110 <func_add_206(unsigned short, unsigned short)>:
    1110:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1113:	c3                   	ret    
    1114:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    111b:	00 00 00 
    111e:	66 90                	xchg   %ax,%ax

0000000000001120 <func_add_207(unsigned char, unsigned char)>:
    1120:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1123:	c3                   	ret    
    1124:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112b:	00 00 00 
    112e:	66 90                	xchg   %ax,%ax

0000000000001130 <func_average_208(float, float)>:
    1130:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 1138 <func_average_208(float, float)+0x8>
    1137:	00 
    1138:	c5 f2 59 ca          	vmulss %xmm2,%xmm1,%xmm1
    113c:	c5 fa 59 c2          	vmulss %xmm2,%xmm0,%xmm0
    1140:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1144:	c3                   	ret    
    1145:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114c:	00 00 00 
    114f:	90                   	nop

0000000000001150 <func_average_209(double, double)>:
    1150:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 1158 <func_average_209(double, double)+0x8>
    1157:	00 
    1158:	c5 f3 59 ca          	vmulsd %xmm2,%xmm1,%xmm1
    115c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
    1160:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1164:	c3                   	ret    
    1165:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116c:	00 00 00 
    116f:	90                   	nop

0000000000001170 <func_average_210(long, long)>:
    1170:	48 89 f0             	mov    %rsi,%rax
    1173:	48 21 f8             	and    %rdi,%rax
    1176:	48 31 fe             	xor    %rdi,%rsi
    1179:	48 d1 fe             	sar    %rsi
    117c:	48 01 f0             	add    %rsi,%rax
    117f:	c3                   	ret    

0000000000001180 <func_average_211(int, int)>:
    1180:	89 f0                	mov    %esi,%eax
    1182:	21 f8                	and    %edi,%eax
    1184:	31 fe                	xor    %edi,%esi
    1186:	d1 fe                	sar    %esi
    1188:	01 f0                	add    %esi,%eax
    118a:	c3                   	ret    
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <func_average_212(short, short)>:
    1190:	89 f0                	mov    %esi,%eax
    1192:	21 f8                	and    %edi,%eax
    1194:	31 fe                	xor    %edi,%esi
    1196:	d1 fe                	sar    %esi
    1198:	01 f0                	add    %esi,%eax
    119a:	c3                   	ret    
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <func_average_213(signed char, signed char)>:
    11a0:	89 f0                	mov    %esi,%eax
    11a2:	40 20 f8             	and    %dil,%al
    11a5:	40 30 fe             	xor    %dil,%sil
    11a8:	40 d0 fe             	sar    %sil
    11ab:	40 00 f0             	add    %sil,%al
    11ae:	c3                   	ret    
    11af:	90                   	nop

00000000000011b0 <func_average_214(unsigned long, unsigned long)>:
    11b0:	48 89 f0             	mov    %rsi,%rax
    11b3:	48 21 f8             	and    %rdi,%rax
    11b6:	48 31 fe             	xor    %rdi,%rsi
    11b9:	48 d1 ee             	shr    %rsi
    11bc:	48 01 f0             	add    %rsi,%rax
    11bf:	c3                   	ret    

00000000000011c0 <func_average_215(unsigned int, unsigned int)>:
    11c0:	89 f0                	mov    %esi,%eax
    11c2:	21 f8                	and    %edi,%eax
    11c4:	31 fe                	xor    %edi,%esi
    11c6:	d1 ee                	shr    %esi
    11c8:	01 f0                	add    %esi,%eax
    11ca:	c3                   	ret    
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <func_average_216(unsigned short, unsigned short)>:
    11d0:	89 f0                	mov    %esi,%eax
    11d2:	21 f8                	and    %edi,%eax
    11d4:	31 fe                	xor    %edi,%esi
    11d6:	d1 ee                	shr    %esi
    11d8:	01 f0                	add    %esi,%eax
    11da:	c3                   	ret    
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <func_average_217(unsigned char, unsigned char)>:
    11e0:	89 f0                	mov    %esi,%eax
    11e2:	40 20 f8             	and    %dil,%al
    11e5:	40 30 fe             	xor    %dil,%sil
    11e8:	40 d0 ee             	shr    %sil
    11eb:	40 00 f0             	add    %sil,%al
    11ee:	c3                   	ret    
    11ef:	90                   	nop

00000000000011f0 <func_average_218(unsigned long, unsigned long)>:
    11f0:	48 89 f0             	mov    %rsi,%rax
    11f3:	48 21 f8             	and    %rdi,%rax
    11f6:	48 31 fe             	xor    %rdi,%rsi
    11f9:	48 d1 ee             	shr    %rsi
    11fc:	48 01 f0             	add    %rsi,%rax
    11ff:	c3                   	ret    

0000000000001200 <func_average_219(unsigned int, unsigned int)>:
    1200:	89 f0                	mov    %esi,%eax
    1202:	21 f8                	and    %edi,%eax
    1204:	31 fe                	xor    %edi,%esi
    1206:	d1 ee                	shr    %esi
    1208:	01 f0                	add    %esi,%eax
    120a:	c3                   	ret    
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <func_average_220(unsigned short, unsigned short)>:
    1210:	89 f0                	mov    %esi,%eax
    1212:	21 f8                	and    %edi,%eax
    1214:	31 fe                	xor    %edi,%esi
    1216:	d1 ee                	shr    %esi
    1218:	01 f0                	add    %esi,%eax
    121a:	c3                   	ret    
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <func_average_221(unsigned char, unsigned char)>:
    1220:	89 f0                	mov    %esi,%eax
    1222:	40 20 f8             	and    %dil,%al
    1225:	40 30 fe             	xor    %dil,%sil
    1228:	40 d0 ee             	shr    %sil
    122b:	40 00 f0             	add    %sil,%al
    122e:	c3                   	ret    
    122f:	90                   	nop

0000000000001230 <func_is_positive_222(float)>:
    1230:	c5 f8 50 c0          	vmovmskps %xmm0,%eax
    1234:	c1 e0 1f             	shl    $0x1f,%eax
    1237:	c1 f8 1f             	sar    $0x1f,%eax
    123a:	f7 d0                	not    %eax
    123c:	c3                   	ret    
    123d:	0f 1f 00             	nopl   (%rax)

0000000000001240 <func_is_positive_223(double)>:
    1240:	c5 f9 50 c0          	vmovmskpd %xmm0,%eax
    1244:	48 c1 e0 3f          	shl    $0x3f,%rax
    1248:	48 c1 f8 3f          	sar    $0x3f,%rax
    124c:	48 f7 d0             	not    %rax
    124f:	c3                   	ret    

0000000000001250 <func_is_positive_224(long)>:
    1250:	48 89 f8             	mov    %rdi,%rax
    1253:	48 c1 f8 3f          	sar    $0x3f,%rax
    1257:	48 f7 d0             	not    %rax
    125a:	c3                   	ret    
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <func_is_positive_225(int)>:
    1260:	89 f8                	mov    %edi,%eax
    1262:	c1 f8 1f             	sar    $0x1f,%eax
    1265:	f7 d0                	not    %eax
    1267:	c3                   	ret    
    1268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    126f:	00 

0000000000001270 <func_is_positive_226(short)>:
    1270:	89 f8                	mov    %edi,%eax
    1272:	c1 f8 0f             	sar    $0xf,%eax
    1275:	f7 d0                	not    %eax
    1277:	c3                   	ret    
    1278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    127f:	00 

0000000000001280 <func_is_positive_227(signed char)>:
    1280:	89 f8                	mov    %edi,%eax
    1282:	c0 f8 07             	sar    $0x7,%al
    1285:	f6 d0                	not    %al
    1287:	c3                   	ret    
    1288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    128f:	00 

0000000000001290 <func_is_positive_228(unsigned long)>:
    1290:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1297:	c3                   	ret    
    1298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    129f:	00 

00000000000012a0 <func_is_positive_229(unsigned int)>:
    12a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    12a5:	c3                   	ret    
    12a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12ad:	00 00 00 

00000000000012b0 <func_is_positive_230(unsigned short)>:
    12b0:	66 b8 ff ff          	mov    $0xffff,%ax
    12b4:	c3                   	ret    
    12b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12bc:	00 00 00 
    12bf:	90                   	nop

00000000000012c0 <func_is_positive_231(unsigned char)>:
    12c0:	b0 ff                	mov    $0xff,%al
    12c2:	c3                   	ret    
    12c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12ca:	00 00 00 
    12cd:	0f 1f 00             	nopl   (%rax)

00000000000012d0 <func_is_positive_232(unsigned long)>:
    12d0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    12d7:	c3                   	ret    
    12d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12df:	00 

00000000000012e0 <func_is_positive_233(unsigned int)>:
    12e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    12e5:	c3                   	ret    
    12e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12ed:	00 00 00 

00000000000012f0 <func_is_positive_234(unsigned short)>:
    12f0:	66 b8 ff ff          	mov    $0xffff,%ax
    12f4:	c3                   	ret    
    12f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fc:	00 00 00 
    12ff:	90                   	nop

0000000000001300 <func_is_positive_235(unsigned char)>:
    1300:	b0 ff                	mov    $0xff,%al
    1302:	c3                   	ret    
    1303:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    130a:	00 00 00 
    130d:	0f 1f 00             	nopl   (%rax)

0000000000001310 <func_dec_236(float)>:
    1310:	c5 fa 58 05 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm0        # 1318 <func_dec_236(float)+0x8>
    1317:	00 
    1318:	c3                   	ret    
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001320 <func_dec_237(double)>:
    1320:	c5 fb 58 05 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm0        # 1328 <func_dec_237(double)+0x8>
    1327:	00 
    1328:	c3                   	ret    
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001330 <func_dec_238(long)>:
    1330:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1334:	c3                   	ret    
    1335:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    133c:	00 00 00 
    133f:	90                   	nop

0000000000001340 <func_dec_239(int)>:
    1340:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1343:	c3                   	ret    
    1344:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    134b:	00 00 00 
    134e:	66 90                	xchg   %ax,%ax

0000000000001350 <func_dec_240(short)>:
    1350:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1353:	c3                   	ret    
    1354:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    135b:	00 00 00 
    135e:	66 90                	xchg   %ax,%ax

0000000000001360 <func_dec_241(signed char)>:
    1360:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1363:	c3                   	ret    
    1364:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    136b:	00 00 00 
    136e:	66 90                	xchg   %ax,%ax

0000000000001370 <func_dec_242(unsigned long)>:
    1370:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1374:	c3                   	ret    
    1375:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    137c:	00 00 00 
    137f:	90                   	nop

0000000000001380 <func_dec_243(unsigned int)>:
    1380:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1383:	c3                   	ret    
    1384:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    138b:	00 00 00 
    138e:	66 90                	xchg   %ax,%ax

0000000000001390 <func_dec_244(unsigned short)>:
    1390:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1393:	c3                   	ret    
    1394:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    139b:	00 00 00 
    139e:	66 90                	xchg   %ax,%ax

00000000000013a0 <func_dec_245(unsigned char)>:
    13a0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13a3:	c3                   	ret    
    13a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ab:	00 00 00 
    13ae:	66 90                	xchg   %ax,%ax

00000000000013b0 <func_dec_246(unsigned long)>:
    13b0:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    13b4:	c3                   	ret    
    13b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13bc:	00 00 00 
    13bf:	90                   	nop

00000000000013c0 <func_dec_247(unsigned int)>:
    13c0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13c3:	c3                   	ret    
    13c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cb:	00 00 00 
    13ce:	66 90                	xchg   %ax,%ax

00000000000013d0 <func_dec_248(unsigned short)>:
    13d0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13d3:	c3                   	ret    
    13d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13db:	00 00 00 
    13de:	66 90                	xchg   %ax,%ax

00000000000013e0 <func_dec_249(unsigned char)>:
    13e0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    13e3:	c3                   	ret    
    13e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13eb:	00 00 00 
    13ee:	66 90                	xchg   %ax,%ax

00000000000013f0 <func_frac_250(float)>:
    13f0:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    13f4:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
    13f8:	75 02                	jne    13fc <func_frac_250(float)+0xc>
    13fa:	7b 23                	jnp    141f <func_frac_250(float)+0x2f>
    13fc:	c5 f8 54 0d 00 00 00 	vandps 0x0(%rip),%xmm0,%xmm1        # 1404 <func_frac_250(float)+0x14>
    1403:	00 
    1404:	c5 fa 5b d0          	vcvttps2dq %xmm0,%xmm2
    1408:	c5 f2 c2 0d 00 00 00 	vcmpnless 0x0(%rip),%xmm1,%xmm1        # 1411 <func_frac_250(float)+0x21>
    140f:	00 06 
    1411:	c5 f8 5b d2          	vcvtdq2ps %xmm2,%xmm2
    1415:	c4 e3 69 4a c8 10    	vblendvps %xmm1,%xmm0,%xmm2,%xmm1
    141b:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    141f:	c3                   	ret    

0000000000001420 <func_frac_251(double)>:
    1420:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1424:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
    1428:	75 02                	jne    142c <func_frac_251(double)+0xc>
    142a:	7b 25                	jnp    1451 <func_frac_251(double)+0x31>
    142c:	c5 f9 54 0d 00 00 00 	vandpd 0x0(%rip),%xmm0,%xmm1        # 1434 <func_frac_251(double)+0x14>
    1433:	00 
    1434:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1439:	c4 e1 eb 2a d0       	vcvtsi2sd %rax,%xmm2,%xmm2
    143e:	c5 f3 c2 0d 00 00 00 	vcmpnlesd 0x0(%rip),%xmm1,%xmm1        # 1447 <func_frac_251(double)+0x27>
    1445:	00 06 
    1447:	c4 e3 69 4b c8 10    	vblendvpd %xmm1,%xmm0,%xmm2,%xmm1
    144d:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    1451:	c3                   	ret    
    1452:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1459:	00 00 00 
    145c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001460 <func_frac_252(long)>:
    1460:	31 c0                	xor    %eax,%eax
    1462:	c3                   	ret    
    1463:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    146a:	00 00 00 
    146d:	0f 1f 00             	nopl   (%rax)

0000000000001470 <func_frac_253(int)>:
    1470:	31 c0                	xor    %eax,%eax
    1472:	c3                   	ret    
    1473:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    147a:	00 00 00 
    147d:	0f 1f 00             	nopl   (%rax)

0000000000001480 <func_frac_254(short)>:
    1480:	31 c0                	xor    %eax,%eax
    1482:	c3                   	ret    
    1483:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    148a:	00 00 00 
    148d:	0f 1f 00             	nopl   (%rax)

0000000000001490 <func_frac_255(signed char)>:
    1490:	31 c0                	xor    %eax,%eax
    1492:	c3                   	ret    
    1493:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    149a:	00 00 00 
    149d:	0f 1f 00             	nopl   (%rax)

00000000000014a0 <func_frac_256(unsigned long)>:
    14a0:	31 c0                	xor    %eax,%eax
    14a2:	c3                   	ret    
    14a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14aa:	00 00 00 
    14ad:	0f 1f 00             	nopl   (%rax)

00000000000014b0 <func_frac_257(unsigned int)>:
    14b0:	31 c0                	xor    %eax,%eax
    14b2:	c3                   	ret    
    14b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ba:	00 00 00 
    14bd:	0f 1f 00             	nopl   (%rax)

00000000000014c0 <func_frac_258(unsigned short)>:
    14c0:	31 c0                	xor    %eax,%eax
    14c2:	c3                   	ret    
    14c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ca:	00 00 00 
    14cd:	0f 1f 00             	nopl   (%rax)

00000000000014d0 <func_frac_259(unsigned char)>:
    14d0:	31 c0                	xor    %eax,%eax
    14d2:	c3                   	ret    
    14d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14da:	00 00 00 
    14dd:	0f 1f 00             	nopl   (%rax)

00000000000014e0 <func_frac_260(unsigned long)>:
    14e0:	31 c0                	xor    %eax,%eax
    14e2:	c3                   	ret    
    14e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ea:	00 00 00 
    14ed:	0f 1f 00             	nopl   (%rax)

00000000000014f0 <func_frac_261(unsigned int)>:
    14f0:	31 c0                	xor    %eax,%eax
    14f2:	c3                   	ret    
    14f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14fa:	00 00 00 
    14fd:	0f 1f 00             	nopl   (%rax)

0000000000001500 <func_frac_262(unsigned short)>:
    1500:	31 c0                	xor    %eax,%eax
    1502:	c3                   	ret    
    1503:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    150a:	00 00 00 
    150d:	0f 1f 00             	nopl   (%rax)

0000000000001510 <func_frac_263(unsigned char)>:
    1510:	31 c0                	xor    %eax,%eax
    1512:	c3                   	ret    
    1513:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    151a:	00 00 00 
    151d:	0f 1f 00             	nopl   (%rax)

0000000000001520 <func_agm_264(float, float)>:
    1520:	55                   	push   %rbp
    1521:	41 56                	push   %r14
    1523:	53                   	push   %rbx
    1524:	48 83 ec 40          	sub    $0x40,%rsp
    1528:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
    152c:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 1534 <func_agm_264(float, float)+0x14>
    1533:	00 
    1534:	c5 f2 59 d5          	vmulss %xmm5,%xmm1,%xmm2
    1538:	c5 f8 29 44 24 20    	vmovaps %xmm0,0x20(%rsp)
    153e:	c5 fa 59 cd          	vmulss %xmm5,%xmm0,%xmm1
    1542:	c5 f2 58 c2          	vaddss %xmm2,%xmm1,%xmm0
    1546:	c5 fa 5c c8          	vsubss %xmm0,%xmm0,%xmm1
    154a:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
    154e:	0f 8a f1 01 00 00    	jp     1745 <func_agm_264(float, float)+0x225>
    1554:	c5 f9 7e c3          	vmovd  %xmm0,%ebx
    1558:	81 e3 00 00 80 7f    	and    $0x7f800000,%ebx
    155e:	8d 83 00 00 80 c0    	lea    -0x3f800000(%rbx),%eax
    1564:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    1568:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
    156c:	0f 45 d8             	cmovne %eax,%ebx
    156f:	0f 4a d8             	cmovp  %eax,%ebx
    1572:	c5 f8 28 64 24 20    	vmovaps 0x20(%rsp),%xmm4
    1578:	c4 e3 59 21 f3 10    	vinsertps $0x10,%xmm3,%xmm4,%xmm6
    157e:	c5 f8 28 05 00 00 00 	vmovaps 0x0(%rip),%xmm0        # 1586 <func_agm_264(float, float)+0x66>
    1585:	00 
    1586:	c5 c8 54 c8          	vandps %xmm0,%xmm6,%xmm1
    158a:	c5 f0 c2 0d 00 00 00 	vcmpeqps 0x0(%rip),%xmm1,%xmm1        # 1593 <func_agm_264(float, float)+0x73>
    1591:	00 00 
    1593:	c4 e2 79 25 c9       	vpmovsxdq %xmm1,%xmm1
    1598:	c5 f9 50 c1          	vmovmskpd %xmm1,%eax
    159c:	85 c0                	test   %eax,%eax
    159e:	41 0f 95 c6          	setne  %r14b
    15a2:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    15a6:	c5 c8 c2 c9 04       	vcmpneqps %xmm1,%xmm6,%xmm1
    15ab:	c5 c8 54 15 00 00 00 	vandps 0x0(%rip),%xmm6,%xmm2        # 15b3 <func_agm_264(float, float)+0x93>
    15b2:	00 
    15b3:	c5 e8 56 15 00 00 00 	vorps  0x0(%rip),%xmm2,%xmm2        # 15bb <func_agm_264(float, float)+0x9b>
    15ba:	00 
    15bb:	c5 f8 29 74 24 30    	vmovaps %xmm6,0x30(%rsp)
    15c1:	c4 e3 49 4a ca 10    	vblendvps %xmm1,%xmm2,%xmm6,%xmm1
    15c7:	c5 fa 16 d1          	vmovshdup %xmm1,%xmm2
    15cb:	c5 f2 59 d2          	vmulss %xmm2,%xmm1,%xmm2
    15cf:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    15d3:	c5 e8 c2 d1 02       	vcmpleps %xmm1,%xmm2,%xmm2
    15d8:	c5 f8 29 5c 24 10    	vmovaps %xmm3,0x10(%rsp)
    15de:	c5 e0 c2 dc 03       	vcmpunordps %xmm4,%xmm3,%xmm3
    15e3:	c5 e0 56 d2          	vorps  %xmm2,%xmm3,%xmm2
    15e7:	c5 f9 7e d5          	vmovd  %xmm2,%ebp
    15eb:	44 08 f5             	or     %r14b,%bpl
    15ee:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    15f2:	40 f6 c5 01          	test   $0x1,%bpl
    15f6:	75 0c                	jne    1604 <func_agm_264(float, float)+0xe4>
    15f8:	c5 f8 28 4c 24 20    	vmovaps 0x20(%rsp),%xmm1
    15fe:	c5 f8 28 54 24 10    	vmovaps 0x10(%rsp),%xmm2
    1604:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
    1609:	29 d8                	sub    %ebx,%eax
    160b:	c5 f9 6e d8          	vmovd  %eax,%xmm3
    160f:	c5 ea 59 e3          	vmulss %xmm3,%xmm2,%xmm4
    1613:	c5 da 59 15 00 00 00 	vmulss 0x0(%rip),%xmm4,%xmm2        # 161b <func_agm_264(float, float)+0xfb>
    161a:	00 
    161b:	c5 f2 59 db          	vmulss %xmm3,%xmm1,%xmm3
    161f:	c5 e2 59 0d 00 00 00 	vmulss 0x0(%rip),%xmm3,%xmm1        # 1627 <func_agm_264(float, float)+0x107>
    1626:	00 
    1627:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
    162b:	c5 f0 54 c0          	vandps %xmm0,%xmm1,%xmm0
    162f:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1637 <func_agm_264(float, float)+0x117>
    1636:	00 
    1637:	0f 86 a1 00 00 00    	jbe    16de <func_agm_264(float, float)+0x1be>
    163d:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    1642:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 164a <func_agm_264(float, float)+0x12a>
    1649:	00 
    164a:	c5 f8 28 35 00 00 00 	vmovaps 0x0(%rip),%xmm6        # 1652 <func_agm_264(float, float)+0x132>
    1651:	00 
    1652:	c5 7a 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm9        # 165a <func_agm_264(float, float)+0x13a>
    1659:	00 
    165a:	eb 71                	jmp    16cd <func_agm_264(float, float)+0x1ad>
    165c:	0f 1f 40 00          	nopl   0x0(%rax)
    1660:	c5 fa 11 64 24 0c    	vmovss %xmm4,0xc(%rsp)
    1666:	c5 fa 11 5c 24 08    	vmovss %xmm3,0x8(%rsp)
    166c:	e8 00 00 00 00       	call   1671 <func_agm_264(float, float)+0x151>
    1671:	c5 7a 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm9        # 1679 <func_agm_264(float, float)+0x159>
    1678:	00 
    1679:	c5 f8 28 35 00 00 00 	vmovaps 0x0(%rip),%xmm6        # 1681 <func_agm_264(float, float)+0x161>
    1680:	00 
    1681:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 1689 <func_agm_264(float, float)+0x169>
    1688:	00 
    1689:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    168e:	c5 fa 10 5c 24 08    	vmovss 0x8(%rsp),%xmm3
    1694:	c5 fa 10 64 24 0c    	vmovss 0xc(%rsp),%xmm4
    169a:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 16a2 <func_agm_264(float, float)+0x182>
    16a1:	00 
    16a2:	c5 da 59 cd          	vmulss %xmm5,%xmm4,%xmm1
    16a6:	c5 e2 59 d5          	vmulss %xmm5,%xmm3,%xmm2
    16aa:	c5 e2 59 dd          	vmulss %xmm5,%xmm3,%xmm3
    16ae:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
    16b2:	c5 da 59 d7          	vmulss %xmm7,%xmm4,%xmm2
    16b6:	c5 e2 58 d2          	vaddss %xmm2,%xmm3,%xmm2
    16ba:	c5 e8 54 d6          	vandps %xmm6,%xmm2,%xmm2
    16be:	c4 c1 78 2e d1       	vucomiss %xmm9,%xmm2
    16c3:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
    16c7:	c5 f8 28 e0          	vmovaps %xmm0,%xmm4
    16cb:	76 15                	jbe    16e2 <func_agm_264(float, float)+0x1c2>
    16cd:	c5 e2 59 c4          	vmulss %xmm4,%xmm3,%xmm0
    16d1:	c4 c1 78 2e c0       	vucomiss %xmm8,%xmm0
    16d6:	72 88                	jb     1660 <func_agm_264(float, float)+0x140>
    16d8:	c5 fa 51 c0          	vsqrtss %xmm0,%xmm0,%xmm0
    16dc:	eb c4                	jmp    16a2 <func_agm_264(float, float)+0x182>
    16de:	c5 f8 28 c4          	vmovaps %xmm4,%xmm0
    16e2:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    16e6:	c5 f0 c2 4c 24 30 04 	vcmpneqps 0x30(%rsp),%xmm1,%xmm1
    16ed:	c4 e2 79 25 c9       	vpmovsxdq %xmm1,%xmm1
    16f2:	c5 f9 50 c1          	vmovmskpd %xmm1,%eax
    16f6:	3c 03                	cmp    $0x3,%al
    16f8:	74 11                	je     170b <func_agm_264(float, float)+0x1eb>
    16fa:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    16fe:	c5 f8 28 54 24 10    	vmovaps 0x10(%rsp),%xmm2
    1704:	45 84 f6             	test   %r14b,%r14b
    1707:	75 15                	jne    171e <func_agm_264(float, float)+0x1fe>
    1709:	eb 19                	jmp    1724 <func_agm_264(float, float)+0x204>
    170b:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 1713 <func_agm_264(float, float)+0x1f3>
    1712:	00 
    1713:	c5 f8 28 54 24 10    	vmovaps 0x10(%rsp),%xmm2
    1719:	45 84 f6             	test   %r14b,%r14b
    171c:	74 06                	je     1724 <func_agm_264(float, float)+0x204>
    171e:	c5 ea 58 4c 24 20    	vaddss 0x20(%rsp),%xmm2,%xmm1
    1724:	40 f6 c5 01          	test   $0x1,%bpl
    1728:	75 0e                	jne    1738 <func_agm_264(float, float)+0x218>
    172a:	81 c3 00 00 80 3f    	add    $0x3f800000,%ebx
    1730:	c5 f9 6e cb          	vmovd  %ebx,%xmm1
    1734:	c5 fa 59 c9          	vmulss %xmm1,%xmm0,%xmm1
    1738:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    173c:	48 83 c4 40          	add    $0x40,%rsp
    1740:	5b                   	pop    %rbx
    1741:	41 5e                	pop    %r14
    1743:	5d                   	pop    %rbp
    1744:	c3                   	ret    
    1745:	31 db                	xor    %ebx,%ebx
    1747:	e9 26 fe ff ff       	jmp    1572 <func_agm_264(float, float)+0x52>
    174c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001750 <func_agm_265(double, double)>:
    1750:	55                   	push   %rbp
    1751:	41 57                	push   %r15
    1753:	41 56                	push   %r14
    1755:	53                   	push   %rbx
    1756:	48 83 ec 58          	sub    $0x58,%rsp
    175a:	c5 fb 10 35 00 00 00 	vmovsd 0x0(%rip),%xmm6        # 1762 <func_agm_265(double, double)+0x12>
    1761:	00 
    1762:	c5 f3 59 de          	vmulsd %xmm6,%xmm1,%xmm3
    1766:	c5 f9 29 44 24 10    	vmovapd %xmm0,0x10(%rsp)
    176c:	c5 fb 59 d6          	vmulsd %xmm6,%xmm0,%xmm2
    1770:	c5 eb 58 c3          	vaddsd %xmm3,%xmm2,%xmm0
    1774:	c5 fb 5c d0          	vsubsd %xmm0,%xmm0,%xmm2
    1778:	c5 f9 2e d2          	vucomisd %xmm2,%xmm2
    177c:	0f 8a 09 02 00 00    	jp     198b <func_agm_265(double, double)+0x23b>
    1782:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    1787:	48 bb 00 00 00 00 00 	movabs $0x7ff0000000000000,%rbx
    178e:	00 f0 7f 
    1791:	48 21 c3             	and    %rax,%rbx
    1794:	48 b8 00 00 00 00 00 	movabs $0xc010000000000000,%rax
    179b:	00 10 c0 
    179e:	48 01 d8             	add    %rbx,%rax
    17a1:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    17a5:	c5 f9 2e c2          	vucomisd %xmm2,%xmm0
    17a9:	48 0f 45 d8          	cmovne %rax,%rbx
    17ad:	48 0f 4a d8          	cmovp  %rax,%rbx
    17b1:	49 be 00 00 00 00 00 	movabs $0x3ff0000000000000,%r14
    17b8:	00 f0 3f 
    17bb:	c5 f9 28 6c 24 10    	vmovapd 0x10(%rsp),%xmm5
    17c1:	c5 d1 14 e1          	vunpcklpd %xmm1,%xmm5,%xmm4
    17c5:	c5 f9 28 05 00 00 00 	vmovapd 0x0(%rip),%xmm0        # 17cd <func_agm_265(double, double)+0x7d>
    17cc:	00 
    17cd:	c5 d9 54 d0          	vandpd %xmm0,%xmm4,%xmm2
    17d1:	c5 e9 c2 15 00 00 00 	vcmpeqpd 0x0(%rip),%xmm2,%xmm2        # 17da <func_agm_265(double, double)+0x8a>
    17d8:	00 00 
    17da:	c5 f9 50 c2          	vmovmskpd %xmm2,%eax
    17de:	85 c0                	test   %eax,%eax
    17e0:	41 0f 95 c7          	setne  %r15b
    17e4:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    17e8:	c5 d9 c2 da 04       	vcmpneqpd %xmm2,%xmm4,%xmm3
    17ed:	c5 d9 54 15 00 00 00 	vandpd 0x0(%rip),%xmm4,%xmm2        # 17f5 <func_agm_265(double, double)+0xa5>
    17f4:	00 
    17f5:	c5 e9 56 15 00 00 00 	vorpd  0x0(%rip),%xmm2,%xmm2        # 17fd <func_agm_265(double, double)+0xad>
    17fc:	00 
    17fd:	c5 f9 29 64 24 30    	vmovapd %xmm4,0x30(%rsp)
    1803:	c4 e3 59 4b da 30    	vblendvpd %xmm3,%xmm2,%xmm4,%xmm3
    1809:	c4 e3 79 05 d3 01    	vpermilpd $0x1,%xmm3,%xmm2
    180f:	c5 e1 59 d2          	vmulpd %xmm2,%xmm3,%xmm2
    1813:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    1817:	c5 e9 c2 d4 02       	vcmplepd %xmm4,%xmm2,%xmm2
    181c:	c5 f9 29 0c 24       	vmovapd %xmm1,(%rsp)
    1821:	c5 f1 c2 dd 03       	vcmpunordpd %xmm5,%xmm1,%xmm3
    1826:	c5 e1 56 d2          	vorpd  %xmm2,%xmm3,%xmm2
    182a:	c5 f9 7e d5          	vmovd  %xmm2,%ebp
    182e:	44 08 fd             	or     %r15b,%bpl
    1831:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1835:	40 f6 c5 01          	test   $0x1,%bpl
    1839:	75 0b                	jne    1846 <func_agm_265(double, double)+0xf6>
    183b:	c5 f9 28 64 24 10    	vmovapd 0x10(%rsp),%xmm4
    1841:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    1846:	4c 89 f0             	mov    %r14,%rax
    1849:	48 29 d8             	sub    %rbx,%rax
    184c:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
    1851:	c5 eb 59 eb          	vmulsd %xmm3,%xmm2,%xmm5
    1855:	c5 d3 59 15 00 00 00 	vmulsd 0x0(%rip),%xmm5,%xmm2        # 185d <func_agm_265(double, double)+0x10d>
    185c:	00 
    185d:	c5 db 59 db          	vmulsd %xmm3,%xmm4,%xmm3
    1861:	c5 e3 59 0d 00 00 00 	vmulsd 0x0(%rip),%xmm3,%xmm1        # 1869 <func_agm_265(double, double)+0x119>
    1868:	00 
    1869:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    186d:	c5 f1 54 c0          	vandpd %xmm0,%xmm1,%xmm0
    1871:	c5 f9 2e 05 00 00 00 	vucomisd 0x0(%rip),%xmm0        # 1879 <func_agm_265(double, double)+0x129>
    1878:	00 
    1879:	0f 86 ac 00 00 00    	jbe    192b <func_agm_265(double, double)+0x1db>
    187f:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    1886:	ff ff 7f 
    1889:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    188e:	c5 fb 10 3d 00 00 00 	vmovsd 0x0(%rip),%xmm7        # 1896 <func_agm_265(double, double)+0x146>
    1895:	00 
    1896:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
    189b:	c5 fb 10 25 00 00 00 	vmovsd 0x0(%rip),%xmm4        # 18a3 <func_agm_265(double, double)+0x153>
    18a2:	00 
    18a3:	c5 79 7f 4c 24 40    	vmovdqa %xmm9,0x40(%rsp)
    18a9:	eb 6f                	jmp    191a <func_agm_265(double, double)+0x1ca>
    18ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18b0:	c5 fb 11 6c 24 28    	vmovsd %xmm5,0x28(%rsp)
    18b6:	c5 fb 11 5c 24 20    	vmovsd %xmm3,0x20(%rsp)
    18bc:	e8 00 00 00 00       	call   18c1 <func_agm_265(double, double)+0x171>
    18c1:	c5 fb 10 25 00 00 00 	vmovsd 0x0(%rip),%xmm4        # 18c9 <func_agm_265(double, double)+0x179>
    18c8:	00 
    18c9:	c5 79 6f 4c 24 40    	vmovdqa 0x40(%rsp),%xmm9
    18cf:	c5 fb 10 3d 00 00 00 	vmovsd 0x0(%rip),%xmm7        # 18d7 <func_agm_265(double, double)+0x187>
    18d6:	00 
    18d7:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    18dc:	c5 fb 10 5c 24 20    	vmovsd 0x20(%rsp),%xmm3
    18e2:	c5 fb 10 6c 24 28    	vmovsd 0x28(%rsp),%xmm5
    18e8:	c5 fb 10 35 00 00 00 	vmovsd 0x0(%rip),%xmm6        # 18f0 <func_agm_265(double, double)+0x1a0>
    18ef:	00 
    18f0:	c5 d3 59 ce          	vmulsd %xmm6,%xmm5,%xmm1
    18f4:	c5 e3 59 d6          	vmulsd %xmm6,%xmm3,%xmm2
    18f8:	c5 e3 59 de          	vmulsd %xmm6,%xmm3,%xmm3
    18fc:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
    1900:	c5 d3 59 d7          	vmulsd %xmm7,%xmm5,%xmm2
    1904:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
    1908:	c5 b1 54 d2          	vandpd %xmm2,%xmm9,%xmm2
    190c:	c5 f9 2e d4          	vucomisd %xmm4,%xmm2
    1910:	c5 f9 28 d9          	vmovapd %xmm1,%xmm3
    1914:	c5 f9 28 e8          	vmovapd %xmm0,%xmm5
    1918:	76 15                	jbe    192f <func_agm_265(double, double)+0x1df>
    191a:	c5 e3 59 c5          	vmulsd %xmm5,%xmm3,%xmm0
    191e:	c4 c1 79 2e c0       	vucomisd %xmm8,%xmm0
    1923:	72 8b                	jb     18b0 <func_agm_265(double, double)+0x160>
    1925:	c5 fb 51 c0          	vsqrtsd %xmm0,%xmm0,%xmm0
    1929:	eb c5                	jmp    18f0 <func_agm_265(double, double)+0x1a0>
    192b:	c5 f9 28 c5          	vmovapd %xmm5,%xmm0
    192f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1933:	c5 f1 c2 4c 24 30 04 	vcmpneqpd 0x30(%rsp),%xmm1,%xmm1
    193a:	c5 f9 50 c1          	vmovmskpd %xmm1,%eax
    193e:	3c 03                	cmp    $0x3,%al
    1940:	74 10                	je     1952 <func_agm_265(double, double)+0x202>
    1942:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1946:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    194b:	45 84 ff             	test   %r15b,%r15b
    194e:	75 14                	jne    1964 <func_agm_265(double, double)+0x214>
    1950:	eb 18                	jmp    196a <func_agm_265(double, double)+0x21a>
    1952:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 195a <func_agm_265(double, double)+0x20a>
    1959:	00 
    195a:	c5 f9 28 14 24       	vmovapd (%rsp),%xmm2
    195f:	45 84 ff             	test   %r15b,%r15b
    1962:	74 06                	je     196a <func_agm_265(double, double)+0x21a>
    1964:	c5 eb 58 4c 24 10    	vaddsd 0x10(%rsp),%xmm2,%xmm1
    196a:	40 f6 c5 01          	test   $0x1,%bpl
    196e:	75 0c                	jne    197c <func_agm_265(double, double)+0x22c>
    1970:	4c 01 f3             	add    %r14,%rbx
    1973:	c4 e1 f9 6e cb       	vmovq  %rbx,%xmm1
    1978:	c5 fb 59 c9          	vmulsd %xmm1,%xmm0,%xmm1
    197c:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
    1980:	48 83 c4 58          	add    $0x58,%rsp
    1984:	5b                   	pop    %rbx
    1985:	41 5e                	pop    %r14
    1987:	41 5f                	pop    %r15
    1989:	5d                   	pop    %rbp
    198a:	c3                   	ret    
    198b:	31 db                	xor    %ebx,%ebx
    198d:	e9 1f fe ff ff       	jmp    17b1 <func_agm_265(double, double)+0x61>
    1992:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1999:	00 00 00 
    199c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000019a0 <func_mul_266(float, float)>:
    19a0:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
    19a4:	c3                   	ret    
    19a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19ac:	00 00 00 
    19af:	90                   	nop

00000000000019b0 <func_mul_267(double, double)>:
    19b0:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    19b4:	c3                   	ret    
    19b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19bc:	00 00 00 
    19bf:	90                   	nop

00000000000019c0 <func_mul_268(long, long)>:
    19c0:	48 89 f8             	mov    %rdi,%rax
    19c3:	48 0f af c6          	imul   %rsi,%rax
    19c7:	c3                   	ret    
    19c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19cf:	00 

00000000000019d0 <func_mul_269(int, int)>:
    19d0:	89 f8                	mov    %edi,%eax
    19d2:	0f af c6             	imul   %esi,%eax
    19d5:	c3                   	ret    
    19d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19dd:	00 00 00 

00000000000019e0 <func_mul_270(short, short)>:
    19e0:	89 f8                	mov    %edi,%eax
    19e2:	0f af c6             	imul   %esi,%eax
    19e5:	c3                   	ret    
    19e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19ed:	00 00 00 

00000000000019f0 <func_mul_271(signed char, signed char)>:
    19f0:	89 f0                	mov    %esi,%eax
    19f2:	40 f6 e7             	mul    %dil
    19f5:	c3                   	ret    
    19f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19fd:	00 00 00 

0000000000001a00 <func_mul_272(unsigned long, unsigned long)>:
    1a00:	48 89 f8             	mov    %rdi,%rax
    1a03:	48 0f af c6          	imul   %rsi,%rax
    1a07:	c3                   	ret    
    1a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a0f:	00 

0000000000001a10 <func_mul_273(unsigned int, unsigned int)>:
    1a10:	89 f8                	mov    %edi,%eax
    1a12:	0f af c6             	imul   %esi,%eax
    1a15:	c3                   	ret    
    1a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a1d:	00 00 00 

0000000000001a20 <func_mul_274(unsigned short, unsigned short)>:
    1a20:	89 f8                	mov    %edi,%eax
    1a22:	0f af c6             	imul   %esi,%eax
    1a25:	c3                   	ret    
    1a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a2d:	00 00 00 

0000000000001a30 <func_mul_275(unsigned char, unsigned char)>:
    1a30:	89 f0                	mov    %esi,%eax
    1a32:	40 f6 e7             	mul    %dil
    1a35:	c3                   	ret    
    1a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a3d:	00 00 00 

0000000000001a40 <func_mul_276(unsigned long, unsigned long)>:
    1a40:	48 89 f8             	mov    %rdi,%rax
    1a43:	48 0f af c6          	imul   %rsi,%rax
    1a47:	c3                   	ret    
    1a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a4f:	00 

0000000000001a50 <func_mul_277(unsigned int, unsigned int)>:
    1a50:	89 f8                	mov    %edi,%eax
    1a52:	0f af c6             	imul   %esi,%eax
    1a55:	c3                   	ret    
    1a56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a5d:	00 00 00 

0000000000001a60 <func_mul_278(unsigned short, unsigned short)>:
    1a60:	89 f8                	mov    %edi,%eax
    1a62:	0f af c6             	imul   %esi,%eax
    1a65:	c3                   	ret    
    1a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a6d:	00 00 00 

0000000000001a70 <func_mul_279(unsigned char, unsigned char)>:
    1a70:	89 f0                	mov    %esi,%eax
    1a72:	40 f6 e7             	mul    %dil
    1a75:	c3                   	ret    
    1a76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a7d:	00 00 00 

0000000000001a80 <func_bit_ornot_280(float, float)>:
    1a80:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 1a88 <func_bit_ornot_280(float, float)+0x8>
    1a87:	00 
    1a88:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
    1a8c:	c5 f8 56 c1          	vorps  %xmm1,%xmm0,%xmm0
    1a90:	c3                   	ret    
    1a91:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a98:	00 00 00 
    1a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001aa0 <func_bit_ornot_281(double, double)>:
    1aa0:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 1aa8 <func_bit_ornot_281(double, double)+0x8>
    1aa7:	00 
    1aa8:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
    1aac:	c5 f8 56 c1          	vorps  %xmm1,%xmm0,%xmm0
    1ab0:	c3                   	ret    
    1ab1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ab8:	00 00 00 
    1abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001ac0 <func_bit_ornot_282(long, long)>:
    1ac0:	48 89 f0             	mov    %rsi,%rax
    1ac3:	48 f7 d0             	not    %rax
    1ac6:	48 09 f8             	or     %rdi,%rax
    1ac9:	c3                   	ret    
    1aca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ad0 <func_bit_ornot_283(int, int)>:
    1ad0:	89 f0                	mov    %esi,%eax
    1ad2:	f7 d0                	not    %eax
    1ad4:	09 f8                	or     %edi,%eax
    1ad6:	c3                   	ret    
    1ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1ade:	00 00 

0000000000001ae0 <func_bit_ornot_284(short, short)>:
    1ae0:	89 f0                	mov    %esi,%eax
    1ae2:	f7 d0                	not    %eax
    1ae4:	09 f8                	or     %edi,%eax
    1ae6:	c3                   	ret    
    1ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1aee:	00 00 

0000000000001af0 <func_bit_ornot_285(signed char, signed char)>:
    1af0:	89 f0                	mov    %esi,%eax
    1af2:	f6 d0                	not    %al
    1af4:	40 08 f8             	or     %dil,%al
    1af7:	c3                   	ret    
    1af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1aff:	00 

0000000000001b00 <func_bit_ornot_286(unsigned long, unsigned long)>:
    1b00:	48 89 f0             	mov    %rsi,%rax
    1b03:	48 f7 d0             	not    %rax
    1b06:	48 09 f8             	or     %rdi,%rax
    1b09:	c3                   	ret    
    1b0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001b10 <func_bit_ornot_287(unsigned int, unsigned int)>:
    1b10:	89 f0                	mov    %esi,%eax
    1b12:	f7 d0                	not    %eax
    1b14:	09 f8                	or     %edi,%eax
    1b16:	c3                   	ret    
    1b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b1e:	00 00 

0000000000001b20 <func_bit_ornot_288(unsigned short, unsigned short)>:
    1b20:	89 f0                	mov    %esi,%eax
    1b22:	f7 d0                	not    %eax
    1b24:	09 f8                	or     %edi,%eax
    1b26:	c3                   	ret    
    1b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b2e:	00 00 

0000000000001b30 <func_bit_ornot_289(unsigned char, unsigned char)>:
    1b30:	89 f0                	mov    %esi,%eax
    1b32:	f6 d0                	not    %al
    1b34:	40 08 f8             	or     %dil,%al
    1b37:	c3                   	ret    
    1b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b3f:	00 

0000000000001b40 <func_bit_ornot_290(unsigned long, unsigned long)>:
    1b40:	48 89 f0             	mov    %rsi,%rax
    1b43:	48 f7 d0             	not    %rax
    1b46:	48 09 f8             	or     %rdi,%rax
    1b49:	c3                   	ret    
    1b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001b50 <func_bit_ornot_291(unsigned int, unsigned int)>:
    1b50:	89 f0                	mov    %esi,%eax
    1b52:	f7 d0                	not    %eax
    1b54:	09 f8                	or     %edi,%eax
    1b56:	c3                   	ret    
    1b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b5e:	00 00 

0000000000001b60 <func_bit_ornot_292(unsigned short, unsigned short)>:
    1b60:	89 f0                	mov    %esi,%eax
    1b62:	f7 d0                	not    %eax
    1b64:	09 f8                	or     %edi,%eax
    1b66:	c3                   	ret    
    1b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b6e:	00 00 

0000000000001b70 <func_bit_ornot_293(unsigned char, unsigned char)>:
    1b70:	89 f0                	mov    %esi,%eax
    1b72:	f6 d0                	not    %al
    1b74:	40 08 f8             	or     %dil,%al
    1b77:	c3                   	ret    
    1b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b7f:	00 

0000000000001b80 <func_dot_294(float, float)>:
    1b80:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
    1b84:	c3                   	ret    
    1b85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b8c:	00 00 00 
    1b8f:	90                   	nop

0000000000001b90 <func_dot_295(double, double)>:
    1b90:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    1b94:	c3                   	ret    
    1b95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b9c:	00 00 00 
    1b9f:	90                   	nop

0000000000001ba0 <func_dot_296(long, long)>:
    1ba0:	48 89 f8             	mov    %rdi,%rax
    1ba3:	48 0f af c6          	imul   %rsi,%rax
    1ba7:	c3                   	ret    
    1ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1baf:	00 

0000000000001bb0 <func_dot_297(int, int)>:
    1bb0:	89 f8                	mov    %edi,%eax
    1bb2:	0f af c6             	imul   %esi,%eax
    1bb5:	c3                   	ret    
    1bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bbd:	00 00 00 

0000000000001bc0 <func_dot_298(short, short)>:
    1bc0:	89 f8                	mov    %edi,%eax
    1bc2:	0f af c6             	imul   %esi,%eax
    1bc5:	c3                   	ret    
    1bc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bcd:	00 00 00 

0000000000001bd0 <func_dot_299(signed char, signed char)>:
    1bd0:	89 f0                	mov    %esi,%eax
    1bd2:	40 f6 e7             	mul    %dil
    1bd5:	c3                   	ret    
    1bd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bdd:	00 00 00 

0000000000001be0 <func_dot_300(unsigned long, unsigned long)>:
    1be0:	48 89 f8             	mov    %rdi,%rax
    1be3:	48 0f af c6          	imul   %rsi,%rax
    1be7:	c3                   	ret    
    1be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bef:	00 

0000000000001bf0 <func_dot_301(unsigned int, unsigned int)>:
    1bf0:	89 f8                	mov    %edi,%eax
    1bf2:	0f af c6             	imul   %esi,%eax
    1bf5:	c3                   	ret    
    1bf6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1bfd:	00 00 00 

0000000000001c00 <func_dot_302(unsigned short, unsigned short)>:
    1c00:	89 f8                	mov    %edi,%eax
    1c02:	0f af c6             	imul   %esi,%eax
    1c05:	c3                   	ret    
    1c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c0d:	00 00 00 

0000000000001c10 <func_dot_303(unsigned char, unsigned char)>:
    1c10:	89 f0                	mov    %esi,%eax
    1c12:	40 f6 e7             	mul    %dil
    1c15:	c3                   	ret    
    1c16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c1d:	00 00 00 

0000000000001c20 <func_dot_304(unsigned long, unsigned long)>:
    1c20:	48 89 f8             	mov    %rdi,%rax
    1c23:	48 0f af c6          	imul   %rsi,%rax
    1c27:	c3                   	ret    
    1c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c2f:	00 

0000000000001c30 <func_dot_305(unsigned int, unsigned int)>:
    1c30:	89 f8                	mov    %edi,%eax
    1c32:	0f af c6             	imul   %esi,%eax
    1c35:	c3                   	ret    
    1c36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c3d:	00 00 00 

0000000000001c40 <func_dot_306(unsigned short, unsigned short)>:
    1c40:	89 f8                	mov    %edi,%eax
    1c42:	0f af c6             	imul   %esi,%eax
    1c45:	c3                   	ret    
    1c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c4d:	00 00 00 

0000000000001c50 <func_dot_307(unsigned char, unsigned char)>:
    1c50:	89 f0                	mov    %esi,%eax
    1c52:	40 f6 e7             	mul    %dil
    1c55:	c3                   	ret    
    1c56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c5d:	00 00 00 

0000000000001c60 <func_min_308(float, float)>:
    1c60:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
    1c64:	c3                   	ret    
    1c65:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c6c:	00 00 00 
    1c6f:	90                   	nop

0000000000001c70 <func_min_309(double, double)>:
    1c70:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
    1c74:	c3                   	ret    
    1c75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c7c:	00 00 00 
    1c7f:	90                   	nop

0000000000001c80 <func_min_310(long, long)>:
    1c80:	48 89 f0             	mov    %rsi,%rax
    1c83:	48 39 fe             	cmp    %rdi,%rsi
    1c86:	48 0f 4f c7          	cmovg  %rdi,%rax
    1c8a:	c3                   	ret    
    1c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001c90 <func_min_311(int, int)>:
    1c90:	89 f0                	mov    %esi,%eax
    1c92:	39 fe                	cmp    %edi,%esi
    1c94:	0f 4f c7             	cmovg  %edi,%eax
    1c97:	c3                   	ret    
    1c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c9f:	00 

0000000000001ca0 <func_min_312(short, short)>:
    1ca0:	89 f0                	mov    %esi,%eax
    1ca2:	66 39 f8             	cmp    %di,%ax
    1ca5:	0f 4f c7             	cmovg  %edi,%eax
    1ca8:	c3                   	ret    
    1ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001cb0 <func_min_313(signed char, signed char)>:
    1cb0:	89 f0                	mov    %esi,%eax
    1cb2:	40 38 f8             	cmp    %dil,%al
    1cb5:	0f 4f c7             	cmovg  %edi,%eax
    1cb8:	c3                   	ret    
    1cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001cc0 <func_min_314(unsigned long, unsigned long)>:
    1cc0:	48 89 f0             	mov    %rsi,%rax
    1cc3:	48 39 fe             	cmp    %rdi,%rsi
    1cc6:	48 0f 47 c7          	cmova  %rdi,%rax
    1cca:	c3                   	ret    
    1ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001cd0 <func_min_315(unsigned int, unsigned int)>:
    1cd0:	89 f0                	mov    %esi,%eax
    1cd2:	39 fe                	cmp    %edi,%esi
    1cd4:	0f 47 c7             	cmova  %edi,%eax
    1cd7:	c3                   	ret    
    1cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1cdf:	00 

0000000000001ce0 <func_min_316(unsigned short, unsigned short)>:
    1ce0:	89 f0                	mov    %esi,%eax
    1ce2:	66 39 f8             	cmp    %di,%ax
    1ce5:	0f 47 c7             	cmova  %edi,%eax
    1ce8:	c3                   	ret    
    1ce9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001cf0 <func_min_317(unsigned char, unsigned char)>:
    1cf0:	89 f0                	mov    %esi,%eax
    1cf2:	40 38 f8             	cmp    %dil,%al
    1cf5:	0f 47 c7             	cmova  %edi,%eax
    1cf8:	c3                   	ret    
    1cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d00 <func_min_318(unsigned long, unsigned long)>:
    1d00:	48 89 f0             	mov    %rsi,%rax
    1d03:	48 39 fe             	cmp    %rdi,%rsi
    1d06:	48 0f 47 c7          	cmova  %rdi,%rax
    1d0a:	c3                   	ret    
    1d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001d10 <func_min_319(unsigned int, unsigned int)>:
    1d10:	89 f0                	mov    %esi,%eax
    1d12:	39 fe                	cmp    %edi,%esi
    1d14:	0f 47 c7             	cmova  %edi,%eax
    1d17:	c3                   	ret    
    1d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d1f:	00 

0000000000001d20 <func_min_320(unsigned short, unsigned short)>:
    1d20:	89 f0                	mov    %esi,%eax
    1d22:	66 39 f8             	cmp    %di,%ax
    1d25:	0f 47 c7             	cmova  %edi,%eax
    1d28:	c3                   	ret    
    1d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d30 <func_min_321(unsigned char, unsigned char)>:
    1d30:	89 f0                	mov    %esi,%eax
    1d32:	40 38 f8             	cmp    %dil,%al
    1d35:	0f 47 c7             	cmova  %edi,%eax
    1d38:	c3                   	ret    
    1d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001d40 <func_bit_reverse_322(int)>:
    1d40:	89 f8                	mov    %edi,%eax
    1d42:	25 55 55 55 d5       	and    $0xd5555555,%eax
    1d47:	d1 ef                	shr    %edi
    1d49:	81 e7 55 55 55 55    	and    $0x55555555,%edi
    1d4f:	8d 04 47             	lea    (%rdi,%rax,2),%eax
    1d52:	89 c1                	mov    %eax,%ecx
    1d54:	81 e1 33 33 33 f3    	and    $0xf3333333,%ecx
    1d5a:	c1 e8 02             	shr    $0x2,%eax
    1d5d:	25 33 33 33 33       	and    $0x33333333,%eax
    1d62:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    1d65:	89 c1                	mov    %eax,%ecx
    1d67:	c1 e1 04             	shl    $0x4,%ecx
    1d6a:	81 e1 f0 f0 f0 f0    	and    $0xf0f0f0f0,%ecx
    1d70:	c1 e8 04             	shr    $0x4,%eax
    1d73:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
    1d78:	09 c8                	or     %ecx,%eax
    1d7a:	0f c8                	bswap  %eax
    1d7c:	c1 c8 10             	ror    $0x10,%eax
    1d7f:	89 c1                	mov    %eax,%ecx
    1d81:	c1 e1 10             	shl    $0x10,%ecx
    1d84:	c1 f8 10             	sar    $0x10,%eax
    1d87:	09 c8                	or     %ecx,%eax
    1d89:	c3                   	ret    
