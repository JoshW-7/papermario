.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241040_BE47F0
/* BE47F0 80241040 27BDFF80 */  addiu     $sp, $sp, -0x80
/* BE47F4 80241044 AFB3004C */  sw        $s3, 0x4c($sp)
/* BE47F8 80241048 0080982D */  daddu     $s3, $a0, $zero
/* BE47FC 8024104C AFBF0058 */  sw        $ra, 0x58($sp)
/* BE4800 80241050 AFB50054 */  sw        $s5, 0x54($sp)
/* BE4804 80241054 AFB40050 */  sw        $s4, 0x50($sp)
/* BE4808 80241058 AFB20048 */  sw        $s2, 0x48($sp)
/* BE480C 8024105C AFB10044 */  sw        $s1, 0x44($sp)
/* BE4810 80241060 AFB00040 */  sw        $s0, 0x40($sp)
/* BE4814 80241064 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* BE4818 80241068 F7B80070 */  sdc1      $f24, 0x70($sp)
/* BE481C 8024106C F7B60068 */  sdc1      $f22, 0x68($sp)
/* BE4820 80241070 F7B40060 */  sdc1      $f20, 0x60($sp)
/* BE4824 80241074 8E710148 */  lw        $s1, 0x148($s3)
/* BE4828 80241078 00A0902D */  daddu     $s2, $a1, $zero
/* BE482C 8024107C 86240008 */  lh        $a0, 8($s1)
/* BE4830 80241080 0C00EABB */  jal       get_npc_unsafe
/* BE4834 80241084 00C0A82D */   daddu    $s5, $a2, $zero
/* BE4838 80241088 0040802D */  daddu     $s0, $v0, $zero
/* BE483C 8024108C 0000A02D */  daddu     $s4, $zero, $zero
/* BE4840 80241090 C624007C */  lwc1      $f4, 0x7c($s1)
/* BE4844 80241094 46802120 */  cvt.s.w   $f4, $f4
/* BE4848 80241098 C6220088 */  lwc1      $f2, 0x88($s1)
/* BE484C 8024109C 468010A0 */  cvt.s.w   $f2, $f2
/* BE4850 802410A0 460010A1 */  cvt.d.s   $f2, $f2
/* BE4854 802410A4 46002121 */  cvt.d.s   $f4, $f4
/* BE4858 802410A8 C600003C */  lwc1      $f0, 0x3c($s0)
/* BE485C 802410AC 3C014059 */  lui       $at, 0x4059
/* BE4860 802410B0 44813800 */  mtc1      $at, $f7
/* BE4864 802410B4 44803000 */  mtc1      $zero, $f6
/* BE4868 802410B8 46000021 */  cvt.d.s   $f0, $f0
/* BE486C 802410BC 46260002 */  mul.d     $f0, $f0, $f6
/* BE4870 802410C0 00000000 */  nop       
/* BE4874 802410C4 24020001 */  addiu     $v0, $zero, 1
/* BE4878 802410C8 8E24006C */  lw        $a0, 0x6c($s1)
/* BE487C 802410CC 46261083 */  div.d     $f2, $f2, $f6
/* BE4880 802410D0 462010A0 */  cvt.s.d   $f2, $f2
/* BE4884 802410D4 46262103 */  div.d     $f4, $f4, $f6
/* BE4888 802410D8 46202520 */  cvt.s.d   $f20, $f4
/* BE488C 802410DC 30830011 */  andi      $v1, $a0, 0x11
/* BE4890 802410E0 4620020D */  trunc.w.d $f8, $f0
/* BE4894 802410E4 E628007C */  swc1      $f8, 0x7c($s1)
/* BE4898 802410E8 C6200078 */  lwc1      $f0, 0x78($s1)
/* BE489C 802410EC 46800020 */  cvt.s.w   $f0, $f0
/* BE48A0 802410F0 46000021 */  cvt.d.s   $f0, $f0
/* BE48A4 802410F4 46260003 */  div.d     $f0, $f0, $f6
/* BE48A8 802410F8 462006A0 */  cvt.s.d   $f26, $f0
/* BE48AC 802410FC C6200070 */  lwc1      $f0, 0x70($s1)
/* BE48B0 80241100 46800020 */  cvt.s.w   $f0, $f0
/* BE48B4 80241104 46000021 */  cvt.d.s   $f0, $f0
/* BE48B8 80241108 46260003 */  div.d     $f0, $f0, $f6
/* BE48BC 8024110C 462005A0 */  cvt.s.d   $f22, $f0
/* BE48C0 80241110 14620025 */  bne       $v1, $v0, .L802411A8
/* BE48C4 80241114 4602D600 */   add.s    $f24, $f26, $f2
/* BE48C8 80241118 8E020000 */  lw        $v0, ($s0)
/* BE48CC 8024111C 30420008 */  andi      $v0, $v0, 8
/* BE48D0 80241120 10400009 */  beqz      $v0, .L80241148
/* BE48D4 80241124 27A50028 */   addiu    $a1, $sp, 0x28
/* BE48D8 80241128 C600003C */  lwc1      $f0, 0x3c($s0)
/* BE48DC 8024112C 4600C001 */  sub.s     $f0, $f24, $f0
/* BE48E0 80241130 4600B03C */  c.lt.s    $f22, $f0
/* BE48E4 80241134 00000000 */  nop       
/* BE48E8 80241138 4500001B */  bc1f      .L802411A8
/* BE48EC 8024113C 34820010 */   ori      $v0, $a0, 0x10
/* BE48F0 80241140 0809046A */  j         .L802411A8
/* BE48F4 80241144 AE22006C */   sw       $v0, 0x6c($s1)
.L80241148:
/* BE48F8 80241148 27A6002C */  addiu     $a2, $sp, 0x2c
/* BE48FC 8024114C C6000038 */  lwc1      $f0, 0x38($s0)
/* BE4900 80241150 C602003C */  lwc1      $f2, 0x3c($s0)
/* BE4904 80241154 C6040040 */  lwc1      $f4, 0x40($s0)
/* BE4908 80241158 3C01447A */  lui       $at, 0x447a
/* BE490C 8024115C 44813000 */  mtc1      $at, $f6
/* BE4910 80241160 27A20034 */  addiu     $v0, $sp, 0x34
/* BE4914 80241164 E7A00028 */  swc1      $f0, 0x28($sp)
/* BE4918 80241168 E7A2002C */  swc1      $f2, 0x2c($sp)
/* BE491C 8024116C E7A40030 */  swc1      $f4, 0x30($sp)
/* BE4920 80241170 E7A60034 */  swc1      $f6, 0x34($sp)
/* BE4924 80241174 AFA20010 */  sw        $v0, 0x10($sp)
/* BE4928 80241178 8E040080 */  lw        $a0, 0x80($s0)
/* BE492C 8024117C 0C0372DF */  jal       func_800DCB7C
/* BE4930 80241180 27A70030 */   addiu    $a3, $sp, 0x30
/* BE4934 80241184 C7A00034 */  lwc1      $f0, 0x34($sp)
/* BE4938 80241188 4600D001 */  sub.s     $f0, $f26, $f0
/* BE493C 8024118C 4600B03C */  c.lt.s    $f22, $f0
/* BE4940 80241190 00000000 */  nop       
/* BE4944 80241194 45000004 */  bc1f      .L802411A8
/* BE4948 80241198 00000000 */   nop      
/* BE494C 8024119C 8E22006C */  lw        $v0, 0x6c($s1)
/* BE4950 802411A0 34420010 */  ori       $v0, $v0, 0x10
/* BE4954 802411A4 AE22006C */  sw        $v0, 0x6c($s1)
.L802411A8:
/* BE4958 802411A8 8E22006C */  lw        $v0, 0x6c($s1)
/* BE495C 802411AC 24030011 */  addiu     $v1, $zero, 0x11
/* BE4960 802411B0 30420011 */  andi      $v0, $v0, 0x11
/* BE4964 802411B4 14430039 */  bne       $v0, $v1, .L8024129C
/* BE4968 802411B8 00000000 */   nop      
/* BE496C 802411BC 8E020000 */  lw        $v0, ($s0)
/* BE4970 802411C0 30420008 */  andi      $v0, $v0, 8
/* BE4974 802411C4 1040000A */  beqz      $v0, .L802411F0
/* BE4978 802411C8 4600C106 */   mov.s    $f4, $f24
/* BE497C 802411CC 4614C081 */  sub.s     $f2, $f24, $f20
/* BE4980 802411D0 3C018024 */  lui       $at, %hi(D_802442D8)
/* BE4984 802411D4 D42042D8 */  ldc1      $f0, %lo(D_802442D8)($at)
/* BE4988 802411D8 460010A1 */  cvt.d.s   $f2, $f2
/* BE498C 802411DC 46201082 */  mul.d     $f2, $f2, $f0
/* BE4990 802411E0 00000000 */  nop       
/* BE4994 802411E4 4600A021 */  cvt.d.s   $f0, $f20
/* BE4998 802411E8 08090495 */  j         .L80241254
/* BE499C 802411EC 46220000 */   add.d    $f0, $f0, $f2
.L802411F0:
/* BE49A0 802411F0 27A50028 */  addiu     $a1, $sp, 0x28
/* BE49A4 802411F4 27A6002C */  addiu     $a2, $sp, 0x2c
/* BE49A8 802411F8 C6000038 */  lwc1      $f0, 0x38($s0)
/* BE49AC 802411FC C6020040 */  lwc1      $f2, 0x40($s0)
/* BE49B0 80241200 3C01447A */  lui       $at, 0x447a
/* BE49B4 80241204 44812000 */  mtc1      $at, $f4
/* BE49B8 80241208 27A20034 */  addiu     $v0, $sp, 0x34
/* BE49BC 8024120C E7B4002C */  swc1      $f20, 0x2c($sp)
/* BE49C0 80241210 E7A00028 */  swc1      $f0, 0x28($sp)
/* BE49C4 80241214 E7A20030 */  swc1      $f2, 0x30($sp)
/* BE49C8 80241218 E7A40034 */  swc1      $f4, 0x34($sp)
/* BE49CC 8024121C AFA20010 */  sw        $v0, 0x10($sp)
/* BE49D0 80241220 8E040080 */  lw        $a0, 0x80($s0)
/* BE49D4 80241224 0C0372DF */  jal       func_800DCB7C
/* BE49D8 80241228 27A70030 */   addiu    $a3, $sp, 0x30
/* BE49DC 8024122C C7A4002C */  lwc1      $f4, 0x2c($sp)
/* BE49E0 80241230 461A2100 */  add.s     $f4, $f4, $f26
/* BE49E4 80241234 46142081 */  sub.s     $f2, $f4, $f20
/* BE49E8 80241238 3C018024 */  lui       $at, %hi(D_802442E0)
/* BE49EC 8024123C D42042E0 */  ldc1      $f0, %lo(D_802442E0)($at)
/* BE49F0 80241240 460010A1 */  cvt.d.s   $f2, $f2
/* BE49F4 80241244 46201082 */  mul.d     $f2, $f2, $f0
/* BE49F8 80241248 00000000 */  nop       
/* BE49FC 8024124C 4600A021 */  cvt.d.s   $f0, $f20
/* BE4A00 80241250 46220000 */  add.d     $f0, $f0, $f2
.L80241254:
/* BE4A04 80241254 46200020 */  cvt.s.d   $f0, $f0
/* BE4A08 80241258 E600003C */  swc1      $f0, 0x3c($s0)
/* BE4A0C 8024125C C600003C */  lwc1      $f0, 0x3c($s0)
/* BE4A10 80241260 46002001 */  sub.s     $f0, $f4, $f0
/* BE4A14 80241264 3C013FF0 */  lui       $at, 0x3ff0
/* BE4A18 80241268 44811800 */  mtc1      $at, $f3
/* BE4A1C 8024126C 44801000 */  mtc1      $zero, $f2
/* BE4A20 80241270 46000005 */  abs.s     $f0, $f0
/* BE4A24 80241274 46000021 */  cvt.d.s   $f0, $f0
/* BE4A28 80241278 4622003C */  c.lt.d    $f0, $f2
/* BE4A2C 8024127C 00000000 */  nop       
/* BE4A30 80241280 45000036 */  bc1f      .L8024135C
/* BE4A34 80241284 2403FFEF */   addiu    $v1, $zero, -0x11
/* BE4A38 80241288 E604003C */  swc1      $f4, 0x3c($s0)
/* BE4A3C 8024128C 8E22006C */  lw        $v0, 0x6c($s1)
/* BE4A40 80241290 00431024 */  and       $v0, $v0, $v1
/* BE4A44 80241294 080904D7 */  j         .L8024135C
/* BE4A48 80241298 AE22006C */   sw       $v0, 0x6c($s1)
.L8024129C:
/* BE4A4C 8024129C 8E220070 */  lw        $v0, 0x70($s1)
/* BE4A50 802412A0 1840002E */  blez      $v0, .L8024135C
/* BE4A54 802412A4 00000000 */   nop      
/* BE4A58 802412A8 C62C0074 */  lwc1      $f12, 0x74($s1)
/* BE4A5C 802412AC 0C00A8BB */  jal       sin_deg
/* BE4A60 802412B0 46806320 */   cvt.s.w  $f12, $f12
/* BE4A64 802412B4 8E020000 */  lw        $v0, ($s0)
/* BE4A68 802412B8 30420008 */  andi      $v0, $v0, 8
/* BE4A6C 802412BC 10400003 */  beqz      $v0, .L802412CC
/* BE4A70 802412C0 46000506 */   mov.s    $f20, $f0
/* BE4A74 802412C4 080904C3 */  j         .L8024130C
/* BE4A78 802412C8 0000102D */   daddu    $v0, $zero, $zero
.L802412CC:
/* BE4A7C 802412CC 27A50028 */  addiu     $a1, $sp, 0x28
/* BE4A80 802412D0 27A6002C */  addiu     $a2, $sp, 0x2c
/* BE4A84 802412D4 C6000038 */  lwc1      $f0, 0x38($s0)
/* BE4A88 802412D8 C602003C */  lwc1      $f2, 0x3c($s0)
/* BE4A8C 802412DC C6040040 */  lwc1      $f4, 0x40($s0)
/* BE4A90 802412E0 3C01447A */  lui       $at, 0x447a
/* BE4A94 802412E4 44813000 */  mtc1      $at, $f6
/* BE4A98 802412E8 27A20034 */  addiu     $v0, $sp, 0x34
/* BE4A9C 802412EC E7A00028 */  swc1      $f0, 0x28($sp)
/* BE4AA0 802412F0 E7A2002C */  swc1      $f2, 0x2c($sp)
/* BE4AA4 802412F4 E7A40030 */  swc1      $f4, 0x30($sp)
/* BE4AA8 802412F8 E7A60034 */  swc1      $f6, 0x34($sp)
/* BE4AAC 802412FC AFA20010 */  sw        $v0, 0x10($sp)
/* BE4AB0 80241300 8E040080 */  lw        $a0, 0x80($s0)
/* BE4AB4 80241304 0C0372DF */  jal       func_800DCB7C
/* BE4AB8 80241308 27A70030 */   addiu    $a3, $sp, 0x30
.L8024130C:
/* BE4ABC 8024130C 10400007 */  beqz      $v0, .L8024132C
/* BE4AC0 80241310 00000000 */   nop      
/* BE4AC4 80241314 4616A082 */  mul.s     $f2, $f20, $f22
/* BE4AC8 80241318 00000000 */  nop       
/* BE4ACC 8024131C C7A0002C */  lwc1      $f0, 0x2c($sp)
/* BE4AD0 80241320 461A0000 */  add.s     $f0, $f0, $f26
/* BE4AD4 80241324 080904CE */  j         .L80241338
/* BE4AD8 80241328 46020000 */   add.s    $f0, $f0, $f2
.L8024132C:
/* BE4ADC 8024132C 4616A002 */  mul.s     $f0, $f20, $f22
/* BE4AE0 80241330 00000000 */  nop       
/* BE4AE4 80241334 4600C000 */  add.s     $f0, $f24, $f0
.L80241338:
/* BE4AE8 80241338 E600003C */  swc1      $f0, 0x3c($s0)
/* BE4AEC 8024133C 8E220074 */  lw        $v0, 0x74($s1)
/* BE4AF0 80241340 2442000A */  addiu     $v0, $v0, 0xa
/* BE4AF4 80241344 44826000 */  mtc1      $v0, $f12
/* BE4AF8 80241348 00000000 */  nop       
/* BE4AFC 8024134C 0C00A6C9 */  jal       clamp_angle
/* BE4B00 80241350 46806320 */   cvt.s.w  $f12, $f12
/* BE4B04 80241354 4600020D */  trunc.w.s $f8, $f0
/* BE4B08 80241358 E6280074 */  swc1      $f8, 0x74($s1)
.L8024135C:
/* BE4B0C 8024135C 8E220090 */  lw        $v0, 0x90($s1)
/* BE4B10 80241360 1C40004A */  bgtz      $v0, .L8024148C
/* BE4B14 80241364 2442FFFF */   addiu    $v0, $v0, -1
/* BE4B18 80241368 8E430014 */  lw        $v1, 0x14($s2)
/* BE4B1C 8024136C 04600048 */  bltz      $v1, .L80241490
/* BE4B20 80241370 00000000 */   nop      
/* BE4B24 80241374 8E620074 */  lw        $v0, 0x74($s3)
/* BE4B28 80241378 1C400042 */  bgtz      $v0, .L80241484
/* BE4B2C 8024137C 2442FFFF */   addiu    $v0, $v0, -1
/* BE4B30 80241380 AE630074 */  sw        $v1, 0x74($s3)
/* BE4B34 80241384 860200A8 */  lh        $v0, 0xa8($s0)
/* BE4B38 80241388 C602003C */  lwc1      $f2, 0x3c($s0)
/* BE4B3C 8024138C 44820000 */  mtc1      $v0, $f0
/* BE4B40 80241390 00000000 */  nop       
/* BE4B44 80241394 46800020 */  cvt.s.w   $f0, $f0
/* BE4B48 80241398 46001080 */  add.s     $f2, $f2, $f0
/* BE4B4C 8024139C 3C014024 */  lui       $at, 0x4024
/* BE4B50 802413A0 44810800 */  mtc1      $at, $f1
/* BE4B54 802413A4 44800000 */  mtc1      $zero, $f0
/* BE4B58 802413A8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* BE4B5C 802413AC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* BE4B60 802413B0 460010A1 */  cvt.d.s   $f2, $f2
/* BE4B64 802413B4 46201080 */  add.d     $f2, $f2, $f0
/* BE4B68 802413B8 C440002C */  lwc1      $f0, 0x2c($v0)
/* BE4B6C 802413BC 46000021 */  cvt.d.s   $f0, $f0
/* BE4B70 802413C0 4622003C */  c.lt.d    $f0, $f2
/* BE4B74 802413C4 00000000 */  nop       
/* BE4B78 802413C8 4500002C */  bc1f      .L8024147C
/* BE4B7C 802413CC 02A0202D */   daddu    $a0, $s5, $zero
/* BE4B80 802413D0 AFA00010 */  sw        $zero, 0x10($sp)
/* BE4B84 802413D4 8E46000C */  lw        $a2, 0xc($s2)
/* BE4B88 802413D8 8E470010 */  lw        $a3, 0x10($s2)
/* BE4B8C 802413DC 0C01242D */  jal       func_800490B4
/* BE4B90 802413E0 0220282D */   daddu    $a1, $s1, $zero
/* BE4B94 802413E4 10400025 */  beqz      $v0, .L8024147C
/* BE4B98 802413E8 0000202D */   daddu    $a0, $zero, $zero
/* BE4B9C 802413EC 0200282D */  daddu     $a1, $s0, $zero
/* BE4BA0 802413F0 0000302D */  daddu     $a2, $zero, $zero
/* BE4BA4 802413F4 2412000C */  addiu     $s2, $zero, 0xc
/* BE4BA8 802413F8 860300A8 */  lh        $v1, 0xa8($s0)
/* BE4BAC 802413FC 3C013F80 */  lui       $at, 0x3f80
/* BE4BB0 80241400 44810000 */  mtc1      $at, $f0
/* BE4BB4 80241404 3C014000 */  lui       $at, 0x4000
/* BE4BB8 80241408 44811000 */  mtc1      $at, $f2
/* BE4BBC 8024140C 3C01C1A0 */  lui       $at, 0xc1a0
/* BE4BC0 80241410 44812000 */  mtc1      $at, $f4
/* BE4BC4 80241414 44834000 */  mtc1      $v1, $f8
/* BE4BC8 80241418 00000000 */  nop       
/* BE4BCC 8024141C 46804220 */  cvt.s.w   $f8, $f8
/* BE4BD0 80241420 44074000 */  mfc1      $a3, $f8
/* BE4BD4 80241424 27A20038 */  addiu     $v0, $sp, 0x38
/* BE4BD8 80241428 AFB2001C */  sw        $s2, 0x1c($sp)
/* BE4BDC 8024142C AFA20020 */  sw        $v0, 0x20($sp)
/* BE4BE0 80241430 E7A00010 */  swc1      $f0, 0x10($sp)
/* BE4BE4 80241434 E7A20014 */  swc1      $f2, 0x14($sp)
/* BE4BE8 80241438 0C01BFA4 */  jal       fx_emote
/* BE4BEC 8024143C E7A40018 */   swc1     $f4, 0x18($sp)
/* BE4BF0 80241440 0200202D */  daddu     $a0, $s0, $zero
/* BE4BF4 80241444 240502F4 */  addiu     $a1, $zero, 0x2f4
/* BE4BF8 80241448 C480003C */  lwc1      $f0, 0x3c($a0)
/* BE4BFC 8024144C 3C060020 */  lui       $a2, 0x20
/* BE4C00 80241450 0C012530 */  jal       func_800494C0
/* BE4C04 80241454 E4800064 */   swc1     $f0, 0x64($a0)
/* BE4C08 80241458 8E220018 */  lw        $v0, 0x18($s1)
/* BE4C0C 8024145C 9442002A */  lhu       $v0, 0x2a($v0)
/* BE4C10 80241460 30420001 */  andi      $v0, $v0, 1
/* BE4C14 80241464 10400003 */  beqz      $v0, .L80241474
/* BE4C18 80241468 2402000A */   addiu    $v0, $zero, 0xa
/* BE4C1C 8024146C 0809058D */  j         .L80241634
/* BE4C20 80241470 AE620070 */   sw       $v0, 0x70($s3)
.L80241474:
/* BE4C24 80241474 0809058D */  j         .L80241634
/* BE4C28 80241478 AE720070 */   sw       $s2, 0x70($s3)
.L8024147C:
/* BE4C2C 8024147C 8E620074 */  lw        $v0, 0x74($s3)
/* BE4C30 80241480 2442FFFF */  addiu     $v0, $v0, -1
.L80241484:
/* BE4C34 80241484 08090524 */  j         .L80241490
/* BE4C38 80241488 AE620074 */   sw       $v0, 0x74($s3)
.L8024148C:
/* BE4C3C 8024148C AE220090 */  sw        $v0, 0x90($s1)
.L80241490:
/* BE4C40 80241490 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BE4C44 80241494 C6000040 */  lwc1      $f0, 0x40($s0)
/* BE4C48 80241498 C4620000 */  lwc1      $f2, ($v1)
/* BE4C4C 8024149C 468010A0 */  cvt.s.w   $f2, $f2
/* BE4C50 802414A0 C4640008 */  lwc1      $f4, 8($v1)
/* BE4C54 802414A4 46802120 */  cvt.s.w   $f4, $f4
/* BE4C58 802414A8 E7A00010 */  swc1      $f0, 0x10($sp)
/* BE4C5C 802414AC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BE4C60 802414B0 44051000 */  mfc1      $a1, $f2
/* BE4C64 802414B4 C440000C */  lwc1      $f0, 0xc($v0)
/* BE4C68 802414B8 46800020 */  cvt.s.w   $f0, $f0
/* BE4C6C 802414BC E7A00014 */  swc1      $f0, 0x14($sp)
/* BE4C70 802414C0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BE4C74 802414C4 44062000 */  mfc1      $a2, $f4
/* BE4C78 802414C8 C4400010 */  lwc1      $f0, 0x10($v0)
/* BE4C7C 802414CC 46800020 */  cvt.s.w   $f0, $f0
/* BE4C80 802414D0 E7A00018 */  swc1      $f0, 0x18($sp)
/* BE4C84 802414D4 8C640018 */  lw        $a0, 0x18($v1)
/* BE4C88 802414D8 0C0123F5 */  jal       is_point_within_region
/* BE4C8C 802414DC 8E070038 */   lw       $a3, 0x38($s0)
/* BE4C90 802414E0 1040001A */  beqz      $v0, .L8024154C
/* BE4C94 802414E4 00000000 */   nop      
/* BE4C98 802414E8 8E060038 */  lw        $a2, 0x38($s0)
/* BE4C9C 802414EC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BE4CA0 802414F0 8E070040 */  lw        $a3, 0x40($s0)
/* BE4CA4 802414F4 C44C0000 */  lwc1      $f12, ($v0)
/* BE4CA8 802414F8 46806320 */  cvt.s.w   $f12, $f12
/* BE4CAC 802414FC C44E0008 */  lwc1      $f14, 8($v0)
/* BE4CB0 80241500 0C00A7B5 */  jal       dist2D
/* BE4CB4 80241504 468073A0 */   cvt.s.w  $f14, $f14
/* BE4CB8 80241508 C6020018 */  lwc1      $f2, 0x18($s0)
/* BE4CBC 8024150C 4600103C */  c.lt.s    $f2, $f0
/* BE4CC0 80241510 00000000 */  nop       
/* BE4CC4 80241514 4500000D */  bc1f      .L8024154C
/* BE4CC8 80241518 E7A00034 */   swc1     $f0, 0x34($sp)
/* BE4CCC 8024151C C60C0038 */  lwc1      $f12, 0x38($s0)
/* BE4CD0 80241520 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BE4CD4 80241524 C60E0040 */  lwc1      $f14, 0x40($s0)
/* BE4CD8 80241528 C4480000 */  lwc1      $f8, ($v0)
/* BE4CDC 8024152C 46804220 */  cvt.s.w   $f8, $f8
/* BE4CE0 80241530 44064000 */  mfc1      $a2, $f8
/* BE4CE4 80241534 C4480008 */  lwc1      $f8, 8($v0)
/* BE4CE8 80241538 46804220 */  cvt.s.w   $f8, $f8
/* BE4CEC 8024153C 44074000 */  mfc1      $a3, $f8
/* BE4CF0 80241540 0C00A720 */  jal       atan2
/* BE4CF4 80241544 24140001 */   addiu    $s4, $zero, 1
/* BE4CF8 80241548 E600000C */  swc1      $f0, 0xc($s0)
.L8024154C:
/* BE4CFC 8024154C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BE4D00 80241550 8C43000C */  lw        $v1, 0xc($v0)
/* BE4D04 80241554 8C420010 */  lw        $v0, 0x10($v0)
/* BE4D08 80241558 00621825 */  or        $v1, $v1, $v0
/* BE4D0C 8024155C 00741825 */  or        $v1, $v1, $s4
/* BE4D10 80241560 10600008 */  beqz      $v1, .L80241584
/* BE4D14 80241564 00000000 */   nop      
/* BE4D18 80241568 8602008C */  lh        $v0, 0x8c($s0)
/* BE4D1C 8024156C 14400031 */  bnez      $v0, .L80241634
/* BE4D20 80241570 00000000 */   nop      
/* BE4D24 80241574 8E050018 */  lw        $a1, 0x18($s0)
/* BE4D28 80241578 8E06000C */  lw        $a2, 0xc($s0)
/* BE4D2C 8024157C 0C00EA95 */  jal       npc_move_heading
/* BE4D30 80241580 0200202D */   daddu    $a0, $s0, $zero
.L80241584:
/* BE4D34 80241584 C600003C */  lwc1      $f0, 0x3c($s0)
/* BE4D38 80241588 3C014059 */  lui       $at, 0x4059
/* BE4D3C 8024158C 44811800 */  mtc1      $at, $f3
/* BE4D40 80241590 44801000 */  mtc1      $zero, $f2
/* BE4D44 80241594 46000021 */  cvt.d.s   $f0, $f0
/* BE4D48 80241598 46220002 */  mul.d     $f0, $f0, $f2
/* BE4D4C 8024159C 00000000 */  nop       
/* BE4D50 802415A0 4620020D */  trunc.w.d $f8, $f0
/* BE4D54 802415A4 E628007C */  swc1      $f8, 0x7c($s1)
/* BE4D58 802415A8 8E420004 */  lw        $v0, 4($s2)
/* BE4D5C 802415AC 18400021 */  blez      $v0, .L80241634
/* BE4D60 802415B0 00000000 */   nop      
/* BE4D64 802415B4 8602008E */  lh        $v0, 0x8e($s0)
/* BE4D68 802415B8 9603008E */  lhu       $v1, 0x8e($s0)
/* BE4D6C 802415BC 18400005 */  blez      $v0, .L802415D4
/* BE4D70 802415C0 2462FFFF */   addiu    $v0, $v1, -1
/* BE4D74 802415C4 A602008E */  sh        $v0, 0x8e($s0)
/* BE4D78 802415C8 00021400 */  sll       $v0, $v0, 0x10
/* BE4D7C 802415CC 1C400019 */  bgtz      $v0, .L80241634
/* BE4D80 802415D0 00000000 */   nop      
.L802415D4:
/* BE4D84 802415D4 240403E8 */  addiu     $a0, $zero, 0x3e8
/* BE4D88 802415D8 24020002 */  addiu     $v0, $zero, 2
/* BE4D8C 802415DC 0C00A67F */  jal       rand_int
/* BE4D90 802415E0 AE620070 */   sw       $v0, 0x70($s3)
/* BE4D94 802415E4 3C035555 */  lui       $v1, 0x5555
/* BE4D98 802415E8 34635556 */  ori       $v1, $v1, 0x5556
/* BE4D9C 802415EC 00430018 */  mult      $v0, $v1
/* BE4DA0 802415F0 000227C3 */  sra       $a0, $v0, 0x1f
/* BE4DA4 802415F4 00004010 */  mfhi      $t0
/* BE4DA8 802415F8 01042023 */  subu      $a0, $t0, $a0
/* BE4DAC 802415FC 00041840 */  sll       $v1, $a0, 1
/* BE4DB0 80241600 00641821 */  addu      $v1, $v1, $a0
/* BE4DB4 80241604 00431023 */  subu      $v0, $v0, $v1
/* BE4DB8 80241608 24430002 */  addiu     $v1, $v0, 2
/* BE4DBC 8024160C AE630074 */  sw        $v1, 0x74($s3)
/* BE4DC0 80241610 8E42002C */  lw        $v0, 0x2c($s2)
/* BE4DC4 80241614 58400007 */  blezl     $v0, .L80241634
/* BE4DC8 80241618 AE600070 */   sw       $zero, 0x70($s3)
/* BE4DCC 8024161C 8E420008 */  lw        $v0, 8($s2)
/* BE4DD0 80241620 18400003 */  blez      $v0, .L80241630
/* BE4DD4 80241624 28620003 */   slti     $v0, $v1, 3
/* BE4DD8 80241628 10400002 */  beqz      $v0, .L80241634
/* BE4DDC 8024162C 00000000 */   nop      
.L80241630:
/* BE4DE0 80241630 AE600070 */  sw        $zero, 0x70($s3)
.L80241634:
/* BE4DE4 80241634 8FBF0058 */  lw        $ra, 0x58($sp)
/* BE4DE8 80241638 8FB50054 */  lw        $s5, 0x54($sp)
/* BE4DEC 8024163C 8FB40050 */  lw        $s4, 0x50($sp)
/* BE4DF0 80241640 8FB3004C */  lw        $s3, 0x4c($sp)
/* BE4DF4 80241644 8FB20048 */  lw        $s2, 0x48($sp)
/* BE4DF8 80241648 8FB10044 */  lw        $s1, 0x44($sp)
/* BE4DFC 8024164C 8FB00040 */  lw        $s0, 0x40($sp)
/* BE4E00 80241650 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* BE4E04 80241654 D7B80070 */  ldc1      $f24, 0x70($sp)
/* BE4E08 80241658 D7B60068 */  ldc1      $f22, 0x68($sp)
/* BE4E0C 8024165C D7B40060 */  ldc1      $f20, 0x60($sp)
/* BE4E10 80241660 03E00008 */  jr        $ra
/* BE4E14 80241664 27BD0080 */   addiu    $sp, $sp, 0x80
