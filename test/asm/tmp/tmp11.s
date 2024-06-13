
test/asm/tmp/tmp11.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_ceil_0(float)>:
       0:	f3 0f 1e fa          	endbr64 
       4:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # c <func_ceil_0(float)+0xc>
       b:	00 
       c:	0f 28 d0             	movaps %xmm0,%xmm2
       f:	0f 57 d3             	xorps  %xmm3,%xmm2
      12:	66 0f 7e d0          	movd   %xmm2,%eax
      16:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
      1b:	66 0f 6e c8          	movd   %eax,%xmm1
      1f:	0f 2e c9             	ucomiss %xmm1,%xmm1
      22:	7a 25                	jp     49 <func_ceil_0(float)+0x49>
      24:	0f 2f 0d 00 00 00 00 	comiss 0x0(%rip),%xmm1        # 2b <func_ceil_0(float)+0x2b>
      2b:	77 1c                	ja     49 <func_ceil_0(float)+0x49>
      2d:	f3 0f 2c c2          	cvttss2si %xmm2,%eax
      31:	66 0f ef c0          	pxor   %xmm0,%xmm0
      35:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
      39:	0f 2f c2             	comiss %xmm2,%xmm0
      3c:	76 08                	jbe    46 <func_ceil_0(float)+0x46>
      3e:	f3 0f 5c 05 00 00 00 	subss  0x0(%rip),%xmm0        # 46 <func_ceil_0(float)+0x46>
      45:	00 
      46:	0f 57 c3             	xorps  %xmm3,%xmm0
      49:	c3                   	ret    
      4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000050 <func_ceil_1(char)>:
      50:	f3 0f 1e fa          	endbr64 
      54:	89 f8                	mov    %edi,%eax
      56:	c3                   	ret    
      57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
      5e:	00 00 

0000000000000060 <func_ceil_2(double)>:
      60:	f3 0f 1e fa          	endbr64 
      64:	f3 0f 7e 1d 00 00 00 	movq   0x0(%rip),%xmm3        # 6c <func_ceil_2(double)+0xc>
      6b:	00 
      6c:	66 0f 28 d0          	movapd %xmm0,%xmm2
      70:	66 0f 57 d3          	xorpd  %xmm3,%xmm2
      74:	66 48 0f 7e d0       	movq   %xmm2,%rax
      79:	48 0f ba f0 3f       	btr    $0x3f,%rax
      7e:	66 48 0f 6e c8       	movq   %rax,%xmm1
      83:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
      87:	7a 2a                	jp     b3 <func_ceil_2(double)+0x53>
      89:	66 0f 2f 0d 00 00 00 	comisd 0x0(%rip),%xmm1        # 91 <func_ceil_2(double)+0x31>
      90:	00 
      91:	77 20                	ja     b3 <func_ceil_2(double)+0x53>
      93:	f2 48 0f 2c c2       	cvttsd2si %xmm2,%rax
      98:	66 0f ef c0          	pxor   %xmm0,%xmm0
      9c:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
      a1:	66 0f 2f c2          	comisd %xmm2,%xmm0
      a5:	76 08                	jbe    af <func_ceil_2(double)+0x4f>
      a7:	f2 0f 5c 05 00 00 00 	subsd  0x0(%rip),%xmm0        # af <func_ceil_2(double)+0x4f>
      ae:	00 
      af:	66 0f 57 c3          	xorpd  %xmm3,%xmm0
      b3:	c3                   	ret    
      b4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
      bb:	00 00 00 00 
      bf:	90                   	nop

00000000000000c0 <func_ceil_3(int)>:
      c0:	f3 0f 1e fa          	endbr64 
      c4:	89 f8                	mov    %edi,%eax
      c6:	c3                   	ret    
      c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
      ce:	00 00 

00000000000000d0 <func_absmax_4(float, float)>:
      d0:	f3 0f 1e fa          	endbr64 
      d4:	f3 0f 5f c8          	maxss  %xmm0,%xmm1
      d8:	66 0f 7e c8          	movd   %xmm1,%eax
      dc:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
      e1:	66 0f 6e c0          	movd   %eax,%xmm0
      e5:	c3                   	ret    
      e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      ed:	00 00 00 

00000000000000f0 <func_absmax_5(double, double)>:
      f0:	f3 0f 1e fa          	endbr64 
      f4:	f2 0f 5f c8          	maxsd  %xmm0,%xmm1
      f8:	66 48 0f 7e c8       	movq   %xmm1,%rax
      fd:	48 0f ba f0 3f       	btr    $0x3f,%rax
     102:	66 48 0f 6e c0       	movq   %rax,%xmm0
     107:	c3                   	ret    
     108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     10f:	00 

0000000000000110 <func_absmax_6(long, long)>:
     110:	f3 0f 1e fa          	endbr64 
     114:	48 39 f7             	cmp    %rsi,%rdi
     117:	48 0f 4c fe          	cmovl  %rsi,%rdi
     11b:	48 89 f8             	mov    %rdi,%rax
     11e:	48 f7 d8             	neg    %rax
     121:	48 0f 48 c7          	cmovs  %rdi,%rax
     125:	c3                   	ret    
     126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     12d:	00 00 00 

0000000000000130 <func_absmax_7(int, int)>:
     130:	f3 0f 1e fa          	endbr64 
     134:	39 f7                	cmp    %esi,%edi
     136:	0f 4c fe             	cmovl  %esi,%edi
     139:	89 f8                	mov    %edi,%eax
     13b:	f7 d8                	neg    %eax
     13d:	0f 48 c7             	cmovs  %edi,%eax
     140:	c3                   	ret    
     141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     148:	00 00 00 00 
     14c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000150 <func_absmax_8(short, short)>:
     150:	f3 0f 1e fa          	endbr64 
     154:	66 39 fe             	cmp    %di,%si
     157:	0f 4c f7             	cmovl  %edi,%esi
     15a:	89 f0                	mov    %esi,%eax
     15c:	66 f7 d8             	neg    %ax
     15f:	0f 48 c6             	cmovs  %esi,%eax
     162:	c3                   	ret    
     163:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     16a:	00 00 00 00 
     16e:	66 90                	xchg   %ax,%ax

0000000000000170 <func_absmax_9(signed char, signed char)>:
     170:	f3 0f 1e fa          	endbr64 
     174:	40 38 fe             	cmp    %dil,%sil
     177:	0f 4c f7             	cmovl  %edi,%esi
     17a:	89 f0                	mov    %esi,%eax
     17c:	f6 d8                	neg    %al
     17e:	0f 48 c6             	cmovs  %esi,%eax
     181:	c3                   	ret    
     182:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     189:	00 00 00 00 
     18d:	0f 1f 00             	nopl   (%rax)

0000000000000190 <func_absmax_10(unsigned long, unsigned long)>:
     190:	f3 0f 1e fa          	endbr64 
     194:	48 39 f7             	cmp    %rsi,%rdi
     197:	48 89 f0             	mov    %rsi,%rax
     19a:	48 0f 43 c7          	cmovae %rdi,%rax
     19e:	c3                   	ret    
     19f:	90                   	nop

00000000000001a0 <func_absmax_11(unsigned int, unsigned int)>:
     1a0:	f3 0f 1e fa          	endbr64 
     1a4:	39 f7                	cmp    %esi,%edi
     1a6:	89 f0                	mov    %esi,%eax
     1a8:	0f 43 c7             	cmovae %edi,%eax
     1ab:	c3                   	ret    
     1ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000001b0 <func_absmax_12(unsigned short, unsigned short)>:
     1b0:	f3 0f 1e fa          	endbr64 
     1b4:	66 39 fe             	cmp    %di,%si
     1b7:	89 f8                	mov    %edi,%eax
     1b9:	0f 43 c6             	cmovae %esi,%eax
     1bc:	c3                   	ret    
     1bd:	0f 1f 00             	nopl   (%rax)

00000000000001c0 <func_absmax_13(unsigned char, unsigned char)>:
     1c0:	f3 0f 1e fa          	endbr64 
     1c4:	40 38 fe             	cmp    %dil,%sil
     1c7:	89 f8                	mov    %edi,%eax
     1c9:	0f 43 c6             	cmovae %esi,%eax
     1cc:	c3                   	ret    
     1cd:	0f 1f 00             	nopl   (%rax)

00000000000001d0 <func_absmax_14(unsigned long, unsigned long)>:
     1d0:	f3 0f 1e fa          	endbr64 
     1d4:	48 39 f7             	cmp    %rsi,%rdi
     1d7:	48 89 f0             	mov    %rsi,%rax
     1da:	48 0f 43 c7          	cmovae %rdi,%rax
     1de:	c3                   	ret    
     1df:	90                   	nop

00000000000001e0 <func_absmax_15(unsigned int, unsigned int)>:
     1e0:	f3 0f 1e fa          	endbr64 
     1e4:	39 f7                	cmp    %esi,%edi
     1e6:	89 f0                	mov    %esi,%eax
     1e8:	0f 43 c7             	cmovae %edi,%eax
     1eb:	c3                   	ret    
     1ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000001f0 <func_absmax_16(unsigned short, unsigned short)>:
     1f0:	f3 0f 1e fa          	endbr64 
     1f4:	66 39 fe             	cmp    %di,%si
     1f7:	89 f8                	mov    %edi,%eax
     1f9:	0f 43 c6             	cmovae %esi,%eax
     1fc:	c3                   	ret    
     1fd:	0f 1f 00             	nopl   (%rax)

0000000000000200 <func_absmax_17(unsigned char, unsigned char)>:
     200:	f3 0f 1e fa          	endbr64 
     204:	40 38 fe             	cmp    %dil,%sil
     207:	89 f8                	mov    %edi,%eax
     209:	0f 43 c6             	cmovae %esi,%eax
     20c:	c3                   	ret    
     20d:	0f 1f 00             	nopl   (%rax)

0000000000000210 <func_bit_xor_18(float, float)>:
     210:	f3 0f 1e fa          	endbr64 
     214:	66 0f 7e c8          	movd   %xmm1,%eax
     218:	66 0f 7e c2          	movd   %xmm0,%edx
     21c:	31 c2                	xor    %eax,%edx
     21e:	66 0f 6e c2          	movd   %edx,%xmm0
     222:	c3                   	ret    
     223:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     22a:	00 00 00 00 
     22e:	66 90                	xchg   %ax,%ax

0000000000000230 <func_bit_xor_19(double, double)>:
     230:	f3 0f 1e fa          	endbr64 
     234:	66 48 0f 7e c8       	movq   %xmm1,%rax
     239:	66 48 0f 7e c2       	movq   %xmm0,%rdx
     23e:	48 31 c2             	xor    %rax,%rdx
     241:	66 48 0f 6e c2       	movq   %rdx,%xmm0
     246:	c3                   	ret    
     247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     24e:	00 00 

0000000000000250 <func_bit_xor_20(long, long)>:
     250:	f3 0f 1e fa          	endbr64 
     254:	48 89 f8             	mov    %rdi,%rax
     257:	48 31 f0             	xor    %rsi,%rax
     25a:	c3                   	ret    
     25b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000260 <func_bit_xor_21(int, int)>:
     260:	f3 0f 1e fa          	endbr64 
     264:	89 f8                	mov    %edi,%eax
     266:	31 f0                	xor    %esi,%eax
     268:	c3                   	ret    
     269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000270 <func_bit_xor_22(short, short)>:
     270:	f3 0f 1e fa          	endbr64 
     274:	89 f0                	mov    %esi,%eax
     276:	31 f8                	xor    %edi,%eax
     278:	c3                   	ret    
     279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000280 <func_bit_xor_23(signed char, signed char)>:
     280:	f3 0f 1e fa          	endbr64 
     284:	89 f0                	mov    %esi,%eax
     286:	31 f8                	xor    %edi,%eax
     288:	c3                   	ret    
     289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000290 <func_bit_xor_24(unsigned long, unsigned long)>:
     290:	f3 0f 1e fa          	endbr64 
     294:	48 89 f8             	mov    %rdi,%rax
     297:	48 31 f0             	xor    %rsi,%rax
     29a:	c3                   	ret    
     29b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002a0 <func_bit_xor_25(unsigned int, unsigned int)>:
     2a0:	f3 0f 1e fa          	endbr64 
     2a4:	89 f8                	mov    %edi,%eax
     2a6:	31 f0                	xor    %esi,%eax
     2a8:	c3                   	ret    
     2a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002b0 <func_bit_xor_26(unsigned short, unsigned short)>:
     2b0:	f3 0f 1e fa          	endbr64 
     2b4:	89 f0                	mov    %esi,%eax
     2b6:	31 f8                	xor    %edi,%eax
     2b8:	c3                   	ret    
     2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002c0 <func_bit_xor_27(unsigned char, unsigned char)>:
     2c0:	f3 0f 1e fa          	endbr64 
     2c4:	89 f0                	mov    %esi,%eax
     2c6:	31 f8                	xor    %edi,%eax
     2c8:	c3                   	ret    
     2c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002d0 <func_bit_xor_28(unsigned long, unsigned long)>:
     2d0:	f3 0f 1e fa          	endbr64 
     2d4:	48 89 f8             	mov    %rdi,%rax
     2d7:	48 31 f0             	xor    %rsi,%rax
     2da:	c3                   	ret    
     2db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002e0 <func_bit_xor_29(unsigned int, unsigned int)>:
     2e0:	f3 0f 1e fa          	endbr64 
     2e4:	89 f8                	mov    %edi,%eax
     2e6:	31 f0                	xor    %esi,%eax
     2e8:	c3                   	ret    
     2e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002f0 <func_bit_xor_30(unsigned short, unsigned short)>:
     2f0:	f3 0f 1e fa          	endbr64 
     2f4:	89 f0                	mov    %esi,%eax
     2f6:	31 f8                	xor    %edi,%eax
     2f8:	c3                   	ret    
     2f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000300 <func_bit_xor_31(unsigned char, unsigned char)>:
     300:	f3 0f 1e fa          	endbr64 
     304:	89 f0                	mov    %esi,%eax
     306:	31 f8                	xor    %edi,%eax
     308:	c3                   	ret    
     309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000310 <func_abs_32(float)>:
     310:	f3 0f 1e fa          	endbr64 
     314:	66 0f 7e c0          	movd   %xmm0,%eax
     318:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     31d:	66 0f 6e c0          	movd   %eax,%xmm0
     321:	c3                   	ret    
     322:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     329:	00 00 00 00 
     32d:	0f 1f 00             	nopl   (%rax)

0000000000000330 <func_abs_33(double)>:
     330:	f3 0f 1e fa          	endbr64 
     334:	66 48 0f 7e c0       	movq   %xmm0,%rax
     339:	48 0f ba f0 3f       	btr    $0x3f,%rax
     33e:	66 48 0f 6e c0       	movq   %rax,%xmm0
     343:	c3                   	ret    
     344:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     34b:	00 00 00 00 
     34f:	90                   	nop

0000000000000350 <func_abs_34(long)>:
     350:	f3 0f 1e fa          	endbr64 
     354:	48 89 f8             	mov    %rdi,%rax
     357:	48 f7 d8             	neg    %rax
     35a:	48 0f 48 c7          	cmovs  %rdi,%rax
     35e:	c3                   	ret    
     35f:	90                   	nop

0000000000000360 <func_abs_35(int)>:
     360:	f3 0f 1e fa          	endbr64 
     364:	89 f8                	mov    %edi,%eax
     366:	f7 d8                	neg    %eax
     368:	0f 48 c7             	cmovs  %edi,%eax
     36b:	c3                   	ret    
     36c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000370 <func_abs_36(short)>:
     370:	f3 0f 1e fa          	endbr64 
     374:	89 f8                	mov    %edi,%eax
     376:	66 f7 d8             	neg    %ax
     379:	0f 48 c7             	cmovs  %edi,%eax
     37c:	c3                   	ret    
     37d:	0f 1f 00             	nopl   (%rax)

0000000000000380 <func_abs_37(signed char)>:
     380:	f3 0f 1e fa          	endbr64 
     384:	89 f8                	mov    %edi,%eax
     386:	f6 d8                	neg    %al
     388:	0f 48 c7             	cmovs  %edi,%eax
     38b:	c3                   	ret    
     38c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000390 <func_abs_38(unsigned long)>:
     390:	f3 0f 1e fa          	endbr64 
     394:	48 89 f8             	mov    %rdi,%rax
     397:	c3                   	ret    
     398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     39f:	00 

00000000000003a0 <func_abs_39(unsigned int)>:
     3a0:	f3 0f 1e fa          	endbr64 
     3a4:	89 f8                	mov    %edi,%eax
     3a6:	c3                   	ret    
     3a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3ae:	00 00 

00000000000003b0 <func_abs_40(unsigned short)>:
     3b0:	f3 0f 1e fa          	endbr64 
     3b4:	89 f8                	mov    %edi,%eax
     3b6:	c3                   	ret    
     3b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3be:	00 00 

00000000000003c0 <func_abs_41(unsigned char)>:
     3c0:	f3 0f 1e fa          	endbr64 
     3c4:	89 f8                	mov    %edi,%eax
     3c6:	c3                   	ret    
     3c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3ce:	00 00 

00000000000003d0 <func_abs_42(unsigned long)>:
     3d0:	f3 0f 1e fa          	endbr64 
     3d4:	48 89 f8             	mov    %rdi,%rax
     3d7:	c3                   	ret    
     3d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     3df:	00 

00000000000003e0 <func_abs_43(unsigned int)>:
     3e0:	f3 0f 1e fa          	endbr64 
     3e4:	89 f8                	mov    %edi,%eax
     3e6:	c3                   	ret    
     3e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3ee:	00 00 

00000000000003f0 <func_abs_44(unsigned short)>:
     3f0:	f3 0f 1e fa          	endbr64 
     3f4:	89 f8                	mov    %edi,%eax
     3f6:	c3                   	ret    
     3f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3fe:	00 00 

0000000000000400 <func_abs_45(unsigned char)>:
     400:	f3 0f 1e fa          	endbr64 
     404:	89 f8                	mov    %edi,%eax
     406:	c3                   	ret    
     407:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     40e:	00 00 

