.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C94_9B7614
/* 9B7614 80240C94 27BDFF80 */  addiu     $sp, $sp, -0x80
/* 9B7618 80240C98 AFB3004C */  sw        $s3, 0x4c($sp)
/* 9B761C 80240C9C 0080982D */  daddu     $s3, $a0, $zero
/* 9B7620 80240CA0 AFBF0058 */  sw        $ra, 0x58($sp)
/* 9B7624 80240CA4 AFB50054 */  sw        $s5, 0x54($sp)
/* 9B7628 80240CA8 AFB40050 */  sw        $s4, 0x50($sp)
/* 9B762C 80240CAC AFB20048 */  sw        $s2, 0x48($sp)
/* 9B7630 80240CB0 AFB10044 */  sw        $s1, 0x44($sp)
/* 9B7634 80240CB4 AFB00040 */  sw        $s0, 0x40($sp)
/* 9B7638 80240CB8 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* 9B763C 80240CBC F7B80070 */  sdc1      $f24, 0x70($sp)
/* 9B7640 80240CC0 F7B60068 */  sdc1      $f22, 0x68($sp)
/* 9B7644 80240CC4 F7B40060 */  sdc1      $f20, 0x60($sp)
/* 9B7648 80240CC8 8E710148 */  lw        $s1, 0x148($s3)
/* 9B764C 80240CCC 00A0902D */  daddu     $s2, $a1, $zero
/* 9B7650 80240CD0 86240008 */  lh        $a0, 8($s1)
/* 9B7654 80240CD4 0C00EABB */  jal       get_npc_unsafe
/* 9B7658 80240CD8 00C0A82D */   daddu    $s5, $a2, $zero
/* 9B765C 80240CDC 0040802D */  daddu     $s0, $v0, $zero
/* 9B7660 80240CE0 0000A02D */  daddu     $s4, $zero, $zero
/* 9B7664 80240CE4 C624007C */  lwc1      $f4, 0x7c($s1)
/* 9B7668 80240CE8 46802120 */  cvt.s.w   $f4, $f4
/* 9B766C 80240CEC C6220088 */  lwc1      $f2, 0x88($s1)
/* 9B7670 80240CF0 468010A0 */  cvt.s.w   $f2, $f2
/* 9B7674 80240CF4 460010A1 */  cvt.d.s   $f2, $f2
/* 9B7678 80240CF8 46002121 */  cvt.d.s   $f4, $f4
/* 9B767C 80240CFC C600003C */  lwc1      $f0, 0x3c($s0)
/* 9B7680 80240D00 3C014059 */  lui       $at, 0x4059
/* 9B7684 80240D04 44813800 */  mtc1      $at, $f7
/* 9B7688 80240D08 44803000 */  mtc1      $zero, $f6
/* 9B768C 80240D0C 46000021 */  cvt.d.s   $f0, $f0
/* 9B7690 80240D10 46260002 */  mul.d     $f0, $f0, $f6
/* 9B7694 80240D14 00000000 */  nop       
/* 9B7698 80240D18 24020001 */  addiu     $v0, $zero, 1
/* 9B769C 80240D1C 8E24006C */  lw        $a0, 0x6c($s1)
/* 9B76A0 80240D20 46261083 */  div.d     $f2, $f2, $f6
/* 9B76A4 80240D24 462010A0 */  cvt.s.d   $f2, $f2
/* 9B76A8 80240D28 46262103 */  div.d     $f4, $f4, $f6
/* 9B76AC 80240D2C 46202520 */  cvt.s.d   $f20, $f4
/* 9B76B0 80240D30 30830011 */  andi      $v1, $a0, 0x11
/* 9B76B4 80240D34 4620020D */  trunc.w.d $f8, $f0
/* 9B76B8 80240D38 E628007C */  swc1      $f8, 0x7c($s1)
/* 9B76BC 80240D3C C6200078 */  lwc1      $f0, 0x78($s1)
/* 9B76C0 80240D40 46800020 */  cvt.s.w   $f0, $f0
/* 9B76C4 80240D44 46000021 */  cvt.d.s   $f0, $f0
/* 9B76C8 80240D48 46260003 */  div.d     $f0, $f0, $f6
/* 9B76CC 80240D4C 462006A0 */  cvt.s.d   $f26, $f0
/* 9B76D0 80240D50 C6200070 */  lwc1      $f0, 0x70($s1)
/* 9B76D4 80240D54 46800020 */  cvt.s.w   $f0, $f0
/* 9B76D8 80240D58 46000021 */  cvt.d.s   $f0, $f0
/* 9B76DC 80240D5C 46260003 */  div.d     $f0, $f0, $f6
/* 9B76E0 80240D60 462005A0 */  cvt.s.d   $f22, $f0
/* 9B76E4 80240D64 14620025 */  bne       $v1, $v0, .L80240DFC
/* 9B76E8 80240D68 4602D600 */   add.s    $f24, $f26, $f2
/* 9B76EC 80240D6C 8E020000 */  lw        $v0, ($s0)
/* 9B76F0 80240D70 30420008 */  andi      $v0, $v0, 8
/* 9B76F4 80240D74 10400009 */  beqz      $v0, .L80240D9C
/* 9B76F8 80240D78 27A50028 */   addiu    $a1, $sp, 0x28
/* 9B76FC 80240D7C C600003C */  lwc1      $f0, 0x3c($s0)
/* 9B7700 80240D80 4600C001 */  sub.s     $f0, $f24, $f0
/* 9B7704 80240D84 4600B03C */  c.lt.s    $f22, $f0
/* 9B7708 80240D88 00000000 */  nop       
/* 9B770C 80240D8C 4500001B */  bc1f      .L80240DFC
/* 9B7710 80240D90 34820010 */   ori      $v0, $a0, 0x10
/* 9B7714 80240D94 0809037F */  j         .L80240DFC
/* 9B7718 80240D98 AE22006C */   sw       $v0, 0x6c($s1)
.L80240D9C:
/* 9B771C 80240D9C 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9B7720 80240DA0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9B7724 80240DA4 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9B7728 80240DA8 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9B772C 80240DAC 3C01447A */  lui       $at, 0x447a
/* 9B7730 80240DB0 44813000 */  mtc1      $at, $f6
/* 9B7734 80240DB4 27A20034 */  addiu     $v0, $sp, 0x34
/* 9B7738 80240DB8 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9B773C 80240DBC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9B7740 80240DC0 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9B7744 80240DC4 E7A60034 */  swc1      $f6, 0x34($sp)
/* 9B7748 80240DC8 AFA20010 */  sw        $v0, 0x10($sp)
/* 9B774C 80240DCC 8E040080 */  lw        $a0, 0x80($s0)
/* 9B7750 80240DD0 0C0372DF */  jal       func_800DCB7C
/* 9B7754 80240DD4 27A70030 */   addiu    $a3, $sp, 0x30
/* 9B7758 80240DD8 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 9B775C 80240DDC 4600D001 */  sub.s     $f0, $f26, $f0
/* 9B7760 80240DE0 4600B03C */  c.lt.s    $f22, $f0
/* 9B7764 80240DE4 00000000 */  nop       
/* 9B7768 80240DE8 45000004 */  bc1f      .L80240DFC
/* 9B776C 80240DEC 00000000 */   nop      
/* 9B7770 80240DF0 8E22006C */  lw        $v0, 0x6c($s1)
/* 9B7774 80240DF4 34420010 */  ori       $v0, $v0, 0x10
/* 9B7778 80240DF8 AE22006C */  sw        $v0, 0x6c($s1)
.L80240DFC:
/* 9B777C 80240DFC 8E22006C */  lw        $v0, 0x6c($s1)
/* 9B7780 80240E00 24030011 */  addiu     $v1, $zero, 0x11
/* 9B7784 80240E04 30420011 */  andi      $v0, $v0, 0x11
/* 9B7788 80240E08 14430039 */  bne       $v0, $v1, .L80240EF0
/* 9B778C 80240E0C 00000000 */   nop      
/* 9B7790 80240E10 8E020000 */  lw        $v0, ($s0)
/* 9B7794 80240E14 30420008 */  andi      $v0, $v0, 8
/* 9B7798 80240E18 1040000A */  beqz      $v0, .L80240E44
/* 9B779C 80240E1C 4600C106 */   mov.s    $f4, $f24
/* 9B77A0 80240E20 4614C081 */  sub.s     $f2, $f24, $f20
/* 9B77A4 80240E24 3C018024 */  lui       $at, %hi(D_80244888)
/* 9B77A8 80240E28 D4204888 */  ldc1      $f0, %lo(D_80244888)($at)
/* 9B77AC 80240E2C 460010A1 */  cvt.d.s   $f2, $f2
/* 9B77B0 80240E30 46201082 */  mul.d     $f2, $f2, $f0
/* 9B77B4 80240E34 00000000 */  nop       
/* 9B77B8 80240E38 4600A021 */  cvt.d.s   $f0, $f20
/* 9B77BC 80240E3C 080903AA */  j         .L80240EA8
/* 9B77C0 80240E40 46220000 */   add.d    $f0, $f0, $f2
.L80240E44:
/* 9B77C4 80240E44 27A50028 */  addiu     $a1, $sp, 0x28
/* 9B77C8 80240E48 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9B77CC 80240E4C C6000038 */  lwc1      $f0, 0x38($s0)
/* 9B77D0 80240E50 C6020040 */  lwc1      $f2, 0x40($s0)
/* 9B77D4 80240E54 3C01447A */  lui       $at, 0x447a
/* 9B77D8 80240E58 44812000 */  mtc1      $at, $f4
/* 9B77DC 80240E5C 27A20034 */  addiu     $v0, $sp, 0x34
/* 9B77E0 80240E60 E7B4002C */  swc1      $f20, 0x2c($sp)
/* 9B77E4 80240E64 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9B77E8 80240E68 E7A20030 */  swc1      $f2, 0x30($sp)
/* 9B77EC 80240E6C E7A40034 */  swc1      $f4, 0x34($sp)
/* 9B77F0 80240E70 AFA20010 */  sw        $v0, 0x10($sp)
/* 9B77F4 80240E74 8E040080 */  lw        $a0, 0x80($s0)
/* 9B77F8 80240E78 0C0372DF */  jal       func_800DCB7C
/* 9B77FC 80240E7C 27A70030 */   addiu    $a3, $sp, 0x30
/* 9B7800 80240E80 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* 9B7804 80240E84 461A2100 */  add.s     $f4, $f4, $f26
/* 9B7808 80240E88 46142081 */  sub.s     $f2, $f4, $f20
/* 9B780C 80240E8C 3C018024 */  lui       $at, %hi(D_80244890)
/* 9B7810 80240E90 D4204890 */  ldc1      $f0, %lo(D_80244890)($at)
/* 9B7814 80240E94 460010A1 */  cvt.d.s   $f2, $f2
/* 9B7818 80240E98 46201082 */  mul.d     $f2, $f2, $f0
/* 9B781C 80240E9C 00000000 */  nop       
/* 9B7820 80240EA0 4600A021 */  cvt.d.s   $f0, $f20
/* 9B7824 80240EA4 46220000 */  add.d     $f0, $f0, $f2
.L80240EA8:
/* 9B7828 80240EA8 46200020 */  cvt.s.d   $f0, $f0
/* 9B782C 80240EAC E600003C */  swc1      $f0, 0x3c($s0)
/* 9B7830 80240EB0 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9B7834 80240EB4 46002001 */  sub.s     $f0, $f4, $f0
/* 9B7838 80240EB8 3C013FF0 */  lui       $at, 0x3ff0
/* 9B783C 80240EBC 44811800 */  mtc1      $at, $f3
/* 9B7840 80240EC0 44801000 */  mtc1      $zero, $f2
/* 9B7844 80240EC4 46000005 */  abs.s     $f0, $f0
/* 9B7848 80240EC8 46000021 */  cvt.d.s   $f0, $f0
/* 9B784C 80240ECC 4622003C */  c.lt.d    $f0, $f2
/* 9B7850 80240ED0 00000000 */  nop       
/* 9B7854 80240ED4 45000036 */  bc1f      .L80240FB0
/* 9B7858 80240ED8 2403FFEF */   addiu    $v1, $zero, -0x11
/* 9B785C 80240EDC E604003C */  swc1      $f4, 0x3c($s0)
/* 9B7860 80240EE0 8E22006C */  lw        $v0, 0x6c($s1)
/* 9B7864 80240EE4 00431024 */  and       $v0, $v0, $v1
/* 9B7868 80240EE8 080903EC */  j         .L80240FB0
/* 9B786C 80240EEC AE22006C */   sw       $v0, 0x6c($s1)
.L80240EF0:
/* 9B7870 80240EF0 8E220070 */  lw        $v0, 0x70($s1)
/* 9B7874 80240EF4 1840002E */  blez      $v0, .L80240FB0
/* 9B7878 80240EF8 00000000 */   nop      
/* 9B787C 80240EFC C62C0074 */  lwc1      $f12, 0x74($s1)
/* 9B7880 80240F00 0C00A8BB */  jal       sin_deg
/* 9B7884 80240F04 46806320 */   cvt.s.w  $f12, $f12
/* 9B7888 80240F08 8E020000 */  lw        $v0, ($s0)
/* 9B788C 80240F0C 30420008 */  andi      $v0, $v0, 8
/* 9B7890 80240F10 10400003 */  beqz      $v0, .L80240F20
/* 9B7894 80240F14 46000506 */   mov.s    $f20, $f0
/* 9B7898 80240F18 080903D8 */  j         .L80240F60
/* 9B789C 80240F1C 0000102D */   daddu    $v0, $zero, $zero
.L80240F20:
/* 9B78A0 80240F20 27A50028 */  addiu     $a1, $sp, 0x28
/* 9B78A4 80240F24 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9B78A8 80240F28 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9B78AC 80240F2C C602003C */  lwc1      $f2, 0x3c($s0)
/* 9B78B0 80240F30 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9B78B4 80240F34 3C01447A */  lui       $at, 0x447a
/* 9B78B8 80240F38 44813000 */  mtc1      $at, $f6
/* 9B78BC 80240F3C 27A20034 */  addiu     $v0, $sp, 0x34
/* 9B78C0 80240F40 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9B78C4 80240F44 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9B78C8 80240F48 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9B78CC 80240F4C E7A60034 */  swc1      $f6, 0x34($sp)
/* 9B78D0 80240F50 AFA20010 */  sw        $v0, 0x10($sp)
/* 9B78D4 80240F54 8E040080 */  lw        $a0, 0x80($s0)
/* 9B78D8 80240F58 0C0372DF */  jal       func_800DCB7C
/* 9B78DC 80240F5C 27A70030 */   addiu    $a3, $sp, 0x30
.L80240F60:
/* 9B78E0 80240F60 10400007 */  beqz      $v0, .L80240F80
/* 9B78E4 80240F64 00000000 */   nop      
/* 9B78E8 80240F68 4616A082 */  mul.s     $f2, $f20, $f22
/* 9B78EC 80240F6C 00000000 */  nop       
/* 9B78F0 80240F70 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 9B78F4 80240F74 461A0000 */  add.s     $f0, $f0, $f26
/* 9B78F8 80240F78 080903E3 */  j         .L80240F8C
/* 9B78FC 80240F7C 46020000 */   add.s    $f0, $f0, $f2
.L80240F80:
/* 9B7900 80240F80 4616A002 */  mul.s     $f0, $f20, $f22
/* 9B7904 80240F84 00000000 */  nop       
/* 9B7908 80240F88 4600C000 */  add.s     $f0, $f24, $f0
.L80240F8C:
/* 9B790C 80240F8C E600003C */  swc1      $f0, 0x3c($s0)
/* 9B7910 80240F90 8E220074 */  lw        $v0, 0x74($s1)
/* 9B7914 80240F94 2442000A */  addiu     $v0, $v0, 0xa
/* 9B7918 80240F98 44826000 */  mtc1      $v0, $f12
/* 9B791C 80240F9C 00000000 */  nop       
/* 9B7920 80240FA0 0C00A6C9 */  jal       clamp_angle
/* 9B7924 80240FA4 46806320 */   cvt.s.w  $f12, $f12
/* 9B7928 80240FA8 4600020D */  trunc.w.s $f8, $f0
/* 9B792C 80240FAC E6280074 */  swc1      $f8, 0x74($s1)
.L80240FB0:
/* 9B7930 80240FB0 8E220090 */  lw        $v0, 0x90($s1)
/* 9B7934 80240FB4 1C40004A */  bgtz      $v0, .L802410E0
/* 9B7938 80240FB8 2442FFFF */   addiu    $v0, $v0, -1
/* 9B793C 80240FBC 8E430014 */  lw        $v1, 0x14($s2)
/* 9B7940 80240FC0 04600048 */  bltz      $v1, .L802410E4
/* 9B7944 80240FC4 00000000 */   nop      
/* 9B7948 80240FC8 8E620074 */  lw        $v0, 0x74($s3)
/* 9B794C 80240FCC 1C400042 */  bgtz      $v0, .L802410D8
/* 9B7950 80240FD0 2442FFFF */   addiu    $v0, $v0, -1
/* 9B7954 80240FD4 AE630074 */  sw        $v1, 0x74($s3)
/* 9B7958 80240FD8 860200A8 */  lh        $v0, 0xa8($s0)
/* 9B795C 80240FDC C602003C */  lwc1      $f2, 0x3c($s0)
/* 9B7960 80240FE0 44820000 */  mtc1      $v0, $f0
/* 9B7964 80240FE4 00000000 */  nop       
/* 9B7968 80240FE8 46800020 */  cvt.s.w   $f0, $f0
/* 9B796C 80240FEC 46001080 */  add.s     $f2, $f2, $f0
/* 9B7970 80240FF0 3C014024 */  lui       $at, 0x4024
/* 9B7974 80240FF4 44810800 */  mtc1      $at, $f1
/* 9B7978 80240FF8 44800000 */  mtc1      $zero, $f0
/* 9B797C 80240FFC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9B7980 80241000 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9B7984 80241004 460010A1 */  cvt.d.s   $f2, $f2
/* 9B7988 80241008 46201080 */  add.d     $f2, $f2, $f0
/* 9B798C 8024100C C440002C */  lwc1      $f0, 0x2c($v0)
/* 9B7990 80241010 46000021 */  cvt.d.s   $f0, $f0
/* 9B7994 80241014 4622003C */  c.lt.d    $f0, $f2
/* 9B7998 80241018 00000000 */  nop       
/* 9B799C 8024101C 4500002C */  bc1f      .L802410D0
/* 9B79A0 80241020 02A0202D */   daddu    $a0, $s5, $zero
/* 9B79A4 80241024 AFA00010 */  sw        $zero, 0x10($sp)
/* 9B79A8 80241028 8E46000C */  lw        $a2, 0xc($s2)
/* 9B79AC 8024102C 8E470010 */  lw        $a3, 0x10($s2)
/* 9B79B0 80241030 0C01242D */  jal       func_800490B4
/* 9B79B4 80241034 0220282D */   daddu    $a1, $s1, $zero
/* 9B79B8 80241038 10400025 */  beqz      $v0, .L802410D0
/* 9B79BC 8024103C 0000202D */   daddu    $a0, $zero, $zero
/* 9B79C0 80241040 0200282D */  daddu     $a1, $s0, $zero
/* 9B79C4 80241044 0000302D */  daddu     $a2, $zero, $zero
/* 9B79C8 80241048 2412000C */  addiu     $s2, $zero, 0xc
/* 9B79CC 8024104C 860300A8 */  lh        $v1, 0xa8($s0)
/* 9B79D0 80241050 3C013F80 */  lui       $at, 0x3f80
/* 9B79D4 80241054 44810000 */  mtc1      $at, $f0
/* 9B79D8 80241058 3C014000 */  lui       $at, 0x4000
/* 9B79DC 8024105C 44811000 */  mtc1      $at, $f2
/* 9B79E0 80241060 3C01C1A0 */  lui       $at, 0xc1a0
/* 9B79E4 80241064 44812000 */  mtc1      $at, $f4
/* 9B79E8 80241068 44834000 */  mtc1      $v1, $f8
/* 9B79EC 8024106C 00000000 */  nop       
/* 9B79F0 80241070 46804220 */  cvt.s.w   $f8, $f8
/* 9B79F4 80241074 44074000 */  mfc1      $a3, $f8
/* 9B79F8 80241078 27A20038 */  addiu     $v0, $sp, 0x38
/* 9B79FC 8024107C AFB2001C */  sw        $s2, 0x1c($sp)
/* 9B7A00 80241080 AFA20020 */  sw        $v0, 0x20($sp)
/* 9B7A04 80241084 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9B7A08 80241088 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9B7A0C 8024108C 0C01BFA4 */  jal       fx_emote
/* 9B7A10 80241090 E7A40018 */   swc1     $f4, 0x18($sp)
/* 9B7A14 80241094 0200202D */  daddu     $a0, $s0, $zero
/* 9B7A18 80241098 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9B7A1C 8024109C C480003C */  lwc1      $f0, 0x3c($a0)
/* 9B7A20 802410A0 3C060020 */  lui       $a2, 0x20
/* 9B7A24 802410A4 0C012530 */  jal       func_800494C0
/* 9B7A28 802410A8 E4800064 */   swc1     $f0, 0x64($a0)
/* 9B7A2C 802410AC 8E220018 */  lw        $v0, 0x18($s1)
/* 9B7A30 802410B0 9442002A */  lhu       $v0, 0x2a($v0)
/* 9B7A34 802410B4 30420001 */  andi      $v0, $v0, 1
/* 9B7A38 802410B8 10400003 */  beqz      $v0, .L802410C8
/* 9B7A3C 802410BC 2402000A */   addiu    $v0, $zero, 0xa
/* 9B7A40 802410C0 080904A2 */  j         .L80241288
/* 9B7A44 802410C4 AE620070 */   sw       $v0, 0x70($s3)
.L802410C8:
/* 9B7A48 802410C8 080904A2 */  j         .L80241288
/* 9B7A4C 802410CC AE720070 */   sw       $s2, 0x70($s3)
.L802410D0:
/* 9B7A50 802410D0 8E620074 */  lw        $v0, 0x74($s3)
/* 9B7A54 802410D4 2442FFFF */  addiu     $v0, $v0, -1
.L802410D8:
/* 9B7A58 802410D8 08090439 */  j         .L802410E4
/* 9B7A5C 802410DC AE620074 */   sw       $v0, 0x74($s3)
.L802410E0:
/* 9B7A60 802410E0 AE220090 */  sw        $v0, 0x90($s1)
.L802410E4:
/* 9B7A64 802410E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9B7A68 802410E8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9B7A6C 802410EC C4620000 */  lwc1      $f2, ($v1)
/* 9B7A70 802410F0 468010A0 */  cvt.s.w   $f2, $f2
/* 9B7A74 802410F4 C4640008 */  lwc1      $f4, 8($v1)
/* 9B7A78 802410F8 46802120 */  cvt.s.w   $f4, $f4
/* 9B7A7C 802410FC E7A00010 */  swc1      $f0, 0x10($sp)
/* 9B7A80 80241100 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B7A84 80241104 44051000 */  mfc1      $a1, $f2
/* 9B7A88 80241108 C440000C */  lwc1      $f0, 0xc($v0)
/* 9B7A8C 8024110C 46800020 */  cvt.s.w   $f0, $f0
/* 9B7A90 80241110 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9B7A94 80241114 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B7A98 80241118 44062000 */  mfc1      $a2, $f4
/* 9B7A9C 8024111C C4400010 */  lwc1      $f0, 0x10($v0)
/* 9B7AA0 80241120 46800020 */  cvt.s.w   $f0, $f0
/* 9B7AA4 80241124 E7A00018 */  swc1      $f0, 0x18($sp)
/* 9B7AA8 80241128 8C640018 */  lw        $a0, 0x18($v1)
/* 9B7AAC 8024112C 0C0123F5 */  jal       is_point_within_region
/* 9B7AB0 80241130 8E070038 */   lw       $a3, 0x38($s0)
/* 9B7AB4 80241134 1040001A */  beqz      $v0, .L802411A0
/* 9B7AB8 80241138 00000000 */   nop      
/* 9B7ABC 8024113C 8E060038 */  lw        $a2, 0x38($s0)
/* 9B7AC0 80241140 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B7AC4 80241144 8E070040 */  lw        $a3, 0x40($s0)
/* 9B7AC8 80241148 C44C0000 */  lwc1      $f12, ($v0)
/* 9B7ACC 8024114C 46806320 */  cvt.s.w   $f12, $f12
/* 9B7AD0 80241150 C44E0008 */  lwc1      $f14, 8($v0)
/* 9B7AD4 80241154 0C00A7B5 */  jal       dist2D
/* 9B7AD8 80241158 468073A0 */   cvt.s.w  $f14, $f14
/* 9B7ADC 8024115C C6020018 */  lwc1      $f2, 0x18($s0)
/* 9B7AE0 80241160 4600103C */  c.lt.s    $f2, $f0
/* 9B7AE4 80241164 00000000 */  nop       
/* 9B7AE8 80241168 4500000D */  bc1f      .L802411A0
/* 9B7AEC 8024116C E7A00034 */   swc1     $f0, 0x34($sp)
/* 9B7AF0 80241170 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9B7AF4 80241174 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B7AF8 80241178 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9B7AFC 8024117C C4480000 */  lwc1      $f8, ($v0)
/* 9B7B00 80241180 46804220 */  cvt.s.w   $f8, $f8
/* 9B7B04 80241184 44064000 */  mfc1      $a2, $f8
/* 9B7B08 80241188 C4480008 */  lwc1      $f8, 8($v0)
/* 9B7B0C 8024118C 46804220 */  cvt.s.w   $f8, $f8
/* 9B7B10 80241190 44074000 */  mfc1      $a3, $f8
/* 9B7B14 80241194 0C00A720 */  jal       atan2
/* 9B7B18 80241198 24140001 */   addiu    $s4, $zero, 1
/* 9B7B1C 8024119C E600000C */  swc1      $f0, 0xc($s0)
.L802411A0:
/* 9B7B20 802411A0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9B7B24 802411A4 8C43000C */  lw        $v1, 0xc($v0)
/* 9B7B28 802411A8 8C420010 */  lw        $v0, 0x10($v0)
/* 9B7B2C 802411AC 00621825 */  or        $v1, $v1, $v0
/* 9B7B30 802411B0 00741825 */  or        $v1, $v1, $s4
/* 9B7B34 802411B4 10600008 */  beqz      $v1, .L802411D8
/* 9B7B38 802411B8 00000000 */   nop      
/* 9B7B3C 802411BC 8602008C */  lh        $v0, 0x8c($s0)
/* 9B7B40 802411C0 14400031 */  bnez      $v0, .L80241288
/* 9B7B44 802411C4 00000000 */   nop      
/* 9B7B48 802411C8 8E050018 */  lw        $a1, 0x18($s0)
/* 9B7B4C 802411CC 8E06000C */  lw        $a2, 0xc($s0)
/* 9B7B50 802411D0 0C00EA95 */  jal       npc_move_heading
/* 9B7B54 802411D4 0200202D */   daddu    $a0, $s0, $zero
.L802411D8:
/* 9B7B58 802411D8 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9B7B5C 802411DC 3C014059 */  lui       $at, 0x4059
/* 9B7B60 802411E0 44811800 */  mtc1      $at, $f3
/* 9B7B64 802411E4 44801000 */  mtc1      $zero, $f2
/* 9B7B68 802411E8 46000021 */  cvt.d.s   $f0, $f0
/* 9B7B6C 802411EC 46220002 */  mul.d     $f0, $f0, $f2
/* 9B7B70 802411F0 00000000 */  nop       
/* 9B7B74 802411F4 4620020D */  trunc.w.d $f8, $f0
/* 9B7B78 802411F8 E628007C */  swc1      $f8, 0x7c($s1)
/* 9B7B7C 802411FC 8E420004 */  lw        $v0, 4($s2)
/* 9B7B80 80241200 18400021 */  blez      $v0, .L80241288
/* 9B7B84 80241204 00000000 */   nop      
/* 9B7B88 80241208 8602008E */  lh        $v0, 0x8e($s0)
/* 9B7B8C 8024120C 9603008E */  lhu       $v1, 0x8e($s0)
/* 9B7B90 80241210 18400005 */  blez      $v0, .L80241228
/* 9B7B94 80241214 2462FFFF */   addiu    $v0, $v1, -1
/* 9B7B98 80241218 A602008E */  sh        $v0, 0x8e($s0)
/* 9B7B9C 8024121C 00021400 */  sll       $v0, $v0, 0x10
/* 9B7BA0 80241220 1C400019 */  bgtz      $v0, .L80241288
/* 9B7BA4 80241224 00000000 */   nop      
.L80241228:
/* 9B7BA8 80241228 240403E8 */  addiu     $a0, $zero, 0x3e8
/* 9B7BAC 8024122C 24020002 */  addiu     $v0, $zero, 2
/* 9B7BB0 80241230 0C00A67F */  jal       rand_int
/* 9B7BB4 80241234 AE620070 */   sw       $v0, 0x70($s3)
/* 9B7BB8 80241238 3C035555 */  lui       $v1, 0x5555
/* 9B7BBC 8024123C 34635556 */  ori       $v1, $v1, 0x5556
/* 9B7BC0 80241240 00430018 */  mult      $v0, $v1
/* 9B7BC4 80241244 000227C3 */  sra       $a0, $v0, 0x1f
/* 9B7BC8 80241248 00004010 */  mfhi      $t0
/* 9B7BCC 8024124C 01042023 */  subu      $a0, $t0, $a0
/* 9B7BD0 80241250 00041840 */  sll       $v1, $a0, 1
/* 9B7BD4 80241254 00641821 */  addu      $v1, $v1, $a0
/* 9B7BD8 80241258 00431023 */  subu      $v0, $v0, $v1
/* 9B7BDC 8024125C 24430002 */  addiu     $v1, $v0, 2
/* 9B7BE0 80241260 AE630074 */  sw        $v1, 0x74($s3)
/* 9B7BE4 80241264 8E42002C */  lw        $v0, 0x2c($s2)
/* 9B7BE8 80241268 58400007 */  blezl     $v0, .L80241288
/* 9B7BEC 8024126C AE600070 */   sw       $zero, 0x70($s3)
/* 9B7BF0 80241270 8E420008 */  lw        $v0, 8($s2)
/* 9B7BF4 80241274 18400003 */  blez      $v0, .L80241284
/* 9B7BF8 80241278 28620003 */   slti     $v0, $v1, 3
/* 9B7BFC 8024127C 10400002 */  beqz      $v0, .L80241288
/* 9B7C00 80241280 00000000 */   nop      
.L80241284:
/* 9B7C04 80241284 AE600070 */  sw        $zero, 0x70($s3)
.L80241288:
/* 9B7C08 80241288 8FBF0058 */  lw        $ra, 0x58($sp)
/* 9B7C0C 8024128C 8FB50054 */  lw        $s5, 0x54($sp)
/* 9B7C10 80241290 8FB40050 */  lw        $s4, 0x50($sp)
/* 9B7C14 80241294 8FB3004C */  lw        $s3, 0x4c($sp)
/* 9B7C18 80241298 8FB20048 */  lw        $s2, 0x48($sp)
/* 9B7C1C 8024129C 8FB10044 */  lw        $s1, 0x44($sp)
/* 9B7C20 802412A0 8FB00040 */  lw        $s0, 0x40($sp)
/* 9B7C24 802412A4 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* 9B7C28 802412A8 D7B80070 */  ldc1      $f24, 0x70($sp)
/* 9B7C2C 802412AC D7B60068 */  ldc1      $f22, 0x68($sp)
/* 9B7C30 802412B0 D7B40060 */  ldc1      $f20, 0x60($sp)
/* 9B7C34 802412B4 03E00008 */  jr        $ra
/* 9B7C38 802412B8 27BD0080 */   addiu    $sp, $sp, 0x80
