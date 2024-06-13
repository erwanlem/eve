
test/asm/tmp/tmp3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_ceil_0(float)>:
       0:	0f 28 15 00 00 00 00 	movaps 0x0(%rip),%xmm2        # 7 <func_ceil_0(float)+0x7>
       7:	0f 28 c8             	movaps %xmm0,%xmm1
       a:	0f 57 ca             	xorps  %xmm2,%xmm1
       d:	f3 0f 5b d9          	cvttps2dq %xmm1,%xmm3
      11:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
      14:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 1b <func_ceil_0(float)+0x1b>
      1b:	f3 0f c2 05 00 00 00 	cmpnless 0x0(%rip),%xmm0        # 24 <func_ceil_0(float)+0x24>
      22:	00 06 
      24:	0f 28 e0             	movaps %xmm0,%xmm4
      27:	0f 54 e1             	andps  %xmm1,%xmm4
      2a:	0f 55 c3             	andnps %xmm3,%xmm0
      2d:	0f 56 c4             	orps   %xmm4,%xmm0
      30:	f3 0f c2 c8 05       	cmpnltss %xmm0,%xmm1
      35:	0f 28 d8             	movaps %xmm0,%xmm3
      38:	f3 0f 58 1d 00 00 00 	addss  0x0(%rip),%xmm3        # 40 <func_ceil_0(float)+0x40>
      3f:	00 
      40:	0f 28 e1             	movaps %xmm1,%xmm4
      43:	0f 54 e0             	andps  %xmm0,%xmm4
      46:	0f 55 cb             	andnps %xmm3,%xmm1
      49:	0f 56 cc             	orps   %xmm4,%xmm1
      4c:	0f 57 ca             	xorps  %xmm2,%xmm1
      4f:	0f 28 c1             	movaps %xmm1,%xmm0
      52:	c3                   	ret    
      53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      5a:	00 00 00 
      5d:	0f 1f 00             	nopl   (%rax)

0000000000000060 <func_ceil_1(char)>:
      60:	89 f8                	mov    %edi,%eax
      62:	c3                   	ret    
      63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      6a:	00 00 00 
      6d:	0f 1f 00             	nopl   (%rax)

0000000000000070 <func_ceil_2(double)>:
      70:	66 0f 28 15 00 00 00 	movapd 0x0(%rip),%xmm2        # 78 <func_ceil_2(double)+0x8>
      77:	00 
      78:	66 0f 28 c8          	movapd %xmm0,%xmm1
      7c:	66 0f 57 ca          	xorpd  %xmm2,%xmm1
      80:	f2 48 0f 2c c1       	cvttsd2si %xmm1,%rax
      85:	f2 48 0f 2a d8       	cvtsi2sd %rax,%xmm3
      8a:	66 0f 54 05 00 00 00 	andpd  0x0(%rip),%xmm0        # 92 <func_ceil_2(double)+0x22>
      91:	00 
      92:	f2 0f c2 05 00 00 00 	cmpnlesd 0x0(%rip),%xmm0        # 9b <func_ceil_2(double)+0x2b>
      99:	00 06 
      9b:	66 0f 28 e0          	movapd %xmm0,%xmm4
      9f:	66 0f 54 e1          	andpd  %xmm1,%xmm4
      a3:	66 0f 55 c3          	andnpd %xmm3,%xmm0
      a7:	66 0f 56 c4          	orpd   %xmm4,%xmm0
      ab:	f2 0f c2 c8 05       	cmpnltsd %xmm0,%xmm1
      b0:	66 0f 28 d8          	movapd %xmm0,%xmm3
      b4:	f2 0f 58 1d 00 00 00 	addsd  0x0(%rip),%xmm3        # bc <func_ceil_2(double)+0x4c>
      bb:	00 
      bc:	66 0f 28 e1          	movapd %xmm1,%xmm4
      c0:	66 0f 54 e0          	andpd  %xmm0,%xmm4
      c4:	66 0f 55 cb          	andnpd %xmm3,%xmm1
      c8:	66 0f 56 cc          	orpd   %xmm4,%xmm1
      cc:	66 0f 57 ca          	xorpd  %xmm2,%xmm1
      d0:	66 0f 28 c1          	movapd %xmm1,%xmm0
      d4:	c3                   	ret    
      d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      dc:	00 00 00 
      df:	90                   	nop

00000000000000e0 <func_ceil_3(int)>:
      e0:	89 f8                	mov    %edi,%eax
      e2:	c3                   	ret    
      e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      ea:	00 00 00 
      ed:	0f 1f 00             	nopl   (%rax)

00000000000000f0 <func_absmax_4(float, float)>:
      f0:	f3 0f 5f c8          	maxss  %xmm0,%xmm1
      f4:	0f 54 0d 00 00 00 00 	andps  0x0(%rip),%xmm1        # fb <func_absmax_4(float, float)+0xb>
      fb:	0f 28 c1             	movaps %xmm1,%xmm0
      fe:	c3                   	ret    
      ff:	90                   	nop

0000000000000100 <func_absmax_5(double, double)>:
     100:	f2 0f 5f c8          	maxsd  %xmm0,%xmm1
     104:	66 0f 54 0d 00 00 00 	andpd  0x0(%rip),%xmm1        # 10c <func_absmax_5(double, double)+0xc>
     10b:	00 
     10c:	66 0f 28 c1          	movapd %xmm1,%xmm0
     110:	c3                   	ret    
     111:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     118:	00 00 00 
     11b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000120 <func_absmax_6(long, long)>:
     120:	48 39 fe             	cmp    %rdi,%rsi
     123:	48 0f 4f fe          	cmovg  %rsi,%rdi
     127:	48 89 f8             	mov    %rdi,%rax
     12a:	48 f7 d8             	neg    %rax
     12d:	48 0f 48 c7          	cmovs  %rdi,%rax
     131:	c3                   	ret    
     132:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     139:	00 00 00 
     13c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000140 <func_absmax_7(int, int)>:
     140:	39 fe                	cmp    %edi,%esi
     142:	0f 4f fe             	cmovg  %esi,%edi
     145:	89 f8                	mov    %edi,%eax
     147:	f7 d8                	neg    %eax
     149:	0f 48 c7             	cmovs  %edi,%eax
     14c:	c3                   	ret    
     14d:	0f 1f 00             	nopl   (%rax)

0000000000000150 <func_absmax_8(short, short)>:
     150:	66 39 fe             	cmp    %di,%si
     153:	0f 4f fe             	cmovg  %esi,%edi
     156:	89 f8                	mov    %edi,%eax
     158:	66 f7 d8             	neg    %ax
     15b:	66 0f 48 c7          	cmovs  %di,%ax
     15f:	c3                   	ret    

0000000000000160 <func_absmax_9(signed char, signed char)>:
     160:	40 38 fe             	cmp    %dil,%sil
     163:	0f 4f fe             	cmovg  %esi,%edi
     166:	89 f9                	mov    %edi,%ecx
     168:	c0 f9 07             	sar    $0x7,%cl
     16b:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     16e:	30 c8                	xor    %cl,%al
     170:	c3                   	ret    
     171:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     178:	00 00 00 
     17b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000180 <func_absmax_10(unsigned long, unsigned long)>:
     180:	48 89 f8             	mov    %rdi,%rax
     183:	48 39 fe             	cmp    %rdi,%rsi
     186:	48 0f 47 c6          	cmova  %rsi,%rax
     18a:	c3                   	ret    
     18b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000190 <func_absmax_11(unsigned int, unsigned int)>:
     190:	89 f8                	mov    %edi,%eax
     192:	39 fe                	cmp    %edi,%esi
     194:	0f 47 c6             	cmova  %esi,%eax
     197:	c3                   	ret    
     198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     19f:	00 

00000000000001a0 <func_absmax_12(unsigned short, unsigned short)>:
     1a0:	89 f8                	mov    %edi,%eax
     1a2:	66 39 c6             	cmp    %ax,%si
     1a5:	0f 47 c6             	cmova  %esi,%eax
     1a8:	c3                   	ret    
     1a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001b0 <func_absmax_13(unsigned char, unsigned char)>:
     1b0:	89 f8                	mov    %edi,%eax
     1b2:	40 38 c6             	cmp    %al,%sil
     1b5:	0f 47 c6             	cmova  %esi,%eax
     1b8:	c3                   	ret    
     1b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001c0 <func_absmax_14(unsigned long, unsigned long)>:
     1c0:	48 89 f8             	mov    %rdi,%rax
     1c3:	48 39 fe             	cmp    %rdi,%rsi
     1c6:	48 0f 47 c6          	cmova  %rsi,%rax
     1ca:	c3                   	ret    
     1cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000001d0 <func_absmax_15(unsigned int, unsigned int)>:
     1d0:	89 f8                	mov    %edi,%eax
     1d2:	39 fe                	cmp    %edi,%esi
     1d4:	0f 47 c6             	cmova  %esi,%eax
     1d7:	c3                   	ret    
     1d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     1df:	00 

00000000000001e0 <func_absmax_16(unsigned short, unsigned short)>:
     1e0:	89 f8                	mov    %edi,%eax
     1e2:	66 39 c6             	cmp    %ax,%si
     1e5:	0f 47 c6             	cmova  %esi,%eax
     1e8:	c3                   	ret    
     1e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000001f0 <func_absmax_17(unsigned char, unsigned char)>:
     1f0:	89 f8                	mov    %edi,%eax
     1f2:	40 38 c6             	cmp    %al,%sil
     1f5:	0f 47 c6             	cmova  %esi,%eax
     1f8:	c3                   	ret    
     1f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000200 <func_bit_xor_18(float, float)>:
     200:	0f 57 c1             	xorps  %xmm1,%xmm0
     203:	c3                   	ret    
     204:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     20b:	00 00 00 
     20e:	66 90                	xchg   %ax,%ax

0000000000000210 <func_bit_xor_19(double, double)>:
     210:	0f 57 c1             	xorps  %xmm1,%xmm0
     213:	c3                   	ret    
     214:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     21b:	00 00 00 
     21e:	66 90                	xchg   %ax,%ax

0000000000000220 <func_bit_xor_20(long, long)>:
     220:	48 89 f8             	mov    %rdi,%rax
     223:	48 31 f0             	xor    %rsi,%rax
     226:	c3                   	ret    
     227:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     22e:	00 00 

0000000000000230 <func_bit_xor_21(int, int)>:
     230:	89 f8                	mov    %edi,%eax
     232:	31 f0                	xor    %esi,%eax
     234:	c3                   	ret    
     235:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     23c:	00 00 00 
     23f:	90                   	nop

0000000000000240 <func_bit_xor_22(short, short)>:
     240:	89 f8                	mov    %edi,%eax
     242:	31 f0                	xor    %esi,%eax
     244:	c3                   	ret    
     245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     24c:	00 00 00 
     24f:	90                   	nop

0000000000000250 <func_bit_xor_23(signed char, signed char)>:
     250:	89 f8                	mov    %edi,%eax
     252:	31 f0                	xor    %esi,%eax
     254:	c3                   	ret    
     255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     25c:	00 00 00 
     25f:	90                   	nop

0000000000000260 <func_bit_xor_24(unsigned long, unsigned long)>:
     260:	48 89 f8             	mov    %rdi,%rax
     263:	48 31 f0             	xor    %rsi,%rax
     266:	c3                   	ret    
     267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     26e:	00 00 

0000000000000270 <func_bit_xor_25(unsigned int, unsigned int)>:
     270:	89 f8                	mov    %edi,%eax
     272:	31 f0                	xor    %esi,%eax
     274:	c3                   	ret    
     275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     27c:	00 00 00 
     27f:	90                   	nop

0000000000000280 <func_bit_xor_26(unsigned short, unsigned short)>:
     280:	89 f8                	mov    %edi,%eax
     282:	31 f0                	xor    %esi,%eax
     284:	c3                   	ret    
     285:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     28c:	00 00 00 
     28f:	90                   	nop

0000000000000290 <func_bit_xor_27(unsigned char, unsigned char)>:
     290:	89 f8                	mov    %edi,%eax
     292:	31 f0                	xor    %esi,%eax
     294:	c3                   	ret    
     295:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     29c:	00 00 00 
     29f:	90                   	nop

00000000000002a0 <func_bit_xor_28(unsigned long, unsigned long)>:
     2a0:	48 89 f8             	mov    %rdi,%rax
     2a3:	48 31 f0             	xor    %rsi,%rax
     2a6:	c3                   	ret    
     2a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     2ae:	00 00 

00000000000002b0 <func_bit_xor_29(unsigned int, unsigned int)>:
     2b0:	89 f8                	mov    %edi,%eax
     2b2:	31 f0                	xor    %esi,%eax
     2b4:	c3                   	ret    
     2b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     2bc:	00 00 00 
     2bf:	90                   	nop

00000000000002c0 <func_bit_xor_30(unsigned short, unsigned short)>:
     2c0:	89 f8                	mov    %edi,%eax
     2c2:	31 f0                	xor    %esi,%eax
     2c4:	c3                   	ret    
     2c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     2cc:	00 00 00 
     2cf:	90                   	nop

00000000000002d0 <func_bit_xor_31(unsigned char, unsigned char)>:
     2d0:	89 f8                	mov    %edi,%eax
     2d2:	31 f0                	xor    %esi,%eax
     2d4:	c3                   	ret    
     2d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     2dc:	00 00 00 
     2df:	90                   	nop

00000000000002e0 <func_abs_32(float)>:
     2e0:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 2e7 <func_abs_32(float)+0x7>
     2e7:	c3                   	ret    
     2e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     2ef:	00 

00000000000002f0 <func_abs_33(double)>:
     2f0:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 2f7 <func_abs_33(double)+0x7>
     2f7:	c3                   	ret    
     2f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     2ff:	00 

0000000000000300 <func_abs_34(long)>:
     300:	48 89 f8             	mov    %rdi,%rax
     303:	48 f7 d8             	neg    %rax
     306:	48 0f 48 c7          	cmovs  %rdi,%rax
     30a:	c3                   	ret    
     30b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000310 <func_abs_35(int)>:
     310:	89 f8                	mov    %edi,%eax
     312:	f7 d8                	neg    %eax
     314:	0f 48 c7             	cmovs  %edi,%eax
     317:	c3                   	ret    
     318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     31f:	00 

0000000000000320 <func_abs_36(short)>:
     320:	89 f8                	mov    %edi,%eax
     322:	66 f7 d8             	neg    %ax
     325:	66 0f 48 c7          	cmovs  %di,%ax
     329:	c3                   	ret    
     32a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000330 <func_abs_37(signed char)>:
     330:	89 f9                	mov    %edi,%ecx
     332:	c0 f9 07             	sar    $0x7,%cl
     335:	8d 04 0f             	lea    (%rdi,%rcx,1),%eax
     338:	30 c8                	xor    %cl,%al
     33a:	c3                   	ret    
     33b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000340 <func_abs_38(unsigned long)>:
     340:	48 89 f8             	mov    %rdi,%rax
     343:	c3                   	ret    
     344:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     34b:	00 00 00 
     34e:	66 90                	xchg   %ax,%ax

0000000000000350 <func_abs_39(unsigned int)>:
     350:	89 f8                	mov    %edi,%eax
     352:	c3                   	ret    
     353:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     35a:	00 00 00 
     35d:	0f 1f 00             	nopl   (%rax)

0000000000000360 <func_abs_40(unsigned short)>:
     360:	89 f8                	mov    %edi,%eax
     362:	c3                   	ret    
     363:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     36a:	00 00 00 
     36d:	0f 1f 00             	nopl   (%rax)

0000000000000370 <func_abs_41(unsigned char)>:
     370:	89 f8                	mov    %edi,%eax
     372:	c3                   	ret    
     373:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     37a:	00 00 00 
     37d:	0f 1f 00             	nopl   (%rax)

0000000000000380 <func_abs_42(unsigned long)>:
     380:	48 89 f8             	mov    %rdi,%rax
     383:	c3                   	ret    
     384:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     38b:	00 00 00 
     38e:	66 90                	xchg   %ax,%ax

0000000000000390 <func_abs_43(unsigned int)>:
     390:	89 f8                	mov    %edi,%eax
     392:	c3                   	ret    
     393:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     39a:	00 00 00 
     39d:	0f 1f 00             	nopl   (%rax)

00000000000003a0 <func_abs_44(unsigned short)>:
     3a0:	89 f8                	mov    %edi,%eax
     3a2:	c3                   	ret    
     3a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     3aa:	00 00 00 
     3ad:	0f 1f 00             	nopl   (%rax)

00000000000003b0 <func_abs_45(unsigned char)>:
     3b0:	89 f8                	mov    %edi,%eax
     3b2:	c3                   	ret    
     3b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     3ba:	00 00 00 
     3bd:	0f 1f 00             	nopl   (%rax)