0000000000000410 <func_fmod_46(float, float)>:
     410:	f3 0f 1e fa          	endbr64 
     414:	0f 28 d8             	movaps %xmm0,%xmm3
     417:	f3 0f 5e d9          	divss  %xmm1,%xmm3
     41b:	66 0f 7e d8          	movd   %xmm3,%eax
     41f:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     424:	66 0f 6e d0          	movd   %eax,%xmm2
     428:	0f 2e d2             	ucomiss %xmm2,%xmm2
     42b:	7a 0d                	jp     43a <func_fmod_46(float, float)+0x2a>
     42d:	0f 2f 15 00 00 00 00 	comiss 0x0(%rip),%xmm2        # 434 <func_fmod_46(float, float)+0x24>
     434:	0f 86 ae 00 00 00    	jbe    4e8 <func_fmod_46(float, float)+0xd8>
     43a:	66 0f ef e4          	pxor   %xmm4,%xmm4
     43e:	0f 2e c4             	ucomiss %xmm4,%xmm0
     441:	7a 45                	jp     488 <func_fmod_46(float, float)+0x78>
     443:	0f 28 d0             	movaps %xmm0,%xmm2
     446:	75 40                	jne    488 <func_fmod_46(float, float)+0x78>
     448:	31 c0                	xor    %eax,%eax
     44a:	0f 2e cc             	ucomiss %xmm4,%xmm1
     44d:	ba 00 00 00 00       	mov    $0x0,%edx
     452:	0f 9b c0             	setnp  %al
     455:	0f 45 c2             	cmovne %edx,%eax
     458:	85 c0                	test   %eax,%eax
     45a:	75 1c                	jne    478 <func_fmod_46(float, float)+0x68>
     45c:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
     461:	66 0f 7e 44 24 fc    	movd   %xmm0,-0x4(%rsp)
     467:	23 44 24 fc          	and    -0x4(%rsp),%eax
     46b:	66 0f 6e e8          	movd   %eax,%xmm5
     46f:	0f 2e 2d 00 00 00 00 	ucomiss 0x0(%rip),%xmm5        # 476 <func_fmod_46(float, float)+0x66>
     476:	76 60                	jbe    4d8 <func_fmod_46(float, float)+0xc8>
     478:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 480 <func_fmod_46(float, float)+0x70>
     47f:	00 
     480:	0f 28 c2             	movaps %xmm2,%xmm0
     483:	c3                   	ret    
     484:	0f 1f 40 00          	nopl   0x0(%rax)
     488:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
     48d:	66 0f 7e 4c 24 fc    	movd   %xmm1,-0x4(%rsp)
     493:	23 44 24 fc          	and    -0x4(%rsp),%eax
     497:	66 0f 6e f0          	movd   %eax,%xmm6
     49b:	0f 2e 35 00 00 00 00 	ucomiss 0x0(%rip),%xmm6        # 4a2 <func_fmod_46(float, float)+0x92>
     4a2:	7a 05                	jp     4a9 <func_fmod_46(float, float)+0x99>
     4a4:	0f 28 d0             	movaps %xmm0,%xmm2
     4a7:	74 9f                	je     448 <func_fmod_46(float, float)+0x38>
     4a9:	0f 28 d1             	movaps %xmm1,%xmm2
     4ac:	0f 57 15 00 00 00 00 	xorps  0x0(%rip),%xmm2        # 4b3 <func_fmod_46(float, float)+0xa3>
     4b3:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
     4b7:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
     4bb:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
     4bf:	66 0f ef db          	pxor   %xmm3,%xmm3
     4c3:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
     4c7:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
     4cb:	f2 0f 5a d2          	cvtsd2ss %xmm2,%xmm2
     4cf:	e9 74 ff ff ff       	jmp    448 <func_fmod_46(float, float)+0x38>
     4d4:	0f 1f 40 00          	nopl   0x0(%rax)
     4d8:	0f 2e c9             	ucomiss %xmm1,%xmm1
     4db:	7a 9b                	jp     478 <func_fmod_46(float, float)+0x68>
     4dd:	0f 2e c0             	ucomiss %xmm0,%xmm0
     4e0:	7b 9e                	jnp    480 <func_fmod_46(float, float)+0x70>
     4e2:	eb 94                	jmp    478 <func_fmod_46(float, float)+0x68>
     4e4:	0f 1f 40 00          	nopl   0x0(%rax)
     4e8:	f3 0f 2c c3          	cvttss2si %xmm3,%eax
     4ec:	66 0f ef db          	pxor   %xmm3,%xmm3
     4f0:	f3 0f 2a d8          	cvtsi2ss %eax,%xmm3
     4f4:	e9 41 ff ff ff       	jmp    43a <func_fmod_46(float, float)+0x2a>
     4f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000500 <func_fmod_47(double, double)>:
     500:	f3 0f 1e fa          	endbr64 
     504:	66 0f 28 d9          	movapd %xmm1,%xmm3
     508:	66 0f 28 c8          	movapd %xmm0,%xmm1
     50c:	66 0f 28 d0          	movapd %xmm0,%xmm2
     510:	48 83 ec 18          	sub    $0x18,%rsp
     514:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
     518:	66 48 0f 7e c8       	movq   %xmm1,%rax
     51d:	48 0f ba f0 3f       	btr    $0x3f,%rax
     522:	66 48 0f 6e c0       	movq   %rax,%xmm0
     527:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     52b:	7a 0e                	jp     53b <func_fmod_47(double, double)+0x3b>
     52d:	66 0f 2f 05 00 00 00 	comisd 0x0(%rip),%xmm0        # 535 <func_fmod_47(double, double)+0x35>
     534:	00 
     535:	0f 86 b5 00 00 00    	jbe    5f0 <func_fmod_47(double, double)+0xf0>
     53b:	66 0f ef e4          	pxor   %xmm4,%xmm4
     53f:	66 0f 2e d4          	ucomisd %xmm4,%xmm2
     543:	7a 4b                	jp     590 <func_fmod_47(double, double)+0x90>
     545:	66 0f 28 c2          	movapd %xmm2,%xmm0
     549:	75 45                	jne    590 <func_fmod_47(double, double)+0x90>
     54b:	31 c0                	xor    %eax,%eax
     54d:	66 0f 2e dc          	ucomisd %xmm4,%xmm3
     551:	ba 00 00 00 00       	mov    $0x0,%edx
     556:	0f 9b c0             	setnp  %al
     559:	48 0f 45 c2          	cmovne %rdx,%rax
     55d:	48 85 c0             	test   %rax,%rax
     560:	75 19                	jne    57b <func_fmod_47(double, double)+0x7b>
     562:	66 48 0f 7e d0       	movq   %xmm2,%rax
     567:	48 0f ba f0 3f       	btr    $0x3f,%rax
     56c:	66 48 0f 6e e8       	movq   %rax,%xmm5
     571:	66 0f 2e 2d 00 00 00 	ucomisd 0x0(%rip),%xmm5        # 579 <func_fmod_47(double, double)+0x79>
     578:	00 
     579:	76 65                	jbe    5e0 <func_fmod_47(double, double)+0xe0>
     57b:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 583 <func_fmod_47(double, double)+0x83>
     582:	00 
     583:	48 83 c4 18          	add    $0x18,%rsp
     587:	c3                   	ret    
     588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     58f:	00 
     590:	66 48 0f 7e d8       	movq   %xmm3,%rax
     595:	48 0f ba f0 3f       	btr    $0x3f,%rax
     59a:	66 48 0f 6e f0       	movq   %rax,%xmm6
     59f:	66 0f 2e 35 00 00 00 	ucomisd 0x0(%rip),%xmm6        # 5a7 <func_fmod_47(double, double)+0xa7>
     5a6:	00 
     5a7:	7a 06                	jp     5af <func_fmod_47(double, double)+0xaf>
     5a9:	66 0f 28 c2          	movapd %xmm2,%xmm0
     5ad:	74 9c                	je     54b <func_fmod_47(double, double)+0x4b>
     5af:	66 0f 28 c3          	movapd %xmm3,%xmm0
     5b3:	66 0f 57 05 00 00 00 	xorpd  0x0(%rip),%xmm0        # 5bb <func_fmod_47(double, double)+0xbb>
     5ba:	00 
     5bb:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
     5c1:	f2 0f 11 14 24       	movsd  %xmm2,(%rsp)
     5c6:	e8 00 00 00 00       	call   5cb <func_fmod_47(double, double)+0xcb>
     5cb:	f2 0f 10 14 24       	movsd  (%rsp),%xmm2
     5d0:	f2 0f 10 5c 24 08    	movsd  0x8(%rsp),%xmm3
     5d6:	66 0f ef e4          	pxor   %xmm4,%xmm4
     5da:	e9 6c ff ff ff       	jmp    54b <func_fmod_47(double, double)+0x4b>
     5df:	90                   	nop
     5e0:	66 0f 2e d2          	ucomisd %xmm2,%xmm2
     5e4:	7a 95                	jp     57b <func_fmod_47(double, double)+0x7b>
     5e6:	66 0f 2e db          	ucomisd %xmm3,%xmm3
     5ea:	7b 97                	jnp    583 <func_fmod_47(double, double)+0x83>
     5ec:	eb 8d                	jmp    57b <func_fmod_47(double, double)+0x7b>
     5ee:	66 90                	xchg   %ax,%ax
     5f0:	f2 48 0f 2c c1       	cvttsd2si %xmm1,%rax
     5f5:	66 0f ef c9          	pxor   %xmm1,%xmm1
     5f9:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
     5fe:	e9 38 ff ff ff       	jmp    53b <func_fmod_47(double, double)+0x3b>
     603:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     60a:	00 00 00 00 
     60e:	66 90                	xchg   %ax,%ax

0000000000000610 <func_is_real_48(float)>:
     610:	f3 0f 1e fa          	endbr64 
     614:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     619:	c3                   	ret    
     61a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000620 <func_is_real_49(double)>:
     620:	f3 0f 1e fa          	endbr64 
     624:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     62b:	c3                   	ret    
     62c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000630 <func_is_real_50(long)>:
     630:	f3 0f 1e fa          	endbr64 
     634:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     63b:	c3                   	ret    
     63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <func_is_real_51(int)>:
     640:	f3 0f 1e fa          	endbr64 
     644:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     649:	c3                   	ret    
     64a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000650 <func_is_real_52(short)>:
     650:	f3 0f 1e fa          	endbr64 
     654:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     659:	c3                   	ret    
     65a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000660 <func_is_real_53(signed char)>:
     660:	f3 0f 1e fa          	endbr64 
     664:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     669:	c3                   	ret    
     66a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000670 <func_is_real_54(unsigned long)>:
     670:	f3 0f 1e fa          	endbr64 
     674:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     67b:	c3                   	ret    
     67c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000680 <func_is_real_55(unsigned int)>:
     680:	f3 0f 1e fa          	endbr64 
     684:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     689:	c3                   	ret    
     68a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000690 <func_is_real_56(unsigned short)>:
     690:	f3 0f 1e fa          	endbr64 
     694:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     699:	c3                   	ret    
     69a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006a0 <func_is_real_57(unsigned char)>:
     6a0:	f3 0f 1e fa          	endbr64 
     6a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     6a9:	c3                   	ret    
     6aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006b0 <func_is_real_58(unsigned long)>:
     6b0:	f3 0f 1e fa          	endbr64 
     6b4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
     6bb:	c3                   	ret    
     6bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006c0 <func_is_real_59(unsigned int)>:
     6c0:	f3 0f 1e fa          	endbr64 
     6c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     6c9:	c3                   	ret    
     6ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006d0 <func_is_real_60(unsigned short)>:
     6d0:	f3 0f 1e fa          	endbr64 
     6d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     6d9:	c3                   	ret    
     6da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006e0 <func_is_real_61(unsigned char)>:
     6e0:	f3 0f 1e fa          	endbr64 
     6e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     6e9:	c3                   	ret    
     6ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006f0 <func_is_nan_62(float)>:
     6f0:	f3 0f 1e fa          	endbr64 
     6f4:	31 c0                	xor    %eax,%eax
     6f6:	0f 2e c0             	ucomiss %xmm0,%xmm0
     6f9:	0f 9a c0             	setp   %al
     6fc:	f7 d8                	neg    %eax
     6fe:	c3                   	ret    
     6ff:	90                   	nop

0000000000000700 <func_is_nan_63(double)>:
     700:	f3 0f 1e fa          	endbr64 
     704:	31 c0                	xor    %eax,%eax
     706:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
     70a:	0f 9a c0             	setp   %al
     70d:	48 f7 d8             	neg    %rax
     710:	c3                   	ret    
     711:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     718:	00 00 00 00 
     71c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000720 <func_is_nan_64(long)>:
     720:	f3 0f 1e fa          	endbr64 
     724:	31 c0                	xor    %eax,%eax
     726:	c3                   	ret    
     727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     72e:	00 00 

0000000000000730 <func_is_nan_65(int)>:
     730:	f3 0f 1e fa          	endbr64 
     734:	31 c0                	xor    %eax,%eax
     736:	c3                   	ret    
     737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     73e:	00 00 

0000000000000740 <func_is_nan_66(short)>:
     740:	f3 0f 1e fa          	endbr64 
     744:	31 c0                	xor    %eax,%eax
     746:	c3                   	ret    
     747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     74e:	00 00 

0000000000000750 <func_is_nan_67(signed char)>:
     750:	f3 0f 1e fa          	endbr64 
     754:	31 c0                	xor    %eax,%eax
     756:	c3                   	ret    
     757:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     75e:	00 00 

0000000000000760 <func_is_nan_68(unsigned long)>:
     760:	f3 0f 1e fa          	endbr64 
     764:	31 c0                	xor    %eax,%eax
     766:	c3                   	ret    
     767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     76e:	00 00 

0000000000000770 <func_is_nan_69(unsigned int)>:
     770:	f3 0f 1e fa          	endbr64 
     774:	31 c0                	xor    %eax,%eax
     776:	c3                   	ret    
     777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     77e:	00 00 

0000000000000780 <func_is_nan_70(unsigned short)>:
     780:	f3 0f 1e fa          	endbr64 
     784:	31 c0                	xor    %eax,%eax
     786:	c3                   	ret    
     787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     78e:	00 00 

0000000000000790 <func_is_nan_71(unsigned char)>:
     790:	f3 0f 1e fa          	endbr64 
     794:	31 c0                	xor    %eax,%eax
     796:	c3                   	ret    
     797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     79e:	00 00 

00000000000007a0 <func_is_nan_72(unsigned long)>:
     7a0:	f3 0f 1e fa          	endbr64 
     7a4:	31 c0                	xor    %eax,%eax
     7a6:	c3                   	ret    
     7a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     7ae:	00 00 

00000000000007b0 <func_is_nan_73(unsigned int)>:
     7b0:	f3 0f 1e fa          	endbr64 
     7b4:	31 c0                	xor    %eax,%eax
     7b6:	c3                   	ret    
     7b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     7be:	00 00 

00000000000007c0 <func_is_nan_74(unsigned short)>:
     7c0:	f3 0f 1e fa          	endbr64 
     7c4:	31 c0                	xor    %eax,%eax
     7c6:	c3                   	ret    
     7c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     7ce:	00 00 

00000000000007d0 <func_is_nan_75(unsigned char)>:
     7d0:	f3 0f 1e fa          	endbr64 
     7d4:	31 c0                	xor    %eax,%eax
     7d6:	c3                   	ret    
     7d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     7de:	00 00 

00000000000007e0 <func_clamp_76(float, float, float)>:
     7e0:	f3 0f 1e fa          	endbr64 
     7e4:	0f 2f ca             	comiss %xmm2,%xmm1
     7e7:	0f 28 d8             	movaps %xmm0,%xmm3
     7ea:	77 14                	ja     800 <func_clamp_76(float, float, float)+0x20>
     7ec:	0f 2f cb             	comiss %xmm3,%xmm1
     7ef:	0f 28 c1             	movaps %xmm1,%xmm0
     7f2:	76 17                	jbe    80b <func_clamp_76(float, float, float)+0x2b>
     7f4:	f3 0f 5d c2          	minss  %xmm2,%xmm0
     7f8:	c3                   	ret    
     7f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     800:	0f 28 c2             	movaps %xmm2,%xmm0
     803:	0f 28 d1             	movaps %xmm1,%xmm2
     806:	0f 2f c3             	comiss %xmm3,%xmm0
     809:	77 0d                	ja     818 <func_clamp_76(float, float, float)+0x38>
     80b:	0f 28 c3             	movaps %xmm3,%xmm0
     80e:	f3 0f 5d c2          	minss  %xmm2,%xmm0
     812:	c3                   	ret    
     813:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     818:	c3                   	ret    
     819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000820 <func_clamp_77(double, double, double)>:
     820:	f3 0f 1e fa          	endbr64 
     824:	66 0f 2f ca          	comisd %xmm2,%xmm1
     828:	66 0f 28 d8          	movapd %xmm0,%xmm3
     82c:	77 12                	ja     840 <func_clamp_77(double, double, double)+0x20>
     82e:	66 0f 2f cb          	comisd %xmm3,%xmm1
     832:	66 0f 28 c1          	movapd %xmm1,%xmm0
     836:	76 16                	jbe    84e <func_clamp_77(double, double, double)+0x2e>
     838:	f2 0f 5d c2          	minsd  %xmm2,%xmm0
     83c:	c3                   	ret    
     83d:	0f 1f 00             	nopl   (%rax)
     840:	66 0f 28 c2          	movapd %xmm2,%xmm0
     844:	66 0f 28 d1          	movapd %xmm1,%xmm2
     848:	66 0f 2f c3          	comisd %xmm3,%xmm0
     84c:	77 12                	ja     860 <func_clamp_77(double, double, double)+0x40>
     84e:	66 0f 28 c3          	movapd %xmm3,%xmm0
     852:	f2 0f 5d c2          	minsd  %xmm2,%xmm0
     856:	c3                   	ret    
     857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     85e:	00 00 
     860:	c3                   	ret    
     861:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     868:	00 00 00 00 
     86c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000870 <func_clamp_78(int, int, int)>:
     870:	f3 0f 1e fa          	endbr64 
     874:	39 d6                	cmp    %edx,%esi
     876:	7e 06                	jle    87e <func_clamp_78(int, int, int)+0xe>
     878:	89 f0                	mov    %esi,%eax
     87a:	89 d6                	mov    %edx,%esi
     87c:	89 c2                	mov    %eax,%edx
     87e:	39 f7                	cmp    %esi,%edi
     880:	89 d0                	mov    %edx,%eax
     882:	0f 4c fe             	cmovl  %esi,%edi
     885:	39 d7                	cmp    %edx,%edi
     887:	0f 4e c7             	cmovle %edi,%eax
     88a:	c3                   	ret    
     88b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000890 <func_dist_79(float, float)>:
     890:	f3 0f 1e fa          	endbr64 
     894:	0f 2f c8             	comiss %xmm0,%xmm1
     897:	77 09                	ja     8a2 <func_dist_79(float, float)+0x12>
     899:	0f 28 d0             	movaps %xmm0,%xmm2
     89c:	0f 28 c1             	movaps %xmm1,%xmm0
     89f:	0f 28 ca             	movaps %xmm2,%xmm1
     8a2:	f3 0f 5c c8          	subss  %xmm0,%xmm1
     8a6:	0f 28 c1             	movaps %xmm1,%xmm0
     8a9:	c3                   	ret    
     8aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000008b0 <func_dist_80(double, double)>:
     8b0:	f3 0f 1e fa          	endbr64 
     8b4:	66 0f 2f c8          	comisd %xmm0,%xmm1
     8b8:	77 0e                	ja     8c8 <func_dist_80(double, double)+0x18>
     8ba:	66 48 0f 7e c0       	movq   %xmm0,%rax
     8bf:	66 0f 28 c1          	movapd %xmm1,%xmm0
     8c3:	66 48 0f 6e c8       	movq   %rax,%xmm1
     8c8:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
     8cc:	66 0f 28 c1          	movapd %xmm1,%xmm0
     8d0:	c3                   	ret    
     8d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     8d8:	00 00 00 00 
     8dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000008e0 <func_dist_81(long, long)>:
     8e0:	f3 0f 1e fa          	endbr64 
     8e4:	48 39 f7             	cmp    %rsi,%rdi
     8e7:	48 89 f0             	mov    %rsi,%rax
     8ea:	48 0f 4d c7          	cmovge %rdi,%rax
     8ee:	48 0f 4f fe          	cmovg  %rsi,%rdi
     8f2:	48 29 f8             	sub    %rdi,%rax
     8f5:	c3                   	ret    
     8f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     8fd:	00 00 00 

