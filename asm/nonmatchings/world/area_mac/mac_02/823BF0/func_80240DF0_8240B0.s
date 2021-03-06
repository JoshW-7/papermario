.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240DF0_8240B0
/* 8240B0 80240DF0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8240B4 80240DF4 AFB40040 */  sw        $s4, 0x40($sp)
/* 8240B8 80240DF8 0080A02D */  daddu     $s4, $a0, $zero
/* 8240BC 80240DFC AFBF0044 */  sw        $ra, 0x44($sp)
/* 8240C0 80240E00 AFB3003C */  sw        $s3, 0x3c($sp)
/* 8240C4 80240E04 AFB20038 */  sw        $s2, 0x38($sp)
/* 8240C8 80240E08 AFB10034 */  sw        $s1, 0x34($sp)
/* 8240CC 80240E0C AFB00030 */  sw        $s0, 0x30($sp)
/* 8240D0 80240E10 8E910148 */  lw        $s1, 0x148($s4)
/* 8240D4 80240E14 00A0902D */  daddu     $s2, $a1, $zero
/* 8240D8 80240E18 86240008 */  lh        $a0, 8($s1)
/* 8240DC 80240E1C 0C00EABB */  jal       get_npc_unsafe
/* 8240E0 80240E20 00C0982D */   daddu    $s3, $a2, $zero
/* 8240E4 80240E24 8E430014 */  lw        $v1, 0x14($s2)
/* 8240E8 80240E28 04600031 */  bltz      $v1, .L80240EF0
/* 8240EC 80240E2C 0040802D */   daddu    $s0, $v0, $zero
/* 8240F0 80240E30 0260202D */  daddu     $a0, $s3, $zero
/* 8240F4 80240E34 AFA00010 */  sw        $zero, 0x10($sp)
/* 8240F8 80240E38 8E460024 */  lw        $a2, 0x24($s2)
/* 8240FC 80240E3C 8E470028 */  lw        $a3, 0x28($s2)
/* 824100 80240E40 0C01242D */  jal       func_800490B4
/* 824104 80240E44 0220282D */   daddu    $a1, $s1, $zero
/* 824108 80240E48 10400029 */  beqz      $v0, .L80240EF0
/* 82410C 80240E4C 0000202D */   daddu    $a0, $zero, $zero
/* 824110 80240E50 0200282D */  daddu     $a1, $s0, $zero
/* 824114 80240E54 0000302D */  daddu     $a2, $zero, $zero
/* 824118 80240E58 860300A8 */  lh        $v1, 0xa8($s0)
/* 82411C 80240E5C 3C013F80 */  lui       $at, 0x3f80
/* 824120 80240E60 44810000 */  mtc1      $at, $f0
/* 824124 80240E64 3C014000 */  lui       $at, 0x4000
/* 824128 80240E68 44811000 */  mtc1      $at, $f2
/* 82412C 80240E6C 3C01C1A0 */  lui       $at, 0xc1a0
/* 824130 80240E70 44812000 */  mtc1      $at, $f4
/* 824134 80240E74 2402000F */  addiu     $v0, $zero, 0xf
/* 824138 80240E78 AFA2001C */  sw        $v0, 0x1c($sp)
/* 82413C 80240E7C 44833000 */  mtc1      $v1, $f6
/* 824140 80240E80 00000000 */  nop       
/* 824144 80240E84 468031A0 */  cvt.s.w   $f6, $f6
/* 824148 80240E88 44073000 */  mfc1      $a3, $f6
/* 82414C 80240E8C 27A20028 */  addiu     $v0, $sp, 0x28
/* 824150 80240E90 AFA20020 */  sw        $v0, 0x20($sp)
/* 824154 80240E94 E7A00010 */  swc1      $f0, 0x10($sp)
/* 824158 80240E98 E7A20014 */  swc1      $f2, 0x14($sp)
/* 82415C 80240E9C 0C01BFA4 */  jal       fx_emote
/* 824160 80240EA0 E7A40018 */   swc1     $f4, 0x18($sp)
/* 824164 80240EA4 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 824168 80240EA8 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 82416C 80240EAC C60C0038 */  lwc1      $f12, 0x38($s0)
/* 824170 80240EB0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 824174 80240EB4 8C460028 */  lw        $a2, 0x28($v0)
/* 824178 80240EB8 0C00A720 */  jal       atan2
/* 82417C 80240EBC 8C470030 */   lw       $a3, 0x30($v0)
/* 824180 80240EC0 0200202D */  daddu     $a0, $s0, $zero
/* 824184 80240EC4 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 824188 80240EC8 3C060020 */  lui       $a2, 0x20
/* 82418C 80240ECC 0C012530 */  jal       func_800494C0
/* 824190 80240ED0 E480000C */   swc1     $f0, 0xc($a0)
/* 824194 80240ED4 8E220018 */  lw        $v0, 0x18($s1)
/* 824198 80240ED8 9442002A */  lhu       $v0, 0x2a($v0)
/* 82419C 80240EDC 30420001 */  andi      $v0, $v0, 1
/* 8241A0 80240EE0 14400029 */  bnez      $v0, .L80240F88
/* 8241A4 80240EE4 2402000A */   addiu    $v0, $zero, 0xa
/* 8241A8 80240EE8 080903E2 */  j         .L80240F88
/* 8241AC 80240EEC 2402000C */   addiu    $v0, $zero, 0xc
.L80240EF0:
/* 8241B0 80240EF0 8602008C */  lh        $v0, 0x8c($s0)
/* 8241B4 80240EF4 14400025 */  bnez      $v0, .L80240F8C
/* 8241B8 80240EF8 00000000 */   nop      
/* 8241BC 80240EFC 9602008E */  lhu       $v0, 0x8e($s0)
/* 8241C0 80240F00 2442FFFF */  addiu     $v0, $v0, -1
/* 8241C4 80240F04 A602008E */  sh        $v0, 0x8e($s0)
/* 8241C8 80240F08 00021400 */  sll       $v0, $v0, 0x10
/* 8241CC 80240F0C 1440001F */  bnez      $v0, .L80240F8C
/* 8241D0 80240F10 00000000 */   nop      
/* 8241D4 80240F14 8E820074 */  lw        $v0, 0x74($s4)
/* 8241D8 80240F18 2442FFFF */  addiu     $v0, $v0, -1
/* 8241DC 80240F1C 10400019 */  beqz      $v0, .L80240F84
/* 8241E0 80240F20 AE820074 */   sw       $v0, 0x74($s4)
/* 8241E4 80240F24 8E220018 */  lw        $v0, 0x18($s1)
/* 8241E8 80240F28 9442002A */  lhu       $v0, 0x2a($v0)
/* 8241EC 80240F2C 30420010 */  andi      $v0, $v0, 0x10
/* 8241F0 80240F30 14400007 */  bnez      $v0, .L80240F50
/* 8241F4 80240F34 00000000 */   nop      
/* 8241F8 80240F38 C600000C */  lwc1      $f0, 0xc($s0)
/* 8241FC 80240F3C 3C014334 */  lui       $at, 0x4334
/* 824200 80240F40 44816000 */  mtc1      $at, $f12
/* 824204 80240F44 0C00A6C9 */  jal       clamp_angle
/* 824208 80240F48 460C0300 */   add.s    $f12, $f0, $f12
/* 82420C 80240F4C E600000C */  swc1      $f0, 0xc($s0)
.L80240F50:
/* 824210 80240F50 8E440008 */  lw        $a0, 8($s2)
/* 824214 80240F54 000417C2 */  srl       $v0, $a0, 0x1f
/* 824218 80240F58 00822021 */  addu      $a0, $a0, $v0
/* 82421C 80240F5C 00042043 */  sra       $a0, $a0, 1
/* 824220 80240F60 0C00A67F */  jal       rand_int
/* 824224 80240F64 24840001 */   addiu    $a0, $a0, 1
/* 824228 80240F68 8E430008 */  lw        $v1, 8($s2)
/* 82422C 80240F6C 000327C2 */  srl       $a0, $v1, 0x1f
/* 824230 80240F70 00641821 */  addu      $v1, $v1, $a0
/* 824234 80240F74 00031843 */  sra       $v1, $v1, 1
/* 824238 80240F78 00621821 */  addu      $v1, $v1, $v0
/* 82423C 80240F7C 080903E3 */  j         .L80240F8C
/* 824240 80240F80 A603008E */   sh       $v1, 0x8e($s0)
.L80240F84:
/* 824244 80240F84 24020004 */  addiu     $v0, $zero, 4
.L80240F88:
/* 824248 80240F88 AE820070 */  sw        $v0, 0x70($s4)
.L80240F8C:
/* 82424C 80240F8C 8FBF0044 */  lw        $ra, 0x44($sp)
/* 824250 80240F90 8FB40040 */  lw        $s4, 0x40($sp)
/* 824254 80240F94 8FB3003C */  lw        $s3, 0x3c($sp)
/* 824258 80240F98 8FB20038 */  lw        $s2, 0x38($sp)
/* 82425C 80240F9C 8FB10034 */  lw        $s1, 0x34($sp)
/* 824260 80240FA0 8FB00030 */  lw        $s0, 0x30($sp)
/* 824264 80240FA4 03E00008 */  jr        $ra
/* 824268 80240FA8 27BD0048 */   addiu    $sp, $sp, 0x48