00000000000003c0 <func_fmod_46(float, float)>:
     3c0:	0f 28 d9             	movaps %xmm1,%xmm3
     3c3:	66 0f 3a 21 d8 10    	insertps $0x10,%xmm0,%xmm3
     3c9:	0f 28 15 00 00 00 00 	movaps 0x0(%rip),%xmm2        # 3d0 <func_fmod_46(float, float)+0x10>
     3d0:	0f 54 da             	andps  %xmm2,%xmm3
     3d3:	0f c2 1d 00 00 00 00 	cmpneqps 0x0(%rip),%xmm3        # 3db <func_fmod_46(float, float)+0x1b>
     3da:	04 
     3db:	66 0f 38 25 db       	pmovsxdq %xmm3,%xmm3
     3e0:	66 0f 50 c3          	movmskpd %xmm3,%eax
     3e4:	a8 01                	test   $0x1,%al
     3e6:	75 25                	jne    40d <func_fmod_46(float, float)+0x4d>
     3e8:	0f 28 e8             	movaps %xmm0,%xmm5
     3eb:	0f 57 d2             	xorps  %xmm2,%xmm2
     3ee:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 3f6 <func_fmod_46(float, float)+0x36>
     3f5:	00 
     3f6:	a8 02                	test   $0x2,%al
     3f8:	74 64                	je     45e <func_fmod_46(float, float)+0x9e>
     3fa:	0f 28 e0             	movaps %xmm0,%xmm4
     3fd:	f3 0f c2 e2 04       	cmpneqss %xmm2,%xmm4
     402:	0f 54 ec             	andps  %xmm4,%xmm5
     405:	0f 55 e0             	andnps %xmm0,%xmm4
     408:	0f 56 e5             	orps   %xmm5,%xmm4
     40b:	eb 54                	jmp    461 <func_fmod_46(float, float)+0xa1>
     40d:	0f 28 d8             	movaps %xmm0,%xmm3
     410:	f3 0f 5e d9          	divss  %xmm1,%xmm3
     414:	0f 54 d3             	andps  %xmm3,%xmm2
     417:	f3 0f 5b e3          	cvttps2dq %xmm3,%xmm4
     41b:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
     41e:	f3 0f c2 15 00 00 00 	cmpnless 0x0(%rip),%xmm2        # 427 <func_fmod_46(float, float)+0x67>
     425:	00 06 
     427:	0f 54 da             	andps  %xmm2,%xmm3
     42a:	0f 55 d4             	andnps %xmm4,%xmm2
     42d:	0f 56 d3             	orps   %xmm3,%xmm2
     430:	0f 57 db             	xorps  %xmm3,%xmm3
     433:	f3 0f 5a d9          	cvtss2sd %xmm1,%xmm3
     437:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
     43b:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
     43f:	0f 57 db             	xorps  %xmm3,%xmm3
     442:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
     446:	f2 0f 5c da          	subsd  %xmm2,%xmm3
     44a:	f2 0f 5a eb          	cvtsd2ss %xmm3,%xmm5
     44e:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
     452:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 45a <func_fmod_46(float, float)+0x9a>
     459:	00 
     45a:	a8 02                	test   $0x2,%al
     45c:	75 9c                	jne    3fa <func_fmod_46(float, float)+0x3a>
     45e:	0f 28 e3             	movaps %xmm3,%xmm4
     461:	f3 0f c2 d1 04       	cmpneqss %xmm1,%xmm2
     466:	0f 54 e2             	andps  %xmm2,%xmm4
     469:	0f 55 d3             	andnps %xmm3,%xmm2
     46c:	0f 56 d4             	orps   %xmm4,%xmm2
     46f:	f3 0f c2 c1 07       	cmpordss %xmm1,%xmm0
     474:	0f 54 d0             	andps  %xmm0,%xmm2
     477:	0f 55 c3             	andnps %xmm3,%xmm0
     47a:	0f 56 c2             	orps   %xmm2,%xmm0
     47d:	c3                   	ret    
     47e:	66 90                	xchg   %ax,%ax

0000000000000480 <func_fmod_47(double, double)>:
     480:	53                   	push   %rbx
     481:	48 83 ec 20          	sub    $0x20,%rsp
     485:	66 0f 28 d9          	movapd %xmm1,%xmm3
     489:	66 0f 28 d1          	movapd %xmm1,%xmm2
     48d:	66 0f 14 d0          	unpcklpd %xmm0,%xmm2
     491:	66 0f 28 0d 00 00 00 	movapd 0x0(%rip),%xmm1        # 499 <func_fmod_47(double, double)+0x19>
     498:	00 
     499:	66 0f 54 d1          	andpd  %xmm1,%xmm2
     49d:	66 0f c2 15 00 00 00 	cmpneqpd 0x0(%rip),%xmm2        # 4a6 <func_fmod_47(double, double)+0x26>
     4a4:	00 04 
     4a6:	66 0f 50 da          	movmskpd %xmm2,%ebx
     4aa:	66 0f 28 e0          	movapd %xmm0,%xmm4
     4ae:	66 0f 28 d0          	movapd %xmm0,%xmm2
     4b2:	66 0f 29 04 24       	movapd %xmm0,(%rsp)
     4b7:	f2 0f 5e e3          	divsd  %xmm3,%xmm4
     4bb:	f2 48 0f 2c c4       	cvttsd2si %xmm4,%rax
     4c0:	0f 57 c0             	xorps  %xmm0,%xmm0
     4c3:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
     4c8:	66 0f 54 cc          	andpd  %xmm4,%xmm1
     4cc:	f2 0f c2 0d 00 00 00 	cmpnlesd 0x0(%rip),%xmm1        # 4d5 <func_fmod_47(double, double)+0x55>
     4d3:	00 06 
     4d5:	66 0f 54 e1          	andpd  %xmm1,%xmm4
     4d9:	66 0f 55 c8          	andnpd %xmm0,%xmm1
     4dd:	66 0f 56 cc          	orpd   %xmm4,%xmm1
     4e1:	66 0f 28 05 00 00 00 	movapd 0x0(%rip),%xmm0        # 4e9 <func_fmod_47(double, double)+0x69>
     4e8:	00 
     4e9:	66 0f 29 5c 24 10    	movapd %xmm3,0x10(%rsp)
     4ef:	66 0f 57 c3          	xorpd  %xmm3,%xmm0
     4f3:	e8 00 00 00 00       	call   4f8 <func_fmod_47(double, double)+0x78>
     4f8:	66 0f 28 24 24       	movapd (%rsp),%xmm4
     4fd:	f6 c3 01             	test   $0x1,%bl
     500:	75 04                	jne    506 <func_fmod_47(double, double)+0x86>
     502:	66 0f 28 c4          	movapd %xmm4,%xmm0
     506:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
     50a:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 512 <func_fmod_47(double, double)+0x92>
     511:	00 
     512:	f6 c3 02             	test   $0x2,%bl
     515:	75 06                	jne    51d <func_fmod_47(double, double)+0x9d>
     517:	66 0f 28 da          	movapd %xmm2,%xmm3
     51b:	eb 15                	jmp    532 <func_fmod_47(double, double)+0xb2>
     51d:	66 0f 28 dc          	movapd %xmm4,%xmm3
     521:	f2 0f c2 d9 04       	cmpneqsd %xmm1,%xmm3
     526:	66 0f 54 c3          	andpd  %xmm3,%xmm0
     52a:	66 0f 55 dc          	andnpd %xmm4,%xmm3
     52e:	66 0f 56 d8          	orpd   %xmm0,%xmm3
     532:	66 0f 28 44 24 10    	movapd 0x10(%rsp),%xmm0
     538:	f2 0f c2 c8 04       	cmpneqsd %xmm0,%xmm1
     53d:	66 0f 54 d9          	andpd  %xmm1,%xmm3
     541:	66 0f 55 ca          	andnpd %xmm2,%xmm1
     545:	66 0f 56 cb          	orpd   %xmm3,%xmm1
     549:	f2 0f c2 e0 07       	cmpordsd %xmm0,%xmm4
     54e:	66 0f 54 cc          	andpd  %xmm4,%xmm1
     552:	66 0f 55 e2          	andnpd %xmm2,%xmm4
     556:	66 0f 56 e1          	orpd   %xmm1,%xmm4
     55a:	66 0f 28 c4          	movapd %xmm4,%xmm0
     55e:	48 83 c4 20          	add    $0x20,%rsp
     562:	5b                   	pop    %rbx
     563:	c3                   	ret    
     564:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     56b:	00 00 00 
     56e:	66 90                	xchg   %ax,%ax

0000000000000570 <func_is_real_48(float)>:
     570:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     575:	c3                   	ret    
     576:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     57d:	00 00 00 

0000000000000580 <func_is_real_49(double)>:
     580:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     587:	c3                   	ret    
     588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     58f:	00 

0000000000000590 <func_is_real_50(long)>:
     590:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     597:	c3                   	ret    
     598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     59f:	00 

00000000000005a0 <func_is_real_51(int)>:
     5a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     5a5:	c3                   	ret    
     5a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ad:	00 00 00 

00000000000005b0 <func_is_real_52(short)>:
     5b0:	66 b8 ff ff          	mov    $0xffff,%ax
     5b4:	c3                   	ret    
     5b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5bc:	00 00 00 
     5bf:	90                   	nop

00000000000005c0 <func_is_real_53(signed char)>:
     5c0:	b0 ff                	mov    $0xff,%al
     5c2:	c3                   	ret    
     5c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ca:	00 00 00 
     5cd:	0f 1f 00             	nopl   (%rax)

00000000000005d0 <func_is_real_54(unsigned long)>:
     5d0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     5d7:	c3                   	ret    
     5d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     5df:	00 

00000000000005e0 <func_is_real_55(unsigned int)>:
     5e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     5e5:	c3                   	ret    
     5e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ed:	00 00 00 

00000000000005f0 <func_is_real_56(unsigned short)>:
     5f0:	66 b8 ff ff          	mov    $0xffff,%ax
     5f4:	c3                   	ret    
     5f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5fc:	00 00 00 
     5ff:	90                   	nop

0000000000000600 <func_is_real_57(unsigned char)>:
     600:	b0 ff                	mov    $0xff,%al
     602:	c3                   	ret    
     603:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     60a:	00 00 00 
     60d:	0f 1f 00             	nopl   (%rax)

0000000000000610 <func_is_real_58(unsigned long)>:
     610:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     617:	c3                   	ret    
     618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     61f:	00 

0000000000000620 <func_is_real_59(unsigned int)>:
     620:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     625:	c3                   	ret    
     626:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     62d:	00 00 00 

0000000000000630 <func_is_real_60(unsigned short)>:
     630:	66 b8 ff ff          	mov    $0xffff,%ax
     634:	c3                   	ret    
     635:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     63c:	00 00 00 
     63f:	90                   	nop

0000000000000640 <func_is_real_61(unsigned char)>:
     640:	b0 ff                	mov    $0xff,%al
     642:	c3                   	ret    
     643:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     64a:	00 00 00 
     64d:	0f 1f 00             	nopl   (%rax)

0000000000000650 <func_is_nan_62(float)>:
     650:	31 c0                	xor    %eax,%eax
     652:	0f 2e c0             	ucomiss %xmm0,%xmm0
     655:	0f 9a c0             	setp   %al
     658:	f7 d8                	neg    %eax
     65a:	c3                   	ret    
     65b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000660 <func_is_nan_63(double)>:
     660:	31 c0                	xor    %eax,%eax
     662:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     666:	0f 9a c0             	setp   %al
     669:	48 f7 d8             	neg    %rax
     66c:	c3                   	ret    
     66d:	0f 1f 00             	nopl   (%rax)

0000000000000670 <func_is_nan_64(long)>:
     670:	31 c0                	xor    %eax,%eax
     672:	c3                   	ret    
     673:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     67a:	00 00 00 
     67d:	0f 1f 00             	nopl   (%rax)

0000000000000680 <func_is_nan_65(int)>:
     680:	31 c0                	xor    %eax,%eax
     682:	c3                   	ret    
     683:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     68a:	00 00 00 
     68d:	0f 1f 00             	nopl   (%rax)

0000000000000690 <func_is_nan_66(short)>:
     690:	31 c0                	xor    %eax,%eax
     692:	c3                   	ret    
     693:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     69a:	00 00 00 
     69d:	0f 1f 00             	nopl   (%rax)

00000000000006a0 <func_is_nan_67(signed char)>:
     6a0:	31 c0                	xor    %eax,%eax
     6a2:	c3                   	ret    
     6a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6aa:	00 00 00 
     6ad:	0f 1f 00             	nopl   (%rax)

00000000000006b0 <func_is_nan_68(unsigned long)>:
     6b0:	31 c0                	xor    %eax,%eax
     6b2:	c3                   	ret    
     6b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ba:	00 00 00 
     6bd:	0f 1f 00             	nopl   (%rax)

00000000000006c0 <func_is_nan_69(unsigned int)>:
     6c0:	31 c0                	xor    %eax,%eax
     6c2:	c3                   	ret    
     6c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ca:	00 00 00 
     6cd:	0f 1f 00             	nopl   (%rax)

00000000000006d0 <func_is_nan_70(unsigned short)>:
     6d0:	31 c0                	xor    %eax,%eax
     6d2:	c3                   	ret    
     6d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6da:	00 00 00 
     6dd:	0f 1f 00             	nopl   (%rax)

00000000000006e0 <func_is_nan_71(unsigned char)>:
     6e0:	31 c0                	xor    %eax,%eax
     6e2:	c3                   	ret    
     6e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ea:	00 00 00 
     6ed:	0f 1f 00             	nopl   (%rax)

00000000000006f0 <func_is_nan_72(unsigned long)>:
     6f0:	31 c0                	xor    %eax,%eax
     6f2:	c3                   	ret    
     6f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6fa:	00 00 00 
     6fd:	0f 1f 00             	nopl   (%rax)

0000000000000700 <func_is_nan_73(unsigned int)>:
     700:	31 c0                	xor    %eax,%eax
     702:	c3                   	ret    
     703:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     70a:	00 00 00 
     70d:	0f 1f 00             	nopl   (%rax)

0000000000000710 <func_is_nan_74(unsigned short)>:
     710:	31 c0                	xor    %eax,%eax
     712:	c3                   	ret    
     713:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     71a:	00 00 00 
     71d:	0f 1f 00             	nopl   (%rax)

0000000000000720 <func_is_nan_75(unsigned char)>:
     720:	31 c0                	xor    %eax,%eax
     722:	c3                   	ret    
     723:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     72a:	00 00 00 
     72d:	0f 1f 00             	nopl   (%rax)

0000000000000730 <func_clamp_76(float, float, float)>:
     730:	0f 28 da             	movaps %xmm2,%xmm3
     733:	f3 0f 5d d9          	minss  %xmm1,%xmm3
     737:	f3 0f 5f ca          	maxss  %xmm2,%xmm1
     73b:	f3 0f 5f d8          	maxss  %xmm0,%xmm3
     73f:	f3 0f 5d d9          	minss  %xmm1,%xmm3
     743:	0f 28 c3             	movaps %xmm3,%xmm0
     746:	c3                   	ret    
     747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     74e:	00 00 

0000000000000750 <func_clamp_77(double, double, double)>:
     750:	66 0f 28 da          	movapd %xmm2,%xmm3
     754:	f2 0f 5d d9          	minsd  %xmm1,%xmm3
     758:	f2 0f 5f ca          	maxsd  %xmm2,%xmm1
     75c:	f2 0f 5f d8          	maxsd  %xmm0,%xmm3
     760:	f2 0f 5d d9          	minsd  %xmm1,%xmm3
     764:	66 0f 28 c3          	movapd %xmm3,%xmm0
     768:	c3                   	ret    
     769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000770 <func_clamp_78(int, int, int)>:
     770:	39 d6                	cmp    %edx,%esi
     772:	89 f0                	mov    %esi,%eax
     774:	0f 4f c2             	cmovg  %edx,%eax
     777:	0f 4f d6             	cmovg  %esi,%edx
     77a:	39 f8                	cmp    %edi,%eax
     77c:	0f 4e c7             	cmovle %edi,%eax
     77f:	39 c2                	cmp    %eax,%edx
     781:	0f 4e c2             	cmovle %edx,%eax
     784:	c3                   	ret    
     785:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     78c:	00 00 00 
     78f:	90                   	nop

0000000000000790 <func_dist_79(float, float)>:
     790:	0f 28 d1             	movaps %xmm1,%xmm2
     793:	f3 0f 5f d0          	maxss  %xmm0,%xmm2
     797:	f3 0f 5d c1          	minss  %xmm1,%xmm0
     79b:	f3 0f 5c d0          	subss  %xmm0,%xmm2
     79f:	0f 28 c2             	movaps %xmm2,%xmm0
     7a2:	c3                   	ret    
     7a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     7aa:	00 00 00 
     7ad:	0f 1f 00             	nopl   (%rax)