0000000000000900 <func_dist_82(int, int)>:
     900:	f3 0f 1e fa          	endbr64 
     904:	39 f7                	cmp    %esi,%edi
     906:	89 f0                	mov    %esi,%eax
     908:	0f 4d c7             	cmovge %edi,%eax
     90b:	0f 4f fe             	cmovg  %esi,%edi
     90e:	29 f8                	sub    %edi,%eax
     910:	c3                   	ret    
     911:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     918:	00 00 00 00 
     91c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000920 <func_dist_83(short, short)>:
     920:	f3 0f 1e fa          	endbr64 
     924:	66 39 fe             	cmp    %di,%si
     927:	89 f8                	mov    %edi,%eax
     929:	0f 4d c6             	cmovge %esi,%eax
     92c:	0f 4f f7             	cmovg  %edi,%esi
     92f:	29 f0                	sub    %esi,%eax
     931:	c3                   	ret    
     932:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     939:	00 00 00 00 
     93d:	0f 1f 00             	nopl   (%rax)

0000000000000940 <func_dist_84(signed char, signed char)>:
     940:	f3 0f 1e fa          	endbr64 
     944:	40 38 fe             	cmp    %dil,%sil
     947:	89 f8                	mov    %edi,%eax
     949:	0f 4d c6             	cmovge %esi,%eax
     94c:	0f 4f f7             	cmovg  %edi,%esi
     94f:	29 f0                	sub    %esi,%eax
     951:	c3                   	ret    
     952:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     959:	00 00 00 00 
     95d:	0f 1f 00             	nopl   (%rax)

0000000000000960 <func_dist_85(unsigned long, unsigned long)>:
     960:	f3 0f 1e fa          	endbr64 
     964:	48 39 f7             	cmp    %rsi,%rdi
     967:	48 89 f0             	mov    %rsi,%rax
     96a:	48 0f 43 c7          	cmovae %rdi,%rax
     96e:	48 0f 47 fe          	cmova  %rsi,%rdi
     972:	48 29 f8             	sub    %rdi,%rax
     975:	c3                   	ret    
     976:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     97d:	00 00 00 

0000000000000980 <func_dist_86(unsigned int, unsigned int)>:
     980:	f3 0f 1e fa          	endbr64 
     984:	39 f7                	cmp    %esi,%edi
     986:	89 f0                	mov    %esi,%eax
     988:	0f 43 c7             	cmovae %edi,%eax
     98b:	0f 47 fe             	cmova  %esi,%edi
     98e:	29 f8                	sub    %edi,%eax
     990:	c3                   	ret    
     991:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     998:	00 00 00 00 
     99c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009a0 <func_dist_87(unsigned short, unsigned short)>:
     9a0:	f3 0f 1e fa          	endbr64 
     9a4:	66 39 fe             	cmp    %di,%si
     9a7:	89 f8                	mov    %edi,%eax
     9a9:	0f 43 c6             	cmovae %esi,%eax
     9ac:	0f 47 f7             	cmova  %edi,%esi
     9af:	29 f0                	sub    %esi,%eax
     9b1:	c3                   	ret    
     9b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     9b9:	00 00 00 00 
     9bd:	0f 1f 00             	nopl   (%rax)

00000000000009c0 <func_dist_88(unsigned char, unsigned char)>:
     9c0:	f3 0f 1e fa          	endbr64 
     9c4:	40 38 fe             	cmp    %dil,%sil
     9c7:	89 f8                	mov    %edi,%eax
     9c9:	0f 43 c6             	cmovae %esi,%eax
     9cc:	0f 47 f7             	cmova  %edi,%esi
     9cf:	29 f0                	sub    %esi,%eax
     9d1:	c3                   	ret    
     9d2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     9d9:	00 00 00 00 
     9dd:	0f 1f 00             	nopl   (%rax)

00000000000009e0 <func_dist_89(unsigned long, unsigned long)>:
     9e0:	f3 0f 1e fa          	endbr64 
     9e4:	48 39 f7             	cmp    %rsi,%rdi
     9e7:	48 89 f0             	mov    %rsi,%rax
     9ea:	48 0f 43 c7          	cmovae %rdi,%rax
     9ee:	48 0f 47 fe          	cmova  %rsi,%rdi
     9f2:	48 29 f8             	sub    %rdi,%rax
     9f5:	c3                   	ret    
     9f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     9fd:	00 00 00 

0000000000000a00 <func_dist_90(unsigned int, unsigned int)>:
     a00:	f3 0f 1e fa          	endbr64 
     a04:	39 f7                	cmp    %esi,%edi
     a06:	89 f0                	mov    %esi,%eax
     a08:	0f 43 c7             	cmovae %edi,%eax
     a0b:	0f 47 fe             	cmova  %esi,%edi
     a0e:	29 f8                	sub    %edi,%eax
     a10:	c3                   	ret    
     a11:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     a18:	00 00 00 00 
     a1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a20 <func_dist_91(unsigned short, unsigned short)>:
     a20:	f3 0f 1e fa          	endbr64 
     a24:	66 39 fe             	cmp    %di,%si
     a27:	89 f8                	mov    %edi,%eax
     a29:	0f 43 c6             	cmovae %esi,%eax
     a2c:	0f 47 f7             	cmova  %edi,%esi
     a2f:	29 f0                	sub    %esi,%eax
     a31:	c3                   	ret    
     a32:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     a39:	00 00 00 00 
     a3d:	0f 1f 00             	nopl   (%rax)

0000000000000a40 <func_dist_92(unsigned char, unsigned char)>:
     a40:	f3 0f 1e fa          	endbr64 
     a44:	40 38 fe             	cmp    %dil,%sil
     a47:	89 f8                	mov    %edi,%eax
     a49:	0f 43 c6             	cmovae %esi,%eax
     a4c:	0f 47 f7             	cmova  %edi,%esi
     a4f:	29 f0                	sub    %esi,%eax
     a51:	c3                   	ret    
     a52:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     a59:	00 00 00 00 
     a5d:	0f 1f 00             	nopl   (%rax)

0000000000000a60 <func_fracscale_93(float, int)>:
     a60:	f3 0f 1e fa          	endbr64 
     a64:	8d 47 7f             	lea    0x7f(%rdi),%eax
     a67:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # a6f <func_fracscale_93(float, int)+0xf>
     a6e:	00 
     a6f:	c1 e0 17             	shl    $0x17,%eax
     a72:	66 0f 6e d8          	movd   %eax,%xmm3
     a76:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
     a7a:	66 0f 7e d9          	movd   %xmm3,%ecx
     a7e:	66 0f 7e d8          	movd   %xmm3,%eax
     a82:	66 0f 7e da          	movd   %xmm3,%edx
     a86:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
     a8c:	66 0f 6e c9          	movd   %ecx,%xmm1
     a90:	0f 2f d1             	comiss %xmm1,%xmm2
     a93:	76 1a                	jbe    aaf <func_fracscale_93(float, int)+0x4f>
     a95:	f3 0f 58 ca          	addss  %xmm2,%xmm1
     a99:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     a9f:	f3 0f 5c ca          	subss  %xmm2,%xmm1
     aa3:	66 0f 7e 4c 24 fc    	movd   %xmm1,-0x4(%rsp)
     aa9:	33 54 24 fc          	xor    -0x4(%rsp),%edx
     aad:	89 d0                	mov    %edx,%eax
     aaf:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
     ab4:	66 0f 7e 44 24 fc    	movd   %xmm0,-0x4(%rsp)
     aba:	23 74 24 fc          	and    -0x4(%rsp),%esi
     abe:	66 0f 6e e6          	movd   %esi,%xmm4
     ac2:	0f 2e 25 00 00 00 00 	ucomiss 0x0(%rip),%xmm4        # ac9 <func_fracscale_93(float, int)+0x69>
     ac9:	7a 0d                	jp     ad8 <func_fracscale_93(float, int)+0x78>
     acb:	66 0f ef d2          	pxor   %xmm2,%xmm2
     acf:	75 07                	jne    ad8 <func_fracscale_93(float, int)+0x78>
     ad1:	0f 28 c2             	movaps %xmm2,%xmm0
     ad4:	c3                   	ret    
     ad5:	0f 1f 00             	nopl   (%rax)
     ad8:	ba 7f 00 00 00       	mov    $0x7f,%edx
     add:	66 0f 6e c8          	movd   %eax,%xmm1
     ae1:	0f 28 d0             	movaps %xmm0,%xmm2
     ae4:	29 fa                	sub    %edi,%edx
     ae6:	c1 e2 17             	shl    $0x17,%edx
     ae9:	66 0f 6e ea          	movd   %edx,%xmm5
     aed:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
     af1:	f3 0f 5c d1          	subss  %xmm1,%xmm2
     af5:	0f 28 c2             	movaps %xmm2,%xmm0
     af8:	c3                   	ret    
     af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b00 <func_fracscale_94(double, int)>:
     b00:	f3 0f 1e fa          	endbr64 
     b04:	48 63 c7             	movslq %edi,%rax
     b07:	f2 0f 10 1d 00 00 00 	movsd  0x0(%rip),%xmm3        # b0f <func_fracscale_94(double, int)+0xf>
     b0e:	00 
     b0f:	48 05 ff 03 00 00    	add    $0x3ff,%rax
     b15:	48 c1 e0 34          	shl    $0x34,%rax
     b19:	66 48 0f 6e c8       	movq   %rax,%xmm1
     b1e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     b22:	66 48 0f 7e c9       	movq   %xmm1,%rcx
     b27:	66 48 0f 7e c8       	movq   %xmm1,%rax
     b2c:	48 0f ba f1 3f       	btr    $0x3f,%rcx
     b31:	66 48 0f 6e d1       	movq   %rcx,%xmm2
     b36:	66 0f 2f da          	comisd %xmm2,%xmm3
     b3a:	76 22                	jbe    b5e <func_fracscale_94(double, int)+0x5e>
     b3c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     b43:	00 00 80 
     b46:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
     b4a:	48 21 d0             	and    %rdx,%rax
     b4d:	f2 0f 5c d3          	subsd  %xmm3,%xmm2
     b51:	66 48 0f 7e d6       	movq   %xmm2,%rsi
     b56:	48 31 c6             	xor    %rax,%rsi
     b59:	66 48 0f 6e ce       	movq   %rsi,%xmm1
     b5e:	66 48 0f 7e c0       	movq   %xmm0,%rax
     b63:	48 0f ba f0 3f       	btr    $0x3f,%rax
     b68:	66 48 0f 6e e0       	movq   %rax,%xmm4
     b6d:	66 0f 2e 25 00 00 00 	ucomisd 0x0(%rip),%xmm4        # b75 <func_fracscale_94(double, int)+0x75>
     b74:	00 
     b75:	7a 11                	jp     b88 <func_fracscale_94(double, int)+0x88>
     b77:	66 0f ef d2          	pxor   %xmm2,%xmm2
     b7b:	75 0b                	jne    b88 <func_fracscale_94(double, int)+0x88>
     b7d:	66 0f 28 c2          	movapd %xmm2,%xmm0
     b81:	c3                   	ret    
     b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     b88:	f7 df                	neg    %edi
     b8a:	66 0f 28 d0          	movapd %xmm0,%xmm2
     b8e:	48 63 ff             	movslq %edi,%rdi
     b91:	48 81 c7 ff 03 00 00 	add    $0x3ff,%rdi
     b98:	48 c1 e7 34          	shl    $0x34,%rdi
     b9c:	66 48 0f 6e ef       	movq   %rdi,%xmm5
     ba1:	f2 0f 59 cd          	mulsd  %xmm5,%xmm1
     ba5:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
     ba9:	66 0f 28 c2          	movapd %xmm2,%xmm0
     bad:	c3                   	ret    
     bae:	66 90                	xchg   %ax,%ax

0000000000000bb0 <func_conj_95(float)>:
     bb0:	f3 0f 1e fa          	endbr64 
     bb4:	c3                   	ret    
     bb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     bbc:	00 00 00 00 

0000000000000bc0 <func_conj_96(double)>:
     bc0:	f3 0f 1e fa          	endbr64 
     bc4:	c3                   	ret    
     bc5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     bcc:	00 00 00 00 

0000000000000bd0 <func_rem_97(long, long)>:
     bd0:	f3 0f 1e fa          	endbr64 
     bd4:	48 89 f8             	mov    %rdi,%rax
     bd7:	48 99                	cqto   
     bd9:	48 f7 fe             	idiv   %rsi
     bdc:	48 89 d0             	mov    %rdx,%rax
     bdf:	c3                   	ret    

0000000000000be0 <func_rem_98(int, int)>:
     be0:	f3 0f 1e fa          	endbr64 
     be4:	89 f8                	mov    %edi,%eax
     be6:	99                   	cltd   
     be7:	f7 fe                	idiv   %esi
     be9:	89 d0                	mov    %edx,%eax
     beb:	c3                   	ret    
     bec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000bf0 <func_rem_99(short, short)>:
     bf0:	f3 0f 1e fa          	endbr64 
     bf4:	0f bf c7             	movswl %di,%eax
     bf7:	0f bf f6             	movswl %si,%esi
     bfa:	99                   	cltd   
     bfb:	f7 fe                	idiv   %esi
     bfd:	89 d0                	mov    %edx,%eax
     bff:	c3                   	ret    

0000000000000c00 <func_rem_100(signed char, signed char)>:
     c00:	f3 0f 1e fa          	endbr64 
     c04:	40 0f be c7          	movsbl %dil,%eax
     c08:	40 0f be f6          	movsbl %sil,%esi
     c0c:	99                   	cltd   
     c0d:	f7 fe                	idiv   %esi
     c0f:	89 d0                	mov    %edx,%eax
     c11:	c3                   	ret    
     c12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     c19:	00 00 00 00 
     c1d:	0f 1f 00             	nopl   (%rax)

0000000000000c20 <func_rem_101(unsigned long, unsigned long)>:
     c20:	f3 0f 1e fa          	endbr64 
     c24:	48 89 f8             	mov    %rdi,%rax
     c27:	31 d2                	xor    %edx,%edx
     c29:	48 f7 f6             	div    %rsi
     c2c:	48 89 d0             	mov    %rdx,%rax
     c2f:	c3                   	ret    

0000000000000c30 <func_rem_102(unsigned int, unsigned int)>:
     c30:	f3 0f 1e fa          	endbr64 
     c34:	89 f8                	mov    %edi,%eax
     c36:	31 d2                	xor    %edx,%edx
     c38:	f7 f6                	div    %esi
     c3a:	89 d0                	mov    %edx,%eax
     c3c:	c3                   	ret    
     c3d:	0f 1f 00             	nopl   (%rax)

0000000000000c40 <func_rem_103(unsigned short, unsigned short)>:
     c40:	f3 0f 1e fa          	endbr64 
     c44:	89 f8                	mov    %edi,%eax
     c46:	31 d2                	xor    %edx,%edx
     c48:	66 f7 f6             	div    %si
     c4b:	89 d0                	mov    %edx,%eax
     c4d:	c3                   	ret    
     c4e:	66 90                	xchg   %ax,%ax

0000000000000c50 <func_rem_104(unsigned char, unsigned char)>:
     c50:	f3 0f 1e fa          	endbr64 
     c54:	40 0f b6 c7          	movzbl %dil,%eax
     c58:	40 f6 f6             	div    %sil
     c5b:	0f b6 c4             	movzbl %ah,%eax
     c5e:	c3                   	ret    
     c5f:	90                   	nop

0000000000000c60 <func_absmin_105(float, float)>:
     c60:	f3 0f 1e fa          	endbr64 
     c64:	f3 0f 5d c1          	minss  %xmm1,%xmm0
     c68:	66 0f 7e c0          	movd   %xmm0,%eax
     c6c:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     c71:	66 0f 6e c0          	movd   %eax,%xmm0
     c75:	c3                   	ret    
     c76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c7d:	00 00 00 

0000000000000c80 <func_absmin_106(double, double)>:
     c80:	f3 0f 1e fa          	endbr64 
     c84:	f2 0f 5d c1          	minsd  %xmm1,%xmm0
     c88:	66 48 0f 7e c0       	movq   %xmm0,%rax
     c8d:	48 0f ba f0 3f       	btr    $0x3f,%rax
     c92:	66 48 0f 6e c0       	movq   %rax,%xmm0
     c97:	c3                   	ret    
     c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     c9f:	00 

