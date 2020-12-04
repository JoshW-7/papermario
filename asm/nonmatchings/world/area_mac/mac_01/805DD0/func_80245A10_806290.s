.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80245A10_806290
/* 806290 80245A10 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 806294 80245A14 AFB40040 */  sw        $s4, 0x40($sp)
/* 806298 80245A18 0080A02D */  daddu     $s4, $a0, $zero
/* 80629C 80245A1C AFBF0044 */  sw        $ra, 0x44($sp)
/* 8062A0 80245A20 AFB3003C */  sw        $s3, 0x3c($sp)
/* 8062A4 80245A24 AFB20038 */  sw        $s2, 0x38($sp)
/* 8062A8 80245A28 AFB10034 */  sw        $s1, 0x34($sp)
/* 8062AC 80245A2C AFB00030 */  sw        $s0, 0x30($sp)
/* 8062B0 80245A30 8E910148 */  lw        $s1, 0x148($s4)
/* 8062B4 80245A34 00A0902D */  daddu     $s2, $a1, $zero
/* 8062B8 80245A38 86240008 */  lh        $a0, 8($s1)
/* 8062BC 80245A3C 0C00EABB */  jal       get_npc_unsafe
/* 8062C0 80245A40 00C0982D */   daddu    $s3, $a2, $zero
/* 8062C4 80245A44 8E430014 */  lw        $v1, 0x14($s2)
/* 8062C8 80245A48 04600031 */  bltz      $v1, .L80245B10
/* 8062CC 80245A4C 0040802D */   daddu    $s0, $v0, $zero
/* 8062D0 80245A50 0260202D */  daddu     $a0, $s3, $zero
/* 8062D4 80245A54 AFA00010 */  sw        $zero, 0x10($sp)
/* 8062D8 80245A58 8E460024 */  lw        $a2, 0x24($s2)
/* 8062DC 80245A5C 8E470028 */  lw        $a3, 0x28($s2)
/* 8062E0 80245A60 0C01242D */  jal       func_800490B4
/* 8062E4 80245A64 0220282D */   daddu    $a1, $s1, $zero
/* 8062E8 80245A68 10400029 */  beqz      $v0, .L80245B10
/* 8062EC 80245A6C 0000202D */   daddu    $a0, $zero, $zero
/* 8062F0 80245A70 0200282D */  daddu     $a1, $s0, $zero
/* 8062F4 80245A74 0000302D */  daddu     $a2, $zero, $zero
/* 8062F8 80245A78 860300A8 */  lh        $v1, 0xa8($s0)
/* 8062FC 80245A7C 3C013F80 */  lui       $at, 0x3f80
/* 806300 80245A80 44810000 */  mtc1      $at, $f0
/* 806304 80245A84 3C014000 */  lui       $at, 0x4000
/* 806308 80245A88 44811000 */  mtc1      $at, $f2
/* 80630C 80245A8C 3C01C1A0 */  lui       $at, 0xc1a0
/* 806310 80245A90 44812000 */  mtc1      $at, $f4
/* 806314 80245A94 2402000F */  addiu     $v0, $zero, 0xf
/* 806318 80245A98 AFA2001C */  sw        $v0, 0x1c($sp)
/* 80631C 80245A9C 44833000 */  mtc1      $v1, $f6
/* 806320 80245AA0 00000000 */  nop       
/* 806324 80245AA4 468031A0 */  cvt.s.w   $f6, $f6
/* 806328 80245AA8 44073000 */  mfc1      $a3, $f6
/* 80632C 80245AAC 27A20028 */  addiu     $v0, $sp, 0x28
/* 806330 80245AB0 AFA20020 */  sw        $v0, 0x20($sp)
/* 806334 80245AB4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 806338 80245AB8 E7A20014 */  swc1      $f2, 0x14($sp)
/* 80633C 80245ABC 0C01BFA4 */  jal       fx_emote
/* 806340 80245AC0 E7A40018 */   swc1     $f4, 0x18($sp)
/* 806344 80245AC4 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 806348 80245AC8 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 80634C 80245ACC C60C0038 */  lwc1      $f12, 0x38($s0)
/* 806350 80245AD0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 806354 80245AD4 8C460028 */  lw        $a2, 0x28($v0)
/* 806358 80245AD8 0C00A720 */  jal       atan2
/* 80635C 80245ADC 8C470030 */   lw       $a3, 0x30($v0)
/* 806360 80245AE0 0200202D */  daddu     $a0, $s0, $zero
/* 806364 80245AE4 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 806368 80245AE8 3C060020 */  lui       $a2, 0x20
/* 80636C 80245AEC 0C012530 */  jal       func_800494C0
/* 806370 80245AF0 E480000C */   swc1     $f0, 0xc($a0)
/* 806374 80245AF4 8E220018 */  lw        $v0, 0x18($s1)
/* 806378 80245AF8 9442002A */  lhu       $v0, 0x2a($v0)
/* 80637C 80245AFC 30420001 */  andi      $v0, $v0, 1
/* 806380 80245B00 14400029 */  bnez      $v0, .L80245BA8
/* 806384 80245B04 2402000A */   addiu    $v0, $zero, 0xa
/* 806388 80245B08 080916EA */  j         .L80245BA8
/* 80638C 80245B0C 2402000C */   addiu    $v0, $zero, 0xc
.L80245B10:
/* 806390 80245B10 8602008C */  lh        $v0, 0x8c($s0)
/* 806394 80245B14 14400025 */  bnez      $v0, .L80245BAC
/* 806398 80245B18 00000000 */   nop      
/* 80639C 80245B1C 9602008E */  lhu       $v0, 0x8e($s0)
/* 8063A0 80245B20 2442FFFF */  addiu     $v0, $v0, -1
/* 8063A4 80245B24 A602008E */  sh        $v0, 0x8e($s0)
/* 8063A8 80245B28 00021400 */  sll       $v0, $v0, 0x10
/* 8063AC 80245B2C 1440001F */  bnez      $v0, .L80245BAC
/* 8063B0 80245B30 00000000 */   nop      
/* 8063B4 80245B34 8E820074 */  lw        $v0, 0x74($s4)
/* 8063B8 80245B38 2442FFFF */  addiu     $v0, $v0, -1
/* 8063BC 80245B3C 10400019 */  beqz      $v0, .L80245BA4
/* 8063C0 80245B40 AE820074 */   sw       $v0, 0x74($s4)
/* 8063C4 80245B44 8E220018 */  lw        $v0, 0x18($s1)
/* 8063C8 80245B48 9442002A */  lhu       $v0, 0x2a($v0)
/* 8063CC 80245B4C 30420010 */  andi      $v0, $v0, 0x10
/* 8063D0 80245B50 14400007 */  bnez      $v0, .L80245B70
/* 8063D4 80245B54 00000000 */   nop      
/* 8063D8 80245B58 C600000C */  lwc1      $f0, 0xc($s0)
/* 8063DC 80245B5C 3C014334 */  lui       $at, 0x4334
/* 8063E0 80245B60 44816000 */  mtc1      $at, $f12
/* 8063E4 80245B64 0C00A6C9 */  jal       clamp_angle
/* 8063E8 80245B68 460C0300 */   add.s    $f12, $f0, $f12
/* 8063EC 80245B6C E600000C */  swc1      $f0, 0xc($s0)
.L80245B70:
/* 8063F0 80245B70 8E440008 */  lw        $a0, 8($s2)
/* 8063F4 80245B74 000417C2 */  srl       $v0, $a0, 0x1f
/* 8063F8 80245B78 00822021 */  addu      $a0, $a0, $v0
/* 8063FC 80245B7C 00042043 */  sra       $a0, $a0, 1
/* 806400 80245B80 0C00A67F */  jal       rand_int
/* 806404 80245B84 24840001 */   addiu    $a0, $a0, 1
/* 806408 80245B88 8E430008 */  lw        $v1, 8($s2)
/* 80640C 80245B8C 000327C2 */  srl       $a0, $v1, 0x1f
/* 806410 80245B90 00641821 */  addu      $v1, $v1, $a0
/* 806414 80245B94 00031843 */  sra       $v1, $v1, 1
/* 806418 80245B98 00621821 */  addu      $v1, $v1, $v0
/* 80641C 80245B9C 080916EB */  j         .L80245BAC
/* 806420 80245BA0 A603008E */   sh       $v1, 0x8e($s0)
.L80245BA4:
/* 806424 80245BA4 24020004 */  addiu     $v0, $zero, 4
.L80245BA8:
/* 806428 80245BA8 AE820070 */  sw        $v0, 0x70($s4)
.L80245BAC:
/* 80642C 80245BAC 8FBF0044 */  lw        $ra, 0x44($sp)
/* 806430 80245BB0 8FB40040 */  lw        $s4, 0x40($sp)
/* 806434 80245BB4 8FB3003C */  lw        $s3, 0x3c($sp)
/* 806438 80245BB8 8FB20038 */  lw        $s2, 0x38($sp)
/* 80643C 80245BBC 8FB10034 */  lw        $s1, 0x34($sp)
/* 806440 80245BC0 8FB00030 */  lw        $s0, 0x30($sp)
/* 806444 80245BC4 03E00008 */  jr        $ra
/* 806448 80245BC8 27BD0048 */   addiu    $sp, $sp, 0x48