00000000000007b0 <func_dist_80(double, double)>:
     7b0:	66 0f 28 d1          	movapd %xmm1,%xmm2
     7b4:	f2 0f 5f d0          	maxsd  %xmm0,%xmm2
     7b8:	f2 0f 5d c1          	minsd  %xmm1,%xmm0
     7bc:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
     7c0:	66 0f 28 c2          	movapd %xmm2,%xmm0
     7c4:	c3                   	ret    
     7c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     7cc:	00 00 00 
     7cf:	90                   	nop

00000000000007d0 <func_dist_81(long, long)>:
     7d0:	48 39 fe             	cmp    %rdi,%rsi
     7d3:	48 89 f8             	mov    %rdi,%rax
     7d6:	48 0f 4f c6          	cmovg  %rsi,%rax
     7da:	48 0f 4f f7          	cmovg  %rdi,%rsi
     7de:	48 29 f0             	sub    %rsi,%rax
     7e1:	c3                   	ret    
     7e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     7e9:	00 00 00 
     7ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007f0 <func_dist_82(int, int)>:
     7f0:	39 fe                	cmp    %edi,%esi
     7f2:	89 f8                	mov    %edi,%eax
     7f4:	0f 4f c6             	cmovg  %esi,%eax
     7f7:	0f 4f f7             	cmovg  %edi,%esi
     7fa:	29 f0                	sub    %esi,%eax
     7fc:	c3                   	ret    
     7fd:	0f 1f 00             	nopl   (%rax)

0000000000000800 <func_dist_83(short, short)>:
     800:	66 39 fe             	cmp    %di,%si
     803:	89 f8                	mov    %edi,%eax
     805:	0f 4f c6             	cmovg  %esi,%eax
     808:	0f 4f f7             	cmovg  %edi,%esi
     80b:	29 f0                	sub    %esi,%eax
     80d:	c3                   	ret    
     80e:	66 90                	xchg   %ax,%ax

0000000000000810 <func_dist_84(signed char, signed char)>:
     810:	40 38 fe             	cmp    %dil,%sil
     813:	89 f8                	mov    %edi,%eax
     815:	0f 4f c6             	cmovg  %esi,%eax
     818:	0f 4f f7             	cmovg  %edi,%esi
     81b:	40 28 f0             	sub    %sil,%al
     81e:	c3                   	ret    
     81f:	90                   	nop

0000000000000820 <func_dist_85(unsigned long, unsigned long)>:
     820:	48 39 fe             	cmp    %rdi,%rsi
     823:	48 89 f8             	mov    %rdi,%rax
     826:	48 0f 47 c6          	cmova  %rsi,%rax
     82a:	48 0f 47 f7          	cmova  %rdi,%rsi
     82e:	48 29 f0             	sub    %rsi,%rax
     831:	c3                   	ret    
     832:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     839:	00 00 00 
     83c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000840 <func_dist_86(unsigned int, unsigned int)>:
     840:	39 fe                	cmp    %edi,%esi
     842:	89 f8                	mov    %edi,%eax
     844:	0f 47 c6             	cmova  %esi,%eax
     847:	0f 47 f7             	cmova  %edi,%esi
     84a:	29 f0                	sub    %esi,%eax
     84c:	c3                   	ret    
     84d:	0f 1f 00             	nopl   (%rax)

0000000000000850 <func_dist_87(unsigned short, unsigned short)>:
     850:	66 39 fe             	cmp    %di,%si
     853:	89 f8                	mov    %edi,%eax
     855:	0f 47 c6             	cmova  %esi,%eax
     858:	0f 47 f7             	cmova  %edi,%esi
     85b:	29 f0                	sub    %esi,%eax
     85d:	c3                   	ret    
     85e:	66 90                	xchg   %ax,%ax

0000000000000860 <func_dist_88(unsigned char, unsigned char)>:
     860:	40 38 fe             	cmp    %dil,%sil
     863:	89 f8                	mov    %edi,%eax
     865:	0f 47 c6             	cmova  %esi,%eax
     868:	0f 47 f7             	cmova  %edi,%esi
     86b:	40 28 f0             	sub    %sil,%al
     86e:	c3                   	ret    
     86f:	90                   	nop

0000000000000870 <func_dist_89(unsigned long, unsigned long)>:
     870:	48 39 fe             	cmp    %rdi,%rsi
     873:	48 89 f8             	mov    %rdi,%rax
     876:	48 0f 47 c6          	cmova  %rsi,%rax
     87a:	48 0f 47 f7          	cmova  %rdi,%rsi
     87e:	48 29 f0             	sub    %rsi,%rax
     881:	c3                   	ret    
     882:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     889:	00 00 00 
     88c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000890 <func_dist_90(unsigned int, unsigned int)>:
     890:	39 fe                	cmp    %edi,%esi
     892:	89 f8                	mov    %edi,%eax
     894:	0f 47 c6             	cmova  %esi,%eax
     897:	0f 47 f7             	cmova  %edi,%esi
     89a:	29 f0                	sub    %esi,%eax
     89c:	c3                   	ret    
     89d:	0f 1f 00             	nopl   (%rax)

00000000000008a0 <func_dist_91(unsigned short, unsigned short)>:
     8a0:	66 39 fe             	cmp    %di,%si
     8a3:	89 f8                	mov    %edi,%eax
     8a5:	0f 47 c6             	cmova  %esi,%eax
     8a8:	0f 47 f7             	cmova  %edi,%esi
     8ab:	29 f0                	sub    %esi,%eax
     8ad:	c3                   	ret    
     8ae:	66 90                	xchg   %ax,%ax

00000000000008b0 <func_dist_92(unsigned char, unsigned char)>:
     8b0:	40 38 fe             	cmp    %dil,%sil
     8b3:	89 f8                	mov    %edi,%eax
     8b5:	0f 47 c6             	cmova  %esi,%eax
     8b8:	0f 47 f7             	cmova  %edi,%esi
     8bb:	40 28 f0             	sub    %sil,%al
     8be:	c3                   	ret    
     8bf:	90                   	nop

00000000000008c0 <func_fracscale_93(float, int)>:
     8c0:	0f 28 15 00 00 00 00 	movaps 0x0(%rip),%xmm2        # 8c7 <func_fracscale_93(float, int)+0x7>
     8c7:	0f 28 c8             	movaps %xmm0,%xmm1
     8ca:	0f 54 ca             	andps  %xmm2,%xmm1
     8cd:	c1 e7 17             	shl    $0x17,%edi
     8d0:	8d 87 00 00 80 3f    	lea    0x3f800000(%rdi),%eax
     8d6:	66 0f 6e d8          	movd   %eax,%xmm3
     8da:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
     8de:	0f 50 c3             	movmskps %xmm3,%eax
     8e1:	c1 e0 1f             	shl    $0x1f,%eax
     8e4:	0f 54 da             	andps  %xmm2,%xmm3
     8e7:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 8ef <func_fracscale_93(float, int)+0x2f>
     8ee:	00 
     8ef:	0f 28 e3             	movaps %xmm3,%xmm4
     8f2:	f3 0f c2 e2 01       	cmpltss %xmm2,%xmm4
     8f7:	0f 28 ec             	movaps %xmm4,%xmm5
     8fa:	0f 55 eb             	andnps %xmm3,%xmm5
     8fd:	f3 0f 58 da          	addss  %xmm2,%xmm3
     901:	f3 0f 58 1d 00 00 00 	addss  0x0(%rip),%xmm3        # 909 <func_fracscale_93(float, int)+0x49>
     908:	00 
     909:	66 0f 6e d0          	movd   %eax,%xmm2
     90d:	0f 54 e3             	andps  %xmm3,%xmm4
     910:	0f 56 e5             	orps   %xmm5,%xmm4
     913:	0f 57 e2             	xorps  %xmm2,%xmm4
     916:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
     91b:	29 f8                	sub    %edi,%eax
     91d:	66 0f 6e d0          	movd   %eax,%xmm2
     921:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
     925:	f3 0f 5c c2          	subss  %xmm2,%xmm0
     929:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 931 <func_fracscale_93(float, int)+0x71>
     930:	00 
     931:	f3 0f c2 d1 06       	cmpnless %xmm1,%xmm2
     936:	0f 54 c2             	andps  %xmm2,%xmm0
     939:	c3                   	ret    
     93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <func_fracscale_94(double, int)>:
     940:	66 0f 28 15 00 00 00 	movapd 0x0(%rip),%xmm2        # 948 <func_fracscale_94(double, int)+0x8>
     947:	00 
     948:	66 0f 28 c8          	movapd %xmm0,%xmm1
     94c:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     950:	48 89 f9             	mov    %rdi,%rcx
     953:	48 c1 e1 34          	shl    $0x34,%rcx
     957:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
     95e:	00 f0 3f 
     961:	48 01 c1             	add    %rax,%rcx
     964:	66 48 0f 6e d9       	movq   %rcx,%xmm3
     969:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
     96d:	66 0f 50 cb          	movmskpd %xmm3,%ecx
     971:	48 c1 e1 3f          	shl    $0x3f,%rcx
     975:	66 48 0f 6e e1       	movq   %rcx,%xmm4
     97a:	66 0f 54 da          	andpd  %xmm2,%xmm3
     97e:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 986 <func_fracscale_94(double, int)+0x46>
     985:	00 
     986:	66 0f 28 eb          	movapd %xmm3,%xmm5
     98a:	f2 0f c2 ea 01       	cmpltsd %xmm2,%xmm5
     98f:	66 0f 28 f5          	movapd %xmm5,%xmm6
     993:	66 0f 55 f3          	andnpd %xmm3,%xmm6
     997:	f2 0f 58 da          	addsd  %xmm2,%xmm3
     99b:	f2 0f 58 1d 00 00 00 	addsd  0x0(%rip),%xmm3        # 9a3 <func_fracscale_94(double, int)+0x63>
     9a2:	00 
     9a3:	66 0f 54 eb          	andpd  %xmm3,%xmm5
     9a7:	66 0f 56 ee          	orpd   %xmm6,%xmm5
     9ab:	66 0f 57 ec          	xorpd  %xmm4,%xmm5
     9af:	f7 df                	neg    %edi
     9b1:	48 c1 e7 34          	shl    $0x34,%rdi
     9b5:	48 01 c7             	add    %rax,%rdi
     9b8:	66 48 0f 6e d7       	movq   %rdi,%xmm2
     9bd:	f2 0f 59 d5          	mulsd  %xmm5,%xmm2
     9c1:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
     9c5:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 9cd <func_fracscale_94(double, int)+0x8d>
     9cc:	00 
     9cd:	f2 0f c2 d1 06       	cmpnlesd %xmm1,%xmm2
     9d2:	66 0f 54 c2          	andpd  %xmm2,%xmm0
     9d6:	c3                   	ret    
     9d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     9de:	00 00 

00000000000009e0 <func_conj_95(float)>:
     9e0:	c3                   	ret    
     9e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     9e8:	00 00 00 
     9eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009f0 <func_conj_96(double)>:
     9f0:	c3                   	ret    
     9f1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     9f8:	00 00 00 
     9fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a00 <func_rem_97(long, long)>:
     a00:	48 89 f8             	mov    %rdi,%rax
     a03:	48 89 f9             	mov    %rdi,%rcx
     a06:	48 09 f1             	or     %rsi,%rcx
     a09:	48 c1 e9 20          	shr    $0x20,%rcx
     a0d:	74 09                	je     a18 <func_rem_97(long, long)+0x18>
     a0f:	48 99                	cqto   
     a11:	48 f7 fe             	idiv   %rsi
     a14:	48 89 d0             	mov    %rdx,%rax
     a17:	c3                   	ret    
     a18:	31 d2                	xor    %edx,%edx
     a1a:	f7 f6                	div    %esi
     a1c:	89 d0                	mov    %edx,%eax
     a1e:	c3                   	ret    
     a1f:	90                   	nop

0000000000000a20 <func_rem_98(int, int)>:
     a20:	89 f8                	mov    %edi,%eax
     a22:	99                   	cltd   
     a23:	f7 fe                	idiv   %esi
     a25:	89 d0                	mov    %edx,%eax
     a27:	c3                   	ret    
     a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     a2f:	00 

0000000000000a30 <func_rem_99(short, short)>:
     a30:	89 f8                	mov    %edi,%eax
     a32:	99                   	cltd   
     a33:	f7 fe                	idiv   %esi
     a35:	89 d0                	mov    %edx,%eax
     a37:	c3                   	ret    
     a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     a3f:	00 

0000000000000a40 <func_rem_100(signed char, signed char)>:
     a40:	89 f8                	mov    %edi,%eax
     a42:	66 99                	cwtd   
     a44:	66 f7 fe             	idiv   %si
     a47:	89 d0                	mov    %edx,%eax
     a49:	c3                   	ret    
     a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a50 <func_rem_101(unsigned long, unsigned long)>:
     a50:	48 89 f8             	mov    %rdi,%rax
     a53:	48 89 f9             	mov    %rdi,%rcx
     a56:	48 09 f1             	or     %rsi,%rcx
     a59:	48 c1 e9 20          	shr    $0x20,%rcx
     a5d:	74 09                	je     a68 <func_rem_101(unsigned long, unsigned long)+0x18>
     a5f:	31 d2                	xor    %edx,%edx
     a61:	48 f7 f6             	div    %rsi
     a64:	48 89 d0             	mov    %rdx,%rax
     a67:	c3                   	ret    
     a68:	31 d2                	xor    %edx,%edx
     a6a:	f7 f6                	div    %esi
     a6c:	89 d0                	mov    %edx,%eax
     a6e:	c3                   	ret    
     a6f:	90                   	nop

0000000000000a70 <func_rem_102(unsigned int, unsigned int)>:
     a70:	89 f8                	mov    %edi,%eax
     a72:	31 d2                	xor    %edx,%edx
     a74:	f7 f6                	div    %esi
     a76:	89 d0                	mov    %edx,%eax
     a78:	c3                   	ret    
     a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000a80 <func_rem_103(unsigned short, unsigned short)>:
     a80:	89 f8                	mov    %edi,%eax
     a82:	31 d2                	xor    %edx,%edx
     a84:	66 f7 f6             	div    %si
     a87:	89 d0                	mov    %edx,%eax
     a89:	c3                   	ret    
     a8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a90 <func_rem_104(unsigned char, unsigned char)>:
     a90:	40 0f b6 c7          	movzbl %dil,%eax
     a94:	40 f6 f6             	div    %sil
     a97:	0f b6 c4             	movzbl %ah,%eax
     a9a:	c3                   	ret    
     a9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000aa0 <func_absmin_105(float, float)>:
     aa0:	f3 0f 5d c1          	minss  %xmm1,%xmm0
     aa4:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # aab <func_absmin_105(float, float)+0xb>
     aab:	c3                   	ret    
     aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ab0 <func_absmin_106(double, double)>:
     ab0:	f2 0f 5d c1          	minsd  %xmm1,%xmm0
     ab4:	66 0f 54 05 00 00 00 	andpd  0x0(%rip),%xmm0        # abc <func_absmin_106(double, double)+0xc>
     abb:	00 
     abc:	c3                   	ret    
     abd:	0f 1f 00             	nopl   (%rax)

0000000000000ac0 <func_absmin_107(long, long)>:
     ac0:	48 39 fe             	cmp    %rdi,%rsi
     ac3:	48 0f 4f f7          	cmovg  %rdi,%rsi
     ac7:	48 89 f0             	mov    %rsi,%rax
     aca:	48 f7 d8             	neg    %rax
     acd:	48 0f 48 c6          	cmovs  %rsi,%rax
     ad1:	c3                   	ret    
     ad2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ad9:	00 00 00 
     adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ae0 <func_absmin_108(int, int)>:
     ae0:	39 fe                	cmp    %edi,%esi
     ae2:	0f 4f f7             	cmovg  %edi,%esi
     ae5:	89 f0                	mov    %esi,%eax
     ae7:	f7 d8                	neg    %eax
     ae9:	0f 48 c6             	cmovs  %esi,%eax
     aec:	c3                   	ret    
     aed:	0f 1f 00             	nopl   (%rax)

0000000000000af0 <func_absmin_109(short, short)>:
     af0:	66 39 fe             	cmp    %di,%si
     af3:	0f 4f f7             	cmovg  %edi,%esi
     af6:	89 f0                	mov    %esi,%eax
     af8:	66 f7 d8             	neg    %ax
     afb:	66 0f 48 c6          	cmovs  %si,%ax
     aff:	c3                   	ret    

0000000000000b00 <func_absmin_110(signed char, signed char)>:
     b00:	40 38 fe             	cmp    %dil,%sil
     b03:	0f 4f f7             	cmovg  %edi,%esi
     b06:	89 f1                	mov    %esi,%ecx
     b08:	c0 f9 07             	sar    $0x7,%cl
     b0b:	8d 04 0e             	lea    (%rsi,%rcx,1),%eax
     b0e:	30 c8                	xor    %cl,%al
     b10:	c3                   	ret    
     b11:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     b18:	00 00 00 
     b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b20 <func_absmin_111(unsigned long, unsigned long)>:
     b20:	48 89 f0             	mov    %rsi,%rax
     b23:	48 39 fe             	cmp    %rdi,%rsi
     b26:	48 0f 47 c7          	cmova  %rdi,%rax
     b2a:	c3                   	ret    
     b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b30 <func_absmin_112(unsigned int, unsigned int)>:
     b30:	89 f0                	mov    %esi,%eax
     b32:	39 fe                	cmp    %edi,%esi
     b34:	0f 47 c7             	cmova  %edi,%eax
     b37:	c3                   	ret    
     b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     b3f:	00 

