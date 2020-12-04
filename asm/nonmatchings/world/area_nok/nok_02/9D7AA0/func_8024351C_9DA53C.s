.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024351C_9DA53C
/* 9DA53C 8024351C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 9DA540 80243520 AFB50024 */  sw        $s5, 0x24($sp)
/* 9DA544 80243524 0080A82D */  daddu     $s5, $a0, $zero
/* 9DA548 80243528 AFB40020 */  sw        $s4, 0x20($sp)
/* 9DA54C 8024352C 3C148011 */  lui       $s4, %hi(gPlayerStatus)
/* 9DA550 80243530 2694EFC8 */  addiu     $s4, $s4, %lo(gPlayerStatus)
/* 9DA554 80243534 AFB10014 */  sw        $s1, 0x14($sp)
/* 9DA558 80243538 24112710 */  addiu     $s1, $zero, 0x2710
/* 9DA55C 8024353C AFB3001C */  sw        $s3, 0x1c($sp)
/* 9DA560 80243540 3C1351EB */  lui       $s3, 0x51eb
/* 9DA564 80243544 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 9DA568 80243548 3C01C316 */  lui       $at, 0xc316
/* 9DA56C 8024354C 4481E000 */  mtc1      $at, $f28
/* 9DA570 80243550 AFBF0028 */  sw        $ra, 0x28($sp)
/* 9DA574 80243554 AFB20018 */  sw        $s2, 0x18($sp)
/* 9DA578 80243558 AFB00010 */  sw        $s0, 0x10($sp)
/* 9DA57C 8024355C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 9DA580 80243560 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 9DA584 80243564 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 9DA588 80243568 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 9DA58C 8024356C 8EA2000C */  lw        $v0, 0xc($s5)
/* 9DA590 80243570 3C01437A */  lui       $at, 0x437a
/* 9DA594 80243574 4481D000 */  mtc1      $at, $f26
/* 9DA598 80243578 8C450000 */  lw        $a1, ($v0)
/* 9DA59C 8024357C 3C0146AF */  lui       $at, 0x46af
/* 9DA5A0 80243580 3421C800 */  ori       $at, $at, 0xc800
/* 9DA5A4 80243584 4481C000 */  mtc1      $at, $f24
/* 9DA5A8 80243588 0C0B1EAF */  jal       get_variable
/* 9DA5AC 8024358C 3673851F */   ori      $s3, $s3, 0x851f
/* 9DA5B0 80243590 0040902D */  daddu     $s2, $v0, $zero
.L80243594:
/* 9DA5B4 80243594 0C00A67F */  jal       rand_int
/* 9DA5B8 80243598 0220202D */   daddu    $a0, $s1, $zero
/* 9DA5BC 8024359C 001187C2 */  srl       $s0, $s1, 0x1f
/* 9DA5C0 802435A0 02308021 */  addu      $s0, $s1, $s0
/* 9DA5C4 802435A4 00108043 */  sra       $s0, $s0, 1
/* 9DA5C8 802435A8 00501023 */  subu      $v0, $v0, $s0
/* 9DA5CC 802435AC 00530018 */  mult      $v0, $s3
/* 9DA5D0 802435B0 0220202D */  daddu     $a0, $s1, $zero
/* 9DA5D4 802435B4 000217C3 */  sra       $v0, $v0, 0x1f
/* 9DA5D8 802435B8 C6420038 */  lwc1      $f2, 0x38($s2)
/* 9DA5DC 802435BC 00003010 */  mfhi      $a2
/* 9DA5E0 802435C0 00061943 */  sra       $v1, $a2, 5
/* 9DA5E4 802435C4 00621823 */  subu      $v1, $v1, $v0
/* 9DA5E8 802435C8 44830000 */  mtc1      $v1, $f0
/* 9DA5EC 802435CC 00000000 */  nop       
/* 9DA5F0 802435D0 46800020 */  cvt.s.w   $f0, $f0
/* 9DA5F4 802435D4 0C00A67F */  jal       rand_int
/* 9DA5F8 802435D8 46020580 */   add.s    $f22, $f0, $f2
/* 9DA5FC 802435DC 00501023 */  subu      $v0, $v0, $s0
/* 9DA600 802435E0 00530018 */  mult      $v0, $s3
/* 9DA604 802435E4 461CB081 */  sub.s     $f2, $f22, $f28
/* 9DA608 802435E8 00003010 */  mfhi      $a2
/* 9DA60C 802435EC 000217C3 */  sra       $v0, $v0, 0x1f
/* 9DA610 802435F0 46021102 */  mul.s     $f4, $f2, $f2
/* 9DA614 802435F4 00000000 */  nop       
/* 9DA618 802435F8 00061943 */  sra       $v1, $a2, 5
/* 9DA61C 802435FC 00621823 */  subu      $v1, $v1, $v0
/* 9DA620 80243600 C6420040 */  lwc1      $f2, 0x40($s2)
/* 9DA624 80243604 44830000 */  mtc1      $v1, $f0
/* 9DA628 80243608 00000000 */  nop       
/* 9DA62C 8024360C 46800020 */  cvt.s.w   $f0, $f0
/* 9DA630 80243610 46020500 */  add.s     $f20, $f0, $f2
/* 9DA634 80243614 461AA001 */  sub.s     $f0, $f20, $f26
/* 9DA638 80243618 46000002 */  mul.s     $f0, $f0, $f0
/* 9DA63C 8024361C 00000000 */  nop       
/* 9DA640 80243620 46002100 */  add.s     $f4, $f4, $f0
/* 9DA644 80243624 4618203C */  c.lt.s    $f4, $f24
/* 9DA648 80243628 00000000 */  nop       
/* 9DA64C 8024362C 45000011 */  bc1f      .L80243674
/* 9DA650 80243630 26311388 */   addiu    $s1, $s1, 0x1388
/* 9DA654 80243634 C6800028 */  lwc1      $f0, 0x28($s4)
/* 9DA658 80243638 4600B081 */  sub.s     $f2, $f22, $f0
/* 9DA65C 8024363C 46021082 */  mul.s     $f2, $f2, $f2
/* 9DA660 80243640 00000000 */  nop       
/* 9DA664 80243644 C6800030 */  lwc1      $f0, 0x30($s4)
/* 9DA668 80243648 4600A001 */  sub.s     $f0, $f20, $f0
/* 9DA66C 8024364C 46000002 */  mul.s     $f0, $f0, $f0
/* 9DA670 80243650 00000000 */  nop       
/* 9DA674 80243654 46001080 */  add.s     $f2, $f2, $f0
/* 9DA678 80243658 3C0145C8 */  lui       $at, 0x45c8
/* 9DA67C 8024365C 44810000 */  mtc1      $at, $f0
/* 9DA680 80243660 00000000 */  nop       
/* 9DA684 80243664 4602003C */  c.lt.s    $f0, $f2
/* 9DA688 80243668 00000000 */  nop       
/* 9DA68C 8024366C 45010006 */  bc1t      .L80243688
/* 9DA690 80243670 00000000 */   nop      
.L80243674:
/* 9DA694 80243674 2A227531 */  slti      $v0, $s1, 0x7531
/* 9DA698 80243678 5040FFC6 */  beql      $v0, $zero, .L80243594
/* 9DA69C 8024367C 24117530 */   addiu    $s1, $zero, 0x7530
/* 9DA6A0 80243680 08090D65 */  j         .L80243594
/* 9DA6A4 80243684 00000000 */   nop      
.L80243688:
/* 9DA6A8 80243688 C6400038 */  lwc1      $f0, 0x38($s2)
/* 9DA6AC 8024368C 4600B081 */  sub.s     $f2, $f22, $f0
/* 9DA6B0 80243690 46021082 */  mul.s     $f2, $f2, $f2
/* 9DA6B4 80243694 00000000 */  nop       
/* 9DA6B8 80243698 C6400040 */  lwc1      $f0, 0x40($s2)
/* 9DA6BC 8024369C 4600A001 */  sub.s     $f0, $f20, $f0
/* 9DA6C0 802436A0 46000002 */  mul.s     $f0, $f0, $f0
/* 9DA6C4 802436A4 00000000 */  nop       
/* 9DA6C8 802436A8 46001300 */  add.s     $f12, $f2, $f0
/* 9DA6CC 802436AC 44800000 */  mtc1      $zero, $f0
/* 9DA6D0 802436B0 00000000 */  nop       
/* 9DA6D4 802436B4 46006032 */  c.eq.s    $f12, $f0
/* 9DA6D8 802436B8 00000000 */  nop       
/* 9DA6DC 802436BC 4501000D */  bc1t      .L802436F4
/* 9DA6E0 802436C0 00000000 */   nop      
/* 9DA6E4 802436C4 46006104 */  sqrt.s    $f4, $f12
/* 9DA6E8 802436C8 46042032 */  c.eq.s    $f4, $f4
/* 9DA6EC 802436CC 00000000 */  nop       
/* 9DA6F0 802436D0 45010004 */  bc1t      .L802436E4
/* 9DA6F4 802436D4 00000000 */   nop      
/* 9DA6F8 802436D8 0C0187BC */  jal       sqrtf
/* 9DA6FC 802436DC 00000000 */   nop      
/* 9DA700 802436E0 46000106 */  mov.s     $f4, $f0
.L802436E4:
/* 9DA704 802436E4 3C014120 */  lui       $at, 0x4120
/* 9DA708 802436E8 44810000 */  mtc1      $at, $f0
/* 9DA70C 802436EC 00000000 */  nop       
/* 9DA710 802436F0 46002303 */  div.s     $f12, $f4, $f0
.L802436F4:
/* 9DA714 802436F4 4600B18D */  trunc.w.s $f6, $f22
/* 9DA718 802436F8 E6A600AC */  swc1      $f6, 0xac($s5)
/* 9DA71C 802436FC 4600A18D */  trunc.w.s $f6, $f20
/* 9DA720 80243700 E6A600B0 */  swc1      $f6, 0xb0($s5)
/* 9DA724 80243704 4600618D */  trunc.w.s $f6, $f12
/* 9DA728 80243708 44023000 */  mfc1      $v0, $f6
/* 9DA72C 8024370C 00000000 */  nop       
/* 9DA730 80243710 24420001 */  addiu     $v0, $v0, 1
/* 9DA734 80243714 AEA200B4 */  sw        $v0, 0xb4($s5)
/* 9DA738 80243718 8FBF0028 */  lw        $ra, 0x28($sp)
/* 9DA73C 8024371C 8FB50024 */  lw        $s5, 0x24($sp)
/* 9DA740 80243720 8FB40020 */  lw        $s4, 0x20($sp)
/* 9DA744 80243724 8FB3001C */  lw        $s3, 0x1c($sp)
/* 9DA748 80243728 8FB20018 */  lw        $s2, 0x18($sp)
/* 9DA74C 8024372C 8FB10014 */  lw        $s1, 0x14($sp)
/* 9DA750 80243730 8FB00010 */  lw        $s0, 0x10($sp)
/* 9DA754 80243734 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 9DA758 80243738 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 9DA75C 8024373C D7B80040 */  ldc1      $f24, 0x40($sp)
/* 9DA760 80243740 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 9DA764 80243744 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 9DA768 80243748 24020002 */  addiu     $v0, $zero, 2
/* 9DA76C 8024374C 03E00008 */  jr        $ra
/* 9DA770 80243750 27BD0058 */   addiu    $sp, $sp, 0x58