0000000000000ca0 <func_absmin_107(long, long)>:
     ca0:	f3 0f 1e fa          	endbr64 
     ca4:	48 39 f7             	cmp    %rsi,%rdi
     ca7:	48 0f 4f fe          	cmovg  %rsi,%rdi
     cab:	48 89 f8             	mov    %rdi,%rax
     cae:	48 f7 d8             	neg    %rax
     cb1:	48 0f 48 c7          	cmovs  %rdi,%rax
     cb5:	c3                   	ret    
     cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     cbd:	00 00 00 

0000000000000cc0 <func_absmin_108(int, int)>:
     cc0:	f3 0f 1e fa          	endbr64 
     cc4:	39 f7                	cmp    %esi,%edi
     cc6:	0f 4f fe             	cmovg  %esi,%edi
     cc9:	89 f8                	mov    %edi,%eax
     ccb:	f7 d8                	neg    %eax
     ccd:	0f 48 c7             	cmovs  %edi,%eax
     cd0:	c3                   	ret    
     cd1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     cd8:	00 00 00 00 
     cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ce0 <func_absmin_109(short, short)>:
     ce0:	f3 0f 1e fa          	endbr64 
     ce4:	66 39 fe             	cmp    %di,%si
     ce7:	0f 4f f7             	cmovg  %edi,%esi
     cea:	89 f0                	mov    %esi,%eax
     cec:	66 f7 d8             	neg    %ax
     cef:	0f 48 c6             	cmovs  %esi,%eax
     cf2:	c3                   	ret    
     cf3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     cfa:	00 00 00 00 
     cfe:	66 90                	xchg   %ax,%ax

0000000000000d00 <func_absmin_110(signed char, signed char)>:
     d00:	f3 0f 1e fa          	endbr64 
     d04:	40 38 fe             	cmp    %dil,%sil
     d07:	0f 4f f7             	cmovg  %edi,%esi
     d0a:	89 f0                	mov    %esi,%eax
     d0c:	f6 d8                	neg    %al
     d0e:	0f 48 c6             	cmovs  %esi,%eax
     d11:	c3                   	ret    
     d12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     d19:	00 00 00 00 
     d1d:	0f 1f 00             	nopl   (%rax)

0000000000000d20 <func_absmin_111(unsigned long, unsigned long)>:
     d20:	f3 0f 1e fa          	endbr64 
     d24:	48 39 f7             	cmp    %rsi,%rdi
     d27:	48 89 f0             	mov    %rsi,%rax
     d2a:	48 0f 46 c7          	cmovbe %rdi,%rax
     d2e:	c3                   	ret    
     d2f:	90                   	nop

0000000000000d30 <func_absmin_112(unsigned int, unsigned int)>:
     d30:	f3 0f 1e fa          	endbr64 
     d34:	39 f7                	cmp    %esi,%edi
     d36:	89 f0                	mov    %esi,%eax
     d38:	0f 46 c7             	cmovbe %edi,%eax
     d3b:	c3                   	ret    
     d3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000d40 <func_absmin_113(unsigned short, unsigned short)>:
     d40:	f3 0f 1e fa          	endbr64 
     d44:	66 39 fe             	cmp    %di,%si
     d47:	89 f8                	mov    %edi,%eax
     d49:	0f 46 c6             	cmovbe %esi,%eax
     d4c:	c3                   	ret    
     d4d:	0f 1f 00             	nopl   (%rax)

0000000000000d50 <func_absmin_114(unsigned char, unsigned char)>:
     d50:	f3 0f 1e fa          	endbr64 
     d54:	40 38 fe             	cmp    %dil,%sil
     d57:	89 f8                	mov    %edi,%eax
     d59:	0f 46 c6             	cmovbe %esi,%eax
     d5c:	c3                   	ret    
     d5d:	0f 1f 00             	nopl   (%rax)

0000000000000d60 <func_absmin_115(unsigned long, unsigned long)>:
     d60:	f3 0f 1e fa          	endbr64 
     d64:	48 39 f7             	cmp    %rsi,%rdi
     d67:	48 89 f0             	mov    %rsi,%rax
     d6a:	48 0f 46 c7          	cmovbe %rdi,%rax
     d6e:	c3                   	ret    
     d6f:	90                   	nop

0000000000000d70 <func_absmin_116(unsigned int, unsigned int)>:
     d70:	f3 0f 1e fa          	endbr64 
     d74:	39 f7                	cmp    %esi,%edi
     d76:	89 f0                	mov    %esi,%eax
     d78:	0f 46 c7             	cmovbe %edi,%eax
     d7b:	c3                   	ret    
     d7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000d80 <func_absmin_117(unsigned short, unsigned short)>:
     d80:	f3 0f 1e fa          	endbr64 
     d84:	66 39 fe             	cmp    %di,%si
     d87:	89 f8                	mov    %edi,%eax
     d89:	0f 46 c6             	cmovbe %esi,%eax
     d8c:	c3                   	ret    
     d8d:	0f 1f 00             	nopl   (%rax)

0000000000000d90 <func_absmin_118(unsigned char, unsigned char)>:
     d90:	f3 0f 1e fa          	endbr64 
     d94:	40 38 fe             	cmp    %dil,%sil
     d97:	89 f8                	mov    %edi,%eax
     d99:	0f 46 c6             	cmovbe %esi,%eax
     d9c:	c3                   	ret    
     d9d:	0f 1f 00             	nopl   (%rax)

0000000000000da0 <func_lerp_119(eve::sse_abi_v0::wide<double, eve::fixed<2l> >, eve::sse_abi_v0::wide<double, eve::fixed<2l> >, double)>:
     da0:	f3 0f 1e fa          	endbr64 
     da4:	66 0f 28 d8          	movapd %xmm0,%xmm3
     da8:	66 0f 28 05 00 00 00 	movapd 0x0(%rip),%xmm0        # db0 <func_lerp_119(eve::sse_abi_v0::wide<double, eve::fixed<2l> >, eve::sse_abi_v0::wide<double, eve::fixed<2l> >, double)+0x10>
     daf:	00 
     db0:	66 0f 14 d2          	unpcklpd %xmm2,%xmm2
     db4:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
     db8:	66 0f 57 c2          	xorpd  %xmm2,%xmm0
     dbc:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
     dc0:	66 0f 58 c3          	addpd  %xmm3,%xmm0
     dc4:	66 0f 58 c1          	addpd  %xmm1,%xmm0
     dc8:	c3                   	ret    
     dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000dd0 <func_bit_and_120(float, float)>:
     dd0:	f3 0f 1e fa          	endbr64 
     dd4:	66 0f 7e c8          	movd   %xmm1,%eax
     dd8:	66 0f 7e c2          	movd   %xmm0,%edx
     ddc:	21 c2                	and    %eax,%edx
     dde:	66 0f 6e c2          	movd   %edx,%xmm0
     de2:	c3                   	ret    
     de3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     dea:	00 00 00 00 
     dee:	66 90                	xchg   %ax,%ax

0000000000000df0 <func_bit_and_121(double, double)>:
     df0:	f3 0f 1e fa          	endbr64 
     df4:	66 48 0f 7e c8       	movq   %xmm1,%rax
     df9:	66 48 0f 7e c2       	movq   %xmm0,%rdx
     dfe:	48 21 c2             	and    %rax,%rdx
     e01:	66 48 0f 6e c2       	movq   %rdx,%xmm0
     e06:	c3                   	ret    
     e07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     e0e:	00 00 

0000000000000e10 <func_bit_and_122(long, long)>:
     e10:	f3 0f 1e fa          	endbr64 
     e14:	48 89 f8             	mov    %rdi,%rax
     e17:	48 21 f0             	and    %rsi,%rax
     e1a:	c3                   	ret    
     e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000e20 <func_bit_and_123(int, int)>:
     e20:	f3 0f 1e fa          	endbr64 
     e24:	89 f8                	mov    %edi,%eax
     e26:	21 f0                	and    %esi,%eax
     e28:	c3                   	ret    
     e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e30 <func_bit_and_124(short, short)>:
     e30:	f3 0f 1e fa          	endbr64 
     e34:	89 f0                	mov    %esi,%eax
     e36:	21 f8                	and    %edi,%eax
     e38:	c3                   	ret    
     e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e40 <func_bit_and_125(signed char, signed char)>:
     e40:	f3 0f 1e fa          	endbr64 
     e44:	89 f0                	mov    %esi,%eax
     e46:	21 f8                	and    %edi,%eax
     e48:	c3                   	ret    
     e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e50 <func_bit_and_126(unsigned long, unsigned long)>:
     e50:	f3 0f 1e fa          	endbr64 
     e54:	48 89 f8             	mov    %rdi,%rax
     e57:	48 21 f0             	and    %rsi,%rax
     e5a:	c3                   	ret    
     e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000e60 <func_bit_and_127(unsigned int, unsigned int)>:
     e60:	f3 0f 1e fa          	endbr64 
     e64:	89 f8                	mov    %edi,%eax
     e66:	21 f0                	and    %esi,%eax
     e68:	c3                   	ret    
     e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e70 <func_bit_and_128(unsigned short, unsigned short)>:
     e70:	f3 0f 1e fa          	endbr64 
     e74:	89 f0                	mov    %esi,%eax
     e76:	21 f8                	and    %edi,%eax
     e78:	c3                   	ret    
     e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e80 <func_bit_and_129(unsigned char, unsigned char)>:
     e80:	f3 0f 1e fa          	endbr64 
     e84:	89 f0                	mov    %esi,%eax
     e86:	21 f8                	and    %edi,%eax
     e88:	c3                   	ret    
     e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000e90 <func_bit_and_130(unsigned long, unsigned long)>:
     e90:	f3 0f 1e fa          	endbr64 
     e94:	48 89 f8             	mov    %rdi,%rax
     e97:	48 21 f0             	and    %rsi,%rax
     e9a:	c3                   	ret    
     e9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ea0 <func_bit_and_131(unsigned int, unsigned int)>:
     ea0:	f3 0f 1e fa          	endbr64 
     ea4:	89 f8                	mov    %edi,%eax
     ea6:	21 f0                	and    %esi,%eax
     ea8:	c3                   	ret    
     ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000eb0 <func_bit_and_132(unsigned short, unsigned short)>:
     eb0:	f3 0f 1e fa          	endbr64 
     eb4:	89 f0                	mov    %esi,%eax
     eb6:	21 f8                	and    %edi,%eax
     eb8:	c3                   	ret    
     eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ec0 <func_bit_and_133(unsigned char, unsigned char)>:
     ec0:	f3 0f 1e fa          	endbr64 
     ec4:	89 f0                	mov    %esi,%eax
     ec6:	21 f8                	and    %edi,%eax
     ec8:	c3                   	ret    
     ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ed0 <func_max_134(float, float)>:
     ed0:	f3 0f 1e fa          	endbr64 
     ed4:	f3 0f 5f c8          	maxss  %xmm0,%xmm1
     ed8:	0f 28 c1             	movaps %xmm1,%xmm0
     edb:	c3                   	ret    
     edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ee0 <func_max_135(double, double)>:
     ee0:	f3 0f 1e fa          	endbr64 
     ee4:	f2 0f 5f c8          	maxsd  %xmm0,%xmm1
     ee8:	66 0f 28 c1          	movapd %xmm1,%xmm0
     eec:	c3                   	ret    
     eed:	0f 1f 00             	nopl   (%rax)

0000000000000ef0 <func_max_136(int, int)>:
     ef0:	f3 0f 1e fa          	endbr64 
     ef4:	39 f7                	cmp    %esi,%edi
     ef6:	89 f0                	mov    %esi,%eax
     ef8:	0f 4d c7             	cmovge %edi,%eax
     efb:	c3                   	ret    
     efc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f00 <func_div_137(float, float)>:
     f00:	f3 0f 1e fa          	endbr64 
     f04:	f3 0f 5e c1          	divss  %xmm1,%xmm0
     f08:	c3                   	ret    
     f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000f10 <func_div_138(double, double)>:
     f10:	f3 0f 1e fa          	endbr64 
     f14:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
     f18:	c3                   	ret    
     f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000f20 <func_div_139(long, long)>:
     f20:	f3 0f 1e fa          	endbr64 
     f24:	48 89 f8             	mov    %rdi,%rax
     f27:	48 99                	cqto   
     f29:	48 f7 fe             	idiv   %rsi
     f2c:	c3                   	ret    
     f2d:	0f 1f 00             	nopl   (%rax)

0000000000000f30 <func_div_140(int, int)>:
     f30:	f3 0f 1e fa          	endbr64 
     f34:	89 f8                	mov    %edi,%eax
     f36:	99                   	cltd   
     f37:	f7 fe                	idiv   %esi
     f39:	c3                   	ret    
     f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000f40 <func_div_141(short, short)>:
     f40:	f3 0f 1e fa          	endbr64 
     f44:	0f bf c7             	movswl %di,%eax
     f47:	0f bf f6             	movswl %si,%esi
     f4a:	99                   	cltd   
     f4b:	f7 fe                	idiv   %esi
     f4d:	c3                   	ret    
     f4e:	66 90                	xchg   %ax,%ax

0000000000000f50 <func_div_142(signed char, signed char)>:
     f50:	f3 0f 1e fa          	endbr64 
     f54:	40 0f be c7          	movsbl %dil,%eax
     f58:	40 0f be f6          	movsbl %sil,%esi
     f5c:	99                   	cltd   
     f5d:	f7 fe                	idiv   %esi
     f5f:	c3                   	ret    

0000000000000f60 <func_div_143(unsigned long, unsigned long)>:
     f60:	f3 0f 1e fa          	endbr64 
     f64:	48 89 f8             	mov    %rdi,%rax
     f67:	31 d2                	xor    %edx,%edx
     f69:	48 f7 f6             	div    %rsi
     f6c:	c3                   	ret    
     f6d:	0f 1f 00             	nopl   (%rax)

0000000000000f70 <func_div_144(unsigned int, unsigned int)>:
     f70:	f3 0f 1e fa          	endbr64 
     f74:	89 f8                	mov    %edi,%eax
     f76:	31 d2                	xor    %edx,%edx
     f78:	f7 f6                	div    %esi
     f7a:	c3                   	ret    
     f7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000f80 <func_div_145(unsigned short, unsigned short)>:
     f80:	f3 0f 1e fa          	endbr64 
     f84:	89 f8                	mov    %edi,%eax
     f86:	31 d2                	xor    %edx,%edx
     f88:	66 f7 f6             	div    %si
     f8b:	c3                   	ret    
     f8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f90 <func_div_146(unsigned char, unsigned char)>:
     f90:	f3 0f 1e fa          	endbr64 
     f94:	40 0f b6 c7          	movzbl %dil,%eax
     f98:	40 f6 f6             	div    %sil
     f9b:	c3                   	ret    
     f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000fa0 <func_div_147(unsigned long, unsigned long)>:
     fa0:	f3 0f 1e fa          	endbr64 
     fa4:	48 89 f8             	mov    %rdi,%rax
     fa7:	31 d2                	xor    %edx,%edx
     fa9:	48 f7 f6             	div    %rsi
     fac:	c3                   	ret    
     fad:	0f 1f 00             	nopl   (%rax)

0000000000000fb0 <func_div_148(unsigned int, unsigned int)>:
     fb0:	f3 0f 1e fa          	endbr64 
     fb4:	89 f8                	mov    %edi,%eax
     fb6:	31 d2                	xor    %edx,%edx
     fb8:	f7 f6                	div    %esi
     fba:	c3                   	ret    
     fbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000fc0 <func_div_149(unsigned short, unsigned short)>:
     fc0:	f3 0f 1e fa          	endbr64 
     fc4:	89 f8                	mov    %edi,%eax
     fc6:	31 d2                	xor    %edx,%edx
     fc8:	66 f7 f6             	div    %si
     fcb:	c3                   	ret    
     fcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000fd0 <func_div_150(unsigned char, unsigned char)>:
     fd0:	f3 0f 1e fa          	endbr64 
     fd4:	40 0f b6 c7          	movzbl %dil,%eax
     fd8:	40 f6 f6             	div    %sil
     fdb:	c3                   	ret    
     fdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000fe0 <func_fdim_151(float, float)>:
     fe0:	f3 0f 1e fa          	endbr64 
     fe4:	0f 2f c1             	comiss %xmm1,%xmm0
     fe7:	72 07                	jb     ff0 <func_fdim_151(float, float)+0x10>
     fe9:	f3 0f 5c c1          	subss  %xmm1,%xmm0
     fed:	c3                   	ret    
     fee:	66 90                	xchg   %ax,%ax
     ff0:	66 0f ef c0          	pxor   %xmm0,%xmm0
     ff4:	c3                   	ret    
     ff5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     ffc:	00 00 00 00 

0000000000001000 <func_fdim_152(double, double)>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	66 0f 2f c1          	comisd %xmm1,%xmm0
    1008:	72 06                	jb     1010 <func_fdim_152(double, double)+0x10>
    100a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    100e:	c3                   	ret    
    100f:	90                   	nop
    1010:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1014:	c3                   	ret    
    1015:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    101c:	00 00 00 00 

0000000000001020 <func_fdim_153(long, long)>:
    1020:	f3 0f 1e fa          	endbr64 
    1024:	48 89 f8             	mov    %rdi,%rax
    1027:	31 d2                	xor    %edx,%edx
    1029:	48 29 f0             	sub    %rsi,%rax
    102c:	48 39 f7             	cmp    %rsi,%rdi
    102f:	48 0f 4c c2          	cmovl  %rdx,%rax
    1033:	c3                   	ret    
    1034:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    103b:	00 00 00 00 
    103f:	90                   	nop

0000000000001040 <func_fdim_154(int, int)>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	89 f8                	mov    %edi,%eax
    1046:	31 d2                	xor    %edx,%edx
    1048:	29 f0                	sub    %esi,%eax
    104a:	39 f7                	cmp    %esi,%edi
    104c:	0f 4c c2             	cmovl  %edx,%eax
    104f:	c3                   	ret    