0000000000000b40 <func_absmin_113(unsigned short, unsigned short)>:
     b40:	89 f0                	mov    %esi,%eax
     b42:	66 39 f8             	cmp    %di,%ax
     b45:	0f 47 c7             	cmova  %edi,%eax
     b48:	c3                   	ret    
     b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b50 <func_absmin_114(unsigned char, unsigned char)>:
     b50:	89 f0                	mov    %esi,%eax
     b52:	40 38 f8             	cmp    %dil,%al
     b55:	0f 47 c7             	cmova  %edi,%eax
     b58:	c3                   	ret    
     b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b60 <func_absmin_115(unsigned long, unsigned long)>:
     b60:	48 89 f0             	mov    %rsi,%rax
     b63:	48 39 fe             	cmp    %rdi,%rsi
     b66:	48 0f 47 c7          	cmova  %rdi,%rax
     b6a:	c3                   	ret    
     b6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b70 <func_absmin_116(unsigned int, unsigned int)>:
     b70:	89 f0                	mov    %esi,%eax
     b72:	39 fe                	cmp    %edi,%esi
     b74:	0f 47 c7             	cmova  %edi,%eax
     b77:	c3                   	ret    
     b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     b7f:	00 

0000000000000b80 <func_absmin_117(unsigned short, unsigned short)>:
     b80:	89 f0                	mov    %esi,%eax
     b82:	66 39 f8             	cmp    %di,%ax
     b85:	0f 47 c7             	cmova  %edi,%eax
     b88:	c3                   	ret    
     b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b90 <func_absmin_118(unsigned char, unsigned char)>:
     b90:	89 f0                	mov    %esi,%eax
     b92:	40 38 f8             	cmp    %dil,%al
     b95:	0f 47 c7             	cmova  %edi,%eax
     b98:	c3                   	ret    
     b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ba0 <func_lerp_119(eve::sse_abi_v0::wide<double, eve::fixed<2l> >, eve::sse_abi_v0::wide<double, eve::fixed<2l> >, double)>:
     ba0:	f2 0f 12 d2          	movddup %xmm2,%xmm2
     ba4:	66 0f 28 da          	movapd %xmm2,%xmm3
     ba8:	66 0f 59 d8          	mulpd  %xmm0,%xmm3
     bac:	66 0f 5c c3          	subpd  %xmm3,%xmm0
     bb0:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
     bb4:	66 0f 58 c2          	addpd  %xmm2,%xmm0
     bb8:	c3                   	ret    
     bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000bc0 <func_bit_and_120(float, float)>:
     bc0:	0f 54 c1             	andps  %xmm1,%xmm0
     bc3:	c3                   	ret    
     bc4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bcb:	00 00 00 
     bce:	66 90                	xchg   %ax,%ax

0000000000000bd0 <func_bit_and_121(double, double)>:
     bd0:	0f 54 c1             	andps  %xmm1,%xmm0
     bd3:	c3                   	ret    
     bd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bdb:	00 00 00 
     bde:	66 90                	xchg   %ax,%ax

0000000000000be0 <func_bit_and_122(long, long)>:
     be0:	48 89 f8             	mov    %rdi,%rax
     be3:	48 21 f0             	and    %rsi,%rax
     be6:	c3                   	ret    
     be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     bee:	00 00 

0000000000000bf0 <func_bit_and_123(int, int)>:
     bf0:	89 f8                	mov    %edi,%eax
     bf2:	21 f0                	and    %esi,%eax
     bf4:	c3                   	ret    
     bf5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     bfc:	00 00 00 
     bff:	90                   	nop

0000000000000c00 <func_bit_and_124(short, short)>:
     c00:	89 f8                	mov    %edi,%eax
     c02:	21 f0                	and    %esi,%eax
     c04:	c3                   	ret    
     c05:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c0c:	00 00 00 
     c0f:	90                   	nop

0000000000000c10 <func_bit_and_125(signed char, signed char)>:
     c10:	89 f8                	mov    %edi,%eax
     c12:	21 f0                	and    %esi,%eax
     c14:	c3                   	ret    
     c15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c1c:	00 00 00 
     c1f:	90                   	nop

0000000000000c20 <func_bit_and_126(unsigned long, unsigned long)>:
     c20:	48 89 f8             	mov    %rdi,%rax
     c23:	48 21 f0             	and    %rsi,%rax
     c26:	c3                   	ret    
     c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c2e:	00 00 

0000000000000c30 <func_bit_and_127(unsigned int, unsigned int)>:
     c30:	89 f8                	mov    %edi,%eax
     c32:	21 f0                	and    %esi,%eax
     c34:	c3                   	ret    
     c35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c3c:	00 00 00 
     c3f:	90                   	nop

0000000000000c40 <func_bit_and_128(unsigned short, unsigned short)>:
     c40:	89 f8                	mov    %edi,%eax
     c42:	21 f0                	and    %esi,%eax
     c44:	c3                   	ret    
     c45:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c4c:	00 00 00 
     c4f:	90                   	nop

0000000000000c50 <func_bit_and_129(unsigned char, unsigned char)>:
     c50:	89 f8                	mov    %edi,%eax
     c52:	21 f0                	and    %esi,%eax
     c54:	c3                   	ret    
     c55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c5c:	00 00 00 
     c5f:	90                   	nop

0000000000000c60 <func_bit_and_130(unsigned long, unsigned long)>:
     c60:	48 89 f8             	mov    %rdi,%rax
     c63:	48 21 f0             	and    %rsi,%rax
     c66:	c3                   	ret    
     c67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c6e:	00 00 

0000000000000c70 <func_bit_and_131(unsigned int, unsigned int)>:
     c70:	89 f8                	mov    %edi,%eax
     c72:	21 f0                	and    %esi,%eax
     c74:	c3                   	ret    
     c75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c7c:	00 00 00 
     c7f:	90                   	nop

0000000000000c80 <func_bit_and_132(unsigned short, unsigned short)>:
     c80:	89 f8                	mov    %edi,%eax
     c82:	21 f0                	and    %esi,%eax
     c84:	c3                   	ret    
     c85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c8c:	00 00 00 
     c8f:	90                   	nop

0000000000000c90 <func_bit_and_133(unsigned char, unsigned char)>:
     c90:	89 f8                	mov    %edi,%eax
     c92:	21 f0                	and    %esi,%eax
     c94:	c3                   	ret    
     c95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c9c:	00 00 00 
     c9f:	90                   	nop

0000000000000ca0 <func_max_134(float, float)>:
     ca0:	f3 0f 5f c8          	maxss  %xmm0,%xmm1
     ca4:	0f 28 c1             	movaps %xmm1,%xmm0
     ca7:	c3                   	ret    
     ca8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     caf:	00 

0000000000000cb0 <func_max_135(double, double)>:
     cb0:	f2 0f 5f c8          	maxsd  %xmm0,%xmm1
     cb4:	66 0f 28 c1          	movapd %xmm1,%xmm0
     cb8:	c3                   	ret    
     cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000cc0 <func_max_136(int, int)>:
     cc0:	89 f8                	mov    %edi,%eax
     cc2:	39 fe                	cmp    %edi,%esi
     cc4:	0f 4f c6             	cmovg  %esi,%eax
     cc7:	c3                   	ret    
     cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ccf:	00 

0000000000000cd0 <func_div_137(float, float)>:
     cd0:	f3 0f 5e c1          	divss  %xmm1,%xmm0
     cd4:	c3                   	ret    
     cd5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cdc:	00 00 00 
     cdf:	90                   	nop

0000000000000ce0 <func_div_138(double, double)>:
     ce0:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
     ce4:	c3                   	ret    
     ce5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cec:	00 00 00 
     cef:	90                   	nop

0000000000000cf0 <func_div_139(long, long)>:
     cf0:	48 89 f8             	mov    %rdi,%rax
     cf3:	48 89 f9             	mov    %rdi,%rcx
     cf6:	48 09 f1             	or     %rsi,%rcx
     cf9:	48 c1 e9 20          	shr    $0x20,%rcx
     cfd:	74 06                	je     d05 <func_div_139(long, long)+0x15>
     cff:	48 99                	cqto   
     d01:	48 f7 fe             	idiv   %rsi
     d04:	c3                   	ret    
     d05:	31 d2                	xor    %edx,%edx
     d07:	f7 f6                	div    %esi
     d09:	c3                   	ret    
     d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d10 <func_div_140(int, int)>:
     d10:	89 f8                	mov    %edi,%eax
     d12:	99                   	cltd   
     d13:	f7 fe                	idiv   %esi
     d15:	c3                   	ret    
     d16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     d1d:	00 00 00 

0000000000000d20 <func_div_141(short, short)>:
     d20:	89 f8                	mov    %edi,%eax
     d22:	99                   	cltd   
     d23:	f7 fe                	idiv   %esi
     d25:	c3                   	ret    
     d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     d2d:	00 00 00 

0000000000000d30 <func_div_142(signed char, signed char)>:
     d30:	89 f8                	mov    %edi,%eax
     d32:	66 99                	cwtd   
     d34:	66 f7 fe             	idiv   %si
     d37:	c3                   	ret    
     d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d3f:	00 

0000000000000d40 <func_div_143(unsigned long, unsigned long)>:
     d40:	48 89 f8             	mov    %rdi,%rax
     d43:	48 89 f9             	mov    %rdi,%rcx
     d46:	48 09 f1             	or     %rsi,%rcx
     d49:	48 c1 e9 20          	shr    $0x20,%rcx
     d4d:	74 06                	je     d55 <func_div_143(unsigned long, unsigned long)+0x15>
     d4f:	31 d2                	xor    %edx,%edx
     d51:	48 f7 f6             	div    %rsi
     d54:	c3                   	ret    
     d55:	31 d2                	xor    %edx,%edx
     d57:	f7 f6                	div    %esi
     d59:	c3                   	ret    
     d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d60 <func_div_144(unsigned int, unsigned int)>:
     d60:	89 f8                	mov    %edi,%eax
     d62:	31 d2                	xor    %edx,%edx
     d64:	f7 f6                	div    %esi
     d66:	c3                   	ret    
     d67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     d6e:	00 00 

0000000000000d70 <func_div_145(unsigned short, unsigned short)>:
     d70:	89 f8                	mov    %edi,%eax
     d72:	31 d2                	xor    %edx,%edx
     d74:	66 f7 f6             	div    %si
     d77:	c3                   	ret    
     d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d7f:	00 

0000000000000d80 <func_div_146(unsigned char, unsigned char)>:
     d80:	40 0f b6 c7          	movzbl %dil,%eax
     d84:	40 f6 f6             	div    %sil
     d87:	c3                   	ret    
     d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d8f:	00 

0000000000000d90 <func_div_147(unsigned long, unsigned long)>:
     d90:	48 89 f8             	mov    %rdi,%rax
     d93:	48 89 f9             	mov    %rdi,%rcx
     d96:	48 09 f1             	or     %rsi,%rcx
     d99:	48 c1 e9 20          	shr    $0x20,%rcx
     d9d:	74 06                	je     da5 <func_div_147(unsigned long, unsigned long)+0x15>
     d9f:	31 d2                	xor    %edx,%edx
     da1:	48 f7 f6             	div    %rsi
     da4:	c3                   	ret    
     da5:	31 d2                	xor    %edx,%edx
     da7:	f7 f6                	div    %esi
     da9:	c3                   	ret    
     daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000db0 <func_div_148(unsigned int, unsigned int)>:
     db0:	89 f8                	mov    %edi,%eax
     db2:	31 d2                	xor    %edx,%edx
     db4:	f7 f6                	div    %esi
     db6:	c3                   	ret    
     db7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     dbe:	00 00 

0000000000000dc0 <func_div_149(unsigned short, unsigned short)>:
     dc0:	89 f8                	mov    %edi,%eax
     dc2:	31 d2                	xor    %edx,%edx
     dc4:	66 f7 f6             	div    %si
     dc7:	c3                   	ret    
     dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     dcf:	00 

0000000000000dd0 <func_div_150(unsigned char, unsigned char)>:
     dd0:	40 0f b6 c7          	movzbl %dil,%eax
     dd4:	40 f6 f6             	div    %sil
     dd7:	c3                   	ret    
     dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ddf:	00 

0000000000000de0 <func_fdim_151(float, float)>:
     de0:	0f 28 d0             	movaps %xmm0,%xmm2
     de3:	f3 0f 5c d1          	subss  %xmm1,%xmm2
     de7:	f3 0f c2 c8 06       	cmpnless %xmm0,%xmm1
     dec:	0f 55 ca             	andnps %xmm2,%xmm1
     def:	0f 28 c1             	movaps %xmm1,%xmm0
     df2:	c3                   	ret    
     df3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     dfa:	00 00 00 
     dfd:	0f 1f 00             	nopl   (%rax)

0000000000000e00 <func_fdim_152(double, double)>:
     e00:	66 0f 28 d0          	movapd %xmm0,%xmm2
     e04:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
     e08:	f2 0f c2 c8 06       	cmpnlesd %xmm0,%xmm1
     e0d:	66 0f 55 ca          	andnpd %xmm2,%xmm1
     e11:	66 0f 28 c1          	movapd %xmm1,%xmm0
     e15:	c3                   	ret    
     e16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     e1d:	00 00 00 

0000000000000e20 <func_fdim_153(long, long)>:
     e20:	31 c0                	xor    %eax,%eax
     e22:	48 29 f7             	sub    %rsi,%rdi
     e25:	48 0f 4d c7          	cmovge %rdi,%rax
     e29:	c3                   	ret    
     e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000e30 <func_fdim_154(int, int)>:
     e30:	31 c0                	xor    %eax,%eax
     e32:	29 f7                	sub    %esi,%edi
     e34:	0f 4d c7             	cmovge %edi,%eax
     e37:	c3                   	ret    
     e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     e3f:	00 

0000000000000e40 <func_fdim_155(short, short)>:
     e40:	31 c0                	xor    %eax,%eax
     e42:	66 29 f7             	sub    %si,%di
     e45:	0f 4d c7             	cmovge %edi,%eax
     e48:	c3                   	ret    
     e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e50 <func_fdim_156(signed char, signed char)>:
     e50:	31 c9                	xor    %ecx,%ecx
     e52:	40 28 f7             	sub    %sil,%dil
     e55:	40 0f b6 c7          	movzbl %dil,%eax
     e59:	0f 4c c1             	cmovl  %ecx,%eax
     e5c:	c3                   	ret    
     e5d:	0f 1f 00             	nopl   (%rax)

0000000000000e60 <func_fdim_157(unsigned long, unsigned long)>:
     e60:	31 c0                	xor    %eax,%eax
     e62:	48 29 f7             	sub    %rsi,%rdi
     e65:	48 0f 43 c7          	cmovae %rdi,%rax
     e69:	c3                   	ret    
     e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000e70 <func_fdim_158(unsigned int, unsigned int)>:
     e70:	31 c0                	xor    %eax,%eax
     e72:	29 f7                	sub    %esi,%edi
     e74:	0f 43 c7             	cmovae %edi,%eax
     e77:	c3                   	ret    
     e78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     e7f:	00 

0000000000000e80 <func_fdim_159(unsigned short, unsigned short)>:
     e80:	31 c0                	xor    %eax,%eax
     e82:	66 29 f7             	sub    %si,%di
     e85:	0f 43 c7             	cmovae %edi,%eax
     e88:	c3                   	ret    
     e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e90 <func_fdim_160(unsigned char, unsigned char)>:
     e90:	31 c9                	xor    %ecx,%ecx
     e92:	40 28 f7             	sub    %sil,%dil
     e95:	40 0f b6 c7          	movzbl %dil,%eax
     e99:	0f 42 c1             	cmovb  %ecx,%eax
     e9c:	c3                   	ret    
     e9d:	0f 1f 00             	nopl   (%rax)

0000000000000ea0 <func_fdim_161(unsigned long, unsigned long)>:
     ea0:	31 c0                	xor    %eax,%eax
     ea2:	48 29 f7             	sub    %rsi,%rdi
     ea5:	48 0f 43 c7          	cmovae %rdi,%rax
     ea9:	c3                   	ret    
     eaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000eb0 <func_fdim_162(unsigned int, unsigned int)>:
     eb0:	31 c0                	xor    %eax,%eax
     eb2:	29 f7                	sub    %esi,%edi
     eb4:	0f 43 c7             	cmovae %edi,%eax
     eb7:	c3                   	ret    
     eb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ebf:	00 

