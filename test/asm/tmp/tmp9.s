
test/asm/tmp/tmp9.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func_ceil_0(float)>:
       0:	f3 0f 1e fa          	endbr64 
       4:	c5 fa 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm3        # c <func_ceil_0(float)+0xc>
       b:	00 
       c:	c5 f8 57 d3          	vxorps %xmm3,%xmm0,%xmm2
      10:	c5 f9 7e d0          	vmovd  %xmm2,%eax
      14:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
      19:	c5 f9 6e c8          	vmovd  %eax,%xmm1
      1d:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
      21:	7a 28                	jp     4b <func_ceil_0(float)+0x4b>
      23:	c5 f8 2f 0d 00 00 00 	vcomiss 0x0(%rip),%xmm1        # 2b <func_ceil_0(float)+0x2b>
      2a:	00 
      2b:	77 1e                	ja     4b <func_ceil_0(float)+0x4b>
      2d:	c5 fa 2c c2          	vcvttss2si %xmm2,%eax
      31:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
      35:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
      39:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
      3d:	76 08                	jbe    47 <func_ceil_0(float)+0x47>
      3f:	c5 fa 5c 05 00 00 00 	vsubss 0x0(%rip),%xmm0,%xmm0        # 47 <func_ceil_0(float)+0x47>
      46:	00 
      47:	c5 f8 57 c3          	vxorps %xmm3,%xmm0,%xmm0
      4b:	c3                   	ret    
      4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000050 <func_ceil_1(char)>:
      50:	f3 0f 1e fa          	endbr64 
      54:	89 f8                	mov    %edi,%eax
      56:	c3                   	ret    
      57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
      5e:	00 00 

0000000000000060 <func_ceil_2(double)>:
      60:	f3 0f 1e fa          	endbr64 
      64:	c5 fa 7e 1d 00 00 00 	vmovq  0x0(%rip),%xmm3        # 6c <func_ceil_2(double)+0xc>
      6b:	00 
      6c:	c5 f9 57 d3          	vxorpd %xmm3,%xmm0,%xmm2
      70:	c4 e1 f9 7e d0       	vmovq  %xmm2,%rax
      75:	48 0f ba f0 3f       	btr    $0x3f,%rax
      7a:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
      7f:	c5 f9 2e c9          	vucomisd %xmm1,%xmm1
      83:	7a 2a                	jp     af <func_ceil_2(double)+0x4f>
      85:	c5 f9 2f 0d 00 00 00 	vcomisd 0x0(%rip),%xmm1        # 8d <func_ceil_2(double)+0x2d>
      8c:	00 
      8d:	77 20                	ja     af <func_ceil_2(double)+0x4f>
      8f:	c4 e1 fb 2c c2       	vcvttsd2si %xmm2,%rax
      94:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
      98:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
      9d:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
      a1:	76 08                	jbe    ab <func_ceil_2(double)+0x4b>
      a3:	c5 fb 5c 05 00 00 00 	vsubsd 0x0(%rip),%xmm0,%xmm0        # ab <func_ceil_2(double)+0x4b>
      aa:	00 
      ab:	c5 f9 57 c3          	vxorpd %xmm3,%xmm0,%xmm0
      af:	c3                   	ret    

00000000000000b0 <func_ceil_3(int)>:
      b0:	f3 0f 1e fa          	endbr64 
      b4:	89 f8                	mov    %edi,%eax
      b6:	c3                   	ret    
      b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
      be:	00 00 

00000000000000c0 <func_absmax_4(float, float)>:
      c0:	f3 0f 1e fa          	endbr64 
      c4:	c5 f2 5f c8          	vmaxss %xmm0,%xmm1,%xmm1
      c8:	c5 f9 7e c8          	vmovd  %xmm1,%eax
      cc:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
      d1:	c5 f9 6e c0          	vmovd  %eax,%xmm0
      d5:	c3                   	ret    
      d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
      dd:	00 00 00 

00000000000000e0 <func_absmax_5(double, double)>:
      e0:	f3 0f 1e fa          	endbr64 
      e4:	c5 f3 5f c8          	vmaxsd %xmm0,%xmm1,%xmm1
      e8:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
      ed:	48 0f ba f0 3f       	btr    $0x3f,%rax
      f2:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
      f7:	c3                   	ret    
      f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
      ff:	00 

0000000000000100 <func_absmax_6(long, long)>:
     100:	f3 0f 1e fa          	endbr64 
     104:	48 39 f7             	cmp    %rsi,%rdi
     107:	48 0f 4c fe          	cmovl  %rsi,%rdi
     10b:	48 89 f8             	mov    %rdi,%rax
     10e:	48 f7 d8             	neg    %rax
     111:	48 0f 48 c7          	cmovs  %rdi,%rax
     115:	c3                   	ret    
     116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     11d:	00 00 00 

0000000000000120 <func_absmax_7(int, int)>:
     120:	f3 0f 1e fa          	endbr64 
     124:	39 f7                	cmp    %esi,%edi
     126:	0f 4c fe             	cmovl  %esi,%edi
     129:	89 f8                	mov    %edi,%eax
     12b:	f7 d8                	neg    %eax
     12d:	0f 48 c7             	cmovs  %edi,%eax
     130:	c3                   	ret    
     131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     138:	00 00 00 00 
     13c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000140 <func_absmax_8(short, short)>:
     140:	f3 0f 1e fa          	endbr64 
     144:	66 39 fe             	cmp    %di,%si
     147:	0f 4c f7             	cmovl  %edi,%esi
     14a:	89 f0                	mov    %esi,%eax
     14c:	66 f7 d8             	neg    %ax
     14f:	0f 48 c6             	cmovs  %esi,%eax
     152:	c3                   	ret    
     153:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     15a:	00 00 00 00 
     15e:	66 90                	xchg   %ax,%ax

0000000000000160 <func_absmax_9(signed char, signed char)>:
     160:	f3 0f 1e fa          	endbr64 
     164:	40 38 fe             	cmp    %dil,%sil
     167:	0f 4c f7             	cmovl  %edi,%esi
     16a:	89 f0                	mov    %esi,%eax
     16c:	f6 d8                	neg    %al
     16e:	0f 48 c6             	cmovs  %esi,%eax
     171:	c3                   	ret    
     172:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     179:	00 00 00 00 
     17d:	0f 1f 00             	nopl   (%rax)

0000000000000180 <func_absmax_10(unsigned long, unsigned long)>:
     180:	f3 0f 1e fa          	endbr64 
     184:	48 39 f7             	cmp    %rsi,%rdi
     187:	48 89 f0             	mov    %rsi,%rax
     18a:	48 0f 43 c7          	cmovae %rdi,%rax
     18e:	c3                   	ret    
     18f:	90                   	nop

0000000000000190 <func_absmax_11(unsigned int, unsigned int)>:
     190:	f3 0f 1e fa          	endbr64 
     194:	39 f7                	cmp    %esi,%edi
     196:	89 f0                	mov    %esi,%eax
     198:	0f 43 c7             	cmovae %edi,%eax
     19b:	c3                   	ret    
     19c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000001a0 <func_absmax_12(unsigned short, unsigned short)>:
     1a0:	f3 0f 1e fa          	endbr64 
     1a4:	66 39 fe             	cmp    %di,%si
     1a7:	89 f8                	mov    %edi,%eax
     1a9:	0f 43 c6             	cmovae %esi,%eax
     1ac:	c3                   	ret    
     1ad:	0f 1f 00             	nopl   (%rax)

00000000000001b0 <func_absmax_13(unsigned char, unsigned char)>:
     1b0:	f3 0f 1e fa          	endbr64 
     1b4:	40 38 fe             	cmp    %dil,%sil
     1b7:	89 f8                	mov    %edi,%eax
     1b9:	0f 43 c6             	cmovae %esi,%eax
     1bc:	c3                   	ret    
     1bd:	0f 1f 00             	nopl   (%rax)

00000000000001c0 <func_absmax_14(unsigned long, unsigned long)>:
     1c0:	f3 0f 1e fa          	endbr64 
     1c4:	48 39 f7             	cmp    %rsi,%rdi
     1c7:	48 89 f0             	mov    %rsi,%rax
     1ca:	48 0f 43 c7          	cmovae %rdi,%rax
     1ce:	c3                   	ret    
     1cf:	90                   	nop

00000000000001d0 <func_absmax_15(unsigned int, unsigned int)>:
     1d0:	f3 0f 1e fa          	endbr64 
     1d4:	39 f7                	cmp    %esi,%edi
     1d6:	89 f0                	mov    %esi,%eax
     1d8:	0f 43 c7             	cmovae %edi,%eax
     1db:	c3                   	ret    
     1dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000001e0 <func_absmax_16(unsigned short, unsigned short)>:
     1e0:	f3 0f 1e fa          	endbr64 
     1e4:	66 39 fe             	cmp    %di,%si
     1e7:	89 f8                	mov    %edi,%eax
     1e9:	0f 43 c6             	cmovae %esi,%eax
     1ec:	c3                   	ret    
     1ed:	0f 1f 00             	nopl   (%rax)

00000000000001f0 <func_absmax_17(unsigned char, unsigned char)>:
     1f0:	f3 0f 1e fa          	endbr64 
     1f4:	40 38 fe             	cmp    %dil,%sil
     1f7:	89 f8                	mov    %edi,%eax
     1f9:	0f 43 c6             	cmovae %esi,%eax
     1fc:	c3                   	ret    
     1fd:	0f 1f 00             	nopl   (%rax)

0000000000000200 <func_bit_xor_18(float, float)>:
     200:	f3 0f 1e fa          	endbr64 
     204:	c5 f9 7e c8          	vmovd  %xmm1,%eax
     208:	c5 f9 7e c2          	vmovd  %xmm0,%edx
     20c:	31 c2                	xor    %eax,%edx
     20e:	c5 f9 6e c2          	vmovd  %edx,%xmm0
     212:	c3                   	ret    
     213:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     21a:	00 00 00 00 
     21e:	66 90                	xchg   %ax,%ax

0000000000000220 <func_bit_xor_19(double, double)>:
     220:	f3 0f 1e fa          	endbr64 
     224:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
     229:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
     22e:	48 31 c2             	xor    %rax,%rdx
     231:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
     236:	c3                   	ret    
     237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     23e:	00 00 

0000000000000240 <func_bit_xor_20(long, long)>:
     240:	f3 0f 1e fa          	endbr64 
     244:	48 89 f8             	mov    %rdi,%rax
     247:	48 31 f0             	xor    %rsi,%rax
     24a:	c3                   	ret    
     24b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000250 <func_bit_xor_21(int, int)>:
     250:	f3 0f 1e fa          	endbr64 
     254:	89 f8                	mov    %edi,%eax
     256:	31 f0                	xor    %esi,%eax
     258:	c3                   	ret    
     259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000260 <func_bit_xor_22(short, short)>:
     260:	f3 0f 1e fa          	endbr64 
     264:	89 f0                	mov    %esi,%eax
     266:	31 f8                	xor    %edi,%eax
     268:	c3                   	ret    
     269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000270 <func_bit_xor_23(signed char, signed char)>:
     270:	f3 0f 1e fa          	endbr64 
     274:	89 f0                	mov    %esi,%eax
     276:	31 f8                	xor    %edi,%eax
     278:	c3                   	ret    
     279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000280 <func_bit_xor_24(unsigned long, unsigned long)>:
     280:	f3 0f 1e fa          	endbr64 
     284:	48 89 f8             	mov    %rdi,%rax
     287:	48 31 f0             	xor    %rsi,%rax
     28a:	c3                   	ret    
     28b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000290 <func_bit_xor_25(unsigned int, unsigned int)>:
     290:	f3 0f 1e fa          	endbr64 
     294:	89 f8                	mov    %edi,%eax
     296:	31 f0                	xor    %esi,%eax
     298:	c3                   	ret    
     299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002a0 <func_bit_xor_26(unsigned short, unsigned short)>:
     2a0:	f3 0f 1e fa          	endbr64 
     2a4:	89 f0                	mov    %esi,%eax
     2a6:	31 f8                	xor    %edi,%eax
     2a8:	c3                   	ret    
     2a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002b0 <func_bit_xor_27(unsigned char, unsigned char)>:
     2b0:	f3 0f 1e fa          	endbr64 
     2b4:	89 f0                	mov    %esi,%eax
     2b6:	31 f8                	xor    %edi,%eax
     2b8:	c3                   	ret    
     2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002c0 <func_bit_xor_28(unsigned long, unsigned long)>:
     2c0:	f3 0f 1e fa          	endbr64 
     2c4:	48 89 f8             	mov    %rdi,%rax
     2c7:	48 31 f0             	xor    %rsi,%rax
     2ca:	c3                   	ret    
     2cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000002d0 <func_bit_xor_29(unsigned int, unsigned int)>:
     2d0:	f3 0f 1e fa          	endbr64 
     2d4:	89 f8                	mov    %edi,%eax
     2d6:	31 f0                	xor    %esi,%eax
     2d8:	c3                   	ret    
     2d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002e0 <func_bit_xor_30(unsigned short, unsigned short)>:
     2e0:	f3 0f 1e fa          	endbr64 
     2e4:	89 f0                	mov    %esi,%eax
     2e6:	31 f8                	xor    %edi,%eax
     2e8:	c3                   	ret    
     2e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000002f0 <func_bit_xor_31(unsigned char, unsigned char)>:
     2f0:	f3 0f 1e fa          	endbr64 
     2f4:	89 f0                	mov    %esi,%eax
     2f6:	31 f8                	xor    %edi,%eax
     2f8:	c3                   	ret    
     2f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000300 <func_abs_32(float)>:
     300:	f3 0f 1e fa          	endbr64 
     304:	c5 f9 7e c0          	vmovd  %xmm0,%eax
     308:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     30d:	c5 f9 6e c0          	vmovd  %eax,%xmm0
     311:	c3                   	ret    
     312:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     319:	00 00 00 00 
     31d:	0f 1f 00             	nopl   (%rax)