0000000000001050 <func_fdim_155(short, short)>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	89 f8                	mov    %edi,%eax
    1056:	31 d2                	xor    %edx,%edx
    1058:	29 f0                	sub    %esi,%eax
    105a:	66 39 fe             	cmp    %di,%si
    105d:	0f 4f c2             	cmovg  %edx,%eax
    1060:	c3                   	ret    
    1061:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1068:	00 00 00 00 
    106c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001070 <func_fdim_156(signed char, signed char)>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	89 f8                	mov    %edi,%eax
    1076:	31 d2                	xor    %edx,%edx
    1078:	29 f0                	sub    %esi,%eax
    107a:	40 38 fe             	cmp    %dil,%sil
    107d:	0f 4f c2             	cmovg  %edx,%eax
    1080:	c3                   	ret    
    1081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1088:	00 00 00 00 
    108c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001090 <func_fdim_157(unsigned long, unsigned long)>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	48 89 f8             	mov    %rdi,%rax
    1097:	31 d2                	xor    %edx,%edx
    1099:	48 29 f0             	sub    %rsi,%rax
    109c:	48 39 f7             	cmp    %rsi,%rdi
    109f:	48 0f 42 c2          	cmovb  %rdx,%rax
    10a3:	c3                   	ret    
    10a4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    10ab:	00 00 00 00 
    10af:	90                   	nop

00000000000010b0 <func_fdim_158(unsigned int, unsigned int)>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	89 f8                	mov    %edi,%eax
    10b6:	31 d2                	xor    %edx,%edx
    10b8:	29 f0                	sub    %esi,%eax
    10ba:	39 f7                	cmp    %esi,%edi
    10bc:	0f 42 c2             	cmovb  %edx,%eax
    10bf:	c3                   	ret    

00000000000010c0 <func_fdim_159(unsigned short, unsigned short)>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	89 f8                	mov    %edi,%eax
    10c6:	31 d2                	xor    %edx,%edx
    10c8:	29 f0                	sub    %esi,%eax
    10ca:	66 39 fe             	cmp    %di,%si
    10cd:	0f 47 c2             	cmova  %edx,%eax
    10d0:	c3                   	ret    
    10d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    10d8:	00 00 00 00 
    10dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010e0 <func_fdim_160(unsigned char, unsigned char)>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	89 f8                	mov    %edi,%eax
    10e6:	31 d2                	xor    %edx,%edx
    10e8:	29 f0                	sub    %esi,%eax
    10ea:	40 38 fe             	cmp    %dil,%sil
    10ed:	0f 47 c2             	cmova  %edx,%eax
    10f0:	c3                   	ret    
    10f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    10f8:	00 00 00 00 
    10fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001100 <func_fdim_161(unsigned long, unsigned long)>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	48 89 f8             	mov    %rdi,%rax
    1107:	31 d2                	xor    %edx,%edx
    1109:	48 29 f0             	sub    %rsi,%rax
    110c:	48 39 f7             	cmp    %rsi,%rdi
    110f:	48 0f 42 c2          	cmovb  %rdx,%rax
    1113:	c3                   	ret    
    1114:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    111b:	00 00 00 00 
    111f:	90                   	nop

0000000000001120 <func_fdim_162(unsigned int, unsigned int)>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	89 f8                	mov    %edi,%eax
    1126:	31 d2                	xor    %edx,%edx
    1128:	29 f0                	sub    %esi,%eax
    112a:	39 f7                	cmp    %esi,%edi
    112c:	0f 42 c2             	cmovb  %edx,%eax
    112f:	c3                   	ret    

0000000000001130 <func_fdim_163(unsigned short, unsigned short)>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	89 f8                	mov    %edi,%eax
    1136:	31 d2                	xor    %edx,%edx
    1138:	29 f0                	sub    %esi,%eax
    113a:	66 39 f7             	cmp    %si,%di
    113d:	0f 42 c2             	cmovb  %edx,%eax
    1140:	c3                   	ret    
    1141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1148:	00 00 00 00 
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <func_fdim_164(unsigned char, unsigned char)>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	89 f8                	mov    %edi,%eax
    1156:	31 d2                	xor    %edx,%edx
    1158:	29 f0                	sub    %esi,%eax
    115a:	40 38 f7             	cmp    %sil,%dil
    115d:	0f 42 c2             	cmovb  %edx,%eax
    1160:	c3                   	ret    
    1161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001170 <func_copysign_165(float, float)>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	66 0f 7e c8          	movd   %xmm1,%eax
    1178:	66 0f 7e 44 24 fc    	movd   %xmm0,-0x4(%rsp)
    117e:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
    1183:	23 54 24 fc          	and    -0x4(%rsp),%edx
    1187:	25 00 00 00 80       	and    $0x80000000,%eax
    118c:	09 d0                	or     %edx,%eax
    118e:	66 0f 6e c0          	movd   %eax,%xmm0
    1192:	c3                   	ret    
    1193:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    119a:	00 00 00 00 
    119e:	66 90                	xchg   %ax,%ax

00000000000011a0 <func_floor_166(float)>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	66 0f 7e c0          	movd   %xmm0,%eax
    11a8:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    11ad:	66 0f 6e c8          	movd   %eax,%xmm1
    11b1:	0f 2e c9             	ucomiss %xmm1,%xmm1
    11b4:	7a 29                	jp     11df <func_floor_166(float)+0x3f>
    11b6:	0f 2f 0d 00 00 00 00 	comiss 0x0(%rip),%xmm1        # 11bd <func_floor_166(float)+0x1d>
    11bd:	77 20                	ja     11df <func_floor_166(float)+0x3f>
    11bf:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    11c3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11c7:	f3 0f 2a c8          	cvtsi2ss %eax,%xmm1
    11cb:	0f 2f c8             	comiss %xmm0,%xmm1
    11ce:	76 0c                	jbe    11dc <func_floor_166(float)+0x3c>
    11d0:	f3 0f 5c 0d 00 00 00 	subss  0x0(%rip),%xmm1        # 11d8 <func_floor_166(float)+0x38>
    11d7:	00 
    11d8:	0f 28 c1             	movaps %xmm1,%xmm0
    11db:	c3                   	ret    
    11dc:	0f 28 c1             	movaps %xmm1,%xmm0
    11df:	c3                   	ret    

00000000000011e0 <func_floor_167(double)>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	66 48 0f 7e c0       	movq   %xmm0,%rax
    11e9:	48 0f ba f0 3f       	btr    $0x3f,%rax
    11ee:	66 48 0f 6e c8       	movq   %rax,%xmm1
    11f3:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
    11f7:	7a 2f                	jp     1228 <func_floor_167(double)+0x48>
    11f9:	66 0f 2f 0d 00 00 00 	comisd 0x0(%rip),%xmm1        # 1201 <func_floor_167(double)+0x21>
    1200:	00 
    1201:	77 25                	ja     1228 <func_floor_167(double)+0x48>
    1203:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    1208:	66 0f ef c9          	pxor   %xmm1,%xmm1
    120c:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
    1211:	66 0f 2f c8          	comisd %xmm0,%xmm1
    1215:	76 0d                	jbe    1224 <func_floor_167(double)+0x44>
    1217:	f2 0f 5c 0d 00 00 00 	subsd  0x0(%rip),%xmm1        # 121f <func_floor_167(double)+0x3f>
    121e:	00 
    121f:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1223:	c3                   	ret    
    1224:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <func_floor_168(long)>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	48 89 f8             	mov    %rdi,%rax
    1237:	c3                   	ret    
    1238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123f:	00 

0000000000001240 <func_floor_169(int)>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	89 f8                	mov    %edi,%eax
    1246:	c3                   	ret    
    1247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    124e:	00 00 

0000000000001250 <func_floor_170(short)>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	89 f8                	mov    %edi,%eax
    1256:	c3                   	ret    
    1257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    125e:	00 00 

0000000000001260 <func_floor_171(signed char)>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	89 f8                	mov    %edi,%eax
    1266:	c3                   	ret    
    1267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    126e:	00 00 

0000000000001270 <func_floor_172(unsigned long)>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	48 89 f8             	mov    %rdi,%rax
    1277:	c3                   	ret    
    1278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    127f:	00 

0000000000001280 <func_floor_173(unsigned int)>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	89 f8                	mov    %edi,%eax
    1286:	c3                   	ret    
    1287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    128e:	00 00 

0000000000001290 <func_floor_174(unsigned short)>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	89 f8                	mov    %edi,%eax
    1296:	c3                   	ret    
    1297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    129e:	00 00 

00000000000012a0 <func_floor_175(unsigned char)>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	89 f8                	mov    %edi,%eax
    12a6:	c3                   	ret    
    12a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ae:	00 00 

00000000000012b0 <func_floor_176(unsigned long)>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	48 89 f8             	mov    %rdi,%rax
    12b7:	c3                   	ret    
    12b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12bf:	00 

00000000000012c0 <func_floor_177(unsigned int)>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	89 f8                	mov    %edi,%eax
    12c6:	c3                   	ret    
    12c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ce:	00 00 

00000000000012d0 <func_floor_178(unsigned short)>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	89 f8                	mov    %edi,%eax
    12d6:	c3                   	ret    
    12d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12de:	00 00 

00000000000012e0 <func_floor_179(unsigned char)>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	89 f8                	mov    %edi,%eax
    12e6:	c3                   	ret    
    12e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ee:	00 00 

00000000000012f0 <func_inc_180(float)>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f3 0f 58 05 00 00 00 	addss  0x0(%rip),%xmm0        # 12fc <func_inc_180(float)+0xc>
    12fb:	00 
    12fc:	c3                   	ret    
    12fd:	0f 1f 00             	nopl   (%rax)

0000000000001300 <func_inc_181(double)>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 0f 58 05 00 00 00 	addsd  0x0(%rip),%xmm0        # 130c <func_inc_181(double)+0xc>
    130b:	00 
    130c:	c3                   	ret    
    130d:	0f 1f 00             	nopl   (%rax)

0000000000001310 <func_inc_182(long)>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1318:	c3                   	ret    
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001320 <func_inc_183(int)>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	8d 47 01             	lea    0x1(%rdi),%eax
    1327:	c3                   	ret    
    1328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    132f:	00 

0000000000001330 <func_inc_184(short)>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	8d 47 01             	lea    0x1(%rdi),%eax
    1337:	c3                   	ret    
    1338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    133f:	00 

0000000000001340 <func_inc_185(signed char)>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	8d 47 01             	lea    0x1(%rdi),%eax
    1347:	c3                   	ret    
    1348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    134f:	00 

0000000000001350 <func_inc_186(unsigned long)>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1358:	c3                   	ret    
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <func_inc_187(unsigned int)>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	8d 47 01             	lea    0x1(%rdi),%eax
    1367:	c3                   	ret    
    1368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    136f:	00 

0000000000001370 <func_inc_188(unsigned short)>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	8d 47 01             	lea    0x1(%rdi),%eax
    1377:	c3                   	ret    
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00 

0000000000001380 <func_inc_189(unsigned char)>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	8d 47 01             	lea    0x1(%rdi),%eax
    1387:	c3                   	ret    
    1388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    138f:	00 

0000000000001390 <func_inc_190(unsigned long)>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1398:	c3                   	ret    
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013a0 <func_inc_191(unsigned int)>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	8d 47 01             	lea    0x1(%rdi),%eax
    13a7:	c3                   	ret    
    13a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13af:	00 

00000000000013b0 <func_inc_192(unsigned short)>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	8d 47 01             	lea    0x1(%rdi),%eax
    13b7:	c3                   	ret    
    13b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13bf:	00 

00000000000013c0 <func_inc_193(unsigned char)>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	8d 47 01             	lea    0x1(%rdi),%eax
    13c7:	c3                   	ret    
    13c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13cf:	00 

00000000000013d0 <func_add_194(float, float)>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <func_add_195(double, double)>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    13e8:	c3                   	ret    
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <func_add_196(long, long)>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	48 8d 04 3e          	lea    (%rsi,%rdi,1),%rax
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <func_add_197(int, int)>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1407:	c3                   	ret    
    1408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    140f:	00 

0000000000001410 <func_add_198(short, short)>:
    1410:	f3 0f 1e fa          	endbr64 
    1414:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1417:	c3                   	ret    
    1418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    141f:	00 

0000000000001420 <func_add_199(signed char, signed char)>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1427:	c3                   	ret    
    1428:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    142f:	00 

0000000000001430 <func_add_200(unsigned long, unsigned long)>:
    1430:	f3 0f 1e fa          	endbr64 
    1434:	48 8d 04 3e          	lea    (%rsi,%rdi,1),%rax
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <func_add_201(unsigned int, unsigned int)>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1447:	c3                   	ret    
    1448:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    144f:	00 

0000000000001450 <func_add_202(unsigned short, unsigned short)>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1457:	c3                   	ret    
    1458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    145f:	00 

0000000000001460 <func_add_203(unsigned char, unsigned char)>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1467:	c3                   	ret    
    1468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    146f:	00 

0000000000001470 <func_add_204(unsigned long, unsigned long)>:
    1470:	f3 0f 1e fa          	endbr64 
    1474:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <func_add_205(unsigned int, unsigned int)>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1487:	c3                   	ret    
    1488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    148f:	00 

0000000000001490 <func_add_206(unsigned short, unsigned short)>:
    1490:	f3 0f 1e fa          	endbr64 
    1494:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1497:	c3                   	ret    
    1498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    149f:	00 

00000000000014a0 <func_add_207(unsigned char, unsigned char)>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    14a7:	c3                   	ret    
    14a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14af:	00 

00000000000014b0 <func_average_208(float, float)>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 14bc <func_average_208(float, float)+0xc>
    14bb:	00 
    14bc:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    14c0:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    14c4:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    14c8:	c3                   	ret    
    14c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014d0 <func_average_209(double, double)>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # 14dc <func_average_209(double, double)+0xc>
    14db:	00 
    14dc:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    14e0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    14e4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    14e8:	c3                   	ret    
    14e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014f0 <func_average_210(long, long)>:
    14f0:	f3 0f 1e fa          	endbr64 
    14f4:	48 89 f8             	mov    %rdi,%rax
    14f7:	48 21 f7             	and    %rsi,%rdi
    14fa:	48 31 f0             	xor    %rsi,%rax
    14fd:	48 d1 f8             	sar    %rax
    1500:	48 01 f8             	add    %rdi,%rax
    1503:	c3                   	ret    
    1504:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    150b:	00 00 00 00 
    150f:	90                   	nop

0000000000001510 <func_average_211(int, int)>:
    1510:	f3 0f 1e fa          	endbr64 
    1514:	89 f8                	mov    %edi,%eax
    1516:	21 f7                	and    %esi,%edi
    1518:	31 f0                	xor    %esi,%eax
    151a:	d1 f8                	sar    %eax
    151c:	01 f8                	add    %edi,%eax
    151e:	c3                   	ret    
    151f:	90                   	nop

0000000000001520 <func_average_212(short, short)>:
    1520:	f3 0f 1e fa          	endbr64 
    1524:	89 f0                	mov    %esi,%eax
    1526:	21 fe                	and    %edi,%esi
    1528:	31 f8                	xor    %edi,%eax
    152a:	66 d1 f8             	sar    %ax
    152d:	01 f0                	add    %esi,%eax
    152f:	c3                   	ret    

0000000000001530 <func_average_213(signed char, signed char)>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	89 f0                	mov    %esi,%eax
    1536:	21 fe                	and    %edi,%esi
    1538:	31 f8                	xor    %edi,%eax
    153a:	d0 f8                	sar    %al
    153c:	01 f0                	add    %esi,%eax
    153e:	c3                   	ret    
    153f:	90                   	nop

0000000000001540 <func_average_214(unsigned long, unsigned long)>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	48 89 f8             	mov    %rdi,%rax
    1547:	48 21 f7             	and    %rsi,%rdi
    154a:	48 31 f0             	xor    %rsi,%rax
    154d:	48 d1 e8             	shr    %rax
    1550:	48 01 f8             	add    %rdi,%rax
    1553:	c3                   	ret    
    1554:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    155b:	00 00 00 00 
    155f:	90                   	nop

0000000000001560 <func_average_215(unsigned int, unsigned int)>:
    1560:	f3 0f 1e fa          	endbr64 
    1564:	89 f8                	mov    %edi,%eax
    1566:	21 f7                	and    %esi,%edi
    1568:	31 f0                	xor    %esi,%eax
    156a:	d1 e8                	shr    %eax
    156c:	01 f8                	add    %edi,%eax
    156e:	c3                   	ret    
    156f:	90                   	nop

0000000000001570 <func_average_216(unsigned short, unsigned short)>:
    1570:	f3 0f 1e fa          	endbr64 
    1574:	89 f0                	mov    %esi,%eax
    1576:	21 fe                	and    %edi,%esi
    1578:	31 f8                	xor    %edi,%eax
    157a:	66 d1 e8             	shr    %ax
    157d:	01 f0                	add    %esi,%eax
    157f:	c3                   	ret    

0000000000001580 <func_average_217(unsigned char, unsigned char)>:
    1580:	f3 0f 1e fa          	endbr64 
    1584:	89 f0                	mov    %esi,%eax
    1586:	21 fe                	and    %edi,%esi
    1588:	31 f8                	xor    %edi,%eax
    158a:	d0 e8                	shr    %al
    158c:	01 f0                	add    %esi,%eax
    158e:	c3                   	ret    
    158f:	90                   	nop

0000000000001590 <func_average_218(unsigned long, unsigned long)>:
    1590:	f3 0f 1e fa          	endbr64 
    1594:	48 89 f8             	mov    %rdi,%rax
    1597:	48 21 f7             	and    %rsi,%rdi
    159a:	48 31 f0             	xor    %rsi,%rax
    159d:	48 d1 e8             	shr    %rax
    15a0:	48 01 f8             	add    %rdi,%rax
    15a3:	c3                   	ret    
    15a4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15ab:	00 00 00 00 
    15af:	90                   	nop

00000000000015b0 <func_average_219(unsigned int, unsigned int)>:
    15b0:	f3 0f 1e fa          	endbr64 
    15b4:	89 f8                	mov    %edi,%eax
    15b6:	21 f7                	and    %esi,%edi
    15b8:	31 f0                	xor    %esi,%eax
    15ba:	d1 e8                	shr    %eax
    15bc:	01 f8                	add    %edi,%eax
    15be:	c3                   	ret    
    15bf:	90                   	nop

00000000000015c0 <func_average_220(unsigned short, unsigned short)>:
    15c0:	f3 0f 1e fa          	endbr64 
    15c4:	89 f0                	mov    %esi,%eax
    15c6:	21 fe                	and    %edi,%esi
    15c8:	31 f8                	xor    %edi,%eax
    15ca:	66 d1 e8             	shr    %ax
    15cd:	01 f0                	add    %esi,%eax
    15cf:	c3                   	ret    