0000000000000ec0 <func_fdim_163(unsigned short, unsigned short)>:
     ec0:	31 c0                	xor    %eax,%eax
     ec2:	66 29 f7             	sub    %si,%di
     ec5:	0f 43 c7             	cmovae %edi,%eax
     ec8:	c3                   	ret    
     ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ed0 <func_fdim_164(unsigned char, unsigned char)>:
     ed0:	31 c9                	xor    %ecx,%ecx
     ed2:	40 28 f7             	sub    %sil,%dil
     ed5:	40 0f b6 c7          	movzbl %dil,%eax
     ed9:	0f 42 c1             	cmovb  %ecx,%eax
     edc:	c3                   	ret    
     edd:	0f 1f 00             	nopl   (%rax)

0000000000000ee0 <func_copysign_165(float, float)>:
     ee0:	66 0f 7e c0          	movd   %xmm0,%eax
     ee4:	0f 50 c9             	movmskps %xmm1,%ecx
     ee7:	c1 e1 1f             	shl    $0x1f,%ecx
     eea:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     eef:	09 c8                	or     %ecx,%eax
     ef1:	66 0f 6e c0          	movd   %eax,%xmm0
     ef5:	c3                   	ret    
     ef6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     efd:	00 00 00 

0000000000000f00 <func_floor_166(float)>:
     f00:	f3 0f 5b c8          	cvttps2dq %xmm0,%xmm1
     f04:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
     f07:	0f 28 15 00 00 00 00 	movaps 0x0(%rip),%xmm2        # f0e <func_floor_166(float)+0xe>
     f0e:	0f 54 d0             	andps  %xmm0,%xmm2
     f11:	f3 0f c2 15 00 00 00 	cmpnless 0x0(%rip),%xmm2        # f1a <func_floor_166(float)+0x1a>
     f18:	00 06 
     f1a:	0f 28 da             	movaps %xmm2,%xmm3
     f1d:	0f 54 d8             	andps  %xmm0,%xmm3
     f20:	0f 55 d1             	andnps %xmm1,%xmm2
     f23:	0f 56 d3             	orps   %xmm3,%xmm2
     f26:	f3 0f c2 c2 05       	cmpnltss %xmm2,%xmm0
     f2b:	0f 28 c8             	movaps %xmm0,%xmm1
     f2e:	0f 54 ca             	andps  %xmm2,%xmm1
     f31:	f3 0f 58 15 00 00 00 	addss  0x0(%rip),%xmm2        # f39 <func_floor_166(float)+0x39>
     f38:	00 
     f39:	0f 55 c2             	andnps %xmm2,%xmm0
     f3c:	0f 56 c1             	orps   %xmm1,%xmm0
     f3f:	c3                   	ret    

0000000000000f40 <func_floor_167(double)>:
     f40:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
     f45:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
     f4a:	66 0f 28 15 00 00 00 	movapd 0x0(%rip),%xmm2        # f52 <func_floor_167(double)+0x12>
     f51:	00 
     f52:	66 0f 54 d0          	andpd  %xmm0,%xmm2
     f56:	f2 0f c2 15 00 00 00 	cmpnlesd 0x0(%rip),%xmm2        # f5f <func_floor_167(double)+0x1f>
     f5d:	00 06 
     f5f:	66 0f 28 da          	movapd %xmm2,%xmm3
     f63:	66 0f 54 d8          	andpd  %xmm0,%xmm3
     f67:	66 0f 55 d1          	andnpd %xmm1,%xmm2
     f6b:	66 0f 56 d3          	orpd   %xmm3,%xmm2
     f6f:	f2 0f c2 c2 05       	cmpnltsd %xmm2,%xmm0
     f74:	66 0f 28 c8          	movapd %xmm0,%xmm1
     f78:	66 0f 54 ca          	andpd  %xmm2,%xmm1
     f7c:	f2 0f 58 15 00 00 00 	addsd  0x0(%rip),%xmm2        # f84 <func_floor_167(double)+0x44>
     f83:	00 
     f84:	66 0f 55 c2          	andnpd %xmm2,%xmm0
     f88:	66 0f 56 c1          	orpd   %xmm1,%xmm0
     f8c:	c3                   	ret    
     f8d:	0f 1f 00             	nopl   (%rax)

0000000000000f90 <func_floor_168(long)>:
     f90:	48 89 f8             	mov    %rdi,%rax
     f93:	c3                   	ret    
     f94:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     f9b:	00 00 00 
     f9e:	66 90                	xchg   %ax,%ax

0000000000000fa0 <func_floor_169(int)>:
     fa0:	89 f8                	mov    %edi,%eax
     fa2:	c3                   	ret    
     fa3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     faa:	00 00 00 
     fad:	0f 1f 00             	nopl   (%rax)

0000000000000fb0 <func_floor_170(short)>:
     fb0:	89 f8                	mov    %edi,%eax
     fb2:	c3                   	ret    
     fb3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fba:	00 00 00 
     fbd:	0f 1f 00             	nopl   (%rax)

0000000000000fc0 <func_floor_171(signed char)>:
     fc0:	89 f8                	mov    %edi,%eax
     fc2:	c3                   	ret    
     fc3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fca:	00 00 00 
     fcd:	0f 1f 00             	nopl   (%rax)

0000000000000fd0 <func_floor_172(unsigned long)>:
     fd0:	48 89 f8             	mov    %rdi,%rax
     fd3:	c3                   	ret    
     fd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fdb:	00 00 00 
     fde:	66 90                	xchg   %ax,%ax

0000000000000fe0 <func_floor_173(unsigned int)>:
     fe0:	89 f8                	mov    %edi,%eax
     fe2:	c3                   	ret    
     fe3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     fea:	00 00 00 
     fed:	0f 1f 00             	nopl   (%rax)

0000000000000ff0 <func_floor_174(unsigned short)>:
     ff0:	89 f8                	mov    %edi,%eax
     ff2:	c3                   	ret    
     ff3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     ffa:	00 00 00 
     ffd:	0f 1f 00             	nopl   (%rax)

0000000000001000 <func_floor_175(unsigned char)>:
    1000:	89 f8                	mov    %edi,%eax
    1002:	c3                   	ret    
    1003:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    100a:	00 00 00 
    100d:	0f 1f 00             	nopl   (%rax)

0000000000001010 <func_floor_176(unsigned long)>:
    1010:	48 89 f8             	mov    %rdi,%rax
    1013:	c3                   	ret    
    1014:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    101b:	00 00 00 
    101e:	66 90                	xchg   %ax,%ax

0000000000001020 <func_floor_177(unsigned int)>:
    1020:	89 f8                	mov    %edi,%eax
    1022:	c3                   	ret    
    1023:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    102a:	00 00 00 
    102d:	0f 1f 00             	nopl   (%rax)

0000000000001030 <func_floor_178(unsigned short)>:
    1030:	89 f8                	mov    %edi,%eax
    1032:	c3                   	ret    
    1033:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    103a:	00 00 00 
    103d:	0f 1f 00             	nopl   (%rax)

0000000000001040 <func_floor_179(unsigned char)>:
    1040:	89 f8                	mov    %edi,%eax
    1042:	c3                   	ret    
    1043:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    104a:	00 00 00 
    104d:	0f 1f 00             	nopl   (%rax)

0000000000001050 <func_inc_180(float)>:
    1050:	f3 0f 58 05 00 00 00 	addss  0x0(%rip),%xmm0        # 1058 <func_inc_180(float)+0x8>
    1057:	00 
    1058:	c3                   	ret    
    1059:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001060 <func_inc_181(double)>:
    1060:	f2 0f 58 05 00 00 00 	addsd  0x0(%rip),%xmm0        # 1068 <func_inc_181(double)+0x8>
    1067:	00 
    1068:	c3                   	ret    
    1069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001070 <func_inc_182(long)>:
    1070:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1074:	c3                   	ret    
    1075:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107c:	00 00 00 
    107f:	90                   	nop

0000000000001080 <func_inc_183(int)>:
    1080:	8d 47 01             	lea    0x1(%rdi),%eax
    1083:	c3                   	ret    
    1084:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108b:	00 00 00 
    108e:	66 90                	xchg   %ax,%ax

0000000000001090 <func_inc_184(short)>:
    1090:	8d 47 01             	lea    0x1(%rdi),%eax
    1093:	c3                   	ret    
    1094:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    109b:	00 00 00 
    109e:	66 90                	xchg   %ax,%ax

00000000000010a0 <func_inc_185(signed char)>:
    10a0:	8d 47 01             	lea    0x1(%rdi),%eax
    10a3:	c3                   	ret    
    10a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ab:	00 00 00 
    10ae:	66 90                	xchg   %ax,%ax

00000000000010b0 <func_inc_186(unsigned long)>:
    10b0:	48 8d 47 01          	lea    0x1(%rdi),%rax
    10b4:	c3                   	ret    
    10b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10bc:	00 00 00 
    10bf:	90                   	nop

00000000000010c0 <func_inc_187(unsigned int)>:
    10c0:	8d 47 01             	lea    0x1(%rdi),%eax
    10c3:	c3                   	ret    
    10c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cb:	00 00 00 
    10ce:	66 90                	xchg   %ax,%ax

00000000000010d0 <func_inc_188(unsigned short)>:
    10d0:	8d 47 01             	lea    0x1(%rdi),%eax
    10d3:	c3                   	ret    
    10d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10db:	00 00 00 
    10de:	66 90                	xchg   %ax,%ax

00000000000010e0 <func_inc_189(unsigned char)>:
    10e0:	8d 47 01             	lea    0x1(%rdi),%eax
    10e3:	c3                   	ret    
    10e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10eb:	00 00 00 
    10ee:	66 90                	xchg   %ax,%ax

00000000000010f0 <func_inc_190(unsigned long)>:
    10f0:	48 8d 47 01          	lea    0x1(%rdi),%rax
    10f4:	c3                   	ret    
    10f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fc:	00 00 00 
    10ff:	90                   	nop

0000000000001100 <func_inc_191(unsigned int)>:
    1100:	8d 47 01             	lea    0x1(%rdi),%eax
    1103:	c3                   	ret    
    1104:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110b:	00 00 00 
    110e:	66 90                	xchg   %ax,%ax

0000000000001110 <func_inc_192(unsigned short)>:
    1110:	8d 47 01             	lea    0x1(%rdi),%eax
    1113:	c3                   	ret    
    1114:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    111b:	00 00 00 
    111e:	66 90                	xchg   %ax,%ax

0000000000001120 <func_inc_193(unsigned char)>:
    1120:	8d 47 01             	lea    0x1(%rdi),%eax
    1123:	c3                   	ret    
    1124:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112b:	00 00 00 
    112e:	66 90                	xchg   %ax,%ax

0000000000001130 <func_add_194(float, float)>:
    1130:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1134:	c3                   	ret    
    1135:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113c:	00 00 00 
    113f:	90                   	nop

0000000000001140 <func_add_195(double, double)>:
    1140:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1144:	c3                   	ret    
    1145:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114c:	00 00 00 
    114f:	90                   	nop

0000000000001150 <func_add_196(long, long)>:
    1150:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1154:	c3                   	ret    
    1155:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115c:	00 00 00 
    115f:	90                   	nop

0000000000001160 <func_add_197(int, int)>:
    1160:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1163:	c3                   	ret    
    1164:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116b:	00 00 00 
    116e:	66 90                	xchg   %ax,%ax

0000000000001170 <func_add_198(short, short)>:
    1170:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1173:	c3                   	ret    
    1174:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117b:	00 00 00 
    117e:	66 90                	xchg   %ax,%ax

0000000000001180 <func_add_199(signed char, signed char)>:
    1180:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1183:	c3                   	ret    
    1184:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    118b:	00 00 00 
    118e:	66 90                	xchg   %ax,%ax

0000000000001190 <func_add_200(unsigned long, unsigned long)>:
    1190:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1194:	c3                   	ret    
    1195:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    119c:	00 00 00 
    119f:	90                   	nop

00000000000011a0 <func_add_201(unsigned int, unsigned int)>:
    11a0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    11a3:	c3                   	ret    
    11a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11ab:	00 00 00 
    11ae:	66 90                	xchg   %ax,%ax

00000000000011b0 <func_add_202(unsigned short, unsigned short)>:
    11b0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    11b3:	c3                   	ret    
    11b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bb:	00 00 00 
    11be:	66 90                	xchg   %ax,%ax

00000000000011c0 <func_add_203(unsigned char, unsigned char)>:
    11c0:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    11c3:	c3                   	ret    
    11c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11cb:	00 00 00 
    11ce:	66 90                	xchg   %ax,%ax

00000000000011d0 <func_add_204(unsigned long, unsigned long)>:
    11d0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    11d4:	c3                   	ret    
    11d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11dc:	00 00 00 
    11df:	90                   	nop

00000000000011e0 <func_add_205(unsigned int, unsigned int)>:
    11e0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    11e3:	c3                   	ret    
    11e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11eb:	00 00 00 
    11ee:	66 90                	xchg   %ax,%ax

00000000000011f0 <func_add_206(unsigned short, unsigned short)>:
    11f0:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    11f3:	c3                   	ret    
    11f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11fb:	00 00 00 
    11fe:	66 90                	xchg   %ax,%ax

0000000000001200 <func_add_207(unsigned char, unsigned char)>:
    1200:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1203:	c3                   	ret    
    1204:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    120b:	00 00 00 
    120e:	66 90                	xchg   %ax,%ax

0000000000001210 <func_average_208(float, float)>:
    1210:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 1218 <func_average_208(float, float)+0x8>
    1217:	00 
    1218:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    121c:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1220:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1224:	c3                   	ret    
    1225:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    122c:	00 00 00 
    122f:	90                   	nop

0000000000001230 <func_average_209(double, double)>:
    1230:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 1238 <func_average_209(double, double)+0x8>
    1237:	00 
    1238:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    123c:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1240:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1244:	c3                   	ret    
    1245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    124c:	00 00 00 
    124f:	90                   	nop

0000000000001250 <func_average_210(long, long)>:
    1250:	48 89 f0             	mov    %rsi,%rax
    1253:	48 21 f8             	and    %rdi,%rax
    1256:	48 31 fe             	xor    %rdi,%rsi
    1259:	48 d1 fe             	sar    %rsi
    125c:	48 01 f0             	add    %rsi,%rax
    125f:	c3                   	ret    

0000000000001260 <func_average_211(int, int)>:
    1260:	89 f0                	mov    %esi,%eax
    1262:	21 f8                	and    %edi,%eax
    1264:	31 fe                	xor    %edi,%esi
    1266:	d1 fe                	sar    %esi
    1268:	01 f0                	add    %esi,%eax
    126a:	c3                   	ret    
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <func_average_212(short, short)>:
    1270:	89 f0                	mov    %esi,%eax
    1272:	21 f8                	and    %edi,%eax
    1274:	31 fe                	xor    %edi,%esi
    1276:	d1 fe                	sar    %esi
    1278:	01 f0                	add    %esi,%eax
    127a:	c3                   	ret    
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <func_average_213(signed char, signed char)>:
    1280:	89 f0                	mov    %esi,%eax
    1282:	40 20 f8             	and    %dil,%al
    1285:	40 30 fe             	xor    %dil,%sil
    1288:	40 d0 fe             	sar    %sil
    128b:	40 00 f0             	add    %sil,%al
    128e:	c3                   	ret    
    128f:	90                   	nop

0000000000001290 <func_average_214(unsigned long, unsigned long)>:
    1290:	48 89 f0             	mov    %rsi,%rax
    1293:	48 21 f8             	and    %rdi,%rax
    1296:	48 31 fe             	xor    %rdi,%rsi
    1299:	48 d1 ee             	shr    %rsi
    129c:	48 01 f0             	add    %rsi,%rax
    129f:	c3                   	ret    

00000000000012a0 <func_average_215(unsigned int, unsigned int)>:
    12a0:	89 f0                	mov    %esi,%eax
    12a2:	21 f8                	and    %edi,%eax
    12a4:	31 fe                	xor    %edi,%esi
    12a6:	d1 ee                	shr    %esi
    12a8:	01 f0                	add    %esi,%eax
    12aa:	c3                   	ret    
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <func_average_216(unsigned short, unsigned short)>:
    12b0:	89 f0                	mov    %esi,%eax
    12b2:	21 f8                	and    %edi,%eax
    12b4:	31 fe                	xor    %edi,%esi
    12b6:	d1 ee                	shr    %esi
    12b8:	01 f0                	add    %esi,%eax
    12ba:	c3                   	ret    
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <func_average_217(unsigned char, unsigned char)>:
    12c0:	89 f0                	mov    %esi,%eax
    12c2:	40 20 f8             	and    %dil,%al
    12c5:	40 30 fe             	xor    %dil,%sil
    12c8:	40 d0 ee             	shr    %sil
    12cb:	40 00 f0             	add    %sil,%al
    12ce:	c3                   	ret    
    12cf:	90                   	nop