0000000000000320 <func_abs_33(double)>:
     320:	f3 0f 1e fa          	endbr64 
     324:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     329:	48 0f ba f0 3f       	btr    $0x3f,%rax
     32e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
     333:	c3                   	ret    
     334:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     33b:	00 00 00 00 
     33f:	90                   	nop

0000000000000340 <func_abs_34(long)>:
     340:	f3 0f 1e fa          	endbr64 
     344:	48 89 f8             	mov    %rdi,%rax
     347:	48 f7 d8             	neg    %rax
     34a:	48 0f 48 c7          	cmovs  %rdi,%rax
     34e:	c3                   	ret    
     34f:	90                   	nop

0000000000000350 <func_abs_35(int)>:
     350:	f3 0f 1e fa          	endbr64 
     354:	89 f8                	mov    %edi,%eax
     356:	f7 d8                	neg    %eax
     358:	0f 48 c7             	cmovs  %edi,%eax
     35b:	c3                   	ret    
     35c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000360 <func_abs_36(short)>:
     360:	f3 0f 1e fa          	endbr64 
     364:	89 f8                	mov    %edi,%eax
     366:	66 f7 d8             	neg    %ax
     369:	0f 48 c7             	cmovs  %edi,%eax
     36c:	c3                   	ret    
     36d:	0f 1f 00             	nopl   (%rax)

0000000000000370 <func_abs_37(signed char)>:
     370:	f3 0f 1e fa          	endbr64 
     374:	89 f8                	mov    %edi,%eax
     376:	f6 d8                	neg    %al
     378:	0f 48 c7             	cmovs  %edi,%eax
     37b:	c3                   	ret    
     37c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000380 <func_abs_38(unsigned long)>:
     380:	f3 0f 1e fa          	endbr64 
     384:	48 89 f8             	mov    %rdi,%rax
     387:	c3                   	ret    
     388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     38f:	00 

0000000000000390 <func_abs_39(unsigned int)>:
     390:	f3 0f 1e fa          	endbr64 
     394:	89 f8                	mov    %edi,%eax
     396:	c3                   	ret    
     397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     39e:	00 00 

00000000000003a0 <func_abs_40(unsigned short)>:
     3a0:	f3 0f 1e fa          	endbr64 
     3a4:	89 f8                	mov    %edi,%eax
     3a6:	c3                   	ret    
     3a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3ae:	00 00 

00000000000003b0 <func_abs_41(unsigned char)>:
     3b0:	f3 0f 1e fa          	endbr64 
     3b4:	89 f8                	mov    %edi,%eax
     3b6:	c3                   	ret    
     3b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3be:	00 00 

00000000000003c0 <func_abs_42(unsigned long)>:
     3c0:	f3 0f 1e fa          	endbr64 
     3c4:	48 89 f8             	mov    %rdi,%rax
     3c7:	c3                   	ret    
     3c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     3cf:	00 

00000000000003d0 <func_abs_43(unsigned int)>:
     3d0:	f3 0f 1e fa          	endbr64 
     3d4:	89 f8                	mov    %edi,%eax
     3d6:	c3                   	ret    
     3d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3de:	00 00 

00000000000003e0 <func_abs_44(unsigned short)>:
     3e0:	f3 0f 1e fa          	endbr64 
     3e4:	89 f8                	mov    %edi,%eax
     3e6:	c3                   	ret    
     3e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3ee:	00 00 

00000000000003f0 <func_abs_45(unsigned char)>:
     3f0:	f3 0f 1e fa          	endbr64 
     3f4:	89 f8                	mov    %edi,%eax
     3f6:	c3                   	ret    
     3f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     3fe:	00 00 

0000000000000400 <func_fmod_46(float, float)>:
     400:	f3 0f 1e fa          	endbr64 
     404:	c5 fa 5e d9          	vdivss %xmm1,%xmm0,%xmm3
     408:	c5 f9 7e d8          	vmovd  %xmm3,%eax
     40c:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     411:	c5 f9 6e d0          	vmovd  %eax,%xmm2
     415:	c5 f8 2e d2          	vucomiss %xmm2,%xmm2
     419:	7a 0e                	jp     429 <func_fmod_46(float, float)+0x29>
     41b:	c5 f8 2f 15 00 00 00 	vcomiss 0x0(%rip),%xmm2        # 423 <func_fmod_46(float, float)+0x23>
     422:	00 
     423:	0f 86 b7 00 00 00    	jbe    4e0 <func_fmod_46(float, float)+0xe0>
     429:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
     42d:	c5 f8 2e c4          	vucomiss %xmm4,%xmm0
     431:	7a 4d                	jp     480 <func_fmod_46(float, float)+0x80>
     433:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
     437:	75 47                	jne    480 <func_fmod_46(float, float)+0x80>
     439:	31 c0                	xor    %eax,%eax
     43b:	c5 f8 2e cc          	vucomiss %xmm4,%xmm1
     43f:	ba 00 00 00 00       	mov    $0x0,%edx
     444:	0f 9b c0             	setnp  %al
     447:	0f 45 c2             	cmovne %edx,%eax
     44a:	85 c0                	test   %eax,%eax
     44c:	75 1d                	jne    46b <func_fmod_46(float, float)+0x6b>
     44e:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
     453:	c5 f9 7e 44 24 fc    	vmovd  %xmm0,-0x4(%rsp)
     459:	23 44 24 fc          	and    -0x4(%rsp),%eax
     45d:	c5 f9 6e e8          	vmovd  %eax,%xmm5
     461:	c5 f8 2e 2d 00 00 00 	vucomiss 0x0(%rip),%xmm5        # 469 <func_fmod_46(float, float)+0x69>
     468:	00 
     469:	76 65                	jbe    4d0 <func_fmod_46(float, float)+0xd0>
     46b:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 473 <func_fmod_46(float, float)+0x73>
     472:	00 
     473:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
     477:	c3                   	ret    
     478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     47f:	00 
     480:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
     485:	c5 f9 7e 4c 24 fc    	vmovd  %xmm1,-0x4(%rsp)
     48b:	23 44 24 fc          	and    -0x4(%rsp),%eax
     48f:	c5 f9 6e f0          	vmovd  %eax,%xmm6
     493:	c5 f8 2e 35 00 00 00 	vucomiss 0x0(%rip),%xmm6        # 49b <func_fmod_46(float, float)+0x9b>
     49a:	00 
     49b:	7a 06                	jp     4a3 <func_fmod_46(float, float)+0xa3>
     49d:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
     4a1:	74 96                	je     439 <func_fmod_46(float, float)+0x39>
     4a3:	c5 f0 57 15 00 00 00 	vxorps 0x0(%rip),%xmm1,%xmm2        # 4ab <func_fmod_46(float, float)+0xab>
     4aa:	00 
     4ab:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
     4af:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
     4b3:	c5 eb 59 d3          	vmulsd %xmm3,%xmm2,%xmm2
     4b7:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
     4bb:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
     4bf:	c5 eb 5a d2          	vcvtsd2ss %xmm2,%xmm2,%xmm2
     4c3:	e9 71 ff ff ff       	jmp    439 <func_fmod_46(float, float)+0x39>
     4c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     4cf:	00 
     4d0:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
     4d4:	7a 95                	jp     46b <func_fmod_46(float, float)+0x6b>
     4d6:	c5 f8 2e c0          	vucomiss %xmm0,%xmm0
     4da:	7b 97                	jnp    473 <func_fmod_46(float, float)+0x73>
     4dc:	eb 8d                	jmp    46b <func_fmod_46(float, float)+0x6b>
     4de:	66 90                	xchg   %ax,%ax
     4e0:	c5 fa 2c c3          	vcvttss2si %xmm3,%eax
     4e4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     4e8:	c5 e2 2a d8          	vcvtsi2ss %eax,%xmm3,%xmm3
     4ec:	e9 38 ff ff ff       	jmp    429 <func_fmod_46(float, float)+0x29>
     4f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     4f8:	00 00 00 00 
     4fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000500 <func_fmod_47(double, double)>:
     500:	f3 0f 1e fa          	endbr64 
     504:	c5 f3 10 d9          	vmovsd %xmm1,%xmm1,%xmm3
     508:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
     50c:	48 83 ec 18          	sub    $0x18,%rsp
     510:	c5 fb 5e c9          	vdivsd %xmm1,%xmm0,%xmm1
     514:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
     519:	48 0f ba f0 3f       	btr    $0x3f,%rax
     51e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
     523:	c5 f9 2e c0          	vucomisd %xmm0,%xmm0
     527:	7a 0e                	jp     537 <func_fmod_47(double, double)+0x37>
     529:	c5 f9 2f 05 00 00 00 	vcomisd 0x0(%rip),%xmm0        # 531 <func_fmod_47(double, double)+0x31>
     530:	00 
     531:	0f 86 b9 00 00 00    	jbe    5f0 <func_fmod_47(double, double)+0xf0>
     537:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
     53b:	c5 f9 2e d4          	vucomisd %xmm4,%xmm2
     53f:	7a 47                	jp     588 <func_fmod_47(double, double)+0x88>
     541:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
     545:	75 41                	jne    588 <func_fmod_47(double, double)+0x88>
     547:	31 c0                	xor    %eax,%eax
     549:	c5 f9 2e dc          	vucomisd %xmm4,%xmm3
     54d:	ba 00 00 00 00       	mov    $0x0,%edx
     552:	0f 9b c0             	setnp  %al
     555:	48 0f 45 c2          	cmovne %rdx,%rax
     559:	48 85 c0             	test   %rax,%rax
     55c:	75 19                	jne    577 <func_fmod_47(double, double)+0x77>
     55e:	c4 e1 f9 7e d0       	vmovq  %xmm2,%rax
     563:	48 0f ba f0 3f       	btr    $0x3f,%rax
     568:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
     56d:	c5 f9 2e 2d 00 00 00 	vucomisd 0x0(%rip),%xmm5        # 575 <func_fmod_47(double, double)+0x75>
     574:	00 
     575:	76 61                	jbe    5d8 <func_fmod_47(double, double)+0xd8>
     577:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 57f <func_fmod_47(double, double)+0x7f>
     57e:	00 
     57f:	48 83 c4 18          	add    $0x18,%rsp
     583:	c3                   	ret    
     584:	0f 1f 40 00          	nopl   0x0(%rax)
     588:	c4 e1 f9 7e d8       	vmovq  %xmm3,%rax
     58d:	48 0f ba f0 3f       	btr    $0x3f,%rax
     592:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
     597:	c5 f9 2e 35 00 00 00 	vucomisd 0x0(%rip),%xmm6        # 59f <func_fmod_47(double, double)+0x9f>
     59e:	00 
     59f:	7a 06                	jp     5a7 <func_fmod_47(double, double)+0xa7>
     5a1:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
     5a5:	74 a0                	je     547 <func_fmod_47(double, double)+0x47>
     5a7:	c5 e1 57 05 00 00 00 	vxorpd 0x0(%rip),%xmm3,%xmm0        # 5af <func_fmod_47(double, double)+0xaf>
     5ae:	00 
     5af:	c5 fb 11 5c 24 08    	vmovsd %xmm3,0x8(%rsp)
     5b5:	c5 fb 11 14 24       	vmovsd %xmm2,(%rsp)
     5ba:	e8 00 00 00 00       	call   5bf <func_fmod_47(double, double)+0xbf>
     5bf:	c5 fb 10 14 24       	vmovsd (%rsp),%xmm2
     5c4:	c5 fb 10 5c 24 08    	vmovsd 0x8(%rsp),%xmm3
     5ca:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
     5ce:	e9 74 ff ff ff       	jmp    547 <func_fmod_47(double, double)+0x47>
     5d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     5d8:	c5 f9 2e d2          	vucomisd %xmm2,%xmm2
     5dc:	7a 99                	jp     577 <func_fmod_47(double, double)+0x77>
     5de:	c5 f9 2e db          	vucomisd %xmm3,%xmm3
     5e2:	7b 9b                	jnp    57f <func_fmod_47(double, double)+0x7f>
     5e4:	eb 91                	jmp    577 <func_fmod_47(double, double)+0x77>
     5e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     5ed:	00 00 00 
     5f0:	c4 e1 fb 2c c1       	vcvttsd2si %xmm1,%rax
     5f5:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
     5f9:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
     5fe:	e9 34 ff ff ff       	jmp    537 <func_fmod_47(double, double)+0x37>
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
     6f6:	c5 f8 2e c0          	vucomiss %xmm0,%xmm0
     6fa:	0f 9a c0             	setp   %al
     6fd:	f7 d8                	neg    %eax
     6ff:	c3                   	ret    

