.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402A0_B97EA0
/* B97EA0 802402A0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* B97EA4 802402A4 AFB3004C */  sw        $s3, 0x4c($sp)
/* B97EA8 802402A8 0080982D */  daddu     $s3, $a0, $zero
/* B97EAC 802402AC AFBF0054 */  sw        $ra, 0x54($sp)
/* B97EB0 802402B0 AFB40050 */  sw        $s4, 0x50($sp)
/* B97EB4 802402B4 AFB20048 */  sw        $s2, 0x48($sp)
/* B97EB8 802402B8 AFB10044 */  sw        $s1, 0x44($sp)
/* B97EBC 802402BC AFB00040 */  sw        $s0, 0x40($sp)
/* B97EC0 802402C0 F7B40058 */  sdc1      $f20, 0x58($sp)
/* B97EC4 802402C4 8E710148 */  lw        $s1, 0x148($s3)
/* B97EC8 802402C8 00A0A02D */  daddu     $s4, $a1, $zero
/* B97ECC 802402CC 86240008 */  lh        $a0, 8($s1)
/* B97ED0 802402D0 0C00EABB */  jal       get_npc_unsafe
/* B97ED4 802402D4 00C0902D */   daddu    $s2, $a2, $zero
/* B97ED8 802402D8 8E830014 */  lw        $v1, 0x14($s4)
/* B97EDC 802402DC 04600034 */  bltz      $v1, .L802403B0
/* B97EE0 802402E0 0040802D */   daddu    $s0, $v0, $zero
/* B97EE4 802402E4 8E620074 */  lw        $v0, 0x74($s3)
/* B97EE8 802402E8 1C400030 */  bgtz      $v0, .L802403AC
/* B97EEC 802402EC 2442FFFF */   addiu    $v0, $v0, -1
/* B97EF0 802402F0 0240202D */  daddu     $a0, $s2, $zero
/* B97EF4 802402F4 AE630074 */  sw        $v1, 0x74($s3)
/* B97EF8 802402F8 AFA00010 */  sw        $zero, 0x10($sp)
/* B97EFC 802402FC 8E86000C */  lw        $a2, 0xc($s4)
/* B97F00 80240300 8E870010 */  lw        $a3, 0x10($s4)
/* B97F04 80240304 0C01242D */  jal       func_800490B4
/* B97F08 80240308 0220282D */   daddu    $a1, $s1, $zero
/* B97F0C 8024030C 10400025 */  beqz      $v0, .L802403A4
/* B97F10 80240310 0000202D */   daddu    $a0, $zero, $zero
/* B97F14 80240314 0200282D */  daddu     $a1, $s0, $zero
/* B97F18 80240318 0000302D */  daddu     $a2, $zero, $zero
/* B97F1C 8024031C 860300A8 */  lh        $v1, 0xa8($s0)
/* B97F20 80240320 3C013F80 */  lui       $at, 0x3f80
/* B97F24 80240324 44810000 */  mtc1      $at, $f0
/* B97F28 80240328 3C014000 */  lui       $at, 0x4000
/* B97F2C 8024032C 44811000 */  mtc1      $at, $f2
/* B97F30 80240330 3C01C1A0 */  lui       $at, 0xc1a0
/* B97F34 80240334 44812000 */  mtc1      $at, $f4
/* B97F38 80240338 2402000F */  addiu     $v0, $zero, 0xf
/* B97F3C 8024033C AFA2001C */  sw        $v0, 0x1c($sp)
/* B97F40 80240340 44835000 */  mtc1      $v1, $f10
/* B97F44 80240344 00000000 */  nop       
/* B97F48 80240348 468052A0 */  cvt.s.w   $f10, $f10
/* B97F4C 8024034C 44075000 */  mfc1      $a3, $f10
/* B97F50 80240350 27A20028 */  addiu     $v0, $sp, 0x28
/* B97F54 80240354 AFA20020 */  sw        $v0, 0x20($sp)
/* B97F58 80240358 E7A00010 */  swc1      $f0, 0x10($sp)
/* B97F5C 8024035C E7A20014 */  swc1      $f2, 0x14($sp)
/* B97F60 80240360 0C01BFA4 */  jal       fx_emote
/* B97F64 80240364 E7A40018 */   swc1     $f4, 0x18($sp)
/* B97F68 80240368 0200202D */  daddu     $a0, $s0, $zero
/* B97F6C 8024036C 240502F4 */  addiu     $a1, $zero, 0x2f4
/* B97F70 80240370 0C012530 */  jal       func_800494C0
/* B97F74 80240374 3C060020 */   lui      $a2, 0x20
/* B97F78 80240378 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B97F7C 8024037C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B97F80 80240380 C60C0038 */  lwc1      $f12, 0x38($s0)
/* B97F84 80240384 C60E0040 */  lwc1      $f14, 0x40($s0)
/* B97F88 80240388 8C460028 */  lw        $a2, 0x28($v0)
/* B97F8C 8024038C 0C00A720 */  jal       atan2
/* B97F90 80240390 8C470030 */   lw       $a3, 0x30($v0)
/* B97F94 80240394 2402000C */  addiu     $v0, $zero, 0xc
/* B97F98 80240398 E600000C */  swc1      $f0, 0xc($s0)
/* B97F9C 8024039C 0809016D */  j         .L802405B4
/* B97FA0 802403A0 AE620070 */   sw       $v0, 0x70($s3)
.L802403A4:
/* B97FA4 802403A4 8E620074 */  lw        $v0, 0x74($s3)
/* B97FA8 802403A8 2442FFFF */  addiu     $v0, $v0, -1
.L802403AC:
/* B97FAC 802403AC AE620074 */  sw        $v0, 0x74($s3)
.L802403B0:
/* B97FB0 802403B0 C6000018 */  lwc1      $f0, 0x18($s0)
/* B97FB4 802403B4 44801000 */  mtc1      $zero, $f2
/* B97FB8 802403B8 44801800 */  mtc1      $zero, $f3
/* B97FBC 802403BC 46000021 */  cvt.d.s   $f0, $f0
/* B97FC0 802403C0 4620103C */  c.lt.d    $f2, $f0
/* B97FC4 802403C4 00000000 */  nop       
/* B97FC8 802403C8 45000025 */  bc1f      .L80240460
/* B97FCC 802403CC 27A5002C */   addiu    $a1, $sp, 0x2c
/* B97FD0 802403D0 C6000038 */  lwc1      $f0, 0x38($s0)
/* B97FD4 802403D4 860200A6 */  lh        $v0, 0xa6($s0)
/* B97FD8 802403D8 3C018024 */  lui       $at, %hi(D_80243830)
/* B97FDC 802403DC D4223830 */  ldc1      $f2, %lo(D_80243830)($at)
/* B97FE0 802403E0 27A60030 */  addiu     $a2, $sp, 0x30
/* B97FE4 802403E4 E7A0002C */  swc1      $f0, 0x2c($sp)
/* B97FE8 802403E8 44820000 */  mtc1      $v0, $f0
/* B97FEC 802403EC 00000000 */  nop       
/* B97FF0 802403F0 46800020 */  cvt.s.w   $f0, $f0
/* B97FF4 802403F4 46000021 */  cvt.d.s   $f0, $f0
/* B97FF8 802403F8 C604003C */  lwc1      $f4, 0x3c($s0)
/* B97FFC 802403FC C6060040 */  lwc1      $f6, 0x40($s0)
/* B98000 80240400 C6080018 */  lwc1      $f8, 0x18($s0)
/* B98004 80240404 860200A8 */  lh        $v0, 0xa8($s0)
/* B98008 80240408 46220002 */  mul.d     $f0, $f0, $f2
/* B9800C 8024040C 00000000 */  nop       
/* B98010 80240410 E7A40030 */  swc1      $f4, 0x30($sp)
/* B98014 80240414 E7A60034 */  swc1      $f6, 0x34($sp)
/* B98018 80240418 E7A80010 */  swc1      $f8, 0x10($sp)
/* B9801C 8024041C C604000C */  lwc1      $f4, 0xc($s0)
/* B98020 80240420 44821000 */  mtc1      $v0, $f2
/* B98024 80240424 00000000 */  nop       
/* B98028 80240428 468010A0 */  cvt.s.w   $f2, $f2
/* B9802C 8024042C E7A20018 */  swc1      $f2, 0x18($sp)
/* B98030 80240430 E7A40014 */  swc1      $f4, 0x14($sp)
/* B98034 80240434 46200020 */  cvt.s.d   $f0, $f0
/* B98038 80240438 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B9803C 8024043C 8E040080 */  lw        $a0, 0x80($s0)
/* B98040 80240440 0C037711 */  jal       func_800DDC44
/* B98044 80240444 27A70034 */   addiu    $a3, $sp, 0x34
/* B98048 80240448 54400005 */  bnel      $v0, $zero, .L80240460
/* B9804C 8024044C AE000018 */   sw       $zero, 0x18($s0)
/* B98050 80240450 8E050018 */  lw        $a1, 0x18($s0)
/* B98054 80240454 8E06000C */  lw        $a2, 0xc($s0)
/* B98058 80240458 0C00EA95 */  jal       npc_move_heading
/* B9805C 8024045C 0200202D */   daddu    $a0, $s0, $zero
.L80240460:
/* B98060 80240460 C600001C */  lwc1      $f0, 0x1c($s0)
/* B98064 80240464 44801000 */  mtc1      $zero, $f2
/* B98068 80240468 44801800 */  mtc1      $zero, $f3
/* B9806C 8024046C 46000021 */  cvt.d.s   $f0, $f0
/* B98070 80240470 4622003C */  c.lt.d    $f0, $f2
/* B98074 80240474 00000000 */  nop       
/* B98078 80240478 45000047 */  bc1f      .L80240598
/* B9807C 8024047C 27A5002C */   addiu    $a1, $sp, 0x2c
/* B98080 80240480 27A60030 */  addiu     $a2, $sp, 0x30
/* B98084 80240484 27A20038 */  addiu     $v0, $sp, 0x38
/* B98088 80240488 C602003C */  lwc1      $f2, 0x3c($s0)
/* B9808C 8024048C C6060038 */  lwc1      $f6, 0x38($s0)
/* B98090 80240490 3C01402A */  lui       $at, 0x402a
/* B98094 80240494 4481A800 */  mtc1      $at, $f21
/* B98098 80240498 4480A000 */  mtc1      $zero, $f20
/* B9809C 8024049C 460010A1 */  cvt.d.s   $f2, $f2
/* B980A0 802404A0 46341080 */  add.d     $f2, $f2, $f20
/* B980A4 802404A4 C600001C */  lwc1      $f0, 0x1c($s0)
/* B980A8 802404A8 C6040040 */  lwc1      $f4, 0x40($s0)
/* B980AC 802404AC 46000005 */  abs.s     $f0, $f0
/* B980B0 802404B0 E7A40034 */  swc1      $f4, 0x34($sp)
/* B980B4 802404B4 3C014030 */  lui       $at, 0x4030
/* B980B8 802404B8 44812800 */  mtc1      $at, $f5
/* B980BC 802404BC 44802000 */  mtc1      $zero, $f4
/* B980C0 802404C0 46000021 */  cvt.d.s   $f0, $f0
/* B980C4 802404C4 E7A6002C */  swc1      $f6, 0x2c($sp)
/* B980C8 802404C8 46240000 */  add.d     $f0, $f0, $f4
/* B980CC 802404CC 462010A0 */  cvt.s.d   $f2, $f2
/* B980D0 802404D0 E7A20030 */  swc1      $f2, 0x30($sp)
/* B980D4 802404D4 46200020 */  cvt.s.d   $f0, $f0
/* B980D8 802404D8 E7A00038 */  swc1      $f0, 0x38($sp)
/* B980DC 802404DC AFA20010 */  sw        $v0, 0x10($sp)
/* B980E0 802404E0 8E040080 */  lw        $a0, 0x80($s0)
/* B980E4 802404E4 0C0372DF */  jal       func_800DCB7C
/* B980E8 802404E8 27A70034 */   addiu    $a3, $sp, 0x34
/* B980EC 802404EC 1040002A */  beqz      $v0, .L80240598
/* B980F0 802404F0 00000000 */   nop      
/* B980F4 802404F4 C600001C */  lwc1      $f0, 0x1c($s0)
/* B980F8 802404F8 C7A20038 */  lwc1      $f2, 0x38($sp)
/* B980FC 802404FC 46000005 */  abs.s     $f0, $f0
/* B98100 80240500 46000021 */  cvt.d.s   $f0, $f0
/* B98104 80240504 46340000 */  add.d     $f0, $f0, $f20
/* B98108 80240508 460010A1 */  cvt.d.s   $f2, $f2
/* B9810C 8024050C 4620103E */  c.le.d    $f2, $f0
/* B98110 80240510 00000000 */  nop       
/* B98114 80240514 45000020 */  bc1f      .L80240598
/* B98118 80240518 240403E8 */   addiu    $a0, $zero, 0x3e8
/* B9811C 8024051C C7A00030 */  lwc1      $f0, 0x30($sp)
/* B98120 80240520 8E020000 */  lw        $v0, ($s0)
/* B98124 80240524 2403F7FF */  addiu     $v1, $zero, -0x801
/* B98128 80240528 AE00001C */  sw        $zero, 0x1c($s0)
/* B9812C 8024052C 00431024 */  and       $v0, $v0, $v1
/* B98130 80240530 AE020000 */  sw        $v0, ($s0)
/* B98134 80240534 24020002 */  addiu     $v0, $zero, 2
/* B98138 80240538 E600003C */  swc1      $f0, 0x3c($s0)
/* B9813C 8024053C 0C00A67F */  jal       rand_int
/* B98140 80240540 AE620070 */   sw       $v0, 0x70($s3)
/* B98144 80240544 3C035555 */  lui       $v1, 0x5555
/* B98148 80240548 34635556 */  ori       $v1, $v1, 0x5556
/* B9814C 8024054C 00430018 */  mult      $v0, $v1
/* B98150 80240550 000227C3 */  sra       $a0, $v0, 0x1f
/* B98154 80240554 00004010 */  mfhi      $t0
/* B98158 80240558 01042023 */  subu      $a0, $t0, $a0
/* B9815C 8024055C 00041840 */  sll       $v1, $a0, 1
/* B98160 80240560 00641821 */  addu      $v1, $v1, $a0
/* B98164 80240564 00431023 */  subu      $v0, $v0, $v1
/* B98168 80240568 24430002 */  addiu     $v1, $v0, 2
/* B9816C 8024056C AE630074 */  sw        $v1, 0x74($s3)
/* B98170 80240570 8E82002C */  lw        $v0, 0x2c($s4)
/* B98174 80240574 5840000F */  blezl     $v0, .L802405B4
/* B98178 80240578 AE600070 */   sw       $zero, 0x70($s3)
/* B9817C 8024057C 8E820004 */  lw        $v0, 4($s4)
/* B98180 80240580 5840000C */  blezl     $v0, .L802405B4
/* B98184 80240584 AE600070 */   sw       $zero, 0x70($s3)
/* B98188 80240588 1460000A */  bnez      $v1, .L802405B4
/* B9818C 8024058C 00000000 */   nop      
/* B98190 80240590 0809016D */  j         .L802405B4
/* B98194 80240594 AE600070 */   sw       $zero, 0x70($s3)
.L80240598:
/* B98198 80240598 C604003C */  lwc1      $f4, 0x3c($s0)
/* B9819C 8024059C C600001C */  lwc1      $f0, 0x1c($s0)
/* B981A0 802405A0 46002100 */  add.s     $f4, $f4, $f0
/* B981A4 802405A4 C6020014 */  lwc1      $f2, 0x14($s0)
/* B981A8 802405A8 46020001 */  sub.s     $f0, $f0, $f2
/* B981AC 802405AC E604003C */  swc1      $f4, 0x3c($s0)
/* B981B0 802405B0 E600001C */  swc1      $f0, 0x1c($s0)
.L802405B4:
/* B981B4 802405B4 8FBF0054 */  lw        $ra, 0x54($sp)
/* B981B8 802405B8 8FB40050 */  lw        $s4, 0x50($sp)
/* B981BC 802405BC 8FB3004C */  lw        $s3, 0x4c($sp)
/* B981C0 802405C0 8FB20048 */  lw        $s2, 0x48($sp)
/* B981C4 802405C4 8FB10044 */  lw        $s1, 0x44($sp)
/* B981C8 802405C8 8FB00040 */  lw        $s0, 0x40($sp)
/* B981CC 802405CC D7B40058 */  ldc1      $f20, 0x58($sp)
/* B981D0 802405D0 03E00008 */  jr        $ra
/* B981D4 802405D4 27BD0060 */   addiu    $sp, $sp, 0x60