00000000000015d0 <func_average_221(unsigned char, unsigned char)>:
    15d0:	f3 0f 1e fa          	endbr64 
    15d4:	89 f0                	mov    %esi,%eax
    15d6:	21 fe                	and    %edi,%esi
    15d8:	31 f8                	xor    %edi,%eax
    15da:	d0 e8                	shr    %al
    15dc:	01 f0                	add    %esi,%eax
    15de:	c3                   	ret    
    15df:	90                   	nop

00000000000015e0 <func_is_positive_222(float)>:
    15e0:	f3 0f 1e fa          	endbr64 
    15e4:	66 0f 7e c0          	movd   %xmm0,%eax
    15e8:	f7 d0                	not    %eax
    15ea:	c1 f8 1f             	sar    $0x1f,%eax
    15ed:	c3                   	ret    
    15ee:	66 90                	xchg   %ax,%ax

00000000000015f0 <func_is_positive_223(double)>:
    15f0:	f3 0f 1e fa          	endbr64 
    15f4:	66 48 0f 7e c0       	movq   %xmm0,%rax
    15f9:	48 f7 d0             	not    %rax
    15fc:	48 c1 f8 3f          	sar    $0x3f,%rax
    1600:	c3                   	ret    
    1601:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1608:	00 00 00 00 
    160c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001610 <func_is_positive_224(long)>:
    1610:	f3 0f 1e fa          	endbr64 
    1614:	48 89 f8             	mov    %rdi,%rax
    1617:	48 f7 d0             	not    %rax
    161a:	48 c1 f8 3f          	sar    $0x3f,%rax
    161e:	c3                   	ret    
    161f:	90                   	nop

0000000000001620 <func_is_positive_225(int)>:
    1620:	f3 0f 1e fa          	endbr64 
    1624:	89 f8                	mov    %edi,%eax
    1626:	f7 d0                	not    %eax
    1628:	c1 f8 1f             	sar    $0x1f,%eax
    162b:	c3                   	ret    
    162c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001630 <func_is_positive_226(short)>:
    1630:	f3 0f 1e fa          	endbr64 
    1634:	89 f8                	mov    %edi,%eax
    1636:	f7 d0                	not    %eax
    1638:	66 c1 f8 0f          	sar    $0xf,%ax
    163c:	c3                   	ret    
    163d:	0f 1f 00             	nopl   (%rax)

0000000000001640 <func_is_positive_227(signed char)>:
    1640:	f3 0f 1e fa          	endbr64 
    1644:	89 f8                	mov    %edi,%eax
    1646:	f7 d0                	not    %eax
    1648:	c0 f8 07             	sar    $0x7,%al
    164b:	c3                   	ret    
    164c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001650 <func_is_positive_228(unsigned long)>:
    1650:	f3 0f 1e fa          	endbr64 
    1654:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    165b:	c3                   	ret    
    165c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001660 <func_is_positive_229(unsigned int)>:
    1660:	f3 0f 1e fa          	endbr64 
    1664:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1669:	c3                   	ret    
    166a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001670 <func_is_positive_230(unsigned short)>:
    1670:	f3 0f 1e fa          	endbr64 
    1674:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1679:	c3                   	ret    
    167a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001680 <func_is_positive_231(unsigned char)>:
    1680:	f3 0f 1e fa          	endbr64 
    1684:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1689:	c3                   	ret    
    168a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001690 <func_is_positive_232(unsigned long)>:
    1690:	f3 0f 1e fa          	endbr64 
    1694:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    169b:	c3                   	ret    
    169c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016a0 <func_is_positive_233(unsigned int)>:
    16a0:	f3 0f 1e fa          	endbr64 
    16a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16a9:	c3                   	ret    
    16aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016b0 <func_is_positive_234(unsigned short)>:
    16b0:	f3 0f 1e fa          	endbr64 
    16b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16b9:	c3                   	ret    
    16ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016c0 <func_is_positive_235(unsigned char)>:
    16c0:	f3 0f 1e fa          	endbr64 
    16c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16c9:	c3                   	ret    
    16ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016d0 <func_dec_236(float)>:
    16d0:	f3 0f 1e fa          	endbr64 
    16d4:	f3 0f 5c 05 00 00 00 	subss  0x0(%rip),%xmm0        # 16dc <func_dec_236(float)+0xc>
    16db:	00 
    16dc:	c3                   	ret    
    16dd:	0f 1f 00             	nopl   (%rax)

00000000000016e0 <func_dec_237(double)>:
    16e0:	f3 0f 1e fa          	endbr64 
    16e4:	f2 0f 5c 05 00 00 00 	subsd  0x0(%rip),%xmm0        # 16ec <func_dec_237(double)+0xc>
    16eb:	00 
    16ec:	c3                   	ret    
    16ed:	0f 1f 00             	nopl   (%rax)

00000000000016f0 <func_dec_238(long)>:
    16f0:	f3 0f 1e fa          	endbr64 
    16f4:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    16f8:	c3                   	ret    
    16f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001700 <func_dec_239(int)>:
    1700:	f3 0f 1e fa          	endbr64 
    1704:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1707:	c3                   	ret    
    1708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    170f:	00 

0000000000001710 <func_dec_240(short)>:
    1710:	f3 0f 1e fa          	endbr64 
    1714:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1717:	c3                   	ret    
    1718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    171f:	00 

0000000000001720 <func_dec_241(signed char)>:
    1720:	f3 0f 1e fa          	endbr64 
    1724:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1727:	c3                   	ret    
    1728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    172f:	00 

0000000000001730 <func_dec_242(unsigned long)>:
    1730:	f3 0f 1e fa          	endbr64 
    1734:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1738:	c3                   	ret    
    1739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001740 <func_dec_243(unsigned int)>:
    1740:	f3 0f 1e fa          	endbr64 
    1744:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1747:	c3                   	ret    
    1748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    174f:	00 

0000000000001750 <func_dec_244(unsigned short)>:
    1750:	f3 0f 1e fa          	endbr64 
    1754:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1757:	c3                   	ret    
    1758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    175f:	00 

0000000000001760 <func_dec_245(unsigned char)>:
    1760:	f3 0f 1e fa          	endbr64 
    1764:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1767:	c3                   	ret    
    1768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    176f:	00 

0000000000001770 <func_dec_246(unsigned long)>:
    1770:	f3 0f 1e fa          	endbr64 
    1774:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1778:	c3                   	ret    
    1779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001780 <func_dec_247(unsigned int)>:
    1780:	f3 0f 1e fa          	endbr64 
    1784:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1787:	c3                   	ret    
    1788:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    178f:	00 

0000000000001790 <func_dec_248(unsigned short)>:
    1790:	f3 0f 1e fa          	endbr64 
    1794:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1797:	c3                   	ret    
    1798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    179f:	00 

00000000000017a0 <func_dec_249(unsigned char)>:
    17a0:	f3 0f 1e fa          	endbr64 
    17a4:	8d 47 ff             	lea    -0x1(%rdi),%eax
    17a7:	c3                   	ret    
    17a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17af:	00 

00000000000017b0 <func_frac_250(float)>:
    17b0:	f3 0f 1e fa          	endbr64 
    17b4:	0f 2e 05 00 00 00 00 	ucomiss 0x0(%rip),%xmm0        # 17bb <func_frac_250(float)+0xb>
    17bb:	7a 03                	jp     17c0 <func_frac_250(float)+0x10>
    17bd:	75 01                	jne    17c0 <func_frac_250(float)+0x10>
    17bf:	c3                   	ret    
    17c0:	66 0f 7e c0          	movd   %xmm0,%eax
    17c4:	0f 28 d0             	movaps %xmm0,%xmm2
    17c7:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    17cc:	66 0f 6e c8          	movd   %eax,%xmm1
    17d0:	0f 2e c9             	ucomiss %xmm1,%xmm1
    17d3:	7a 15                	jp     17ea <func_frac_250(float)+0x3a>
    17d5:	0f 2f 0d 00 00 00 00 	comiss 0x0(%rip),%xmm1        # 17dc <func_frac_250(float)+0x2c>
    17dc:	77 0c                	ja     17ea <func_frac_250(float)+0x3a>
    17de:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    17e2:	66 0f ef d2          	pxor   %xmm2,%xmm2
    17e6:	f3 0f 2a d0          	cvtsi2ss %eax,%xmm2
    17ea:	f3 0f 5c c2          	subss  %xmm2,%xmm0
    17ee:	c3                   	ret    
    17ef:	90                   	nop

00000000000017f0 <func_frac_251(double)>:
    17f0:	f3 0f 1e fa          	endbr64 
    17f4:	66 0f 2e 05 00 00 00 	ucomisd 0x0(%rip),%xmm0        # 17fc <func_frac_251(double)+0xc>
    17fb:	00 
    17fc:	7a 0a                	jp     1808 <func_frac_251(double)+0x18>
    17fe:	75 08                	jne    1808 <func_frac_251(double)+0x18>
    1800:	c3                   	ret    
    1801:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1808:	66 48 0f 7e c0       	movq   %xmm0,%rax
    180d:	66 0f 28 d0          	movapd %xmm0,%xmm2
    1811:	48 0f ba f0 3f       	btr    $0x3f,%rax
    1816:	66 48 0f 6e c8       	movq   %rax,%xmm1
    181b:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
    181f:	7a 18                	jp     1839 <func_frac_251(double)+0x49>
    1821:	66 0f 2f 0d 00 00 00 	comisd 0x0(%rip),%xmm1        # 1829 <func_frac_251(double)+0x39>
    1828:	00 
    1829:	77 0e                	ja     1839 <func_frac_251(double)+0x49>
    182b:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    1830:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1834:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    1839:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
    183d:	c3                   	ret    
    183e:	66 90                	xchg   %ax,%ax

0000000000001840 <func_frac_252(long)>:
    1840:	f3 0f 1e fa          	endbr64 
    1844:	31 c0                	xor    %eax,%eax
    1846:	c3                   	ret    
    1847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    184e:	00 00 

0000000000001850 <func_frac_253(int)>:
    1850:	f3 0f 1e fa          	endbr64 
    1854:	31 c0                	xor    %eax,%eax
    1856:	c3                   	ret    
    1857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    185e:	00 00 

0000000000001860 <func_frac_254(short)>:
    1860:	f3 0f 1e fa          	endbr64 
    1864:	31 c0                	xor    %eax,%eax
    1866:	c3                   	ret    
    1867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    186e:	00 00 

0000000000001870 <func_frac_255(signed char)>:
    1870:	f3 0f 1e fa          	endbr64 
    1874:	31 c0                	xor    %eax,%eax
    1876:	c3                   	ret    
    1877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    187e:	00 00 

0000000000001880 <func_frac_256(unsigned long)>:
    1880:	f3 0f 1e fa          	endbr64 
    1884:	31 c0                	xor    %eax,%eax
    1886:	c3                   	ret    
    1887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    188e:	00 00 

0000000000001890 <func_frac_257(unsigned int)>:
    1890:	f3 0f 1e fa          	endbr64 
    1894:	31 c0                	xor    %eax,%eax
    1896:	c3                   	ret    
    1897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    189e:	00 00 

00000000000018a0 <func_frac_258(unsigned short)>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	31 c0                	xor    %eax,%eax
    18a6:	c3                   	ret    
    18a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ae:	00 00 

00000000000018b0 <func_frac_259(unsigned char)>:
    18b0:	f3 0f 1e fa          	endbr64 
    18b4:	31 c0                	xor    %eax,%eax
    18b6:	c3                   	ret    
    18b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18be:	00 00 

00000000000018c0 <func_frac_260(unsigned long)>:
    18c0:	f3 0f 1e fa          	endbr64 
    18c4:	31 c0                	xor    %eax,%eax
    18c6:	c3                   	ret    
    18c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ce:	00 00 

00000000000018d0 <func_frac_261(unsigned int)>:
    18d0:	f3 0f 1e fa          	endbr64 
    18d4:	31 c0                	xor    %eax,%eax
    18d6:	c3                   	ret    
    18d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18de:	00 00 

00000000000018e0 <func_frac_262(unsigned short)>:
    18e0:	f3 0f 1e fa          	endbr64 
    18e4:	31 c0                	xor    %eax,%eax
    18e6:	c3                   	ret    
    18e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ee:	00 00 

00000000000018f0 <func_frac_263(unsigned char)>:
    18f0:	f3 0f 1e fa          	endbr64 
    18f4:	31 c0                	xor    %eax,%eax
    18f6:	c3                   	ret    
    18f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18fe:	00 00 