0000000000000700 <func_is_nan_63(double)>:
     700:	f3 0f 1e fa          	endbr64 
     704:	31 c0                	xor    %eax,%eax
     706:	c5 f9 2e c0          	vucomisd %xmm0,%xmm0
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
     7e4:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
     7e8:	c5 f8 28 d8          	vmovaps %xmm0,%xmm3
     7ec:	77 12                	ja     800 <func_clamp_76(float, float, float)+0x20>
     7ee:	c5 f8 2f cb          	vcomiss %xmm3,%xmm1
     7f2:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     7f6:	76 16                	jbe    80e <func_clamp_76(float, float, float)+0x2e>
     7f8:	c5 fa 5d c2          	vminss %xmm2,%xmm0,%xmm0
     7fc:	c3                   	ret    
     7fd:	0f 1f 00             	nopl   (%rax)
     800:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
     804:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
     808:	c5 f8 2f c3          	vcomiss %xmm3,%xmm0
     80c:	77 12                	ja     820 <func_clamp_76(float, float, float)+0x40>
     80e:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
     812:	c5 fa 5d c2          	vminss %xmm2,%xmm0,%xmm0
     816:	c3                   	ret    
     817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     81e:	00 00 
     820:	c3                   	ret    
     821:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     828:	00 00 00 00 
     82c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000830 <func_clamp_77(double, double, double)>:
     830:	f3 0f 1e fa          	endbr64 
     834:	c5 f9 2f ca          	vcomisd %xmm2,%xmm1
     838:	c5 fb 10 d8          	vmovsd %xmm0,%xmm0,%xmm3
     83c:	77 12                	ja     850 <func_clamp_77(double, double, double)+0x20>
     83e:	c5 f9 2f cb          	vcomisd %xmm3,%xmm1
     842:	c5 f3 10 c1          	vmovsd %xmm1,%xmm1,%xmm0
     846:	76 16                	jbe    85e <func_clamp_77(double, double, double)+0x2e>
     848:	c5 fb 5d c2          	vminsd %xmm2,%xmm0,%xmm0
     84c:	c3                   	ret    
     84d:	0f 1f 00             	nopl   (%rax)
     850:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
     854:	c5 f3 10 d1          	vmovsd %xmm1,%xmm1,%xmm2
     858:	c5 f9 2f c3          	vcomisd %xmm3,%xmm0
     85c:	77 12                	ja     870 <func_clamp_77(double, double, double)+0x40>
     85e:	c5 e3 10 c3          	vmovsd %xmm3,%xmm3,%xmm0
     862:	c5 fb 5d c2          	vminsd %xmm2,%xmm0,%xmm0
     866:	c3                   	ret    
     867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     86e:	00 00 
     870:	c3                   	ret    
     871:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     878:	00 00 00 00 
     87c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000880 <func_clamp_78(int, int, int)>:
     880:	f3 0f 1e fa          	endbr64 
     884:	39 d6                	cmp    %edx,%esi
     886:	7e 06                	jle    88e <func_clamp_78(int, int, int)+0xe>
     888:	89 f0                	mov    %esi,%eax
     88a:	89 d6                	mov    %edx,%esi
     88c:	89 c2                	mov    %eax,%edx
     88e:	39 f7                	cmp    %esi,%edi
     890:	89 d0                	mov    %edx,%eax
     892:	0f 4c fe             	cmovl  %esi,%edi
     895:	39 d7                	cmp    %edx,%edi
     897:	0f 4e c7             	cmovle %edi,%eax
     89a:	c3                   	ret    
     89b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008a0 <func_dist_79(float, float)>:
     8a0:	f3 0f 1e fa          	endbr64 
     8a4:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
     8a8:	77 0c                	ja     8b6 <func_dist_79(float, float)+0x16>
     8aa:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
     8ae:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     8b2:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
     8b6:	c5 f2 5c c0          	vsubss %xmm0,%xmm1,%xmm0
     8ba:	c3                   	ret    
     8bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008c0 <func_dist_80(double, double)>:
     8c0:	f3 0f 1e fa          	endbr64 
     8c4:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
     8c8:	77 0e                	ja     8d8 <func_dist_80(double, double)+0x18>
     8ca:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     8cf:	c5 f3 10 c1          	vmovsd %xmm1,%xmm1,%xmm0
     8d3:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     8d8:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
     8dc:	c3                   	ret    
     8dd:	0f 1f 00             	nopl   (%rax)

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
     a67:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # a6f <func_fracscale_93(float, int)+0xf>
     a6e:	00 
     a6f:	c1 e0 17             	shl    $0x17,%eax
     a72:	c5 f9 6e e0          	vmovd  %eax,%xmm4
     a76:	c5 fa 59 dc          	vmulss %xmm4,%xmm0,%xmm3
     a7a:	c5 f9 7e d9          	vmovd  %xmm3,%ecx
     a7e:	c5 f9 7e d8          	vmovd  %xmm3,%eax
     a82:	c5 f9 7e da          	vmovd  %xmm3,%edx
     a86:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
     a8c:	c5 f9 6e c9          	vmovd  %ecx,%xmm1
     a90:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     a94:	76 14                	jbe    aaa <func_fracscale_93(float, int)+0x4a>
     a96:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
     a9a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     aa0:	c5 f2 5c f2          	vsubss %xmm2,%xmm1,%xmm6
     aa4:	c5 f9 7e f0          	vmovd  %xmm6,%eax
     aa8:	31 d0                	xor    %edx,%eax
     aaa:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
     aaf:	c5 f9 7e 44 24 fc    	vmovd  %xmm0,-0x4(%rsp)
     ab5:	23 74 24 fc          	and    -0x4(%rsp),%esi
     ab9:	c5 f9 6e ee          	vmovd  %esi,%xmm5
     abd:	c5 f8 2e 2d 00 00 00 	vucomiss 0x0(%rip),%xmm5        # ac5 <func_fracscale_93(float, int)+0x65>
     ac4:	00 
     ac5:	7a 11                	jp     ad8 <func_fracscale_93(float, int)+0x78>
     ac7:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
     acb:	75 0b                	jne    ad8 <func_fracscale_93(float, int)+0x78>
     acd:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     ad1:	c3                   	ret    
     ad2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     ad8:	ba 7f 00 00 00       	mov    $0x7f,%edx
     add:	c5 f9 6e f8          	vmovd  %eax,%xmm7
     ae1:	29 fa                	sub    %edi,%edx
     ae3:	c1 e2 17             	shl    $0x17,%edx
     ae6:	c5 f9 6e f2          	vmovd  %edx,%xmm6
     aea:	c5 c2 59 ce          	vmulss %xmm6,%xmm7,%xmm1
     aee:	c5 fa 5c c9          	vsubss %xmm1,%xmm0,%xmm1
     af2:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     af6:	c3                   	ret    
     af7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     afe:	00 00 

0000000000000b00 <func_fracscale_94(double, int)>:
     b00:	f3 0f 1e fa          	endbr64 
     b04:	48 63 c7             	movslq %edi,%rax
     b07:	c5 fb 10 1d 00 00 00 	vmovsd 0x0(%rip),%xmm3        # b0f <func_fracscale_94(double, int)+0xf>
     b0e:	00 
     b0f:	48 05 ff 03 00 00    	add    $0x3ff,%rax
     b15:	48 c1 e0 34          	shl    $0x34,%rax
     b19:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
     b1e:	c5 fb 59 cc          	vmulsd %xmm4,%xmm0,%xmm1
     b22:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
     b27:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
     b2c:	48 0f ba f1 3f       	btr    $0x3f,%rcx
     b31:	c4 e1 f9 6e d1       	vmovq  %rcx,%xmm2
     b36:	c5 f9 2f da          	vcomisd %xmm2,%xmm3
     b3a:	76 22                	jbe    b5e <func_fracscale_94(double, int)+0x5e>
     b3c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     b43:	00 00 80 
     b46:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
     b4a:	48 21 d0             	and    %rdx,%rax
     b4d:	c5 eb 5c cb          	vsubsd %xmm3,%xmm2,%xmm1
     b51:	c4 e1 f9 7e ce       	vmovq  %xmm1,%rsi
     b56:	48 31 c6             	xor    %rax,%rsi
     b59:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
     b5e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     b63:	48 0f ba f0 3f       	btr    $0x3f,%rax
     b68:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
     b6d:	c5 f9 2e 2d 00 00 00 	vucomisd 0x0(%rip),%xmm5        # b75 <func_fracscale_94(double, int)+0x75>
     b74:	00 
     b75:	7a 11                	jp     b88 <func_fracscale_94(double, int)+0x88>
     b77:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
     b7b:	75 0b                	jne    b88 <func_fracscale_94(double, int)+0x88>
     b7d:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
     b81:	c3                   	ret    
     b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     b88:	f7 df                	neg    %edi
     b8a:	48 63 ff             	movslq %edi,%rdi
     b8d:	48 81 c7 ff 03 00 00 	add    $0x3ff,%rdi
     b94:	48 c1 e7 34          	shl    $0x34,%rdi
     b98:	c4 e1 f9 6e f7       	vmovq  %rdi,%xmm6
     b9d:	c5 f3 59 ce          	vmulsd %xmm6,%xmm1,%xmm1
     ba1:	c5 fb 5c d1          	vsubsd %xmm1,%xmm0,%xmm2
     ba5:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
     ba9:	c3                   	ret    
     baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

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
     c64:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
     c68:	c5 f9 7e c0          	vmovd  %xmm0,%eax
     c6c:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     c71:	c5 f9 6e c0          	vmovd  %eax,%xmm0
     c75:	c3                   	ret    
     c76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     c7d:	00 00 00 

0000000000000c80 <func_absmin_106(double, double)>:
     c80:	f3 0f 1e fa          	endbr64 
     c84:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
     c88:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     c8d:	48 0f ba f0 3f       	btr    $0x3f,%rax
     c92:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
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

0000000000000da0 <func_lerp_119(eve::avx_abi_v0::wide<double, eve::fixed<4l> >, eve::avx_abi_v0::wide<double, eve::fixed<4l> >, double)>:
     da0:	f3 0f 1e fa          	endbr64 
     da4:	c5 fd 28 d8          	vmovapd %ymm0,%ymm3
     da8:	c4 e2 7d 19 d2       	vbroadcastsd %xmm2,%ymm2
     dad:	c5 ed 57 05 00 00 00 	vxorpd 0x0(%rip),%ymm2,%ymm0        # db5 <func_lerp_119(eve::avx_abi_v0::wide<double, eve::fixed<4l> >, eve::avx_abi_v0::wide<double, eve::fixed<4l> >, double)+0x15>
     db4:	00 
     db5:	c5 f5 59 ca          	vmulpd %ymm2,%ymm1,%ymm1
     db9:	c5 fd 59 c3          	vmulpd %ymm3,%ymm0,%ymm0
     dbd:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
     dc1:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
     dc5:	c3                   	ret    
     dc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     dcd:	00 00 00 

0000000000000dd0 <func_bit_and_120(float, float)>:
     dd0:	f3 0f 1e fa          	endbr64 
     dd4:	c5 f9 7e c8          	vmovd  %xmm1,%eax
     dd8:	c5 f9 7e c2          	vmovd  %xmm0,%edx
     ddc:	21 c2                	and    %eax,%edx
     dde:	c5 f9 6e c2          	vmovd  %edx,%xmm0
     de2:	c3                   	ret    
     de3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     dea:	00 00 00 00 
     dee:	66 90                	xchg   %ax,%ax

0000000000000df0 <func_bit_and_121(double, double)>:
     df0:	f3 0f 1e fa          	endbr64 
     df4:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
     df9:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
     dfe:	48 21 c2             	and    %rax,%rdx
     e01:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
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
     ed4:	c5 f2 5f c0          	vmaxss %xmm0,%xmm1,%xmm0
     ed8:	c3                   	ret    
     ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ee0 <func_max_135(double, double)>:
     ee0:	f3 0f 1e fa          	endbr64 
     ee4:	c5 f3 5f c0          	vmaxsd %xmm0,%xmm1,%xmm0
     ee8:	c3                   	ret    
     ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000ef0 <func_max_136(int, int)>:
     ef0:	f3 0f 1e fa          	endbr64 
     ef4:	39 f7                	cmp    %esi,%edi
     ef6:	89 f0                	mov    %esi,%eax
     ef8:	0f 4d c7             	cmovge %edi,%eax
     efb:	c3                   	ret    
     efc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f00 <func_div_137(float, float)>:
     f00:	f3 0f 1e fa          	endbr64 
     f04:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
     f08:	c3                   	ret    
     f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000f10 <func_div_138(double, double)>:
     f10:	f3 0f 1e fa          	endbr64 
     f14:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
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
     fe4:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     fe8:	72 06                	jb     ff0 <func_fdim_151(float, float)+0x10>
     fea:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
     fee:	c3                   	ret    
     fef:	90                   	nop
     ff0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     ff4:	c3                   	ret    
     ff5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     ffc:	00 00 00 00 

0000000000001000 <func_fdim_152(double, double)>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
    1008:	72 06                	jb     1010 <func_fdim_152(double, double)+0x10>
    100a:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    100e:	c3                   	ret    
    100f:	90                   	nop
    1010:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
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
    1174:	c5 f9 7e c8          	vmovd  %xmm1,%eax
    1178:	c5 f9 7e 44 24 fc    	vmovd  %xmm0,-0x4(%rsp)
    117e:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
    1183:	23 54 24 fc          	and    -0x4(%rsp),%edx
    1187:	25 00 00 00 80       	and    $0x80000000,%eax
    118c:	09 d0                	or     %edx,%eax
    118e:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    1192:	c3                   	ret    
    1193:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    119a:	00 00 00 00 
    119e:	66 90                	xchg   %ax,%ax