00000000000012d0 <func_average_218(unsigned long, unsigned long)>:
    12d0:	48 89 f0             	mov    %rsi,%rax
    12d3:	48 21 f8             	and    %rdi,%rax
    12d6:	48 31 fe             	xor    %rdi,%rsi
    12d9:	48 d1 ee             	shr    %rsi
    12dc:	48 01 f0             	add    %rsi,%rax
    12df:	c3                   	ret    

00000000000012e0 <func_average_219(unsigned int, unsigned int)>:
    12e0:	89 f0                	mov    %esi,%eax
    12e2:	21 f8                	and    %edi,%eax
    12e4:	31 fe                	xor    %edi,%esi
    12e6:	d1 ee                	shr    %esi
    12e8:	01 f0                	add    %esi,%eax
    12ea:	c3                   	ret    
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <func_average_220(unsigned short, unsigned short)>:
    12f0:	89 f0                	mov    %esi,%eax
    12f2:	21 f8                	and    %edi,%eax
    12f4:	31 fe                	xor    %edi,%esi
    12f6:	d1 ee                	shr    %esi
    12f8:	01 f0                	add    %esi,%eax
    12fa:	c3                   	ret    
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <func_average_221(unsigned char, unsigned char)>:
    1300:	89 f0                	mov    %esi,%eax
    1302:	40 20 f8             	and    %dil,%al
    1305:	40 30 fe             	xor    %dil,%sil
    1308:	40 d0 ee             	shr    %sil
    130b:	40 00 f0             	add    %sil,%al
    130e:	c3                   	ret    
    130f:	90                   	nop

0000000000001310 <func_is_positive_222(float)>:
    1310:	0f 50 c0             	movmskps %xmm0,%eax
    1313:	c1 e0 1f             	shl    $0x1f,%eax
    1316:	c1 f8 1f             	sar    $0x1f,%eax
    1319:	f7 d0                	not    %eax
    131b:	c3                   	ret    
    131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001320 <func_is_positive_223(double)>:
    1320:	66 0f 50 c0          	movmskpd %xmm0,%eax
    1324:	48 c1 e0 3f          	shl    $0x3f,%rax
    1328:	48 c1 f8 3f          	sar    $0x3f,%rax
    132c:	48 f7 d0             	not    %rax
    132f:	c3                   	ret    

0000000000001330 <func_is_positive_224(long)>:
    1330:	48 89 f8             	mov    %rdi,%rax
    1333:	48 c1 f8 3f          	sar    $0x3f,%rax
    1337:	48 f7 d0             	not    %rax
    133a:	c3                   	ret    
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <func_is_positive_225(int)>:
    1340:	89 f8                	mov    %edi,%eax
    1342:	c1 f8 1f             	sar    $0x1f,%eax
    1345:	f7 d0                	not    %eax
    1347:	c3                   	ret    
    1348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    134f:	00 

0000000000001350 <func_is_positive_226(short)>:
    1350:	89 f8                	mov    %edi,%eax
    1352:	c1 f8 0f             	sar    $0xf,%eax
    1355:	f7 d0                	not    %eax
    1357:	c3                   	ret    
    1358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    135f:	00 

0000000000001360 <func_is_positive_227(signed char)>:
    1360:	89 f8                	mov    %edi,%eax
    1362:	c0 f8 07             	sar    $0x7,%al
    1365:	f6 d0                	not    %al
    1367:	c3                   	ret    
    1368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    136f:	00 

0000000000001370 <func_is_positive_228(unsigned long)>:
    1370:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1377:	c3                   	ret    
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00 

0000000000001380 <func_is_positive_229(unsigned int)>:
    1380:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1385:	c3                   	ret    
    1386:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    138d:	00 00 00 

0000000000001390 <func_is_positive_230(unsigned short)>:
    1390:	66 b8 ff ff          	mov    $0xffff,%ax
    1394:	c3                   	ret    
    1395:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    139c:	00 00 00 
    139f:	90                   	nop

00000000000013a0 <func_is_positive_231(unsigned char)>:
    13a0:	b0 ff                	mov    $0xff,%al
    13a2:	c3                   	ret    
    13a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13aa:	00 00 00 
    13ad:	0f 1f 00             	nopl   (%rax)

00000000000013b0 <func_is_positive_232(unsigned long)>:
    13b0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    13b7:	c3                   	ret    
    13b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13bf:	00 

00000000000013c0 <func_is_positive_233(unsigned int)>:
    13c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    13c5:	c3                   	ret    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <func_is_positive_234(unsigned short)>:
    13d0:	66 b8 ff ff          	mov    $0xffff,%ax
    13d4:	c3                   	ret    
    13d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13dc:	00 00 00 
    13df:	90                   	nop

00000000000013e0 <func_is_positive_235(unsigned char)>:
    13e0:	b0 ff                	mov    $0xff,%al
    13e2:	c3                   	ret    
    13e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ea:	00 00 00 
    13ed:	0f 1f 00             	nopl   (%rax)

00000000000013f0 <func_dec_236(float)>:
    13f0:	f3 0f 58 05 00 00 00 	addss  0x0(%rip),%xmm0        # 13f8 <func_dec_236(float)+0x8>
    13f7:	00 
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <func_dec_237(double)>:
    1400:	f2 0f 58 05 00 00 00 	addsd  0x0(%rip),%xmm0        # 1408 <func_dec_237(double)+0x8>
    1407:	00 
    1408:	c3                   	ret    
    1409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001410 <func_dec_238(long)>:
    1410:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1414:	c3                   	ret    
    1415:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141c:	00 00 00 
    141f:	90                   	nop

0000000000001420 <func_dec_239(int)>:
    1420:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1423:	c3                   	ret    
    1424:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142b:	00 00 00 
    142e:	66 90                	xchg   %ax,%ax

0000000000001430 <func_dec_240(short)>:
    1430:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1433:	c3                   	ret    
    1434:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    143b:	00 00 00 
    143e:	66 90                	xchg   %ax,%ax

0000000000001440 <func_dec_241(signed char)>:
    1440:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1443:	c3                   	ret    
    1444:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    144b:	00 00 00 
    144e:	66 90                	xchg   %ax,%ax

0000000000001450 <func_dec_242(unsigned long)>:
    1450:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1454:	c3                   	ret    
    1455:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    145c:	00 00 00 
    145f:	90                   	nop

0000000000001460 <func_dec_243(unsigned int)>:
    1460:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1463:	c3                   	ret    
    1464:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    146b:	00 00 00 
    146e:	66 90                	xchg   %ax,%ax

0000000000001470 <func_dec_244(unsigned short)>:
    1470:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1473:	c3                   	ret    
    1474:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    147b:	00 00 00 
    147e:	66 90                	xchg   %ax,%ax

0000000000001480 <func_dec_245(unsigned char)>:
    1480:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1483:	c3                   	ret    
    1484:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    148b:	00 00 00 
    148e:	66 90                	xchg   %ax,%ax

0000000000001490 <func_dec_246(unsigned long)>:
    1490:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1494:	c3                   	ret    
    1495:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    149c:	00 00 00 
    149f:	90                   	nop

00000000000014a0 <func_dec_247(unsigned int)>:
    14a0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    14a3:	c3                   	ret    
    14a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ab:	00 00 00 
    14ae:	66 90                	xchg   %ax,%ax

00000000000014b0 <func_dec_248(unsigned short)>:
    14b0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    14b3:	c3                   	ret    
    14b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14bb:	00 00 00 
    14be:	66 90                	xchg   %ax,%ax

00000000000014c0 <func_dec_249(unsigned char)>:
    14c0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    14c3:	c3                   	ret    
    14c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14cb:	00 00 00 
    14ce:	66 90                	xchg   %ax,%ax

00000000000014d0 <func_frac_250(float)>:
    14d0:	0f 57 c9             	xorps  %xmm1,%xmm1
    14d3:	0f 2e c1             	ucomiss %xmm1,%xmm0
    14d6:	75 02                	jne    14da <func_frac_250(float)+0xa>
    14d8:	7b 2a                	jnp    1504 <func_frac_250(float)+0x34>
    14da:	0f 28 0d 00 00 00 00 	movaps 0x0(%rip),%xmm1        # 14e1 <func_frac_250(float)+0x11>
    14e1:	0f 54 c8             	andps  %xmm0,%xmm1
    14e4:	f3 0f 5b d0          	cvttps2dq %xmm0,%xmm2
    14e8:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    14eb:	f3 0f c2 0d 00 00 00 	cmpnless 0x0(%rip),%xmm1        # 14f4 <func_frac_250(float)+0x24>
    14f2:	00 06 
    14f4:	0f 28 d9             	movaps %xmm1,%xmm3
    14f7:	0f 54 d8             	andps  %xmm0,%xmm3
    14fa:	0f 55 ca             	andnps %xmm2,%xmm1
    14fd:	0f 56 cb             	orps   %xmm3,%xmm1
    1500:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1504:	c3                   	ret    
    1505:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    150c:	00 00 00 
    150f:	90                   	nop

0000000000001510 <func_frac_251(double)>:
    1510:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1514:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    1518:	75 02                	jne    151c <func_frac_251(double)+0xc>
    151a:	7b 33                	jnp    154f <func_frac_251(double)+0x3f>
    151c:	66 0f 28 0d 00 00 00 	movapd 0x0(%rip),%xmm1        # 1524 <func_frac_251(double)+0x14>
    1523:	00 
    1524:	66 0f 54 c8          	andpd  %xmm0,%xmm1
    1528:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    152d:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    1532:	f2 0f c2 0d 00 00 00 	cmpnlesd 0x0(%rip),%xmm1        # 153b <func_frac_251(double)+0x2b>
    1539:	00 06 
    153b:	66 0f 28 d9          	movapd %xmm1,%xmm3
    153f:	66 0f 54 d8          	andpd  %xmm0,%xmm3
    1543:	66 0f 55 ca          	andnpd %xmm2,%xmm1
    1547:	66 0f 56 cb          	orpd   %xmm3,%xmm1
    154b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    154f:	c3                   	ret    

0000000000001550 <func_frac_252(long)>:
    1550:	31 c0                	xor    %eax,%eax
    1552:	c3                   	ret    
    1553:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    155a:	00 00 00 
    155d:	0f 1f 00             	nopl   (%rax)

0000000000001560 <func_frac_253(int)>:
    1560:	31 c0                	xor    %eax,%eax
    1562:	c3                   	ret    
    1563:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    156a:	00 00 00 
    156d:	0f 1f 00             	nopl   (%rax)

0000000000001570 <func_frac_254(short)>:
    1570:	31 c0                	xor    %eax,%eax
    1572:	c3                   	ret    
    1573:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    157a:	00 00 00 
    157d:	0f 1f 00             	nopl   (%rax)

0000000000001580 <func_frac_255(signed char)>:
    1580:	31 c0                	xor    %eax,%eax
    1582:	c3                   	ret    
    1583:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    158a:	00 00 00 
    158d:	0f 1f 00             	nopl   (%rax)

0000000000001590 <func_frac_256(unsigned long)>:
    1590:	31 c0                	xor    %eax,%eax
    1592:	c3                   	ret    
    1593:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    159a:	00 00 00 
    159d:	0f 1f 00             	nopl   (%rax)

00000000000015a0 <func_frac_257(unsigned int)>:
    15a0:	31 c0                	xor    %eax,%eax
    15a2:	c3                   	ret    
    15a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15aa:	00 00 00 
    15ad:	0f 1f 00             	nopl   (%rax)

00000000000015b0 <func_frac_258(unsigned short)>:
    15b0:	31 c0                	xor    %eax,%eax
    15b2:	c3                   	ret    
    15b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15ba:	00 00 00 
    15bd:	0f 1f 00             	nopl   (%rax)

00000000000015c0 <func_frac_259(unsigned char)>:
    15c0:	31 c0                	xor    %eax,%eax
    15c2:	c3                   	ret    
    15c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15ca:	00 00 00 
    15cd:	0f 1f 00             	nopl   (%rax)

00000000000015d0 <func_frac_260(unsigned long)>:
    15d0:	31 c0                	xor    %eax,%eax
    15d2:	c3                   	ret    
    15d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15da:	00 00 00 
    15dd:	0f 1f 00             	nopl   (%rax)

00000000000015e0 <func_frac_261(unsigned int)>:
    15e0:	31 c0                	xor    %eax,%eax
    15e2:	c3                   	ret    
    15e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15ea:	00 00 00 
    15ed:	0f 1f 00             	nopl   (%rax)

00000000000015f0 <func_frac_262(unsigned short)>:
    15f0:	31 c0                	xor    %eax,%eax
    15f2:	c3                   	ret    
    15f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15fa:	00 00 00 
    15fd:	0f 1f 00             	nopl   (%rax)

0000000000001600 <func_frac_263(unsigned char)>:
    1600:	31 c0                	xor    %eax,%eax
    1602:	c3                   	ret    
    1603:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    160a:	00 00 00 
    160d:	0f 1f 00             	nopl   (%rax)