0000000000001900 <func_agm_264(float, float)>:
    1900:	f3 0f 1e fa          	endbr64 
    1904:	53                   	push   %rbx
    1905:	0f 28 d0             	movaps %xmm0,%xmm2
    1908:	0f 28 c1             	movaps %xmm1,%xmm0
    190b:	0f 28 da             	movaps %xmm2,%xmm3
    190e:	48 83 ec 20          	sub    $0x20,%rsp
    1912:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 191a <func_agm_264(float, float)+0x1a>
    1919:	00 
    191a:	f3 0f 59 dd          	mulss  %xmm5,%xmm3
    191e:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    1922:	f3 0f 58 c3          	addss  %xmm3,%xmm0
    1926:	0f 28 d8             	movaps %xmm0,%xmm3
    1929:	f3 0f 5c d8          	subss  %xmm0,%xmm3
    192d:	0f 2e db             	ucomiss %xmm3,%xmm3
    1930:	0f 8b 3a 01 00 00    	jnp    1a70 <func_agm_264(float, float)+0x170>
    1936:	f3 44 0f 10 05 00 00 	movss  0x0(%rip),%xmm8        # 193f <func_agm_264(float, float)+0x3f>
    193d:	00 00 
    193f:	66 0f ef f6          	pxor   %xmm6,%xmm6
    1943:	41 0f 28 c0          	movaps %xmm8,%xmm0
    1947:	0f 2e d6             	ucomiss %xmm6,%xmm2
    194a:	0f 8a c8 01 00 00    	jp     1b18 <func_agm_264(float, float)+0x218>
    1950:	0f 28 fe             	movaps %xmm6,%xmm7
    1953:	0f 85 bf 01 00 00    	jne    1b18 <func_agm_264(float, float)+0x218>
    1959:	66 0f 7e d6          	movd   %xmm2,%esi
    195d:	66 0f 7e d0          	movd   %xmm2,%eax
    1961:	66 0f 7e ca          	movd   %xmm1,%edx
    1965:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
    196b:	66 0f 6e e6          	movd   %esi,%xmm4
    196f:	0f 2e 25 00 00 00 00 	ucomiss 0x0(%rip),%xmm4        # 1976 <func_agm_264(float, float)+0x76>
    1976:	0f 8a 74 01 00 00    	jp     1af0 <func_agm_264(float, float)+0x1f0>
    197c:	0f 85 6e 01 00 00    	jne    1af0 <func_agm_264(float, float)+0x1f0>
    1982:	0f 28 fa             	movaps %xmm2,%xmm7
    1985:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    198a:	f3 0f 58 f9          	addss  %xmm1,%xmm7
    198e:	0f 2e d6             	ucomiss %xmm6,%xmm2
    1991:	0f 8a 41 01 00 00    	jp     1ad8 <func_agm_264(float, float)+0x1d8>
    1997:	0f 28 e2             	movaps %xmm2,%xmm4
    199a:	0f 85 38 01 00 00    	jne    1ad8 <func_agm_264(float, float)+0x1d8>
    19a0:	0f 2e ce             	ucomiss %xmm6,%xmm1
    19a3:	0f 8a 17 01 00 00    	jp     1ac0 <func_agm_264(float, float)+0x1c0>
    19a9:	0f 28 d9             	movaps %xmm1,%xmm3
    19ac:	0f 85 0e 01 00 00    	jne    1ac0 <func_agm_264(float, float)+0x1c0>
    19b2:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    19b6:	0f 2f f3             	comiss %xmm3,%xmm6
    19b9:	73 17                	jae    19d2 <func_agm_264(float, float)+0xd2>
    19bb:	0f 2e d2             	ucomiss %xmm2,%xmm2
    19be:	0f 9a c3             	setp   %bl
    19c1:	0f 2e c9             	ucomiss %xmm1,%xmm1
    19c4:	0f 9a c0             	setp   %al
    19c7:	09 c3                	or     %eax,%ebx
    19c9:	0f b6 db             	movzbl %bl,%ebx
    19cc:	f7 db                	neg    %ebx
    19ce:	09 cb                	or     %ecx,%ebx
    19d0:	74 0b                	je     19dd <func_agm_264(float, float)+0xdd>
    19d2:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    19d7:	0f 28 d6             	movaps %xmm6,%xmm2
    19da:	0f 28 ce             	movaps %xmm6,%xmm1
    19dd:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    19e1:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    19e5:	0f 28 da             	movaps %xmm2,%xmm3
    19e8:	f3 0f 59 dd          	mulss  %xmm5,%xmm3
    19ec:	0f 28 c8             	movaps %xmm0,%xmm1
    19ef:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    19f3:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    19f7:	66 0f 7e d8          	movd   %xmm3,%eax
    19fb:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1a00:	66 0f 6e e0          	movd   %eax,%xmm4
    1a04:	0f 2f 25 00 00 00 00 	comiss 0x0(%rip),%xmm4        # 1a0b <func_agm_264(float, float)+0x10b>
    1a0b:	76 46                	jbe    1a53 <func_agm_264(float, float)+0x153>
    1a0d:	0f 1f 00             	nopl   (%rax)
    1a10:	0f 28 e2             	movaps %xmm2,%xmm4
    1a13:	0f 28 d8             	movaps %xmm0,%xmm3
    1a16:	0f 28 ca             	movaps %xmm2,%xmm1
    1a19:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    1a1d:	f3 0f 59 dd          	mulss  %xmm5,%xmm3
    1a21:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    1a25:	0f 2e f0             	ucomiss %xmm0,%xmm6
    1a28:	0f 28 d3             	movaps %xmm3,%xmm2
    1a2b:	f3 0f 58 d1          	addss  %xmm1,%xmm2
    1a2f:	0f 87 0d 01 00 00    	ja     1b42 <func_agm_264(float, float)+0x242>
    1a35:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    1a39:	f3 0f 5c cb          	subss  %xmm3,%xmm1
    1a3d:	66 0f 7e c8          	movd   %xmm1,%eax
    1a41:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1a46:	66 0f 6e c8          	movd   %eax,%xmm1
    1a4a:	0f 2f 0d 00 00 00 00 	comiss 0x0(%rip),%xmm1        # 1a51 <func_agm_264(float, float)+0x151>
    1a51:	77 bd                	ja     1a10 <func_agm_264(float, float)+0x110>
    1a53:	85 db                	test   %ebx,%ebx
    1a55:	75 08                	jne    1a5f <func_agm_264(float, float)+0x15f>
    1a57:	0f 28 f8             	movaps %xmm0,%xmm7
    1a5a:	f3 41 0f 59 f8       	mulss  %xmm8,%xmm7
    1a5f:	48 83 c4 20          	add    $0x20,%rsp
    1a63:	0f 28 c7             	movaps %xmm7,%xmm0
    1a66:	5b                   	pop    %rbx
    1a67:	c3                   	ret    
    1a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a6f:	00 
    1a70:	66 0f 7e c0          	movd   %xmm0,%eax
    1a74:	66 0f ef f6          	pxor   %xmm6,%xmm6
    1a78:	31 d2                	xor    %edx,%edx
    1a7a:	b9 01 00 00 00       	mov    $0x1,%ecx
    1a7f:	c1 f8 17             	sar    $0x17,%eax
    1a82:	0f 2e c6             	ucomiss %xmm6,%xmm0
    1a85:	0f b6 c0             	movzbl %al,%eax
    1a88:	0f 9a c2             	setp   %dl
    1a8b:	0f 45 d1             	cmovne %ecx,%edx
    1a8e:	85 d2                	test   %edx,%edx
    1a90:	0f 85 a2 00 00 00    	jne    1b38 <func_agm_264(float, float)+0x238>
    1a96:	8d 50 7f             	lea    0x7f(%rax),%edx
    1a99:	89 c1                	mov    %eax,%ecx
    1a9b:	b8 7f 00 00 00       	mov    $0x7f,%eax
    1aa0:	c1 e2 17             	shl    $0x17,%edx
    1aa3:	29 c8                	sub    %ecx,%eax
    1aa5:	66 44 0f 6e c2       	movd   %edx,%xmm8
    1aaa:	c1 e0 17             	shl    $0x17,%eax
    1aad:	66 0f 6e c0          	movd   %eax,%xmm0
    1ab1:	e9 91 fe ff ff       	jmp    1947 <func_agm_264(float, float)+0x47>
    1ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1abd:	00 00 00 
    1ac0:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1ac6:	81 ca 00 00 80 3f    	or     $0x3f800000,%edx
    1acc:	66 0f 6e da          	movd   %edx,%xmm3
    1ad0:	e9 dd fe ff ff       	jmp    19b2 <func_agm_264(float, float)+0xb2>
    1ad5:	0f 1f 00             	nopl   (%rax)
    1ad8:	25 00 00 00 80       	and    $0x80000000,%eax
    1add:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    1ae2:	66 0f 6e e0          	movd   %eax,%xmm4
    1ae6:	e9 b5 fe ff ff       	jmp    19a0 <func_agm_264(float, float)+0xa0>
    1aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1af0:	89 d7                	mov    %edx,%edi
    1af2:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
    1af8:	66 0f 6e e7          	movd   %edi,%xmm4
    1afc:	0f 2e 25 00 00 00 00 	ucomiss 0x0(%rip),%xmm4        # 1b03 <func_agm_264(float, float)+0x203>
    1b03:	7a 06                	jp     1b0b <func_agm_264(float, float)+0x20b>
    1b05:	0f 84 77 fe ff ff    	je     1982 <func_agm_264(float, float)+0x82>
    1b0b:	31 c9                	xor    %ecx,%ecx
    1b0d:	e9 7c fe ff ff       	jmp    198e <func_agm_264(float, float)+0x8e>
    1b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1b18:	0f 2e ce             	ucomiss %xmm6,%xmm1
    1b1b:	7a 09                	jp     1b26 <func_agm_264(float, float)+0x226>
    1b1d:	0f 28 fe             	movaps %xmm6,%xmm7
    1b20:	0f 84 33 fe ff ff    	je     1959 <func_agm_264(float, float)+0x59>
    1b26:	f3 0f 10 3d 00 00 00 	movss  0x0(%rip),%xmm7        # 1b2e <func_agm_264(float, float)+0x22e>
    1b2d:	00 
    1b2e:	e9 26 fe ff ff       	jmp    1959 <func_agm_264(float, float)+0x59>
    1b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b38:	8d 48 81             	lea    -0x7f(%rax),%ecx
    1b3b:	89 c2                	mov    %eax,%edx
    1b3d:	e9 59 ff ff ff       	jmp    1a9b <func_agm_264(float, float)+0x19b>
    1b42:	f3 0f 11 74 24 1c    	movss  %xmm6,0x1c(%rsp)
    1b48:	f3 0f 11 7c 24 18    	movss  %xmm7,0x18(%rsp)
    1b4e:	f3 44 0f 11 44 24 14 	movss  %xmm8,0x14(%rsp)
    1b55:	f3 0f 11 54 24 10    	movss  %xmm2,0x10(%rsp)
    1b5b:	f3 0f 11 4c 24 0c    	movss  %xmm1,0xc(%rsp)
    1b61:	f3 0f 11 5c 24 08    	movss  %xmm3,0x8(%rsp)
    1b67:	e8 00 00 00 00       	call   1b6c <func_agm_264(float, float)+0x26c>
    1b6c:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 1b74 <func_agm_264(float, float)+0x274>
    1b73:	00 
    1b74:	f3 0f 10 74 24 1c    	movss  0x1c(%rsp),%xmm6
    1b7a:	f3 0f 10 7c 24 18    	movss  0x18(%rsp),%xmm7
    1b80:	f3 44 0f 10 44 24 14 	movss  0x14(%rsp),%xmm8
    1b87:	f3 0f 10 54 24 10    	movss  0x10(%rsp),%xmm2
    1b8d:	f3 0f 10 4c 24 0c    	movss  0xc(%rsp),%xmm1
    1b93:	f3 0f 10 5c 24 08    	movss  0x8(%rsp),%xmm3
    1b99:	e9 9b fe ff ff       	jmp    1a39 <func_agm_264(float, float)+0x139>
    1b9e:	66 90                	xchg   %ax,%ax

0000000000001ba0 <func_agm_265(double, double)>:
    1ba0:	f3 0f 1e fa          	endbr64 
    1ba4:	55                   	push   %rbp
    1ba5:	66 0f 28 d0          	movapd %xmm0,%xmm2
    1ba9:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1bad:	53                   	push   %rbx
    1bae:	66 0f 28 da          	movapd %xmm2,%xmm3
    1bb2:	48 83 ec 38          	sub    $0x38,%rsp
    1bb6:	f2 0f 10 2d 00 00 00 	movsd  0x0(%rip),%xmm5        # 1bbe <func_agm_265(double, double)+0x1e>
    1bbd:	00 
    1bbe:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    1bc2:	f2 0f 59 c5          	mulsd  %xmm5,%xmm0
    1bc6:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1bca:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1bce:	f2 0f 5c d8          	subsd  %xmm0,%xmm3
    1bd2:	66 0f 2e db          	ucomisd %xmm3,%xmm3
    1bd6:	0f 8b 74 01 00 00    	jnp    1d50 <func_agm_265(double, double)+0x1b0>
    1bdc:	f2 44 0f 10 0d 00 00 	movsd  0x0(%rip),%xmm9        # 1be5 <func_agm_265(double, double)+0x45>
    1be3:	00 00 
    1be5:	66 0f ef f6          	pxor   %xmm6,%xmm6
    1be9:	66 41 0f 28 c1       	movapd %xmm9,%xmm0
    1bee:	66 0f 2e d6          	ucomisd %xmm6,%xmm2
    1bf2:	0f 8a 28 02 00 00    	jp     1e20 <func_agm_265(double, double)+0x280>
    1bf8:	66 44 0f 28 c6       	movapd %xmm6,%xmm8
    1bfd:	0f 85 1d 02 00 00    	jne    1e20 <func_agm_265(double, double)+0x280>
    1c03:	66 48 0f 7e d7       	movq   %xmm2,%rdi
    1c08:	66 48 0f 7e d0       	movq   %xmm2,%rax
    1c0d:	66 48 0f 7e ce       	movq   %xmm1,%rsi
    1c12:	f2 0f 10 1d 00 00 00 	movsd  0x0(%rip),%xmm3        # 1c1a <func_agm_265(double, double)+0x7a>
    1c19:	00 
    1c1a:	48 0f ba f7 3f       	btr    $0x3f,%rdi
    1c1f:	66 48 0f 6e ff       	movq   %rdi,%xmm7
    1c24:	66 0f 2e fb          	ucomisd %xmm3,%xmm7
    1c28:	0f 8a d2 01 00 00    	jp     1e00 <func_agm_265(double, double)+0x260>
    1c2e:	0f 85 cc 01 00 00    	jne    1e00 <func_agm_265(double, double)+0x260>
    1c34:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    1c39:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    1c40:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
    1c45:	66 0f 2e d6          	ucomisd %xmm6,%xmm2
    1c49:	0f 8a 89 01 00 00    	jp     1dd8 <func_agm_265(double, double)+0x238>
    1c4f:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1c53:	0f 85 7f 01 00 00    	jne    1dd8 <func_agm_265(double, double)+0x238>
    1c59:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
    1c5d:	0f 8a 4d 01 00 00    	jp     1db0 <func_agm_265(double, double)+0x210>
    1c63:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1c67:	0f 85 43 01 00 00    	jne    1db0 <func_agm_265(double, double)+0x210>
    1c6d:	f2 0f 59 dc          	mulsd  %xmm4,%xmm3
    1c71:	66 0f 2f f3          	comisd %xmm3,%xmm6
    1c75:	73 1d                	jae    1c94 <func_agm_265(double, double)+0xf4>
    1c77:	66 0f 2e d2          	ucomisd %xmm2,%xmm2
    1c7b:	40 0f 9a c5          	setp   %bpl
    1c7f:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
    1c83:	0f 9a c0             	setp   %al
    1c86:	09 c5                	or     %eax,%ebp
    1c88:	40 0f b6 ed          	movzbl %bpl,%ebp
    1c8c:	48 f7 dd             	neg    %rbp
    1c8f:	48 09 d5             	or     %rdx,%rbp
    1c92:	74 0f                	je     1ca3 <func_agm_265(double, double)+0x103>
    1c94:	48 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%rbp
    1c9b:	66 0f 28 d6          	movapd %xmm6,%xmm2
    1c9f:	66 0f 28 ce          	movapd %xmm6,%xmm1
    1ca3:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    1ca7:	f2 0f 10 3d 00 00 00 	movsd  0x0(%rip),%xmm7        # 1caf <func_agm_265(double, double)+0x10f>
    1cae:	00 
    1caf:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rbx
    1cb6:	ff ff 7f 
    1cb9:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1cbd:	66 0f 28 da          	movapd %xmm2,%xmm3
    1cc1:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    1cc5:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1cc9:	f2 0f 59 cd          	mulsd  %xmm5,%xmm1
    1ccd:	f2 0f 5c d9          	subsd  %xmm1,%xmm3
    1cd1:	66 48 0f 7e d8       	movq   %xmm3,%rax
    1cd6:	48 21 d8             	and    %rbx,%rax
    1cd9:	66 48 0f 6e e0       	movq   %rax,%xmm4
    1cde:	66 0f 2f e7          	comisd %xmm7,%xmm4
    1ce2:	76 49                	jbe    1d2d <func_agm_265(double, double)+0x18d>
    1ce4:	0f 1f 40 00          	nopl   0x0(%rax)
    1ce8:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1cec:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1cf0:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1cf4:	f2 0f 59 c4          	mulsd  %xmm4,%xmm0
    1cf8:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    1cfc:	f2 0f 59 cd          	mulsd  %xmm5,%xmm1
    1d00:	66 0f 2e f0          	ucomisd %xmm0,%xmm6
    1d04:	66 0f 28 d3          	movapd %xmm3,%xmm2
    1d08:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1d0c:	0f 87 3d 01 00 00    	ja     1e4f <func_agm_265(double, double)+0x2af>
    1d12:	f2 0f 51 c0          	sqrtsd %xmm0,%xmm0
    1d16:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
    1d1a:	66 48 0f 7e c8       	movq   %xmm1,%rax
    1d1f:	48 21 d8             	and    %rbx,%rax
    1d22:	66 48 0f 6e c8       	movq   %rax,%xmm1
    1d27:	66 0f 2f cf          	comisd %xmm7,%xmm1
    1d2b:	77 bb                	ja     1ce8 <func_agm_265(double, double)+0x148>
    1d2d:	48 85 ed             	test   %rbp,%rbp
    1d30:	75 0a                	jne    1d3c <func_agm_265(double, double)+0x19c>
    1d32:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    1d37:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
    1d3c:	48 83 c4 38          	add    $0x38,%rsp
    1d40:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
    1d45:	5b                   	pop    %rbx
    1d46:	5d                   	pop    %rbp
    1d47:	c3                   	ret    
    1d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d4f:	00 
    1d50:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1d55:	66 0f ef f6          	pxor   %xmm6,%xmm6
    1d59:	31 d2                	xor    %edx,%edx
    1d5b:	b9 01 00 00 00       	mov    $0x1,%ecx
    1d60:	48 c1 f8 34          	sar    $0x34,%rax
    1d64:	25 ff 07 00 00       	and    $0x7ff,%eax
    1d69:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
    1d6d:	0f 9a c2             	setp   %dl
    1d70:	48 0f 45 d1          	cmovne %rcx,%rdx
    1d74:	48 85 d2             	test   %rdx,%rdx
    1d77:	0f 85 c3 00 00 00    	jne    1e40 <func_agm_265(double, double)+0x2a0>
    1d7d:	48 8d 90 ff 03 00 00 	lea    0x3ff(%rax),%rdx
    1d84:	48 89 c1             	mov    %rax,%rcx
    1d87:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    1d8c:	48 c1 e2 34          	shl    $0x34,%rdx
    1d90:	48 29 c8             	sub    %rcx,%rax
    1d93:	66 4c 0f 6e ca       	movq   %rdx,%xmm9
    1d98:	48 c1 e0 34          	shl    $0x34,%rax
    1d9c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1da1:	e9 48 fe ff ff       	jmp    1bee <func_agm_265(double, double)+0x4e>
    1da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1dad:	00 00 00 
    1db0:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1db7:	00 00 80 
    1dba:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    1dc1:	00 f0 3f 
    1dc4:	48 21 f0             	and    %rsi,%rax
    1dc7:	48 09 c8             	or     %rcx,%rax
    1dca:	66 48 0f 6e d8       	movq   %rax,%xmm3
    1dcf:	e9 99 fe ff ff       	jmp    1c6d <func_agm_265(double, double)+0xcd>
    1dd4:	0f 1f 40 00          	nopl   0x0(%rax)
    1dd8:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1ddf:	00 00 80 
    1de2:	48 21 c8             	and    %rcx,%rax
    1de5:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    1dec:	00 f0 3f 
    1def:	48 09 c8             	or     %rcx,%rax
    1df2:	66 48 0f 6e e0       	movq   %rax,%xmm4
    1df7:	e9 5d fe ff ff       	jmp    1c59 <func_agm_265(double, double)+0xb9>
    1dfc:	0f 1f 40 00          	nopl   0x0(%rax)
    1e00:	48 89 f7             	mov    %rsi,%rdi
    1e03:	48 0f ba f7 3f       	btr    $0x3f,%rdi
    1e08:	66 48 0f 6e ff       	movq   %rdi,%xmm7
    1e0d:	66 0f 2e fb          	ucomisd %xmm3,%xmm7
    1e11:	7a 06                	jp     1e19 <func_agm_265(double, double)+0x279>
    1e13:	0f 84 1b fe ff ff    	je     1c34 <func_agm_265(double, double)+0x94>
    1e19:	31 d2                	xor    %edx,%edx
    1e1b:	e9 25 fe ff ff       	jmp    1c45 <func_agm_265(double, double)+0xa5>
    1e20:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
    1e24:	7a 0b                	jp     1e31 <func_agm_265(double, double)+0x291>
    1e26:	66 44 0f 28 c6       	movapd %xmm6,%xmm8
    1e2b:	0f 84 d2 fd ff ff    	je     1c03 <func_agm_265(double, double)+0x63>
    1e31:	f2 44 0f 10 05 00 00 	movsd  0x0(%rip),%xmm8        # 1e3a <func_agm_265(double, double)+0x29a>
    1e38:	00 00 
    1e3a:	e9 c4 fd ff ff       	jmp    1c03 <func_agm_265(double, double)+0x63>
    1e3f:	90                   	nop
    1e40:	48 8d 88 01 fc ff ff 	lea    -0x3ff(%rax),%rcx
    1e47:	48 89 c2             	mov    %rax,%rdx
    1e4a:	e9 38 ff ff ff       	jmp    1d87 <func_agm_265(double, double)+0x1e7>
    1e4f:	f2 0f 11 74 24 28    	movsd  %xmm6,0x28(%rsp)
    1e55:	f2 44 0f 11 44 24 20 	movsd  %xmm8,0x20(%rsp)
    1e5c:	f2 44 0f 11 4c 24 18 	movsd  %xmm9,0x18(%rsp)
    1e63:	f2 0f 11 54 24 10    	movsd  %xmm2,0x10(%rsp)
    1e69:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
    1e6f:	f2 0f 11 1c 24       	movsd  %xmm3,(%rsp)
    1e74:	e8 00 00 00 00       	call   1e79 <func_agm_265(double, double)+0x2d9>
    1e79:	f2 0f 10 74 24 28    	movsd  0x28(%rsp),%xmm6
    1e7f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1e86 <func_agm_265(double, double)+0x2e6>
    1e86:	f2 44 0f 10 44 24 20 	movsd  0x20(%rsp),%xmm8
    1e8d:	f2 44 0f 10 4c 24 18 	movsd  0x18(%rsp),%xmm9
    1e94:	66 48 0f 6e e8       	movq   %rax,%xmm5
    1e99:	f2 0f 10 54 24 10    	movsd  0x10(%rsp),%xmm2
    1e9f:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
    1ea5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1eac <func_agm_265(double, double)+0x30c>
    1eac:	f2 0f 10 1c 24       	movsd  (%rsp),%xmm3
    1eb1:	66 48 0f 6e f8       	movq   %rax,%xmm7
    1eb6:	e9 5b fe ff ff       	jmp    1d16 <func_agm_265(double, double)+0x176>
    1ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001ec0 <func_mul_266(float, float)>:
    1ec0:	f3 0f 1e fa          	endbr64 
    1ec4:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    1ec8:	c3                   	ret    
    1ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001ed0 <func_mul_267(double, double)>:
    1ed0:	f3 0f 1e fa          	endbr64 
    1ed4:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1ed8:	c3                   	ret    
    1ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001ee0 <func_mul_268(long, long)>:
    1ee0:	f3 0f 1e fa          	endbr64 
    1ee4:	48 89 f0             	mov    %rsi,%rax
    1ee7:	48 0f af c7          	imul   %rdi,%rax
    1eeb:	c3                   	ret    
    1eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001ef0 <func_mul_269(int, int)>:
    1ef0:	f3 0f 1e fa          	endbr64 
    1ef4:	89 f0                	mov    %esi,%eax
    1ef6:	0f af c7             	imul   %edi,%eax
    1ef9:	c3                   	ret    
    1efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f00 <func_mul_270(short, short)>:
    1f00:	f3 0f 1e fa          	endbr64 
    1f04:	89 f0                	mov    %esi,%eax
    1f06:	0f af c7             	imul   %edi,%eax
    1f09:	c3                   	ret    
    1f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f10 <func_mul_271(signed char, signed char)>:
    1f10:	f3 0f 1e fa          	endbr64 
    1f14:	89 f0                	mov    %esi,%eax
    1f16:	0f af c7             	imul   %edi,%eax
    1f19:	c3                   	ret    
    1f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f20 <func_mul_272(unsigned long, unsigned long)>:
    1f20:	f3 0f 1e fa          	endbr64 
    1f24:	48 89 f0             	mov    %rsi,%rax
    1f27:	48 0f af c7          	imul   %rdi,%rax
    1f2b:	c3                   	ret    
    1f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001f30 <func_mul_273(unsigned int, unsigned int)>:
    1f30:	f3 0f 1e fa          	endbr64 
    1f34:	89 f0                	mov    %esi,%eax
    1f36:	0f af c7             	imul   %edi,%eax
    1f39:	c3                   	ret    
    1f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f40 <func_mul_274(unsigned short, unsigned short)>:
    1f40:	f3 0f 1e fa          	endbr64 
    1f44:	89 f0                	mov    %esi,%eax
    1f46:	0f af c7             	imul   %edi,%eax
    1f49:	c3                   	ret    
    1f4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f50 <func_mul_275(unsigned char, unsigned char)>:
    1f50:	f3 0f 1e fa          	endbr64 
    1f54:	89 f0                	mov    %esi,%eax
    1f56:	0f af c7             	imul   %edi,%eax
    1f59:	c3                   	ret    
    1f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f60 <func_mul_276(unsigned long, unsigned long)>:
    1f60:	f3 0f 1e fa          	endbr64 
    1f64:	48 89 f8             	mov    %rdi,%rax
    1f67:	48 0f af c6          	imul   %rsi,%rax
    1f6b:	c3                   	ret    
    1f6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001f70 <func_mul_277(unsigned int, unsigned int)>:
    1f70:	f3 0f 1e fa          	endbr64 
    1f74:	89 f8                	mov    %edi,%eax
    1f76:	0f af c6             	imul   %esi,%eax
    1f79:	c3                   	ret    
    1f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f80 <func_mul_278(unsigned short, unsigned short)>:
    1f80:	f3 0f 1e fa          	endbr64 
    1f84:	89 f0                	mov    %esi,%eax
    1f86:	0f af c7             	imul   %edi,%eax
    1f89:	c3                   	ret    
    1f8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f90 <func_mul_279(unsigned char, unsigned char)>:
    1f90:	f3 0f 1e fa          	endbr64 
    1f94:	89 f0                	mov    %esi,%eax
    1f96:	0f af c7             	imul   %edi,%eax
    1f99:	c3                   	ret    
    1f9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001fa0 <func_bit_ornot_280(float, float)>:
    1fa0:	f3 0f 1e fa          	endbr64 
    1fa4:	66 0f 7e c8          	movd   %xmm1,%eax
    1fa8:	66 0f 7e c2          	movd   %xmm0,%edx
    1fac:	f7 d0                	not    %eax
    1fae:	09 c2                	or     %eax,%edx
    1fb0:	66 0f 6e c2          	movd   %edx,%xmm0
    1fb4:	c3                   	ret    
    1fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1fbc:	00 00 00 00 