00000000000011a0 <func_floor_166(float)>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    11a8:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    11ad:	c5 f9 6e c8          	vmovd  %eax,%xmm1
    11b1:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
    11b5:	7a 29                	jp     11e0 <func_floor_166(float)+0x40>
    11b7:	c5 f8 2f 0d 00 00 00 	vcomiss 0x0(%rip),%xmm1        # 11bf <func_floor_166(float)+0x1f>
    11be:	00 
    11bf:	77 1f                	ja     11e0 <func_floor_166(float)+0x40>
    11c1:	c5 fa 2c c0          	vcvttss2si %xmm0,%eax
    11c5:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    11c9:	c5 f2 2a c8          	vcvtsi2ss %eax,%xmm1,%xmm1
    11cd:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
    11d1:	76 09                	jbe    11dc <func_floor_166(float)+0x3c>
    11d3:	c5 f2 5c 05 00 00 00 	vsubss 0x0(%rip),%xmm1,%xmm0        # 11db <func_floor_166(float)+0x3b>
    11da:	00 
    11db:	c3                   	ret    
    11dc:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    11e0:	c3                   	ret    
    11e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11e8:	00 00 00 00 
    11ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011f0 <func_floor_167(double)>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    11f9:	48 0f ba f0 3f       	btr    $0x3f,%rax
    11fe:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
    1203:	c5 f9 2e c9          	vucomisd %xmm1,%xmm1
    1207:	7a 2b                	jp     1234 <func_floor_167(double)+0x44>
    1209:	c5 f9 2f 0d 00 00 00 	vcomisd 0x0(%rip),%xmm1        # 1211 <func_floor_167(double)+0x21>
    1210:	00 
    1211:	77 21                	ja     1234 <func_floor_167(double)+0x44>
    1213:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1218:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    121c:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
    1221:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
    1225:	76 09                	jbe    1230 <func_floor_167(double)+0x40>
    1227:	c5 f3 5c 05 00 00 00 	vsubsd 0x0(%rip),%xmm1,%xmm0        # 122f <func_floor_167(double)+0x3f>
    122e:	00 
    122f:	c3                   	ret    
    1230:	c5 f3 10 c1          	vmovsd %xmm1,%xmm1,%xmm0
    1234:	c3                   	ret    
    1235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    123c:	00 00 00 00 

0000000000001240 <func_floor_168(long)>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	48 89 f8             	mov    %rdi,%rax
    1247:	c3                   	ret    
    1248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    124f:	00 

0000000000001250 <func_floor_169(int)>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	89 f8                	mov    %edi,%eax
    1256:	c3                   	ret    
    1257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    125e:	00 00 

0000000000001260 <func_floor_170(short)>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	89 f8                	mov    %edi,%eax
    1266:	c3                   	ret    
    1267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    126e:	00 00 

0000000000001270 <func_floor_171(signed char)>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	89 f8                	mov    %edi,%eax
    1276:	c3                   	ret    
    1277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    127e:	00 00 

0000000000001280 <func_floor_172(unsigned long)>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	48 89 f8             	mov    %rdi,%rax
    1287:	c3                   	ret    
    1288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    128f:	00 

0000000000001290 <func_floor_173(unsigned int)>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	89 f8                	mov    %edi,%eax
    1296:	c3                   	ret    
    1297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    129e:	00 00 

00000000000012a0 <func_floor_174(unsigned short)>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	89 f8                	mov    %edi,%eax
    12a6:	c3                   	ret    
    12a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ae:	00 00 

00000000000012b0 <func_floor_175(unsigned char)>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	89 f8                	mov    %edi,%eax
    12b6:	c3                   	ret    
    12b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12be:	00 00 

00000000000012c0 <func_floor_176(unsigned long)>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	48 89 f8             	mov    %rdi,%rax
    12c7:	c3                   	ret    
    12c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12cf:	00 

00000000000012d0 <func_floor_177(unsigned int)>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	89 f8                	mov    %edi,%eax
    12d6:	c3                   	ret    
    12d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12de:	00 00 

00000000000012e0 <func_floor_178(unsigned short)>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	89 f8                	mov    %edi,%eax
    12e6:	c3                   	ret    
    12e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ee:	00 00 

00000000000012f0 <func_floor_179(unsigned char)>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	89 f8                	mov    %edi,%eax
    12f6:	c3                   	ret    
    12f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12fe:	00 00 

0000000000001300 <func_inc_180(float)>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	c5 fa 58 05 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm0        # 130c <func_inc_180(float)+0xc>
    130b:	00 
    130c:	c3                   	ret    
    130d:	0f 1f 00             	nopl   (%rax)

0000000000001310 <func_inc_181(double)>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	c5 fb 58 05 00 00 00 	vaddsd 0x0(%rip),%xmm0,%xmm0        # 131c <func_inc_181(double)+0xc>
    131b:	00 
    131c:	c3                   	ret    
    131d:	0f 1f 00             	nopl   (%rax)

0000000000001320 <func_inc_182(long)>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1328:	c3                   	ret    
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001330 <func_inc_183(int)>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	8d 47 01             	lea    0x1(%rdi),%eax
    1337:	c3                   	ret    
    1338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    133f:	00 

0000000000001340 <func_inc_184(short)>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	8d 47 01             	lea    0x1(%rdi),%eax
    1347:	c3                   	ret    
    1348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    134f:	00 

0000000000001350 <func_inc_185(signed char)>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	8d 47 01             	lea    0x1(%rdi),%eax
    1357:	c3                   	ret    
    1358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    135f:	00 

0000000000001360 <func_inc_186(unsigned long)>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	48 8d 47 01          	lea    0x1(%rdi),%rax
    1368:	c3                   	ret    
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001370 <func_inc_187(unsigned int)>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	8d 47 01             	lea    0x1(%rdi),%eax
    1377:	c3                   	ret    
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00 

0000000000001380 <func_inc_188(unsigned short)>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	8d 47 01             	lea    0x1(%rdi),%eax
    1387:	c3                   	ret    
    1388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    138f:	00 

0000000000001390 <func_inc_189(unsigned char)>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	8d 47 01             	lea    0x1(%rdi),%eax
    1397:	c3                   	ret    
    1398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    139f:	00 

00000000000013a0 <func_inc_190(unsigned long)>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	48 8d 47 01          	lea    0x1(%rdi),%rax
    13a8:	c3                   	ret    
    13a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013b0 <func_inc_191(unsigned int)>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	8d 47 01             	lea    0x1(%rdi),%eax
    13b7:	c3                   	ret    
    13b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13bf:	00 

00000000000013c0 <func_inc_192(unsigned short)>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	8d 47 01             	lea    0x1(%rdi),%eax
    13c7:	c3                   	ret    
    13c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13cf:	00 

00000000000013d0 <func_inc_193(unsigned char)>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	8d 47 01             	lea    0x1(%rdi),%eax
    13d7:	c3                   	ret    
    13d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13df:	00 

00000000000013e0 <func_add_194(float, float)>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
    13e8:	c3                   	ret    
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <func_add_195(double, double)>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <func_add_196(long, long)>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	48 8d 04 3e          	lea    (%rsi,%rdi,1),%rax
    1408:	c3                   	ret    
    1409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001410 <func_add_197(int, int)>:
    1410:	f3 0f 1e fa          	endbr64 
    1414:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1417:	c3                   	ret    
    1418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    141f:	00 

0000000000001420 <func_add_198(short, short)>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1427:	c3                   	ret    
    1428:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    142f:	00 

0000000000001430 <func_add_199(signed char, signed char)>:
    1430:	f3 0f 1e fa          	endbr64 
    1434:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1437:	c3                   	ret    
    1438:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    143f:	00 

0000000000001440 <func_add_200(unsigned long, unsigned long)>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	48 8d 04 3e          	lea    (%rsi,%rdi,1),%rax
    1448:	c3                   	ret    
    1449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001450 <func_add_201(unsigned int, unsigned int)>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1457:	c3                   	ret    
    1458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    145f:	00 

0000000000001460 <func_add_202(unsigned short, unsigned short)>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1467:	c3                   	ret    
    1468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    146f:	00 

0000000000001470 <func_add_203(unsigned char, unsigned char)>:
    1470:	f3 0f 1e fa          	endbr64 
    1474:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    1477:	c3                   	ret    
    1478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    147f:	00 

0000000000001480 <func_add_204(unsigned long, unsigned long)>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1488:	c3                   	ret    
    1489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001490 <func_add_205(unsigned int, unsigned int)>:
    1490:	f3 0f 1e fa          	endbr64 
    1494:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
    1497:	c3                   	ret    
    1498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    149f:	00 

00000000000014a0 <func_add_206(unsigned short, unsigned short)>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    14a7:	c3                   	ret    
    14a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14af:	00 

00000000000014b0 <func_add_207(unsigned char, unsigned char)>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	8d 04 3e             	lea    (%rsi,%rdi,1),%eax
    14b7:	c3                   	ret    
    14b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14bf:	00 

00000000000014c0 <func_average_208(float, float)>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 14cc <func_average_208(float, float)+0xc>
    14cb:	00 
    14cc:	c5 f2 59 ca          	vmulss %xmm2,%xmm1,%xmm1
    14d0:	c5 fa 59 c2          	vmulss %xmm2,%xmm0,%xmm0
    14d4:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
    14d8:	c3                   	ret    
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <func_average_209(double, double)>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	c5 fb 10 15 00 00 00 	vmovsd 0x0(%rip),%xmm2        # 14ec <func_average_209(double, double)+0xc>
    14eb:	00 
    14ec:	c5 f3 59 ca          	vmulsd %xmm2,%xmm1,%xmm1
    14f0:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
    14f4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    14f8:	c3                   	ret    
    14f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001500 <func_average_210(long, long)>:
    1500:	f3 0f 1e fa          	endbr64 
    1504:	48 89 f8             	mov    %rdi,%rax
    1507:	48 21 f7             	and    %rsi,%rdi
    150a:	48 31 f0             	xor    %rsi,%rax
    150d:	48 d1 f8             	sar    %rax
    1510:	48 01 f8             	add    %rdi,%rax
    1513:	c3                   	ret    
    1514:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    151b:	00 00 00 00 
    151f:	90                   	nop

0000000000001520 <func_average_211(int, int)>:
    1520:	f3 0f 1e fa          	endbr64 
    1524:	89 f8                	mov    %edi,%eax
    1526:	21 f7                	and    %esi,%edi
    1528:	31 f0                	xor    %esi,%eax
    152a:	d1 f8                	sar    %eax
    152c:	01 f8                	add    %edi,%eax
    152e:	c3                   	ret    
    152f:	90                   	nop

0000000000001530 <func_average_212(short, short)>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	89 f0                	mov    %esi,%eax
    1536:	21 fe                	and    %edi,%esi
    1538:	31 f8                	xor    %edi,%eax
    153a:	66 d1 f8             	sar    %ax
    153d:	01 f0                	add    %esi,%eax
    153f:	c3                   	ret    

0000000000001540 <func_average_213(signed char, signed char)>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	89 f0                	mov    %esi,%eax
    1546:	21 fe                	and    %edi,%esi
    1548:	31 f8                	xor    %edi,%eax
    154a:	d0 f8                	sar    %al
    154c:	01 f0                	add    %esi,%eax
    154e:	c3                   	ret    
    154f:	90                   	nop

0000000000001550 <func_average_214(unsigned long, unsigned long)>:
    1550:	f3 0f 1e fa          	endbr64 
    1554:	48 89 f8             	mov    %rdi,%rax
    1557:	48 21 f7             	and    %rsi,%rdi
    155a:	48 31 f0             	xor    %rsi,%rax
    155d:	48 d1 e8             	shr    %rax
    1560:	48 01 f8             	add    %rdi,%rax
    1563:	c3                   	ret    
    1564:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    156b:	00 00 00 00 
    156f:	90                   	nop

0000000000001570 <func_average_215(unsigned int, unsigned int)>:
    1570:	f3 0f 1e fa          	endbr64 
    1574:	89 f8                	mov    %edi,%eax
    1576:	21 f7                	and    %esi,%edi
    1578:	31 f0                	xor    %esi,%eax
    157a:	d1 e8                	shr    %eax
    157c:	01 f8                	add    %edi,%eax
    157e:	c3                   	ret    
    157f:	90                   	nop

0000000000001580 <func_average_216(unsigned short, unsigned short)>:
    1580:	f3 0f 1e fa          	endbr64 
    1584:	89 f0                	mov    %esi,%eax
    1586:	21 fe                	and    %edi,%esi
    1588:	31 f8                	xor    %edi,%eax
    158a:	66 d1 e8             	shr    %ax
    158d:	01 f0                	add    %esi,%eax
    158f:	c3                   	ret    

0000000000001590 <func_average_217(unsigned char, unsigned char)>:
    1590:	f3 0f 1e fa          	endbr64 
    1594:	89 f0                	mov    %esi,%eax
    1596:	21 fe                	and    %edi,%esi
    1598:	31 f8                	xor    %edi,%eax
    159a:	d0 e8                	shr    %al
    159c:	01 f0                	add    %esi,%eax
    159e:	c3                   	ret    
    159f:	90                   	nop

00000000000015a0 <func_average_218(unsigned long, unsigned long)>:
    15a0:	f3 0f 1e fa          	endbr64 
    15a4:	48 89 f8             	mov    %rdi,%rax
    15a7:	48 21 f7             	and    %rsi,%rdi
    15aa:	48 31 f0             	xor    %rsi,%rax
    15ad:	48 d1 e8             	shr    %rax
    15b0:	48 01 f8             	add    %rdi,%rax
    15b3:	c3                   	ret    
    15b4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15bb:	00 00 00 00 
    15bf:	90                   	nop

00000000000015c0 <func_average_219(unsigned int, unsigned int)>:
    15c0:	f3 0f 1e fa          	endbr64 
    15c4:	89 f8                	mov    %edi,%eax
    15c6:	21 f7                	and    %esi,%edi
    15c8:	31 f0                	xor    %esi,%eax
    15ca:	d1 e8                	shr    %eax
    15cc:	01 f8                	add    %edi,%eax
    15ce:	c3                   	ret    
    15cf:	90                   	nop

00000000000015d0 <func_average_220(unsigned short, unsigned short)>:
    15d0:	f3 0f 1e fa          	endbr64 
    15d4:	89 f0                	mov    %esi,%eax
    15d6:	21 fe                	and    %edi,%esi
    15d8:	31 f8                	xor    %edi,%eax
    15da:	66 d1 e8             	shr    %ax
    15dd:	01 f0                	add    %esi,%eax
    15df:	c3                   	ret    

