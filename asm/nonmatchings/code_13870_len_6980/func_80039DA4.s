.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80039DA4
/* 151A4 80039DA4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 151A8 80039DA8 AFB10014 */  sw        $s1, 0x14($sp)
/* 151AC 80039DAC 0080882D */  daddu     $s1, $a0, $zero
/* 151B0 80039DB0 3C03800A */  lui       $v1, %hi(D_8009A634)
/* 151B4 80039DB4 8463A634 */  lh        $v1, %lo(D_8009A634)($v1)
/* 151B8 80039DB8 3C04800B */  lui       $a0, %hi(gCameras)
/* 151BC 80039DBC 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* 151C0 80039DC0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 151C4 80039DC4 AFB00010 */  sw        $s0, 0x10($sp)
/* 151C8 80039DC8 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 151CC 80039DCC F7B40020 */  sdc1      $f20, 0x20($sp)
/* 151D0 80039DD0 00031080 */  sll       $v0, $v1, 2
/* 151D4 80039DD4 00431021 */  addu      $v0, $v0, $v1
/* 151D8 80039DD8 00021080 */  sll       $v0, $v0, 2
/* 151DC 80039DDC 00431023 */  subu      $v0, $v0, $v1
/* 151E0 80039DE0 000218C0 */  sll       $v1, $v0, 3
/* 151E4 80039DE4 00431021 */  addu      $v0, $v0, $v1
/* 151E8 80039DE8 000210C0 */  sll       $v0, $v0, 3
/* 151EC 80039DEC 3C03800A */  lui       $v1, %hi(D_8009A650)
/* 151F0 80039DF0 8C63A650 */  lw        $v1, %lo(D_8009A650)($v1)
/* 151F4 80039DF4 3063C000 */  andi      $v1, $v1, 0xc000
/* 151F8 80039DF8 1460006C */  bnez      $v1, .L80039FAC
/* 151FC 80039DFC 00441021 */   addu     $v0, $v0, $a0
/* 15200 80039E00 C456006C */  lwc1      $f22, 0x6c($v0)
/* 15204 80039E04 C62E000C */  lwc1      $f14, 0xc($s1)
/* 15208 80039E08 0C00A70A */  jal       get_clamped_angle_diff
/* 1520C 80039E0C 4600B306 */   mov.s    $f12, $f22
/* 15210 80039E10 3C01C0A0 */  lui       $at, 0xc0a0
/* 15214 80039E14 44811000 */  mtc1      $at, $f2
/* 15218 80039E18 46000306 */  mov.s     $f12, $f0
/* 1521C 80039E1C 4602603C */  c.lt.s    $f12, $f2
/* 15220 80039E20 00000000 */  nop       
/* 15224 80039E24 4500000B */  bc1f      .L80039E54
/* 15228 80039E28 00000000 */   nop      
/* 1522C 80039E2C 3C01C32F */  lui       $at, 0xc32f
/* 15230 80039E30 44810000 */  mtc1      $at, $f0
/* 15234 80039E34 00000000 */  nop       
/* 15238 80039E38 460C003C */  c.lt.s    $f0, $f12
/* 1523C 80039E3C 00000000 */  nop       
/* 15240 80039E40 45000004 */  bc1f      .L80039E54
/* 15244 80039E44 0000802D */   daddu    $s0, $zero, $zero
/* 15248 80039E48 44806000 */  mtc1      $zero, $f12
/* 1524C 80039E4C 0800E7AC */  j         .L80039EB0
/* 15250 80039E50 00000000 */   nop      
.L80039E54:
/* 15254 80039E54 3C0140A0 */  lui       $at, 0x40a0
/* 15258 80039E58 44810000 */  mtc1      $at, $f0
/* 1525C 80039E5C 00000000 */  nop       
/* 15260 80039E60 460C003C */  c.lt.s    $f0, $f12
/* 15264 80039E64 00000000 */  nop       
/* 15268 80039E68 4500000C */  bc1f      .L80039E9C
/* 1526C 80039E6C 00000000 */   nop      
/* 15270 80039E70 3C01432F */  lui       $at, 0x432f
/* 15274 80039E74 44810000 */  mtc1      $at, $f0
/* 15278 80039E78 00000000 */  nop       
/* 1527C 80039E7C 4600603C */  c.lt.s    $f12, $f0
/* 15280 80039E80 00000000 */  nop       
/* 15284 80039E84 45000005 */  bc1f      .L80039E9C
/* 15288 80039E88 24100001 */   addiu    $s0, $zero, 1
/* 1528C 80039E8C 3C014334 */  lui       $at, 0x4334
/* 15290 80039E90 44816000 */  mtc1      $at, $f12
/* 15294 80039E94 0800E7AC */  j         .L80039EB0
/* 15298 80039E98 00000000 */   nop      
.L80039E9C:
/* 1529C 80039E9C 8622008A */  lh        $v0, 0x8a($s1)
/* 152A0 80039EA0 24100002 */  addiu     $s0, $zero, 2
/* 152A4 80039EA4 44826000 */  mtc1      $v0, $f12
/* 152A8 80039EA8 00000000 */  nop       
/* 152AC 80039EAC 46806320 */  cvt.s.w   $f12, $f12
.L80039EB0:
/* 152B0 80039EB0 0C00A6C9 */  jal       clamp_angle
/* 152B4 80039EB4 00000000 */   nop      
/* 152B8 80039EB8 46000506 */  mov.s     $f20, $f0
/* 152BC 80039EBC 4600A10D */  trunc.w.s $f4, $f20
/* 152C0 80039EC0 44022000 */  mfc1      $v0, $f4
/* 152C4 80039EC4 00000000 */  nop       
/* 152C8 80039EC8 A622008A */  sh        $v0, 0x8a($s1)
/* 152CC 80039ECC 8E220000 */  lw        $v0, ($s1)
/* 152D0 80039ED0 3C030004 */  lui       $v1, 4
/* 152D4 80039ED4 00431024 */  and       $v0, $v0, $v1
/* 152D8 80039ED8 14400034 */  bnez      $v0, .L80039FAC
/* 152DC 80039EDC 00000000 */   nop      
/* 152E0 80039EE0 86220088 */  lh        $v0, 0x88($s1)
/* 152E4 80039EE4 10500016 */  beq       $v0, $s0, .L80039F40
/* 152E8 80039EE8 24020002 */   addiu    $v0, $zero, 2
/* 152EC 80039EEC 12020014 */  beq       $s0, $v0, .L80039F40
/* 152F0 80039EF0 00000000 */   nop      
/* 152F4 80039EF4 12000003 */  beqz      $s0, .L80039F04
/* 152F8 80039EF8 A6300088 */   sh       $s0, 0x88($s1)
/* 152FC 80039EFC 0800E7C2 */  j         .L80039F08
/* 15300 80039F00 240200B4 */   addiu    $v0, $zero, 0xb4
.L80039F04:
/* 15304 80039F04 2402FF4C */  addiu     $v0, $zero, -0xb4
.L80039F08:
/* 15308 80039F08 A622008C */  sh        $v0, 0x8c($s1)
/* 1530C 80039F0C C62E000C */  lwc1      $f14, 0xc($s1)
/* 15310 80039F10 0C00A70A */  jal       get_clamped_angle_diff
/* 15314 80039F14 4600B306 */   mov.s    $f12, $f22
/* 15318 80039F18 3C0142B4 */  lui       $at, 0x42b4
/* 1531C 80039F1C 44811000 */  mtc1      $at, $f2
/* 15320 80039F20 46000005 */  abs.s     $f0, $f0
/* 15324 80039F24 4600103E */  c.le.s    $f2, $f0
/* 15328 80039F28 00000000 */  nop       
/* 1532C 80039F2C 45000004 */  bc1f      .L80039F40
/* 15330 80039F30 00000000 */   nop      
/* 15334 80039F34 9622008C */  lhu       $v0, 0x8c($s1)
/* 15338 80039F38 00021023 */  negu      $v0, $v0
/* 1533C 80039F3C A622008C */  sh        $v0, 0x8c($s1)
.L80039F40:
/* 15340 80039F40 8623008C */  lh        $v1, 0x8c($s1)
/* 15344 80039F44 10600009 */  beqz      $v1, .L80039F6C
/* 15348 80039F48 9622008C */   lhu      $v0, 0x8c($s1)
/* 1534C 80039F4C 04610002 */  bgez      $v1, .L80039F58
/* 15350 80039F50 24420014 */   addiu    $v0, $v0, 0x14
/* 15354 80039F54 A622008C */  sh        $v0, 0x8c($s1)
.L80039F58:
/* 15358 80039F58 8622008C */  lh        $v0, 0x8c($s1)
/* 1535C 80039F5C 9623008C */  lhu       $v1, 0x8c($s1)
/* 15360 80039F60 18400002 */  blez      $v0, .L80039F6C
/* 15364 80039F64 2462FFEC */   addiu    $v0, $v1, -0x14
/* 15368 80039F68 A622008C */  sh        $v0, 0x8c($s1)
.L80039F6C:
/* 1536C 80039F6C 8E220000 */  lw        $v0, ($s1)
/* 15370 80039F70 3C030020 */  lui       $v1, 0x20
/* 15374 80039F74 00431024 */  and       $v0, $v0, $v1
/* 15378 80039F78 54400001 */  bnel      $v0, $zero, .L80039F80
/* 1537C 80039F7C A620008C */   sh       $zero, 0x8c($s1)
.L80039F80:
/* 15380 80039F80 8622008C */  lh        $v0, 0x8c($s1)
/* 15384 80039F84 44826000 */  mtc1      $v0, $f12
/* 15388 80039F88 00000000 */  nop       
/* 1538C 80039F8C 46806320 */  cvt.s.w   $f12, $f12
/* 15390 80039F90 0C00A6C9 */  jal       clamp_angle
/* 15394 80039F94 46146300 */   add.s    $f12, $f12, $f20
/* 15398 80039F98 0C00A6C9 */  jal       clamp_angle
/* 1539C 80039F9C 46160301 */   sub.s    $f12, $f0, $f22
/* 153A0 80039FA0 46000506 */  mov.s     $f20, $f0
/* 153A4 80039FA4 0800E7EC */  j         .L80039FB0
/* 153A8 80039FA8 E6340034 */   swc1     $f20, 0x34($s1)
.L80039FAC:
/* 153AC 80039FAC C6340034 */  lwc1      $f20, 0x34($s1)
.L80039FB0:
/* 153B0 80039FB0 4600A006 */  mov.s     $f0, $f20
/* 153B4 80039FB4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 153B8 80039FB8 8FB10014 */  lw        $s1, 0x14($sp)
/* 153BC 80039FBC 8FB00010 */  lw        $s0, 0x10($sp)
/* 153C0 80039FC0 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 153C4 80039FC4 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 153C8 80039FC8 03E00008 */  jr        $ra
/* 153CC 80039FCC 27BD0030 */   addiu    $sp, $sp, 0x30