0000000000001fc0 <func_bit_ornot_281(double, double)>:
    1fc0:	f3 0f 1e fa          	endbr64 
    1fc4:	66 48 0f 7e c8       	movq   %xmm1,%rax
    1fc9:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    1fce:	48 f7 d0             	not    %rax
    1fd1:	48 09 c2             	or     %rax,%rdx
    1fd4:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    1fd9:	c3                   	ret    
    1fda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001fe0 <func_bit_ornot_282(long, long)>:
    1fe0:	f3 0f 1e fa          	endbr64 
    1fe4:	48 89 f0             	mov    %rsi,%rax
    1fe7:	48 f7 d0             	not    %rax
    1fea:	48 09 f8             	or     %rdi,%rax
    1fed:	c3                   	ret    
    1fee:	66 90                	xchg   %ax,%ax

0000000000001ff0 <func_bit_ornot_283(int, int)>:
    1ff0:	f3 0f 1e fa          	endbr64 
    1ff4:	89 f0                	mov    %esi,%eax
    1ff6:	f7 d0                	not    %eax
    1ff8:	09 f8                	or     %edi,%eax
    1ffa:	c3                   	ret    
    1ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002000 <func_bit_ornot_284(short, short)>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	89 f0                	mov    %esi,%eax
    2006:	f7 d0                	not    %eax
    2008:	09 f8                	or     %edi,%eax
    200a:	c3                   	ret    
    200b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002010 <func_bit_ornot_285(signed char, signed char)>:
    2010:	f3 0f 1e fa          	endbr64 
    2014:	89 f0                	mov    %esi,%eax
    2016:	f7 d0                	not    %eax
    2018:	09 f8                	or     %edi,%eax
    201a:	c3                   	ret    
    201b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002020 <func_bit_ornot_286(unsigned long, unsigned long)>:
    2020:	f3 0f 1e fa          	endbr64 
    2024:	48 89 f0             	mov    %rsi,%rax
    2027:	48 f7 d0             	not    %rax
    202a:	48 09 f8             	or     %rdi,%rax
    202d:	c3                   	ret    
    202e:	66 90                	xchg   %ax,%ax

0000000000002030 <func_bit_ornot_287(unsigned int, unsigned int)>:
    2030:	f3 0f 1e fa          	endbr64 
    2034:	89 f0                	mov    %esi,%eax
    2036:	f7 d0                	not    %eax
    2038:	09 f8                	or     %edi,%eax
    203a:	c3                   	ret    
    203b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002040 <func_bit_ornot_288(unsigned short, unsigned short)>:
    2040:	f3 0f 1e fa          	endbr64 
    2044:	89 f0                	mov    %esi,%eax
    2046:	f7 d0                	not    %eax
    2048:	09 f8                	or     %edi,%eax
    204a:	c3                   	ret    
    204b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002050 <func_bit_ornot_289(unsigned char, unsigned char)>:
    2050:	f3 0f 1e fa          	endbr64 
    2054:	89 f0                	mov    %esi,%eax
    2056:	f7 d0                	not    %eax
    2058:	09 f8                	or     %edi,%eax
    205a:	c3                   	ret    
    205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002060 <func_bit_ornot_290(unsigned long, unsigned long)>:
    2060:	f3 0f 1e fa          	endbr64 
    2064:	48 89 f0             	mov    %rsi,%rax
    2067:	48 f7 d0             	not    %rax
    206a:	48 09 f8             	or     %rdi,%rax
    206d:	c3                   	ret    
    206e:	66 90                	xchg   %ax,%ax

0000000000002070 <func_bit_ornot_291(unsigned int, unsigned int)>:
    2070:	f3 0f 1e fa          	endbr64 
    2074:	89 f0                	mov    %esi,%eax
    2076:	f7 d0                	not    %eax
    2078:	09 f8                	or     %edi,%eax
    207a:	c3                   	ret    
    207b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002080 <func_bit_ornot_292(unsigned short, unsigned short)>:
    2080:	f3 0f 1e fa          	endbr64 
    2084:	89 f0                	mov    %esi,%eax
    2086:	f7 d0                	not    %eax
    2088:	09 f8                	or     %edi,%eax
    208a:	c3                   	ret    
    208b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002090 <func_bit_ornot_293(unsigned char, unsigned char)>:
    2090:	f3 0f 1e fa          	endbr64 
    2094:	89 f0                	mov    %esi,%eax
    2096:	f7 d0                	not    %eax
    2098:	09 f8                	or     %edi,%eax
    209a:	c3                   	ret    
    209b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000020a0 <func_dot_294(float, float)>:
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    20a8:	c3                   	ret    
    20a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000020b0 <func_dot_295(double, double)>:
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    20b8:	c3                   	ret    
    20b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000020c0 <func_dot_296(long, long)>:
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	48 89 f8             	mov    %rdi,%rax
    20c7:	48 0f af c6          	imul   %rsi,%rax
    20cb:	c3                   	ret    
    20cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020d0 <func_dot_297(int, int)>:
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	89 f8                	mov    %edi,%eax
    20d6:	0f af c6             	imul   %esi,%eax
    20d9:	c3                   	ret    
    20da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000020e0 <func_dot_298(short, short)>:
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	89 f0                	mov    %esi,%eax
    20e6:	0f af c7             	imul   %edi,%eax
    20e9:	c3                   	ret    
    20ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000020f0 <func_dot_299(signed char, signed char)>:
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	89 f0                	mov    %esi,%eax
    20f6:	0f af c7             	imul   %edi,%eax
    20f9:	c3                   	ret    
    20fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002100 <func_dot_300(unsigned long, unsigned long)>:
    2100:	f3 0f 1e fa          	endbr64 
    2104:	48 89 f8             	mov    %rdi,%rax
    2107:	48 0f af c6          	imul   %rsi,%rax
    210b:	c3                   	ret    
    210c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002110 <func_dot_301(unsigned int, unsigned int)>:
    2110:	f3 0f 1e fa          	endbr64 
    2114:	89 f8                	mov    %edi,%eax
    2116:	0f af c6             	imul   %esi,%eax
    2119:	c3                   	ret    
    211a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002120 <func_dot_302(unsigned short, unsigned short)>:
    2120:	f3 0f 1e fa          	endbr64 
    2124:	89 f0                	mov    %esi,%eax
    2126:	0f af c7             	imul   %edi,%eax
    2129:	c3                   	ret    
    212a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002130 <func_dot_303(unsigned char, unsigned char)>:
    2130:	f3 0f 1e fa          	endbr64 
    2134:	89 f0                	mov    %esi,%eax
    2136:	0f af c7             	imul   %edi,%eax
    2139:	c3                   	ret    
    213a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002140 <func_dot_304(unsigned long, unsigned long)>:
    2140:	f3 0f 1e fa          	endbr64 
    2144:	48 89 f8             	mov    %rdi,%rax
    2147:	48 0f af c6          	imul   %rsi,%rax
    214b:	c3                   	ret    
    214c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002150 <func_dot_305(unsigned int, unsigned int)>:
    2150:	f3 0f 1e fa          	endbr64 
    2154:	89 f8                	mov    %edi,%eax
    2156:	0f af c6             	imul   %esi,%eax
    2159:	c3                   	ret    
    215a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002160 <func_dot_306(unsigned short, unsigned short)>:
    2160:	f3 0f 1e fa          	endbr64 
    2164:	89 f0                	mov    %esi,%eax
    2166:	0f af c7             	imul   %edi,%eax
    2169:	c3                   	ret    
    216a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002170 <func_dot_307(unsigned char, unsigned char)>:
    2170:	f3 0f 1e fa          	endbr64 
    2174:	89 f0                	mov    %esi,%eax
    2176:	0f af c7             	imul   %edi,%eax
    2179:	c3                   	ret    
    217a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002180 <func_min_308(float, float)>:
    2180:	f3 0f 1e fa          	endbr64 
    2184:	f3 0f 5d c1          	minss  %xmm1,%xmm0
    2188:	c3                   	ret    
    2189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002190 <func_min_309(double, double)>:
    2190:	f3 0f 1e fa          	endbr64 
    2194:	f2 0f 5d c1          	minsd  %xmm1,%xmm0
    2198:	c3                   	ret    
    2199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000021a0 <func_min_310(long, long)>:
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	48 39 f7             	cmp    %rsi,%rdi
    21a7:	48 89 f0             	mov    %rsi,%rax
    21aa:	48 0f 4e c7          	cmovle %rdi,%rax
    21ae:	c3                   	ret    
    21af:	90                   	nop

00000000000021b0 <func_min_311(int, int)>:
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	39 f7                	cmp    %esi,%edi
    21b6:	89 f0                	mov    %esi,%eax
    21b8:	0f 4e c7             	cmovle %edi,%eax
    21bb:	c3                   	ret    
    21bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000021c0 <func_min_312(short, short)>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	66 39 fe             	cmp    %di,%si
    21c7:	89 f8                	mov    %edi,%eax
    21c9:	0f 4e c6             	cmovle %esi,%eax
    21cc:	c3                   	ret    
    21cd:	0f 1f 00             	nopl   (%rax)

00000000000021d0 <func_min_313(signed char, signed char)>:
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	40 38 fe             	cmp    %dil,%sil
    21d7:	89 f8                	mov    %edi,%eax
    21d9:	0f 4e c6             	cmovle %esi,%eax
    21dc:	c3                   	ret    
    21dd:	0f 1f 00             	nopl   (%rax)

00000000000021e0 <func_min_314(unsigned long, unsigned long)>:
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	48 39 f7             	cmp    %rsi,%rdi
    21e7:	48 89 f0             	mov    %rsi,%rax
    21ea:	48 0f 46 c7          	cmovbe %rdi,%rax
    21ee:	c3                   	ret    
    21ef:	90                   	nop

00000000000021f0 <func_min_315(unsigned int, unsigned int)>:
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	39 f7                	cmp    %esi,%edi
    21f6:	89 f0                	mov    %esi,%eax
    21f8:	0f 46 c7             	cmovbe %edi,%eax
    21fb:	c3                   	ret    
    21fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002200 <func_min_316(unsigned short, unsigned short)>:
    2200:	f3 0f 1e fa          	endbr64 
    2204:	66 39 fe             	cmp    %di,%si
    2207:	89 f8                	mov    %edi,%eax
    2209:	0f 46 c6             	cmovbe %esi,%eax
    220c:	c3                   	ret    
    220d:	0f 1f 00             	nopl   (%rax)

0000000000002210 <func_min_317(unsigned char, unsigned char)>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	40 38 fe             	cmp    %dil,%sil
    2217:	89 f8                	mov    %edi,%eax
    2219:	0f 46 c6             	cmovbe %esi,%eax
    221c:	c3                   	ret    
    221d:	0f 1f 00             	nopl   (%rax)

0000000000002220 <func_min_318(unsigned long, unsigned long)>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	48 39 f7             	cmp    %rsi,%rdi
    2227:	48 89 f0             	mov    %rsi,%rax
    222a:	48 0f 46 c7          	cmovbe %rdi,%rax
    222e:	c3                   	ret    
    222f:	90                   	nop

0000000000002230 <func_min_319(unsigned int, unsigned int)>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	39 f7                	cmp    %esi,%edi
    2236:	89 f0                	mov    %esi,%eax
    2238:	0f 46 c7             	cmovbe %edi,%eax
    223b:	c3                   	ret    
    223c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002240 <func_min_320(unsigned short, unsigned short)>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	66 39 fe             	cmp    %di,%si
    2247:	89 f8                	mov    %edi,%eax
    2249:	0f 46 c6             	cmovbe %esi,%eax
    224c:	c3                   	ret    
    224d:	0f 1f 00             	nopl   (%rax)

0000000000002250 <func_min_321(unsigned char, unsigned char)>:
    2250:	f3 0f 1e fa          	endbr64 
    2254:	40 38 fe             	cmp    %dil,%sil
    2257:	89 f8                	mov    %edi,%eax
    2259:	0f 46 c6             	cmovbe %esi,%eax
    225c:	c3                   	ret    
    225d:	0f 1f 00             	nopl   (%rax)

0000000000002260 <func_bit_reverse_322(int)>:
    2260:	f3 0f 1e fa          	endbr64 
    2264:	89 f8                	mov    %edi,%eax
    2266:	d1 ef                	shr    %edi
    2268:	01 c0                	add    %eax,%eax
    226a:	81 e7 55 55 55 55    	and    $0x55555555,%edi
    2270:	25 aa aa aa aa       	and    $0xaaaaaaaa,%eax
    2275:	09 c7                	or     %eax,%edi
    2277:	89 fa                	mov    %edi,%edx
    2279:	c1 e7 02             	shl    $0x2,%edi
    227c:	c1 ea 02             	shr    $0x2,%edx
    227f:	81 e7 cc cc cc cc    	and    $0xcccccccc,%edi
    2285:	81 e2 33 33 33 33    	and    $0x33333333,%edx
    228b:	09 fa                	or     %edi,%edx
    228d:	89 d0                	mov    %edx,%eax
    228f:	c1 e2 04             	shl    $0x4,%edx
    2292:	c1 e8 04             	shr    $0x4,%eax
    2295:	81 e2 f0 f0 f0 f0    	and    $0xf0f0f0f0,%edx
    229b:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
    22a0:	09 d0                	or     %edx,%eax
    22a2:	89 c2                	mov    %eax,%edx
    22a4:	c1 e0 08             	shl    $0x8,%eax
    22a7:	c1 ea 08             	shr    $0x8,%edx
    22aa:	25 00 ff 00 ff       	and    $0xff00ff00,%eax
    22af:	81 e2 ff 00 ff 00    	and    $0xff00ff,%edx
    22b5:	09 c2                	or     %eax,%edx
    22b7:	89 d0                	mov    %edx,%eax
    22b9:	c1 fa 10             	sar    $0x10,%edx
    22bc:	c1 e0 10             	shl    $0x10,%eax
    22bf:	09 d0                	or     %edx,%eax
    22c1:	c3                   	ret    