00000000000015e0 <func_average_221(unsigned char, unsigned char)>:
    15e0:	f3 0f 1e fa          	endbr64 
    15e4:	89 f0                	mov    %esi,%eax
    15e6:	21 fe                	and    %edi,%esi
    15e8:	31 f8                	xor    %edi,%eax
    15ea:	d0 e8                	shr    %al
    15ec:	01 f0                	add    %esi,%eax
    15ee:	c3                   	ret    
    15ef:	90                   	nop

00000000000015f0 <func_is_positive_222(float)>:
    15f0:	f3 0f 1e fa          	endbr64 
    15f4:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    15f8:	f7 d0                	not    %eax
    15fa:	c1 f8 1f             	sar    $0x1f,%eax
    15fd:	c3                   	ret    
    15fe:	66 90                	xchg   %ax,%ax

0000000000001600 <func_is_positive_223(double)>:
    1600:	f3 0f 1e fa          	endbr64 
    1604:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    1609:	48 f7 d0             	not    %rax
    160c:	48 c1 f8 3f          	sar    $0x3f,%rax
    1610:	c3                   	ret    
    1611:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1618:	00 00 00 00 
    161c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001620 <func_is_positive_224(long)>:
    1620:	f3 0f 1e fa          	endbr64 
    1624:	48 89 f8             	mov    %rdi,%rax
    1627:	48 f7 d0             	not    %rax
    162a:	48 c1 f8 3f          	sar    $0x3f,%rax
    162e:	c3                   	ret    
    162f:	90                   	nop

0000000000001630 <func_is_positive_225(int)>:
    1630:	f3 0f 1e fa          	endbr64 
    1634:	89 f8                	mov    %edi,%eax
    1636:	f7 d0                	not    %eax
    1638:	c1 f8 1f             	sar    $0x1f,%eax
    163b:	c3                   	ret    
    163c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001640 <func_is_positive_226(short)>:
    1640:	f3 0f 1e fa          	endbr64 
    1644:	89 f8                	mov    %edi,%eax
    1646:	f7 d0                	not    %eax
    1648:	66 c1 f8 0f          	sar    $0xf,%ax
    164c:	c3                   	ret    
    164d:	0f 1f 00             	nopl   (%rax)

0000000000001650 <func_is_positive_227(signed char)>:
    1650:	f3 0f 1e fa          	endbr64 
    1654:	89 f8                	mov    %edi,%eax
    1656:	f7 d0                	not    %eax
    1658:	c0 f8 07             	sar    $0x7,%al
    165b:	c3                   	ret    
    165c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001660 <func_is_positive_228(unsigned long)>:
    1660:	f3 0f 1e fa          	endbr64 
    1664:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    166b:	c3                   	ret    
    166c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001670 <func_is_positive_229(unsigned int)>:
    1670:	f3 0f 1e fa          	endbr64 
    1674:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1679:	c3                   	ret    
    167a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001680 <func_is_positive_230(unsigned short)>:
    1680:	f3 0f 1e fa          	endbr64 
    1684:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1689:	c3                   	ret    
    168a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001690 <func_is_positive_231(unsigned char)>:
    1690:	f3 0f 1e fa          	endbr64 
    1694:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1699:	c3                   	ret    
    169a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016a0 <func_is_positive_232(unsigned long)>:
    16a0:	f3 0f 1e fa          	endbr64 
    16a4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    16ab:	c3                   	ret    
    16ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016b0 <func_is_positive_233(unsigned int)>:
    16b0:	f3 0f 1e fa          	endbr64 
    16b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16b9:	c3                   	ret    
    16ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016c0 <func_is_positive_234(unsigned short)>:
    16c0:	f3 0f 1e fa          	endbr64 
    16c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16c9:	c3                   	ret    
    16ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016d0 <func_is_positive_235(unsigned char)>:
    16d0:	f3 0f 1e fa          	endbr64 
    16d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16d9:	c3                   	ret    
    16da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000016e0 <func_dec_236(float)>:
    16e0:	f3 0f 1e fa          	endbr64 
    16e4:	c5 fa 5c 05 00 00 00 	vsubss 0x0(%rip),%xmm0,%xmm0        # 16ec <func_dec_236(float)+0xc>
    16eb:	00 
    16ec:	c3                   	ret    
    16ed:	0f 1f 00             	nopl   (%rax)

00000000000016f0 <func_dec_237(double)>:
    16f0:	f3 0f 1e fa          	endbr64 
    16f4:	c5 fb 5c 05 00 00 00 	vsubsd 0x0(%rip),%xmm0,%xmm0        # 16fc <func_dec_237(double)+0xc>
    16fb:	00 
    16fc:	c3                   	ret    
    16fd:	0f 1f 00             	nopl   (%rax)

0000000000001700 <func_dec_238(long)>:
    1700:	f3 0f 1e fa          	endbr64 
    1704:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1708:	c3                   	ret    
    1709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001710 <func_dec_239(int)>:
    1710:	f3 0f 1e fa          	endbr64 
    1714:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1717:	c3                   	ret    
    1718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    171f:	00 

0000000000001720 <func_dec_240(short)>:
    1720:	f3 0f 1e fa          	endbr64 
    1724:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1727:	c3                   	ret    
    1728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    172f:	00 

0000000000001730 <func_dec_241(signed char)>:
    1730:	f3 0f 1e fa          	endbr64 
    1734:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1737:	c3                   	ret    
    1738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    173f:	00 

0000000000001740 <func_dec_242(unsigned long)>:
    1740:	f3 0f 1e fa          	endbr64 
    1744:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1748:	c3                   	ret    
    1749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001750 <func_dec_243(unsigned int)>:
    1750:	f3 0f 1e fa          	endbr64 
    1754:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1757:	c3                   	ret    
    1758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    175f:	00 

0000000000001760 <func_dec_244(unsigned short)>:
    1760:	f3 0f 1e fa          	endbr64 
    1764:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1767:	c3                   	ret    
    1768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    176f:	00 

0000000000001770 <func_dec_245(unsigned char)>:
    1770:	f3 0f 1e fa          	endbr64 
    1774:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1777:	c3                   	ret    
    1778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    177f:	00 

0000000000001780 <func_dec_246(unsigned long)>:
    1780:	f3 0f 1e fa          	endbr64 
    1784:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    1788:	c3                   	ret    
    1789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001790 <func_dec_247(unsigned int)>:
    1790:	f3 0f 1e fa          	endbr64 
    1794:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1797:	c3                   	ret    
    1798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    179f:	00 

00000000000017a0 <func_dec_248(unsigned short)>:
    17a0:	f3 0f 1e fa          	endbr64 
    17a4:	8d 47 ff             	lea    -0x1(%rdi),%eax
    17a7:	c3                   	ret    
    17a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17af:	00 

00000000000017b0 <func_dec_249(unsigned char)>:
    17b0:	f3 0f 1e fa          	endbr64 
    17b4:	8d 47 ff             	lea    -0x1(%rdi),%eax
    17b7:	c3                   	ret    
    17b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17bf:	00 

00000000000017c0 <func_frac_250(float)>:
    17c0:	f3 0f 1e fa          	endbr64 
    17c4:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 17cc <func_frac_250(float)+0xc>
    17cb:	00 
    17cc:	7a 0a                	jp     17d8 <func_frac_250(float)+0x18>
    17ce:	75 08                	jne    17d8 <func_frac_250(float)+0x18>
    17d0:	c3                   	ret    
    17d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17d8:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    17dc:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
    17e0:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    17e5:	c5 f9 6e c8          	vmovd  %eax,%xmm1
    17e9:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
    17ed:	7a 16                	jp     1805 <func_frac_250(float)+0x45>
    17ef:	c5 f8 2f 0d 00 00 00 	vcomiss 0x0(%rip),%xmm1        # 17f7 <func_frac_250(float)+0x37>
    17f6:	00 
    17f7:	77 0c                	ja     1805 <func_frac_250(float)+0x45>
    17f9:	c5 fa 2c c0          	vcvttss2si %xmm0,%eax
    17fd:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    1801:	c5 ea 2a d0          	vcvtsi2ss %eax,%xmm2,%xmm2
    1805:	c5 fa 5c c2          	vsubss %xmm2,%xmm0,%xmm0
    1809:	c3                   	ret    
    180a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001810 <func_frac_251(double)>:
    1810:	f3 0f 1e fa          	endbr64 
    1814:	c5 f9 2e 05 00 00 00 	vucomisd 0x0(%rip),%xmm0        # 181c <func_frac_251(double)+0xc>
    181b:	00 
    181c:	7a 0a                	jp     1828 <func_frac_251(double)+0x18>
    181e:	75 08                	jne    1828 <func_frac_251(double)+0x18>
    1820:	c3                   	ret    
    1821:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1828:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    182d:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
    1831:	48 0f ba f0 3f       	btr    $0x3f,%rax
    1836:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
    183b:	c5 f9 2e c9          	vucomisd %xmm1,%xmm1
    183f:	7a 18                	jp     1859 <func_frac_251(double)+0x49>
    1841:	c5 f9 2f 0d 00 00 00 	vcomisd 0x0(%rip),%xmm1        # 1849 <func_frac_251(double)+0x39>
    1848:	00 
    1849:	77 0e                	ja     1859 <func_frac_251(double)+0x49>
    184b:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1850:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    1854:	c4 e1 eb 2a d0       	vcvtsi2sd %rax,%xmm2,%xmm2
    1859:	c5 fb 5c c2          	vsubsd %xmm2,%xmm0,%xmm0
    185d:	c3                   	ret    
    185e:	66 90                	xchg   %ax,%ax

0000000000001860 <func_frac_252(long)>:
    1860:	f3 0f 1e fa          	endbr64 
    1864:	31 c0                	xor    %eax,%eax
    1866:	c3                   	ret    
    1867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    186e:	00 00 

0000000000001870 <func_frac_253(int)>:
    1870:	f3 0f 1e fa          	endbr64 
    1874:	31 c0                	xor    %eax,%eax
    1876:	c3                   	ret    
    1877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    187e:	00 00 

0000000000001880 <func_frac_254(short)>:
    1880:	f3 0f 1e fa          	endbr64 
    1884:	31 c0                	xor    %eax,%eax
    1886:	c3                   	ret    
    1887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    188e:	00 00 

0000000000001890 <func_frac_255(signed char)>:
    1890:	f3 0f 1e fa          	endbr64 
    1894:	31 c0                	xor    %eax,%eax
    1896:	c3                   	ret    
    1897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    189e:	00 00 

00000000000018a0 <func_frac_256(unsigned long)>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	31 c0                	xor    %eax,%eax
    18a6:	c3                   	ret    
    18a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ae:	00 00 

00000000000018b0 <func_frac_257(unsigned int)>:
    18b0:	f3 0f 1e fa          	endbr64 
    18b4:	31 c0                	xor    %eax,%eax
    18b6:	c3                   	ret    
    18b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18be:	00 00 

00000000000018c0 <func_frac_258(unsigned short)>:
    18c0:	f3 0f 1e fa          	endbr64 
    18c4:	31 c0                	xor    %eax,%eax
    18c6:	c3                   	ret    
    18c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ce:	00 00 

00000000000018d0 <func_frac_259(unsigned char)>:
    18d0:	f3 0f 1e fa          	endbr64 
    18d4:	31 c0                	xor    %eax,%eax
    18d6:	c3                   	ret    
    18d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18de:	00 00 

00000000000018e0 <func_frac_260(unsigned long)>:
    18e0:	f3 0f 1e fa          	endbr64 
    18e4:	31 c0                	xor    %eax,%eax
    18e6:	c3                   	ret    
    18e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18ee:	00 00 

00000000000018f0 <func_frac_261(unsigned int)>:
    18f0:	f3 0f 1e fa          	endbr64 
    18f4:	31 c0                	xor    %eax,%eax
    18f6:	c3                   	ret    
    18f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18fe:	00 00 

0000000000001900 <func_frac_262(unsigned short)>:
    1900:	f3 0f 1e fa          	endbr64 
    1904:	31 c0                	xor    %eax,%eax
    1906:	c3                   	ret    
    1907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    190e:	00 00 

0000000000001910 <func_frac_263(unsigned char)>:
    1910:	f3 0f 1e fa          	endbr64 
    1914:	31 c0                	xor    %eax,%eax
    1916:	c3                   	ret    
    1917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    191e:	00 00 