0000000000001610 <func_agm_264(float, float)>:
    1610:	55                   	push   %rbp
    1611:	41 56                	push   %r14
    1613:	53                   	push   %rbx
    1614:	48 83 ec 50          	sub    $0x50,%rsp
    1618:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 1620 <func_agm_264(float, float)+0x10>
    161f:	00 
    1620:	0f 28 d1             	movaps %xmm1,%xmm2
    1623:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    1627:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
    162c:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
    1630:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    1634:	0f 28 d0             	movaps %xmm0,%xmm2
    1637:	f3 0f 5c d0          	subss  %xmm0,%xmm2
    163b:	0f 2e d2             	ucomiss %xmm2,%xmm2
    163e:	0f 8a e4 01 00 00    	jp     1828 <func_agm_264(float, float)+0x218>
    1644:	66 0f 7e c3          	movd   %xmm0,%ebx
    1648:	81 e3 00 00 80 7f    	and    $0x7f800000,%ebx
    164e:	8d 83 00 00 80 c0    	lea    -0x3f800000(%rbx),%eax
    1654:	0f 57 d2             	xorps  %xmm2,%xmm2
    1657:	0f 2e c2             	ucomiss %xmm2,%xmm0
    165a:	0f 45 d8             	cmovne %eax,%ebx
    165d:	0f 4a d8             	cmovp  %eax,%ebx
    1660:	0f 28 54 24 20       	movaps 0x20(%rsp),%xmm2
    1665:	0f 28 e2             	movaps %xmm2,%xmm4
    1668:	66 0f 3a 21 e1 10    	insertps $0x10,%xmm1,%xmm4
    166e:	0f 28 2d 00 00 00 00 	movaps 0x0(%rip),%xmm5        # 1675 <func_agm_264(float, float)+0x65>
    1675:	0f 28 c4             	movaps %xmm4,%xmm0
    1678:	0f 54 c5             	andps  %xmm5,%xmm0
    167b:	0f c2 05 00 00 00 00 	cmpeqps 0x0(%rip),%xmm0        # 1683 <func_agm_264(float, float)+0x73>
    1682:	00 
    1683:	66 0f 38 25 c0       	pmovsxdq %xmm0,%xmm0
    1688:	66 0f 50 c0          	movmskpd %xmm0,%eax
    168c:	85 c0                	test   %eax,%eax
    168e:	40 0f 95 c5          	setne  %bpl
    1692:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
    1697:	0f 2e ca             	ucomiss %xmm2,%xmm1
    169a:	0f 9a c0             	setp   %al
    169d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16a1:	0f 28 0d 00 00 00 00 	movaps 0x0(%rip),%xmm1        # 16a8 <func_agm_264(float, float)+0x98>
    16a8:	0f 54 cc             	andps  %xmm4,%xmm1
    16ab:	0f 56 0d 00 00 00 00 	orps   0x0(%rip),%xmm1        # 16b2 <func_agm_264(float, float)+0xa2>
    16b2:	0f c2 c4 04          	cmpneqps %xmm4,%xmm0
    16b6:	0f 29 64 24 30       	movaps %xmm4,0x30(%rsp)
    16bb:	0f 28 d4             	movaps %xmm4,%xmm2
    16be:	66 0f 38 14 d1       	blendvps %xmm0,%xmm1,%xmm2
    16c3:	f3 0f 16 c2          	movshdup %xmm2,%xmm0
    16c7:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    16cb:	0f 57 e4             	xorps  %xmm4,%xmm4
    16ce:	0f 2e e0             	ucomiss %xmm0,%xmm4
    16d1:	41 0f 93 c6          	setae  %r14b
    16d5:	41 08 c6             	or     %al,%r14b
    16d8:	41 08 ee             	or     %bpl,%r14b
    16db:	0f 57 f6             	xorps  %xmm6,%xmm6
    16de:	75 0a                	jne    16ea <func_agm_264(float, float)+0xda>
    16e0:	0f 28 64 24 20       	movaps 0x20(%rsp),%xmm4
    16e5:	0f 28 74 24 10       	movaps 0x10(%rsp),%xmm6
    16ea:	b8 00 00 80 3f       	mov    $0x3f800000,%eax
    16ef:	29 d8                	sub    %ebx,%eax
    16f1:	66 0f 6e c0          	movd   %eax,%xmm0
    16f5:	f3 0f 59 e0          	mulss  %xmm0,%xmm4
    16f9:	f3 0f 59 f0          	mulss  %xmm0,%xmm6
    16fd:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 1705 <func_agm_264(float, float)+0xf5>
    1704:	00 
    1705:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    1709:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 1711 <func_agm_264(float, float)+0x101>
    1710:	00 
    1711:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    1715:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    1719:	0f 54 cd             	andps  %xmm5,%xmm1
    171c:	0f 2e 0d 00 00 00 00 	ucomiss 0x0(%rip),%xmm1        # 1723 <func_agm_264(float, float)+0x113>
    1723:	0f 86 96 00 00 00    	jbe    17bf <func_agm_264(float, float)+0x1af>
    1729:	45 0f 57 c0          	xorps  %xmm8,%xmm8
    172d:	f3 0f 10 3d 00 00 00 	movss  0x0(%rip),%xmm7        # 1735 <func_agm_264(float, float)+0x125>
    1734:	00 
    1735:	f3 44 0f 10 0d 00 00 	movss  0x0(%rip),%xmm9        # 173e <func_agm_264(float, float)+0x12e>
    173c:	00 00 
    173e:	eb 6c                	jmp    17ac <func_agm_264(float, float)+0x19c>
    1740:	0f 29 64 24 40       	movaps %xmm4,0x40(%rsp)
    1745:	f3 0f 11 74 24 0c    	movss  %xmm6,0xc(%rsp)
    174b:	e8 00 00 00 00       	call   1750 <func_agm_264(float, float)+0x140>
    1750:	f3 44 0f 10 0d 00 00 	movss  0x0(%rip),%xmm9        # 1759 <func_agm_264(float, float)+0x149>
    1757:	00 00 
    1759:	f3 0f 10 3d 00 00 00 	movss  0x0(%rip),%xmm7        # 1761 <func_agm_264(float, float)+0x151>
    1760:	00 
    1761:	45 0f 57 c0          	xorps  %xmm8,%xmm8
    1765:	f3 0f 10 74 24 0c    	movss  0xc(%rsp),%xmm6
    176b:	0f 28 64 24 40       	movaps 0x40(%rsp),%xmm4
    1770:	0f 28 2d 00 00 00 00 	movaps 0x0(%rip),%xmm5        # 1777 <func_agm_264(float, float)+0x167>
    1777:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 177f <func_agm_264(float, float)+0x16f>
    177e:	00 
    177f:	0f 28 ce             	movaps %xmm6,%xmm1
    1782:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    1786:	0f 28 d4             	movaps %xmm4,%xmm2
    1789:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    178d:	f3 0f 58 d1          	addss  %xmm1,%xmm2
    1791:	f3 0f 59 f7          	mulss  %xmm7,%xmm6
    1795:	f3 0f 59 e3          	mulss  %xmm3,%xmm4
    1799:	f3 0f 58 e6          	addss  %xmm6,%xmm4
    179d:	0f 54 e5             	andps  %xmm5,%xmm4
    17a0:	41 0f 2e e1          	ucomiss %xmm9,%xmm4
    17a4:	0f 28 e2             	movaps %xmm2,%xmm4
    17a7:	0f 28 f0             	movaps %xmm0,%xmm6
    17aa:	76 16                	jbe    17c2 <func_agm_264(float, float)+0x1b2>
    17ac:	0f 28 c4             	movaps %xmm4,%xmm0
    17af:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    17b3:	41 0f 2e c0          	ucomiss %xmm8,%xmm0
    17b7:	72 87                	jb     1740 <func_agm_264(float, float)+0x130>
    17b9:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    17bd:	eb c0                	jmp    177f <func_agm_264(float, float)+0x16f>
    17bf:	0f 28 c6             	movaps %xmm6,%xmm0
    17c2:	0f 57 c9             	xorps  %xmm1,%xmm1
    17c5:	0f 28 54 24 30       	movaps 0x30(%rsp),%xmm2
    17ca:	0f c2 d1 04          	cmpneqps %xmm1,%xmm2
    17ce:	66 0f 38 25 ca       	pmovsxdq %xmm2,%xmm1
    17d3:	66 0f 50 c1          	movmskpd %xmm1,%eax
    17d7:	3c 03                	cmp    $0x3,%al
    17d9:	74 10                	je     17eb <func_agm_264(float, float)+0x1db>
    17db:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    17df:	0f 28 54 24 10       	movaps 0x10(%rsp),%xmm2
    17e4:	40 84 ed             	test   %bpl,%bpl
    17e7:	75 14                	jne    17fd <func_agm_264(float, float)+0x1ed>
    17e9:	eb 1b                	jmp    1806 <func_agm_264(float, float)+0x1f6>
    17eb:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 17f3 <func_agm_264(float, float)+0x1e3>
    17f2:	00 
    17f3:	0f 28 54 24 10       	movaps 0x10(%rsp),%xmm2
    17f8:	40 84 ed             	test   %bpl,%bpl
    17fb:	74 09                	je     1806 <func_agm_264(float, float)+0x1f6>
    17fd:	0f 28 4c 24 20       	movaps 0x20(%rsp),%xmm1
    1802:	f3 0f 58 ca          	addss  %xmm2,%xmm1
    1806:	45 84 f6             	test   %r14b,%r14b
    1809:	75 11                	jne    181c <func_agm_264(float, float)+0x20c>
    180b:	81 c3 00 00 80 3f    	add    $0x3f800000,%ebx
    1811:	66 0f 6e cb          	movd   %ebx,%xmm1
    1815:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    1819:	0f 28 c8             	movaps %xmm0,%xmm1
    181c:	0f 28 c1             	movaps %xmm1,%xmm0
    181f:	48 83 c4 50          	add    $0x50,%rsp
    1823:	5b                   	pop    %rbx
    1824:	41 5e                	pop    %r14
    1826:	5d                   	pop    %rbp
    1827:	c3                   	ret    
    1828:	31 db                	xor    %ebx,%ebx
    182a:	e9 31 fe ff ff       	jmp    1660 <func_agm_264(float, float)+0x50>
    182f:	90                   	nop

0000000000001830 <func_agm_265(double, double)>:
    1830:	55                   	push   %rbp
    1831:	41 57                	push   %r15
    1833:	41 56                	push   %r14
    1835:	53                   	push   %rbx
    1836:	48 83 ec 68          	sub    $0x68,%rsp
    183a:	f2 0f 10 2d 00 00 00 	movsd  0x0(%rip),%xmm5        # 1842 <func_agm_265(double, double)+0x12>
    1841:	00 
    1842:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1846:	f2 0f 59 d5          	mulsd  %xmm5,%xmm2
    184a:	66 0f 29 44 24 10    	movapd %xmm0,0x10(%rsp)
    1850:	f2 0f 59 c5          	mulsd  %xmm5,%xmm0
    1854:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1858:	66 0f 28 d0          	movapd %xmm0,%xmm2
    185c:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
    1860:	66 0f 2e d2          	ucomisd %xmm2,%xmm2
    1864:	0f 8a 3e 02 00 00    	jp     1aa8 <func_agm_265(double, double)+0x278>
    186a:	66 48 0f 7e c0       	movq   %xmm0,%rax
    186f:	48 bb 00 00 00 00 00 	movabs $0x7ff0000000000000,%rbx
    1876:	00 f0 7f 
    1879:	48 21 c3             	and    %rax,%rbx
    187c:	48 b8 00 00 00 00 00 	movabs $0xc010000000000000,%rax
    1883:	00 10 c0 
    1886:	48 01 d8             	add    %rbx,%rax
    1889:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    188d:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    1891:	48 0f 45 d8          	cmovne %rax,%rbx
    1895:	48 0f 4a d8          	cmovp  %rax,%rbx
    1899:	66 0f 28 54 24 10    	movapd 0x10(%rsp),%xmm2
    189f:	66 0f 28 da          	movapd %xmm2,%xmm3
    18a3:	66 0f 14 d9          	unpcklpd %xmm1,%xmm3
    18a7:	66 0f 28 25 00 00 00 	movapd 0x0(%rip),%xmm4        # 18af <func_agm_265(double, double)+0x7f>
    18ae:	00 
    18af:	66 0f 28 c3          	movapd %xmm3,%xmm0
    18b3:	66 0f 54 c4          	andpd  %xmm4,%xmm0
    18b7:	66 0f c2 05 00 00 00 	cmpeqpd 0x0(%rip),%xmm0        # 18c0 <func_agm_265(double, double)+0x90>
    18be:	00 00 
    18c0:	49 be 00 00 00 00 00 	movabs $0x3ff0000000000000,%r14
    18c7:	00 f0 3f 
    18ca:	66 0f 50 c0          	movmskpd %xmm0,%eax
    18ce:	85 c0                	test   %eax,%eax
    18d0:	40 0f 95 c5          	setne  %bpl
    18d4:	66 0f 29 0c 24       	movapd %xmm1,(%rsp)
    18d9:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
    18dd:	0f 9a c0             	setp   %al
    18e0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    18e4:	66 0f 28 15 00 00 00 	movapd 0x0(%rip),%xmm2        # 18ec <func_agm_265(double, double)+0xbc>
    18eb:	00 
    18ec:	66 0f 54 d3          	andpd  %xmm3,%xmm2
    18f0:	66 0f 56 15 00 00 00 	orpd   0x0(%rip),%xmm2        # 18f8 <func_agm_265(double, double)+0xc8>
    18f7:	00 
    18f8:	66 0f c2 c3 04       	cmpneqpd %xmm3,%xmm0
    18fd:	66 0f 29 5c 24 30    	movapd %xmm3,0x30(%rsp)
    1903:	66 0f 38 15 da       	blendvpd %xmm0,%xmm2,%xmm3
    1908:	66 0f 28 c3          	movapd %xmm3,%xmm0
    190c:	66 0f 15 c3          	unpckhpd %xmm3,%xmm0
    1910:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    1914:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1918:	66 0f 2e d8          	ucomisd %xmm0,%xmm3
    191c:	41 0f 93 c7          	setae  %r15b
    1920:	41 08 c7             	or     %al,%r15b
    1923:	41 08 ef             	or     %bpl,%r15b
    1926:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    192a:	75 0b                	jne    1937 <func_agm_265(double, double)+0x107>
    192c:	66 0f 28 5c 24 10    	movapd 0x10(%rsp),%xmm3
    1932:	66 0f 28 34 24       	movapd (%rsp),%xmm6
    1937:	4c 89 f0             	mov    %r14,%rax
    193a:	48 29 d8             	sub    %rbx,%rax
    193d:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1942:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    1946:	f2 0f 59 f0          	mulsd  %xmm0,%xmm6
    194a:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 1952 <func_agm_265(double, double)+0x122>
    1951:	00 
    1952:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
    1956:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 195e <func_agm_265(double, double)+0x12e>
    195d:	00 
    195e:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
    1962:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1966:	66 0f 54 d4          	andpd  %xmm4,%xmm2
    196a:	66 0f 2e 15 00 00 00 	ucomisd 0x0(%rip),%xmm2        # 1972 <func_agm_265(double, double)+0x142>
    1971:	00 
    1972:	0f 86 c5 00 00 00    	jbe    1a3d <func_agm_265(double, double)+0x20d>
    1978:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    197f:	ff ff 7f 
    1982:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    1987:	f2 0f 10 3d 00 00 00 	movsd  0x0(%rip),%xmm7        # 198f <func_agm_265(double, double)+0x15f>
    198e:	00 
    198f:	66 4c 0f 6e c8       	movq   %rax,%xmm9
    1994:	f2 0f 10 25 00 00 00 	movsd  0x0(%rip),%xmm4        # 199c <func_agm_265(double, double)+0x16c>
    199b:	00 
    199c:	66 44 0f 7f 4c 24 40 	movdqa %xmm9,0x40(%rsp)
    19a3:	eb 7f                	jmp    1a24 <func_agm_265(double, double)+0x1f4>
    19a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19ac:	00 00 00 
    19af:	90                   	nop
    19b0:	66 0f 29 5c 24 50    	movapd %xmm3,0x50(%rsp)
    19b6:	f2 0f 11 74 24 28    	movsd  %xmm6,0x28(%rsp)
    19bc:	e8 00 00 00 00       	call   19c1 <func_agm_265(double, double)+0x191>
    19c1:	f2 0f 10 25 00 00 00 	movsd  0x0(%rip),%xmm4        # 19c9 <func_agm_265(double, double)+0x199>
    19c8:	00 
    19c9:	66 44 0f 6f 4c 24 40 	movdqa 0x40(%rsp),%xmm9
    19d0:	f2 0f 10 3d 00 00 00 	movsd  0x0(%rip),%xmm7        # 19d8 <func_agm_265(double, double)+0x1a8>
    19d7:	00 
    19d8:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    19dd:	f2 0f 10 74 24 28    	movsd  0x28(%rsp),%xmm6
    19e3:	66 0f 28 5c 24 50    	movapd 0x50(%rsp),%xmm3
    19e9:	f2 0f 10 2d 00 00 00 	movsd  0x0(%rip),%xmm5        # 19f1 <func_agm_265(double, double)+0x1c1>
    19f0:	00 
    19f1:	66 0f 28 ce          	movapd %xmm6,%xmm1
    19f5:	f2 0f 59 cd          	mulsd  %xmm5,%xmm1
    19f9:	66 0f 28 d3          	movapd %xmm3,%xmm2
    19fd:	f2 0f 59 d5          	mulsd  %xmm5,%xmm2
    1a01:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1a05:	f2 0f 59 f7          	mulsd  %xmm7,%xmm6
    1a09:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    1a0d:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    1a11:	66 41 0f 54 d9       	andpd  %xmm9,%xmm3
    1a16:	66 0f 2e dc          	ucomisd %xmm4,%xmm3
    1a1a:	66 0f 28 da          	movapd %xmm2,%xmm3
    1a1e:	66 0f 28 f0          	movapd %xmm0,%xmm6
    1a22:	76 1d                	jbe    1a41 <func_agm_265(double, double)+0x211>
    1a24:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1a28:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
    1a2c:	66 41 0f 2e c0       	ucomisd %xmm8,%xmm0
    1a31:	0f 82 79 ff ff ff    	jb     19b0 <func_agm_265(double, double)+0x180>
    1a37:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1a3b:	eb b4                	jmp    19f1 <func_agm_265(double, double)+0x1c1>
    1a3d:	66 0f 28 c6          	movapd %xmm6,%xmm0
    1a41:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a45:	66 0f 28 54 24 30    	movapd 0x30(%rsp),%xmm2
    1a4b:	66 0f c2 d1 04       	cmpneqpd %xmm1,%xmm2
    1a50:	66 0f 50 c2          	movmskpd %xmm2,%eax
    1a54:	3c 03                	cmp    $0x3,%al
    1a56:	74 10                	je     1a68 <func_agm_265(double, double)+0x238>
    1a58:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a5c:	66 0f 28 14 24       	movapd (%rsp),%xmm2
    1a61:	40 84 ed             	test   %bpl,%bpl
    1a64:	75 14                	jne    1a7a <func_agm_265(double, double)+0x24a>
    1a66:	eb 1c                	jmp    1a84 <func_agm_265(double, double)+0x254>
    1a68:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1a70 <func_agm_265(double, double)+0x240>
    1a6f:	00 
    1a70:	66 0f 28 14 24       	movapd (%rsp),%xmm2
    1a75:	40 84 ed             	test   %bpl,%bpl
    1a78:	74 0a                	je     1a84 <func_agm_265(double, double)+0x254>
    1a7a:	66 0f 28 4c 24 10    	movapd 0x10(%rsp),%xmm1
    1a80:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1a84:	45 84 ff             	test   %r15b,%r15b
    1a87:	75 10                	jne    1a99 <func_agm_265(double, double)+0x269>
    1a89:	4c 01 f3             	add    %r14,%rbx
    1a8c:	66 48 0f 6e cb       	movq   %rbx,%xmm1
    1a91:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1a95:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a99:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1a9d:	48 83 c4 68          	add    $0x68,%rsp
    1aa1:	5b                   	pop    %rbx
    1aa2:	41 5e                	pop    %r14
    1aa4:	41 5f                	pop    %r15
    1aa6:	5d                   	pop    %rbp
    1aa7:	c3                   	ret    
    1aa8:	31 db                	xor    %ebx,%ebx
    1aaa:	e9 ea fd ff ff       	jmp    1899 <func_agm_265(double, double)+0x69>
    1aaf:	90                   	nop

0000000000001ab0 <func_mul_266(float, float)>:
    1ab0:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    1ab4:	c3                   	ret    
    1ab5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1abc:	00 00 00 
    1abf:	90                   	nop

0000000000001ac0 <func_mul_267(double, double)>:
    1ac0:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1ac4:	c3                   	ret    
    1ac5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1acc:	00 00 00 
    1acf:	90                   	nop