0000000000001920 <func_agm_264(float, float)>:
    1920:	f3 0f 1e fa          	endbr64 
    1924:	53                   	push   %rbx
    1925:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
    1929:	48 83 ec 20          	sub    $0x20,%rsp
    192d:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 1935 <func_agm_264(float, float)+0x15>
    1934:	00 
    1935:	c5 ea 59 dd          	vmulss %xmm5,%xmm2,%xmm3
    1939:	c5 f2 59 c5          	vmulss %xmm5,%xmm1,%xmm0
    193d:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
    1941:	c5 fa 5c d8          	vsubss %xmm0,%xmm0,%xmm3
    1945:	c5 f8 2e db          	vucomiss %xmm3,%xmm3
    1949:	0f 8b 31 01 00 00    	jnp    1a80 <func_agm_264(float, float)+0x160>
    194f:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # 1957 <func_agm_264(float, float)+0x37>
    1956:	00 
    1957:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    195b:	c5 78 29 c0          	vmovaps %xmm8,%xmm0
    195f:	c5 f8 2e d6          	vucomiss %xmm6,%xmm2
    1963:	0f 8a bf 01 00 00    	jp     1b28 <func_agm_264(float, float)+0x208>
    1969:	c5 f8 28 fe          	vmovaps %xmm6,%xmm7
    196d:	0f 85 b5 01 00 00    	jne    1b28 <func_agm_264(float, float)+0x208>
    1973:	c5 f9 7e d6          	vmovd  %xmm2,%esi
    1977:	c5 f9 7e d0          	vmovd  %xmm2,%eax
    197b:	c5 f9 7e ca          	vmovd  %xmm1,%edx
    197f:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
    1985:	c5 f9 6e e6          	vmovd  %esi,%xmm4
    1989:	c5 f8 2e 25 00 00 00 	vucomiss 0x0(%rip),%xmm4        # 1991 <func_agm_264(float, float)+0x71>
    1990:	00 
    1991:	0f 8a 69 01 00 00    	jp     1b00 <func_agm_264(float, float)+0x1e0>
    1997:	0f 85 63 01 00 00    	jne    1b00 <func_agm_264(float, float)+0x1e0>
    199d:	c5 ea 58 f9          	vaddss %xmm1,%xmm2,%xmm7
    19a1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    19a6:	c5 f8 2e d6          	vucomiss %xmm6,%xmm2
    19aa:	0f 8a 38 01 00 00    	jp     1ae8 <func_agm_264(float, float)+0x1c8>
    19b0:	c5 f8 28 e2          	vmovaps %xmm2,%xmm4
    19b4:	0f 85 2e 01 00 00    	jne    1ae8 <func_agm_264(float, float)+0x1c8>
    19ba:	c5 f8 2e ce          	vucomiss %xmm6,%xmm1
    19be:	0f 8a 0c 01 00 00    	jp     1ad0 <func_agm_264(float, float)+0x1b0>
    19c4:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
    19c8:	0f 85 02 01 00 00    	jne    1ad0 <func_agm_264(float, float)+0x1b0>
    19ce:	c5 e2 59 dc          	vmulss %xmm4,%xmm3,%xmm3
    19d2:	c5 f8 2f f3          	vcomiss %xmm3,%xmm6
    19d6:	73 19                	jae    19f1 <func_agm_264(float, float)+0xd1>
    19d8:	c5 f8 2e d2          	vucomiss %xmm2,%xmm2
    19dc:	0f 9a c3             	setp   %bl
    19df:	c5 f8 2e c9          	vucomiss %xmm1,%xmm1
    19e3:	0f 9a c0             	setp   %al
    19e6:	09 c3                	or     %eax,%ebx
    19e8:	0f b6 db             	movzbl %bl,%ebx
    19eb:	f7 db                	neg    %ebx
    19ed:	09 cb                	or     %ecx,%ebx
    19ef:	74 0d                	je     19fe <func_agm_264(float, float)+0xde>
    19f1:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    19f6:	c5 f8 28 d6          	vmovaps %xmm6,%xmm2
    19fa:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
    19fe:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
    1a02:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
    1a06:	c5 ea 59 cd          	vmulss %xmm5,%xmm2,%xmm1
    1a0a:	c5 fa 59 dd          	vmulss %xmm5,%xmm0,%xmm3
    1a0e:	c5 f2 5c e3          	vsubss %xmm3,%xmm1,%xmm4
    1a12:	c5 f9 7e e0          	vmovd  %xmm4,%eax
    1a16:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1a1b:	c5 f9 6e e0          	vmovd  %eax,%xmm4
    1a1f:	c5 f8 2f 25 00 00 00 	vcomiss 0x0(%rip),%xmm4        # 1a27 <func_agm_264(float, float)+0x107>
    1a26:	00 
    1a27:	76 44                	jbe    1a6d <func_agm_264(float, float)+0x14d>
    1a29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a30:	c5 fa 59 dd          	vmulss %xmm5,%xmm0,%xmm3
    1a34:	c5 f8 28 e2          	vmovaps %xmm2,%xmm4
    1a38:	c5 fa 59 c4          	vmulss %xmm4,%xmm0,%xmm0
    1a3c:	c5 ea 59 cd          	vmulss %xmm5,%xmm2,%xmm1
    1a40:	c5 f8 2e f0          	vucomiss %xmm0,%xmm6
    1a44:	c5 e2 58 d1          	vaddss %xmm1,%xmm3,%xmm2
    1a48:	0f 87 04 01 00 00    	ja     1b52 <func_agm_264(float, float)+0x232>
    1a4e:	c5 fa 51 c0          	vsqrtss %xmm0,%xmm0,%xmm0
    1a52:	c5 f2 5c cb          	vsubss %xmm3,%xmm1,%xmm1
    1a56:	c5 f9 7e c8          	vmovd  %xmm1,%eax
    1a5a:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1a5f:	c5 f9 6e c8          	vmovd  %eax,%xmm1
    1a63:	c5 f8 2f 0d 00 00 00 	vcomiss 0x0(%rip),%xmm1        # 1a6b <func_agm_264(float, float)+0x14b>
    1a6a:	00 
    1a6b:	77 c3                	ja     1a30 <func_agm_264(float, float)+0x110>
    1a6d:	85 db                	test   %ebx,%ebx
    1a6f:	75 05                	jne    1a76 <func_agm_264(float, float)+0x156>
    1a71:	c4 c1 7a 59 f8       	vmulss %xmm8,%xmm0,%xmm7
    1a76:	48 83 c4 20          	add    $0x20,%rsp
    1a7a:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
    1a7e:	5b                   	pop    %rbx
    1a7f:	c3                   	ret    
    1a80:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    1a84:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    1a88:	31 d2                	xor    %edx,%edx
    1a8a:	b9 01 00 00 00       	mov    $0x1,%ecx
    1a8f:	c1 f8 17             	sar    $0x17,%eax
    1a92:	c5 f8 2e c6          	vucomiss %xmm6,%xmm0
    1a96:	0f b6 c0             	movzbl %al,%eax
    1a99:	0f 9a c2             	setp   %dl
    1a9c:	0f 45 d1             	cmovne %ecx,%edx
    1a9f:	85 d2                	test   %edx,%edx
    1aa1:	0f 85 a1 00 00 00    	jne    1b48 <func_agm_264(float, float)+0x228>
    1aa7:	8d 50 7f             	lea    0x7f(%rax),%edx
    1aaa:	89 c1                	mov    %eax,%ecx
    1aac:	b8 7f 00 00 00       	mov    $0x7f,%eax
    1ab1:	c1 e2 17             	shl    $0x17,%edx
    1ab4:	29 c8                	sub    %ecx,%eax
    1ab6:	c5 79 6e c2          	vmovd  %edx,%xmm8
    1aba:	c1 e0 17             	shl    $0x17,%eax
    1abd:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    1ac1:	e9 99 fe ff ff       	jmp    195f <func_agm_264(float, float)+0x3f>
    1ac6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1acd:	00 00 00 
    1ad0:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1ad6:	81 ca 00 00 80 3f    	or     $0x3f800000,%edx
    1adc:	c5 f9 6e da          	vmovd  %edx,%xmm3
    1ae0:	e9 e9 fe ff ff       	jmp    19ce <func_agm_264(float, float)+0xae>
    1ae5:	0f 1f 00             	nopl   (%rax)
    1ae8:	25 00 00 00 80       	and    $0x80000000,%eax
    1aed:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    1af2:	c5 f9 6e e0          	vmovd  %eax,%xmm4
    1af6:	e9 bf fe ff ff       	jmp    19ba <func_agm_264(float, float)+0x9a>
    1afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b00:	89 d7                	mov    %edx,%edi
    1b02:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
    1b08:	c5 f9 6e e7          	vmovd  %edi,%xmm4
    1b0c:	c5 f8 2e 25 00 00 00 	vucomiss 0x0(%rip),%xmm4        # 1b14 <func_agm_264(float, float)+0x1f4>
    1b13:	00 
    1b14:	7a 06                	jp     1b1c <func_agm_264(float, float)+0x1fc>
    1b16:	0f 84 81 fe ff ff    	je     199d <func_agm_264(float, float)+0x7d>
    1b1c:	31 c9                	xor    %ecx,%ecx
    1b1e:	e9 83 fe ff ff       	jmp    19a6 <func_agm_264(float, float)+0x86>
    1b23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b28:	c5 f8 2e ce          	vucomiss %xmm6,%xmm1
    1b2c:	7a 0a                	jp     1b38 <func_agm_264(float, float)+0x218>
    1b2e:	c5 f8 28 fe          	vmovaps %xmm6,%xmm7
    1b32:	0f 84 3b fe ff ff    	je     1973 <func_agm_264(float, float)+0x53>
    1b38:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 1b40 <func_agm_264(float, float)+0x220>
    1b3f:	00 
    1b40:	e9 2e fe ff ff       	jmp    1973 <func_agm_264(float, float)+0x53>
    1b45:	0f 1f 00             	nopl   (%rax)
    1b48:	8d 48 81             	lea    -0x7f(%rax),%ecx
    1b4b:	89 c2                	mov    %eax,%edx
    1b4d:	e9 5a ff ff ff       	jmp    1aac <func_agm_264(float, float)+0x18c>
    1b52:	c5 fa 11 74 24 1c    	vmovss %xmm6,0x1c(%rsp)
    1b58:	c5 fa 11 7c 24 18    	vmovss %xmm7,0x18(%rsp)
    1b5e:	c5 7a 11 44 24 14    	vmovss %xmm8,0x14(%rsp)
    1b64:	c5 fa 11 54 24 10    	vmovss %xmm2,0x10(%rsp)
    1b6a:	c5 fa 11 4c 24 0c    	vmovss %xmm1,0xc(%rsp)
    1b70:	c5 fa 11 5c 24 08    	vmovss %xmm3,0x8(%rsp)
    1b76:	e8 00 00 00 00       	call   1b7b <func_agm_264(float, float)+0x25b>
    1b7b:	c5 fa 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm5        # 1b83 <func_agm_264(float, float)+0x263>
    1b82:	00 
    1b83:	c5 fa 10 74 24 1c    	vmovss 0x1c(%rsp),%xmm6
    1b89:	c5 fa 10 7c 24 18    	vmovss 0x18(%rsp),%xmm7
    1b8f:	c5 7a 10 44 24 14    	vmovss 0x14(%rsp),%xmm8
    1b95:	c5 fa 10 54 24 10    	vmovss 0x10(%rsp),%xmm2
    1b9b:	c5 fa 10 4c 24 0c    	vmovss 0xc(%rsp),%xmm1
    1ba1:	c5 fa 10 5c 24 08    	vmovss 0x8(%rsp),%xmm3
    1ba7:	e9 a6 fe ff ff       	jmp    1a52 <func_agm_264(float, float)+0x132>
    1bac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001bb0 <func_agm_265(double, double)>:
    1bb0:	f3 0f 1e fa          	endbr64 
    1bb4:	55                   	push   %rbp
    1bb5:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
    1bb9:	53                   	push   %rbx
    1bba:	48 83 ec 38          	sub    $0x38,%rsp
    1bbe:	c5 fb 10 2d 00 00 00 	vmovsd 0x0(%rip),%xmm5        # 1bc6 <func_agm_265(double, double)+0x16>
    1bc5:	00 
    1bc6:	c5 eb 59 dd          	vmulsd %xmm5,%xmm2,%xmm3
    1bca:	c5 f3 59 c5          	vmulsd %xmm5,%xmm1,%xmm0
    1bce:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
    1bd2:	c5 fb 5c d8          	vsubsd %xmm0,%xmm0,%xmm3
    1bd6:	c5 f9 2e db          	vucomisd %xmm3,%xmm3
    1bda:	0f 8b 50 01 00 00    	jnp    1d30 <func_agm_265(double, double)+0x180>
    1be0:	c5 7b 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm9        # 1be8 <func_agm_265(double, double)+0x38>
    1be7:	00 
    1be8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    1bec:	c5 33 11 c8          	vmovsd %xmm9,%xmm9,%xmm0
    1bf0:	c5 f9 2e d6          	vucomisd %xmm6,%xmm2
    1bf4:	0f 8a 06 02 00 00    	jp     1e00 <func_agm_265(double, double)+0x250>
    1bfa:	c5 4b 10 c6          	vmovsd %xmm6,%xmm6,%xmm8
    1bfe:	0f 85 fc 01 00 00    	jne    1e00 <func_agm_265(double, double)+0x250>
    1c04:	c4 e1 f9 7e d7       	vmovq  %xmm2,%rdi
    1c09:	c4 e1 f9 7e d0       	vmovq  %xmm2,%rax
    1c0e:	c4 e1 f9 7e ce       	vmovq  %xmm1,%rsi
    1c13:	c5 fb 10 1d 00 00 00 	vmovsd 0x0(%rip),%xmm3        # 1c1b <func_agm_265(double, double)+0x6b>
    1c1a:	00 
    1c1b:	48 0f ba f7 3f       	btr    $0x3f,%rdi
    1c20:	c4 e1 f9 6e ff       	vmovq  %rdi,%xmm7
    1c25:	c5 f9 2e fb          	vucomisd %xmm3,%xmm7
    1c29:	0f 8a b1 01 00 00    	jp     1de0 <func_agm_265(double, double)+0x230>
    1c2f:	0f 85 ab 01 00 00    	jne    1de0 <func_agm_265(double, double)+0x230>
    1c35:	c5 6b 58 c1          	vaddsd %xmm1,%xmm2,%xmm8
    1c39:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    1c40:	c5 f9 2e d6          	vucomisd %xmm6,%xmm2
    1c44:	0f 8a 6e 01 00 00    	jp     1db8 <func_agm_265(double, double)+0x208>
    1c4a:	c5 eb 10 e2          	vmovsd %xmm2,%xmm2,%xmm4
    1c4e:	0f 85 64 01 00 00    	jne    1db8 <func_agm_265(double, double)+0x208>
    1c54:	c5 f9 2e ce          	vucomisd %xmm6,%xmm1
    1c58:	0f 8a 32 01 00 00    	jp     1d90 <func_agm_265(double, double)+0x1e0>
    1c5e:	c5 f3 10 d9          	vmovsd %xmm1,%xmm1,%xmm3
    1c62:	0f 85 28 01 00 00    	jne    1d90 <func_agm_265(double, double)+0x1e0>
    1c68:	c5 e3 59 dc          	vmulsd %xmm4,%xmm3,%xmm3
    1c6c:	c5 f9 2f f3          	vcomisd %xmm3,%xmm6
    1c70:	73 1d                	jae    1c8f <func_agm_265(double, double)+0xdf>
    1c72:	c5 f9 2e d2          	vucomisd %xmm2,%xmm2
    1c76:	40 0f 9a c5          	setp   %bpl
    1c7a:	c5 f9 2e c9          	vucomisd %xmm1,%xmm1
    1c7e:	0f 9a c0             	setp   %al
    1c81:	09 c5                	or     %eax,%ebp
    1c83:	40 0f b6 ed          	movzbl %bpl,%ebp
    1c87:	48 f7 dd             	neg    %rbp
    1c8a:	48 09 d5             	or     %rdx,%rbp
    1c8d:	74 0f                	je     1c9e <func_agm_265(double, double)+0xee>
    1c8f:	48 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%rbp
    1c96:	c5 cb 10 d6          	vmovsd %xmm6,%xmm6,%xmm2
    1c9a:	c5 cb 10 ce          	vmovsd %xmm6,%xmm6,%xmm1
    1c9e:	c5 eb 59 d0          	vmulsd %xmm0,%xmm2,%xmm2
    1ca2:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rbx
    1ca9:	ff ff 7f 
    1cac:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    1cb0:	c5 eb 59 cd          	vmulsd %xmm5,%xmm2,%xmm1
    1cb4:	c5 fb 59 dd          	vmulsd %xmm5,%xmm0,%xmm3
    1cb8:	c5 f3 5c fb          	vsubsd %xmm3,%xmm1,%xmm7
    1cbc:	c4 e1 f9 7e f8       	vmovq  %xmm7,%rax
    1cc1:	c5 fb 10 3d 00 00 00 	vmovsd 0x0(%rip),%xmm7        # 1cc9 <func_agm_265(double, double)+0x119>
    1cc8:	00 
    1cc9:	48 21 d8             	and    %rbx,%rax
    1ccc:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
    1cd1:	c5 f9 2f e7          	vcomisd %xmm7,%xmm4
    1cd5:	76 42                	jbe    1d19 <func_agm_265(double, double)+0x169>
    1cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1cde:	00 00 
    1ce0:	c5 fb 59 dd          	vmulsd %xmm5,%xmm0,%xmm3
    1ce4:	c5 eb 10 e2          	vmovsd %xmm2,%xmm2,%xmm4
    1ce8:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
    1cec:	c5 eb 59 cd          	vmulsd %xmm5,%xmm2,%xmm1
    1cf0:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
    1cf4:	c5 e3 58 d1          	vaddsd %xmm1,%xmm3,%xmm2
    1cf8:	0f 87 31 01 00 00    	ja     1e2f <func_agm_265(double, double)+0x27f>
    1cfe:	c5 fb 51 c0          	vsqrtsd %xmm0,%xmm0,%xmm0
    1d02:	c5 f3 5c cb          	vsubsd %xmm3,%xmm1,%xmm1
    1d06:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
    1d0b:	48 21 d8             	and    %rbx,%rax
    1d0e:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
    1d13:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
    1d17:	77 c7                	ja     1ce0 <func_agm_265(double, double)+0x130>
    1d19:	48 85 ed             	test   %rbp,%rbp
    1d1c:	75 05                	jne    1d23 <func_agm_265(double, double)+0x173>
    1d1e:	c4 41 7b 59 c1       	vmulsd %xmm9,%xmm0,%xmm8
    1d23:	48 83 c4 38          	add    $0x38,%rsp
    1d27:	c5 3b 11 c0          	vmovsd %xmm8,%xmm8,%xmm0
    1d2b:	5b                   	pop    %rbx
    1d2c:	5d                   	pop    %rbp
    1d2d:	c3                   	ret    
    1d2e:	66 90                	xchg   %ax,%ax
    1d30:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    1d35:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    1d39:	31 d2                	xor    %edx,%edx
    1d3b:	b9 01 00 00 00       	mov    $0x1,%ecx
    1d40:	48 c1 f8 34          	sar    $0x34,%rax
    1d44:	25 ff 07 00 00       	and    $0x7ff,%eax
    1d49:	c5 f9 2e c6          	vucomisd %xmm6,%xmm0
    1d4d:	0f 9a c2             	setp   %dl
    1d50:	48 0f 45 d1          	cmovne %rcx,%rdx
    1d54:	48 85 d2             	test   %rdx,%rdx
    1d57:	0f 85 c3 00 00 00    	jne    1e20 <func_agm_265(double, double)+0x270>
    1d5d:	48 8d 90 ff 03 00 00 	lea    0x3ff(%rax),%rdx
    1d64:	48 89 c1             	mov    %rax,%rcx
    1d67:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    1d6c:	48 c1 e2 34          	shl    $0x34,%rdx
    1d70:	48 29 c8             	sub    %rcx,%rax
    1d73:	c4 61 f9 6e ca       	vmovq  %rdx,%xmm9
    1d78:	48 c1 e0 34          	shl    $0x34,%rax
    1d7c:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    1d81:	e9 6a fe ff ff       	jmp    1bf0 <func_agm_265(double, double)+0x40>
    1d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1d8d:	00 00 00 
    1d90:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1d97:	00 00 80 
    1d9a:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    1da1:	00 f0 3f 
    1da4:	48 21 f0             	and    %rsi,%rax
    1da7:	48 09 c8             	or     %rcx,%rax
    1daa:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
    1daf:	e9 b4 fe ff ff       	jmp    1c68 <func_agm_265(double, double)+0xb8>
    1db4:	0f 1f 40 00          	nopl   0x0(%rax)
    1db8:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1dbf:	00 00 80 
    1dc2:	48 21 c8             	and    %rcx,%rax
    1dc5:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    1dcc:	00 f0 3f 
    1dcf:	48 09 c8             	or     %rcx,%rax
    1dd2:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
    1dd7:	e9 78 fe ff ff       	jmp    1c54 <func_agm_265(double, double)+0xa4>
    1ddc:	0f 1f 40 00          	nopl   0x0(%rax)
    1de0:	48 89 f7             	mov    %rsi,%rdi
    1de3:	48 0f ba f7 3f       	btr    $0x3f,%rdi
    1de8:	c4 e1 f9 6e ff       	vmovq  %rdi,%xmm7
    1ded:	c5 f9 2e fb          	vucomisd %xmm3,%xmm7
    1df1:	7a 06                	jp     1df9 <func_agm_265(double, double)+0x249>
    1df3:	0f 84 3c fe ff ff    	je     1c35 <func_agm_265(double, double)+0x85>
    1df9:	31 d2                	xor    %edx,%edx
    1dfb:	e9 40 fe ff ff       	jmp    1c40 <func_agm_265(double, double)+0x90>
    1e00:	c5 f9 2e ce          	vucomisd %xmm6,%xmm1
    1e04:	7a 0a                	jp     1e10 <func_agm_265(double, double)+0x260>
    1e06:	c5 4b 10 c6          	vmovsd %xmm6,%xmm6,%xmm8
    1e0a:	0f 84 f4 fd ff ff    	je     1c04 <func_agm_265(double, double)+0x54>
    1e10:	c5 7b 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm8        # 1e18 <func_agm_265(double, double)+0x268>
    1e17:	00 
    1e18:	e9 e7 fd ff ff       	jmp    1c04 <func_agm_265(double, double)+0x54>
    1e1d:	0f 1f 00             	nopl   (%rax)
    1e20:	48 8d 88 01 fc ff ff 	lea    -0x3ff(%rax),%rcx
    1e27:	48 89 c2             	mov    %rax,%rdx
    1e2a:	e9 38 ff ff ff       	jmp    1d67 <func_agm_265(double, double)+0x1b7>
    1e2f:	c5 fb 11 74 24 28    	vmovsd %xmm6,0x28(%rsp)
    1e35:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
    1e3b:	c5 7b 11 4c 24 18    	vmovsd %xmm9,0x18(%rsp)
    1e41:	c5 fb 11 54 24 10    	vmovsd %xmm2,0x10(%rsp)
    1e47:	c5 fb 11 4c 24 08    	vmovsd %xmm1,0x8(%rsp)
    1e4d:	c5 fb 11 1c 24       	vmovsd %xmm3,(%rsp)
    1e52:	e8 00 00 00 00       	call   1e57 <func_agm_265(double, double)+0x2a7>
    1e57:	c5 fb 10 74 24 28    	vmovsd 0x28(%rsp),%xmm6
    1e5d:	c5 fb 10 1c 24       	vmovsd (%rsp),%xmm3
    1e62:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1e69 <func_agm_265(double, double)+0x2b9>
    1e69:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
    1e6f:	c5 7b 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm9
    1e75:	c5 fb 10 54 24 10    	vmovsd 0x10(%rsp),%xmm2
    1e7b:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
    1e80:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1e87 <func_agm_265(double, double)+0x2d7>
    1e87:	c5 fb 10 4c 24 08    	vmovsd 0x8(%rsp),%xmm1
    1e8d:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
    1e92:	e9 6b fe ff ff       	jmp    1d02 <func_agm_265(double, double)+0x152>
    1e97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1e9e:	00 00 

0000000000001ea0 <func_mul_266(float, float)>:
    1ea0:	f3 0f 1e fa          	endbr64 
    1ea4:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
    1ea8:	c3                   	ret    
    1ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001eb0 <func_mul_267(double, double)>:
    1eb0:	f3 0f 1e fa          	endbr64 
    1eb4:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
    1eb8:	c3                   	ret    
    1eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001ec0 <func_mul_268(long, long)>:
    1ec0:	f3 0f 1e fa          	endbr64 
    1ec4:	48 89 f0             	mov    %rsi,%rax
    1ec7:	48 0f af c7          	imul   %rdi,%rax
    1ecb:	c3                   	ret    
    1ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001ed0 <func_mul_269(int, int)>:
    1ed0:	f3 0f 1e fa          	endbr64 
    1ed4:	89 f0                	mov    %esi,%eax
    1ed6:	0f af c7             	imul   %edi,%eax
    1ed9:	c3                   	ret    
    1eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ee0 <func_mul_270(short, short)>:
    1ee0:	f3 0f 1e fa          	endbr64 
    1ee4:	89 f0                	mov    %esi,%eax
    1ee6:	0f af c7             	imul   %edi,%eax
    1ee9:	c3                   	ret    
    1eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ef0 <func_mul_271(signed char, signed char)>:
    1ef0:	f3 0f 1e fa          	endbr64 
    1ef4:	89 f0                	mov    %esi,%eax
    1ef6:	0f af c7             	imul   %edi,%eax
    1ef9:	c3                   	ret    
    1efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f00 <func_mul_272(unsigned long, unsigned long)>:
    1f00:	f3 0f 1e fa          	endbr64 
    1f04:	48 89 f0             	mov    %rsi,%rax
    1f07:	48 0f af c7          	imul   %rdi,%rax
    1f0b:	c3                   	ret    
    1f0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001f10 <func_mul_273(unsigned int, unsigned int)>:
    1f10:	f3 0f 1e fa          	endbr64 
    1f14:	89 f0                	mov    %esi,%eax
    1f16:	0f af c7             	imul   %edi,%eax
    1f19:	c3                   	ret    
    1f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f20 <func_mul_274(unsigned short, unsigned short)>:
    1f20:	f3 0f 1e fa          	endbr64 
    1f24:	89 f0                	mov    %esi,%eax
    1f26:	0f af c7             	imul   %edi,%eax
    1f29:	c3                   	ret    
    1f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f30 <func_mul_275(unsigned char, unsigned char)>:
    1f30:	f3 0f 1e fa          	endbr64 
    1f34:	89 f0                	mov    %esi,%eax
    1f36:	0f af c7             	imul   %edi,%eax
    1f39:	c3                   	ret    
    1f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f40 <func_mul_276(unsigned long, unsigned long)>:
    1f40:	f3 0f 1e fa          	endbr64 
    1f44:	48 89 f8             	mov    %rdi,%rax
    1f47:	48 0f af c6          	imul   %rsi,%rax
    1f4b:	c3                   	ret    
    1f4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001f50 <func_mul_277(unsigned int, unsigned int)>:
    1f50:	f3 0f 1e fa          	endbr64 
    1f54:	89 f8                	mov    %edi,%eax
    1f56:	0f af c6             	imul   %esi,%eax
    1f59:	c3                   	ret    
    1f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f60 <func_mul_278(unsigned short, unsigned short)>:
    1f60:	f3 0f 1e fa          	endbr64 
    1f64:	89 f0                	mov    %esi,%eax
    1f66:	0f af c7             	imul   %edi,%eax
    1f69:	c3                   	ret    
    1f6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f70 <func_mul_279(unsigned char, unsigned char)>:
    1f70:	f3 0f 1e fa          	endbr64 
    1f74:	89 f0                	mov    %esi,%eax
    1f76:	0f af c7             	imul   %edi,%eax
    1f79:	c3                   	ret    
    1f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001f80 <func_bit_ornot_280(float, float)>:
    1f80:	f3 0f 1e fa          	endbr64 
    1f84:	c5 f9 7e c8          	vmovd  %xmm1,%eax
    1f88:	c5 f9 7e c2          	vmovd  %xmm0,%edx
    1f8c:	f7 d0                	not    %eax
    1f8e:	09 c2                	or     %eax,%edx
    1f90:	c5 f9 6e c2          	vmovd  %edx,%xmm0
    1f94:	c3                   	ret    
    1f95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1f9c:	00 00 00 00 