0000000000001ad0 <func_mul_268(long, long)>:
    1ad0:	48 89 f8             	mov    %rdi,%rax
    1ad3:	48 0f af c6          	imul   %rsi,%rax
    1ad7:	c3                   	ret    
    1ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1adf:	00 

0000000000001ae0 <func_mul_269(int, int)>:
    1ae0:	89 f8                	mov    %edi,%eax
    1ae2:	0f af c6             	imul   %esi,%eax
    1ae5:	c3                   	ret    
    1ae6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1aed:	00 00 00 

0000000000001af0 <func_mul_270(short, short)>:
    1af0:	89 f8                	mov    %edi,%eax
    1af2:	0f af c6             	imul   %esi,%eax
    1af5:	c3                   	ret    
    1af6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1afd:	00 00 00 

0000000000001b00 <func_mul_271(signed char, signed char)>:
    1b00:	89 f0                	mov    %esi,%eax
    1b02:	40 f6 e7             	mul    %dil
    1b05:	c3                   	ret    
    1b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b0d:	00 00 00 

0000000000001b10 <func_mul_272(unsigned long, unsigned long)>:
    1b10:	48 89 f8             	mov    %rdi,%rax
    1b13:	48 0f af c6          	imul   %rsi,%rax
    1b17:	c3                   	ret    
    1b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b1f:	00 

0000000000001b20 <func_mul_273(unsigned int, unsigned int)>:
    1b20:	89 f8                	mov    %edi,%eax
    1b22:	0f af c6             	imul   %esi,%eax
    1b25:	c3                   	ret    
    1b26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b2d:	00 00 00 

0000000000001b30 <func_mul_274(unsigned short, unsigned short)>:
    1b30:	89 f8                	mov    %edi,%eax
    1b32:	0f af c6             	imul   %esi,%eax
    1b35:	c3                   	ret    
    1b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b3d:	00 00 00 

0000000000001b40 <func_mul_275(unsigned char, unsigned char)>:
    1b40:	89 f0                	mov    %esi,%eax
    1b42:	40 f6 e7             	mul    %dil
    1b45:	c3                   	ret    
    1b46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b4d:	00 00 00 

0000000000001b50 <func_mul_276(unsigned long, unsigned long)>:
    1b50:	48 89 f8             	mov    %rdi,%rax
    1b53:	48 0f af c6          	imul   %rsi,%rax
    1b57:	c3                   	ret    
    1b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b5f:	00 

0000000000001b60 <func_mul_277(unsigned int, unsigned int)>:
    1b60:	89 f8                	mov    %edi,%eax
    1b62:	0f af c6             	imul   %esi,%eax
    1b65:	c3                   	ret    
    1b66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b6d:	00 00 00 

0000000000001b70 <func_mul_278(unsigned short, unsigned short)>:
    1b70:	89 f8                	mov    %edi,%eax
    1b72:	0f af c6             	imul   %esi,%eax
    1b75:	c3                   	ret    
    1b76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b7d:	00 00 00 

0000000000001b80 <func_mul_279(unsigned char, unsigned char)>:
    1b80:	89 f0                	mov    %esi,%eax
    1b82:	40 f6 e7             	mul    %dil
    1b85:	c3                   	ret    
    1b86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b8d:	00 00 00 

0000000000001b90 <func_bit_ornot_280(float, float)>:
    1b90:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 1b98 <func_bit_ornot_280(float, float)+0x8>
    1b97:	00 
    1b98:	0f 57 d1             	xorps  %xmm1,%xmm2
    1b9b:	0f 56 c2             	orps   %xmm2,%xmm0
    1b9e:	c3                   	ret    
    1b9f:	90                   	nop

0000000000001ba0 <func_bit_ornot_281(double, double)>:
    1ba0:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 1ba8 <func_bit_ornot_281(double, double)+0x8>
    1ba7:	00 
    1ba8:	0f 57 d1             	xorps  %xmm1,%xmm2
    1bab:	0f 56 c2             	orps   %xmm2,%xmm0
    1bae:	c3                   	ret    
    1baf:	90                   	nop

0000000000001bb0 <func_bit_ornot_282(long, long)>:
    1bb0:	48 89 f0             	mov    %rsi,%rax
    1bb3:	48 f7 d0             	not    %rax
    1bb6:	48 09 f8             	or     %rdi,%rax
    1bb9:	c3                   	ret    
    1bba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001bc0 <func_bit_ornot_283(int, int)>:
    1bc0:	89 f0                	mov    %esi,%eax
    1bc2:	f7 d0                	not    %eax
    1bc4:	09 f8                	or     %edi,%eax
    1bc6:	c3                   	ret    
    1bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1bce:	00 00 

0000000000001bd0 <func_bit_ornot_284(short, short)>:
    1bd0:	89 f0                	mov    %esi,%eax
    1bd2:	f7 d0                	not    %eax
    1bd4:	09 f8                	or     %edi,%eax
    1bd6:	c3                   	ret    
    1bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1bde:	00 00 

0000000000001be0 <func_bit_ornot_285(signed char, signed char)>:
    1be0:	89 f0                	mov    %esi,%eax
    1be2:	f6 d0                	not    %al
    1be4:	40 08 f8             	or     %dil,%al
    1be7:	c3                   	ret    
    1be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bef:	00 

0000000000001bf0 <func_bit_ornot_286(unsigned long, unsigned long)>:
    1bf0:	48 89 f0             	mov    %rsi,%rax
    1bf3:	48 f7 d0             	not    %rax
    1bf6:	48 09 f8             	or     %rdi,%rax
    1bf9:	c3                   	ret    
    1bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001c00 <func_bit_ornot_287(unsigned int, unsigned int)>:
    1c00:	89 f0                	mov    %esi,%eax
    1c02:	f7 d0                	not    %eax
    1c04:	09 f8                	or     %edi,%eax
    1c06:	c3                   	ret    
    1c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c0e:	00 00 

0000000000001c10 <func_bit_ornot_288(unsigned short, unsigned short)>:
    1c10:	89 f0                	mov    %esi,%eax
    1c12:	f7 d0                	not    %eax
    1c14:	09 f8                	or     %edi,%eax
    1c16:	c3                   	ret    
    1c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c1e:	00 00 

0000000000001c20 <func_bit_ornot_289(unsigned char, unsigned char)>:
    1c20:	89 f0                	mov    %esi,%eax
    1c22:	f6 d0                	not    %al
    1c24:	40 08 f8             	or     %dil,%al
    1c27:	c3                   	ret    
    1c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c2f:	00 

0000000000001c30 <func_bit_ornot_290(unsigned long, unsigned long)>:
    1c30:	48 89 f0             	mov    %rsi,%rax
    1c33:	48 f7 d0             	not    %rax
    1c36:	48 09 f8             	or     %rdi,%rax
    1c39:	c3                   	ret    
    1c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001c40 <func_bit_ornot_291(unsigned int, unsigned int)>:
    1c40:	89 f0                	mov    %esi,%eax
    1c42:	f7 d0                	not    %eax
    1c44:	09 f8                	or     %edi,%eax
    1c46:	c3                   	ret    
    1c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c4e:	00 00 

0000000000001c50 <func_bit_ornot_292(unsigned short, unsigned short)>:
    1c50:	89 f0                	mov    %esi,%eax
    1c52:	f7 d0                	not    %eax
    1c54:	09 f8                	or     %edi,%eax
    1c56:	c3                   	ret    
    1c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c5e:	00 00 

0000000000001c60 <func_bit_ornot_293(unsigned char, unsigned char)>:
    1c60:	89 f0                	mov    %esi,%eax
    1c62:	f6 d0                	not    %al
    1c64:	40 08 f8             	or     %dil,%al
    1c67:	c3                   	ret    
    1c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c6f:	00 

0000000000001c70 <func_dot_294(float, float)>:
    1c70:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    1c74:	c3                   	ret    
    1c75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c7c:	00 00 00 
    1c7f:	90                   	nop

0000000000001c80 <func_dot_295(double, double)>:
    1c80:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1c84:	c3                   	ret    
    1c85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c8c:	00 00 00 
    1c8f:	90                   	nop

0000000000001c90 <func_dot_296(long, long)>:
    1c90:	48 89 f8             	mov    %rdi,%rax
    1c93:	48 0f af c6          	imul   %rsi,%rax
    1c97:	c3                   	ret    
    1c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c9f:	00 

0000000000001ca0 <func_dot_297(int, int)>:
    1ca0:	89 f8                	mov    %edi,%eax
    1ca2:	0f af c6             	imul   %esi,%eax
    1ca5:	c3                   	ret    
    1ca6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cad:	00 00 00 

0000000000001cb0 <func_dot_298(short, short)>:
    1cb0:	89 f8                	mov    %edi,%eax
    1cb2:	0f af c6             	imul   %esi,%eax
    1cb5:	c3                   	ret    
    1cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cbd:	00 00 00 

0000000000001cc0 <func_dot_299(signed char, signed char)>:
    1cc0:	89 f0                	mov    %esi,%eax
    1cc2:	40 f6 e7             	mul    %dil
    1cc5:	c3                   	ret    
    1cc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ccd:	00 00 00 

0000000000001cd0 <func_dot_300(unsigned long, unsigned long)>:
    1cd0:	48 89 f8             	mov    %rdi,%rax
    1cd3:	48 0f af c6          	imul   %rsi,%rax
    1cd7:	c3                   	ret    
    1cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1cdf:	00 

0000000000001ce0 <func_dot_301(unsigned int, unsigned int)>:
    1ce0:	89 f8                	mov    %edi,%eax
    1ce2:	0f af c6             	imul   %esi,%eax
    1ce5:	c3                   	ret    
    1ce6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ced:	00 00 00 

0000000000001cf0 <func_dot_302(unsigned short, unsigned short)>:
    1cf0:	89 f8                	mov    %edi,%eax
    1cf2:	0f af c6             	imul   %esi,%eax
    1cf5:	c3                   	ret    
    1cf6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cfd:	00 00 00 

0000000000001d00 <func_dot_303(unsigned char, unsigned char)>:
    1d00:	89 f0                	mov    %esi,%eax
    1d02:	40 f6 e7             	mul    %dil
    1d05:	c3                   	ret    
    1d06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d0d:	00 00 00 

0000000000001d10 <func_dot_304(unsigned long, unsigned long)>:
    1d10:	48 89 f8             	mov    %rdi,%rax
    1d13:	48 0f af c6          	imul   %rsi,%rax
    1d17:	c3                   	ret    
    1d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d1f:	00 

0000000000001d20 <func_dot_305(unsigned int, unsigned int)>:
    1d20:	89 f8                	mov    %edi,%eax
    1d22:	0f af c6             	imul   %esi,%eax
    1d25:	c3                   	ret    
    1d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d2d:	00 00 00 

0000000000001d30 <func_dot_306(unsigned short, unsigned short)>:
    1d30:	89 f8                	mov    %edi,%eax
    1d32:	0f af c6             	imul   %esi,%eax
    1d35:	c3                   	ret    
    1d36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d3d:	00 00 00 

0000000000001d40 <func_dot_307(unsigned char, unsigned char)>:
    1d40:	89 f0                	mov    %esi,%eax
    1d42:	40 f6 e7             	mul    %dil
    1d45:	c3                   	ret    
    1d46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d4d:	00 00 00 

0000000000001d50 <func_min_308(float, float)>:
    1d50:	f3 0f 5d c1          	minss  %xmm1,%xmm0
    1d54:	c3                   	ret    
    1d55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d5c:	00 00 00 
    1d5f:	90                   	nop

0000000000001d60 <func_min_309(double, double)>:
    1d60:	f2 0f 5d c1          	minsd  %xmm1,%xmm0
    1d64:	c3                   	ret    
    1d65:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d6c:	00 00 00 
    1d6f:	90                   	nop

0000000000001d70 <func_min_310(long, long)>:
    1d70:	48 89 f0             	mov    %rsi,%rax
    1d73:	48 39 fe             	cmp    %rdi,%rsi
    1d76:	48 0f 4f c7          	cmovg  %rdi,%rax
    1d7a:	c3                   	ret    
    1d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001d80 <func_min_311(int, int)>:
    1d80:	89 f0                	mov    %esi,%eax
    1d82:	39 fe                	cmp    %edi,%esi
    1d84:	0f 4f c7             	cmovg  %edi,%eax
    1d87:	c3                   	ret    
    1d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d8f:	00 

0000000000001d90 <func_min_312(short, short)>:
    1d90:	89 f0                	mov    %esi,%eax
    1d92:	66 39 f8             	cmp    %di,%ax
    1d95:	0f 4f c7             	cmovg  %edi,%eax
    1d98:	c3                   	ret    
    1d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001da0 <func_min_313(signed char, signed char)>:
    1da0:	89 f0                	mov    %esi,%eax
    1da2:	40 38 f8             	cmp    %dil,%al
    1da5:	0f 4f c7             	cmovg  %edi,%eax
    1da8:	c3                   	ret    
    1da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001db0 <func_min_314(unsigned long, unsigned long)>:
    1db0:	48 89 f0             	mov    %rsi,%rax
    1db3:	48 39 fe             	cmp    %rdi,%rsi
    1db6:	48 0f 47 c7          	cmova  %rdi,%rax
    1dba:	c3                   	ret    
    1dbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001dc0 <func_min_315(unsigned int, unsigned int)>:
    1dc0:	89 f0                	mov    %esi,%eax
    1dc2:	39 fe                	cmp    %edi,%esi
    1dc4:	0f 47 c7             	cmova  %edi,%eax
    1dc7:	c3                   	ret    
    1dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1dcf:	00 

0000000000001dd0 <func_min_316(unsigned short, unsigned short)>:
    1dd0:	89 f0                	mov    %esi,%eax
    1dd2:	66 39 f8             	cmp    %di,%ax
    1dd5:	0f 47 c7             	cmova  %edi,%eax
    1dd8:	c3                   	ret    
    1dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001de0 <func_min_317(unsigned char, unsigned char)>:
    1de0:	89 f0                	mov    %esi,%eax
    1de2:	40 38 f8             	cmp    %dil,%al
    1de5:	0f 47 c7             	cmova  %edi,%eax
    1de8:	c3                   	ret    
    1de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001df0 <func_min_318(unsigned long, unsigned long)>:
    1df0:	48 89 f0             	mov    %rsi,%rax
    1df3:	48 39 fe             	cmp    %rdi,%rsi
    1df6:	48 0f 47 c7          	cmova  %rdi,%rax
    1dfa:	c3                   	ret    
    1dfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001e00 <func_min_319(unsigned int, unsigned int)>:
    1e00:	89 f0                	mov    %esi,%eax
    1e02:	39 fe                	cmp    %edi,%esi
    1e04:	0f 47 c7             	cmova  %edi,%eax
    1e07:	c3                   	ret    
    1e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1e0f:	00 

0000000000001e10 <func_min_320(unsigned short, unsigned short)>:
    1e10:	89 f0                	mov    %esi,%eax
    1e12:	66 39 f8             	cmp    %di,%ax
    1e15:	0f 47 c7             	cmova  %edi,%eax
    1e18:	c3                   	ret    
    1e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001e20 <func_min_321(unsigned char, unsigned char)>:
    1e20:	89 f0                	mov    %esi,%eax
    1e22:	40 38 f8             	cmp    %dil,%al
    1e25:	0f 47 c7             	cmova  %edi,%eax
    1e28:	c3                   	ret    
    1e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001e30 <func_bit_reverse_322(int)>:
    1e30:	89 f8                	mov    %edi,%eax
    1e32:	25 55 55 55 d5       	and    $0xd5555555,%eax
    1e37:	d1 ef                	shr    %edi
    1e39:	81 e7 55 55 55 55    	and    $0x55555555,%edi
    1e3f:	8d 04 47             	lea    (%rdi,%rax,2),%eax
    1e42:	89 c1                	mov    %eax,%ecx
    1e44:	81 e1 33 33 33 f3    	and    $0xf3333333,%ecx
    1e4a:	c1 e8 02             	shr    $0x2,%eax
    1e4d:	25 33 33 33 33       	and    $0x33333333,%eax
    1e52:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    1e55:	89 c1                	mov    %eax,%ecx
    1e57:	c1 e1 04             	shl    $0x4,%ecx
    1e5a:	81 e1 f0 f0 f0 f0    	and    $0xf0f0f0f0,%ecx
    1e60:	c1 e8 04             	shr    $0x4,%eax
    1e63:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
    1e68:	09 c8                	or     %ecx,%eax
    1e6a:	0f c8                	bswap  %eax
    1e6c:	c1 c8 10             	ror    $0x10,%eax
    1e6f:	89 c1                	mov    %eax,%ecx
    1e71:	c1 e1 10             	shl    $0x10,%ecx
    1e74:	c1 f8 10             	sar    $0x10,%eax
    1e77:	09 c8                	or     %ecx,%eax
    1e79:	c3                   	ret    