0000000000001fa0 <func_bit_ornot_281(double, double)>:
    1fa0:	f3 0f 1e fa          	endbr64 
    1fa4:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
    1fa9:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    1fae:	48 f7 d0             	not    %rax
    1fb1:	48 09 c2             	or     %rax,%rdx
    1fb4:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
    1fb9:	c3                   	ret    
    1fba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001fc0 <func_bit_ornot_282(long, long)>:
    1fc0:	f3 0f 1e fa          	endbr64 
    1fc4:	48 89 f0             	mov    %rsi,%rax
    1fc7:	48 f7 d0             	not    %rax
    1fca:	48 09 f8             	or     %rdi,%rax
    1fcd:	c3                   	ret    
    1fce:	66 90                	xchg   %ax,%ax

0000000000001fd0 <func_bit_ornot_283(int, int)>:
    1fd0:	f3 0f 1e fa          	endbr64 
    1fd4:	89 f0                	mov    %esi,%eax
    1fd6:	f7 d0                	not    %eax
    1fd8:	09 f8                	or     %edi,%eax
    1fda:	c3                   	ret    
    1fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001fe0 <func_bit_ornot_284(short, short)>:
    1fe0:	f3 0f 1e fa          	endbr64 
    1fe4:	89 f0                	mov    %esi,%eax
    1fe6:	f7 d0                	not    %eax
    1fe8:	09 f8                	or     %edi,%eax
    1fea:	c3                   	ret    
    1feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001ff0 <func_bit_ornot_285(signed char, signed char)>:
    1ff0:	f3 0f 1e fa          	endbr64 
    1ff4:	89 f0                	mov    %esi,%eax
    1ff6:	f7 d0                	not    %eax
    1ff8:	09 f8                	or     %edi,%eax
    1ffa:	c3                   	ret    
    1ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002000 <func_bit_ornot_286(unsigned long, unsigned long)>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 89 f0             	mov    %rsi,%rax
    2007:	48 f7 d0             	not    %rax
    200a:	48 09 f8             	or     %rdi,%rax
    200d:	c3                   	ret    
    200e:	66 90                	xchg   %ax,%ax

0000000000002010 <func_bit_ornot_287(unsigned int, unsigned int)>:
    2010:	f3 0f 1e fa          	endbr64 
    2014:	89 f0                	mov    %esi,%eax
    2016:	f7 d0                	not    %eax
    2018:	09 f8                	or     %edi,%eax
    201a:	c3                   	ret    
    201b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002020 <func_bit_ornot_288(unsigned short, unsigned short)>:
    2020:	f3 0f 1e fa          	endbr64 
    2024:	89 f0                	mov    %esi,%eax
    2026:	f7 d0                	not    %eax
    2028:	09 f8                	or     %edi,%eax
    202a:	c3                   	ret    
    202b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002030 <func_bit_ornot_289(unsigned char, unsigned char)>:
    2030:	f3 0f 1e fa          	endbr64 
    2034:	89 f0                	mov    %esi,%eax
    2036:	f7 d0                	not    %eax
    2038:	09 f8                	or     %edi,%eax
    203a:	c3                   	ret    
    203b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002040 <func_bit_ornot_290(unsigned long, unsigned long)>:
    2040:	f3 0f 1e fa          	endbr64 
    2044:	48 89 f0             	mov    %rsi,%rax
    2047:	48 f7 d0             	not    %rax
    204a:	48 09 f8             	or     %rdi,%rax
    204d:	c3                   	ret    
    204e:	66 90                	xchg   %ax,%ax

0000000000002050 <func_bit_ornot_291(unsigned int, unsigned int)>:
    2050:	f3 0f 1e fa          	endbr64 
    2054:	89 f0                	mov    %esi,%eax
    2056:	f7 d0                	not    %eax
    2058:	09 f8                	or     %edi,%eax
    205a:	c3                   	ret    
    205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002060 <func_bit_ornot_292(unsigned short, unsigned short)>:
    2060:	f3 0f 1e fa          	endbr64 
    2064:	89 f0                	mov    %esi,%eax
    2066:	f7 d0                	not    %eax
    2068:	09 f8                	or     %edi,%eax
    206a:	c3                   	ret    
    206b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002070 <func_bit_ornot_293(unsigned char, unsigned char)>:
    2070:	f3 0f 1e fa          	endbr64 
    2074:	89 f0                	mov    %esi,%eax
    2076:	f7 d0                	not    %eax
    2078:	09 f8                	or     %edi,%eax
    207a:	c3                   	ret    
    207b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002080 <func_dot_294(float, float)>:
    2080:	f3 0f 1e fa          	endbr64 
    2084:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
    2088:	c3                   	ret    
    2089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002090 <func_dot_295(double, double)>:
    2090:	f3 0f 1e fa          	endbr64 
    2094:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    2098:	c3                   	ret    
    2099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000020a0 <func_dot_296(long, long)>:
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	48 89 f8             	mov    %rdi,%rax
    20a7:	48 0f af c6          	imul   %rsi,%rax
    20ab:	c3                   	ret    
    20ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020b0 <func_dot_297(int, int)>:
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	89 f8                	mov    %edi,%eax
    20b6:	0f af c6             	imul   %esi,%eax
    20b9:	c3                   	ret    
    20ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000020c0 <func_dot_298(short, short)>:
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	89 f0                	mov    %esi,%eax
    20c6:	0f af c7             	imul   %edi,%eax
    20c9:	c3                   	ret    
    20ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000020d0 <func_dot_299(signed char, signed char)>:
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	89 f0                	mov    %esi,%eax
    20d6:	0f af c7             	imul   %edi,%eax
    20d9:	c3                   	ret    
    20da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000020e0 <func_dot_300(unsigned long, unsigned long)>:
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	48 89 f8             	mov    %rdi,%rax
    20e7:	48 0f af c6          	imul   %rsi,%rax
    20eb:	c3                   	ret    
    20ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020f0 <func_dot_301(unsigned int, unsigned int)>:
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	89 f8                	mov    %edi,%eax
    20f6:	0f af c6             	imul   %esi,%eax
    20f9:	c3                   	ret    
    20fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002100 <func_dot_302(unsigned short, unsigned short)>:
    2100:	f3 0f 1e fa          	endbr64 
    2104:	89 f0                	mov    %esi,%eax
    2106:	0f af c7             	imul   %edi,%eax
    2109:	c3                   	ret    
    210a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002110 <func_dot_303(unsigned char, unsigned char)>:
    2110:	f3 0f 1e fa          	endbr64 
    2114:	89 f0                	mov    %esi,%eax
    2116:	0f af c7             	imul   %edi,%eax
    2119:	c3                   	ret    
    211a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002120 <func_dot_304(unsigned long, unsigned long)>:
    2120:	f3 0f 1e fa          	endbr64 
    2124:	48 89 f8             	mov    %rdi,%rax
    2127:	48 0f af c6          	imul   %rsi,%rax
    212b:	c3                   	ret    
    212c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002130 <func_dot_305(unsigned int, unsigned int)>:
    2130:	f3 0f 1e fa          	endbr64 
    2134:	89 f8                	mov    %edi,%eax
    2136:	0f af c6             	imul   %esi,%eax
    2139:	c3                   	ret    
    213a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002140 <func_dot_306(unsigned short, unsigned short)>:
    2140:	f3 0f 1e fa          	endbr64 
    2144:	89 f0                	mov    %esi,%eax
    2146:	0f af c7             	imul   %edi,%eax
    2149:	c3                   	ret    
    214a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002150 <func_dot_307(unsigned char, unsigned char)>:
    2150:	f3 0f 1e fa          	endbr64 
    2154:	89 f0                	mov    %esi,%eax
    2156:	0f af c7             	imul   %edi,%eax
    2159:	c3                   	ret    
    215a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002160 <func_min_308(float, float)>:
    2160:	f3 0f 1e fa          	endbr64 
    2164:	c5 fa 5d c1          	vminss %xmm1,%xmm0,%xmm0
    2168:	c3                   	ret    
    2169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002170 <func_min_309(double, double)>:
    2170:	f3 0f 1e fa          	endbr64 
    2174:	c5 fb 5d c1          	vminsd %xmm1,%xmm0,%xmm0
    2178:	c3                   	ret    
    2179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002180 <func_min_310(long, long)>:
    2180:	f3 0f 1e fa          	endbr64 
    2184:	48 39 f7             	cmp    %rsi,%rdi
    2187:	48 89 f0             	mov    %rsi,%rax
    218a:	48 0f 4e c7          	cmovle %rdi,%rax
    218e:	c3                   	ret    
    218f:	90                   	nop

0000000000002190 <func_min_311(int, int)>:
    2190:	f3 0f 1e fa          	endbr64 
    2194:	39 f7                	cmp    %esi,%edi
    2196:	89 f0                	mov    %esi,%eax
    2198:	0f 4e c7             	cmovle %edi,%eax
    219b:	c3                   	ret    
    219c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000021a0 <func_min_312(short, short)>:
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	66 39 fe             	cmp    %di,%si
    21a7:	89 f8                	mov    %edi,%eax
    21a9:	0f 4e c6             	cmovle %esi,%eax
    21ac:	c3                   	ret    
    21ad:	0f 1f 00             	nopl   (%rax)

00000000000021b0 <func_min_313(signed char, signed char)>:
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	40 38 fe             	cmp    %dil,%sil
    21b7:	89 f8                	mov    %edi,%eax
    21b9:	0f 4e c6             	cmovle %esi,%eax
    21bc:	c3                   	ret    
    21bd:	0f 1f 00             	nopl   (%rax)

00000000000021c0 <func_min_314(unsigned long, unsigned long)>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	48 39 f7             	cmp    %rsi,%rdi
    21c7:	48 89 f0             	mov    %rsi,%rax
    21ca:	48 0f 46 c7          	cmovbe %rdi,%rax
    21ce:	c3                   	ret    
    21cf:	90                   	nop

00000000000021d0 <func_min_315(unsigned int, unsigned int)>:
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	39 f7                	cmp    %esi,%edi
    21d6:	89 f0                	mov    %esi,%eax
    21d8:	0f 46 c7             	cmovbe %edi,%eax
    21db:	c3                   	ret    
    21dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000021e0 <func_min_316(unsigned short, unsigned short)>:
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	66 39 fe             	cmp    %di,%si
    21e7:	89 f8                	mov    %edi,%eax
    21e9:	0f 46 c6             	cmovbe %esi,%eax
    21ec:	c3                   	ret    
    21ed:	0f 1f 00             	nopl   (%rax)

00000000000021f0 <func_min_317(unsigned char, unsigned char)>:
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	40 38 fe             	cmp    %dil,%sil
    21f7:	89 f8                	mov    %edi,%eax
    21f9:	0f 46 c6             	cmovbe %esi,%eax
    21fc:	c3                   	ret    
    21fd:	0f 1f 00             	nopl   (%rax)

0000000000002200 <func_min_318(unsigned long, unsigned long)>:
    2200:	f3 0f 1e fa          	endbr64 
    2204:	48 39 f7             	cmp    %rsi,%rdi
    2207:	48 89 f0             	mov    %rsi,%rax
    220a:	48 0f 46 c7          	cmovbe %rdi,%rax
    220e:	c3                   	ret    
    220f:	90                   	nop

0000000000002210 <func_min_319(unsigned int, unsigned int)>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	39 f7                	cmp    %esi,%edi
    2216:	89 f0                	mov    %esi,%eax
    2218:	0f 46 c7             	cmovbe %edi,%eax
    221b:	c3                   	ret    
    221c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002220 <func_min_320(unsigned short, unsigned short)>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	66 39 fe             	cmp    %di,%si
    2227:	89 f8                	mov    %edi,%eax
    2229:	0f 46 c6             	cmovbe %esi,%eax
    222c:	c3                   	ret    
    222d:	0f 1f 00             	nopl   (%rax)

0000000000002230 <func_min_321(unsigned char, unsigned char)>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	40 38 fe             	cmp    %dil,%sil
    2237:	89 f8                	mov    %edi,%eax
    2239:	0f 46 c6             	cmovbe %esi,%eax
    223c:	c3                   	ret    
    223d:	0f 1f 00             	nopl   (%rax)

0000000000002240 <func_bit_reverse_322(int)>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	89 f8                	mov    %edi,%eax
    2246:	d1 ef                	shr    %edi
    2248:	01 c0                	add    %eax,%eax
    224a:	81 e7 55 55 55 55    	and    $0x55555555,%edi
    2250:	25 aa aa aa aa       	and    $0xaaaaaaaa,%eax
    2255:	09 c7                	or     %eax,%edi
    2257:	89 fa                	mov    %edi,%edx
    2259:	c1 e7 02             	shl    $0x2,%edi
    225c:	c1 ea 02             	shr    $0x2,%edx
    225f:	81 e7 cc cc cc cc    	and    $0xcccccccc,%edi
    2265:	81 e2 33 33 33 33    	and    $0x33333333,%edx
    226b:	09 fa                	or     %edi,%edx
    226d:	89 d0                	mov    %edx,%eax
    226f:	c1 e2 04             	shl    $0x4,%edx
    2272:	c1 e8 04             	shr    $0x4,%eax
    2275:	81 e2 f0 f0 f0 f0    	and    $0xf0f0f0f0,%edx
    227b:	25 0f 0f 0f 0f       	and    $0xf0f0f0f,%eax
    2280:	09 d0                	or     %edx,%eax
    2282:	89 c2                	mov    %eax,%edx
    2284:	c1 e0 08             	shl    $0x8,%eax
    2287:	c1 ea 08             	shr    $0x8,%edx
    228a:	25 00 ff 00 ff       	and    $0xff00ff00,%eax
    228f:	81 e2 ff 00 ff 00    	and    $0xff00ff,%edx
    2295:	09 c2                	or     %eax,%edx
    2297:	89 d0                	mov    %edx,%eax
    2299:	c1 fa 10             	sar    $0x10,%edx
    229c:	c1 e0 10             	shl    $0x10,%eax
    229f:	09 d0                	or     %edx,%eax
    22a1:	c3                   	ret    
