.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024291C_C494FC
/* C494FC 8024291C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C49500 80242920 AFB3001C */  sw        $s3, 0x1c($sp)
/* C49504 80242924 0080982D */  daddu     $s3, $a0, $zero
/* C49508 80242928 AFBF0020 */  sw        $ra, 0x20($sp)
/* C4950C 8024292C AFB20018 */  sw        $s2, 0x18($sp)
/* C49510 80242930 AFB10014 */  sw        $s1, 0x14($sp)
/* C49514 80242934 AFB00010 */  sw        $s0, 0x10($sp)
/* C49518 80242938 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C4951C 8024293C 8E720148 */  lw        $s2, 0x148($s3)
/* C49520 80242940 86440008 */  lh        $a0, 8($s2)
/* C49524 80242944 0C00EABB */  jal       get_npc_unsafe
/* C49528 80242948 00A0882D */   daddu    $s1, $a1, $zero
/* C4952C 8024294C 0040802D */  daddu     $s0, $v0, $zero
/* C49530 80242950 9602008E */  lhu       $v0, 0x8e($s0)
/* C49534 80242954 2442FFFF */  addiu     $v0, $v0, -1
/* C49538 80242958 A602008E */  sh        $v0, 0x8e($s0)
/* C4953C 8024295C 00021400 */  sll       $v0, $v0, 0x10
/* C49540 80242960 1C40003C */  bgtz      $v0, .L80242A54
/* C49544 80242964 3C03FFDF */   lui      $v1, 0xffdf
/* C49548 80242968 8E020000 */  lw        $v0, ($s0)
/* C4954C 8024296C 3463FFFF */  ori       $v1, $v1, 0xffff
/* C49550 80242970 00431024 */  and       $v0, $v0, $v1
/* C49554 80242974 AE020000 */  sw        $v0, ($s0)
/* C49558 80242978 8E240020 */  lw        $a0, 0x20($s1)
/* C4955C 8024297C 000417C2 */  srl       $v0, $a0, 0x1f
/* C49560 80242980 00822021 */  addu      $a0, $a0, $v0
/* C49564 80242984 00042043 */  sra       $a0, $a0, 1
/* C49568 80242988 0C00A67F */  jal       rand_int
/* C4956C 8024298C 24840001 */   addiu    $a0, $a0, 1
/* C49570 80242990 8E230020 */  lw        $v1, 0x20($s1)
/* C49574 80242994 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C49578 80242998 000327C2 */  srl       $a0, $v1, 0x1f
/* C4957C 8024299C 00641821 */  addu      $v1, $v1, $a0
/* C49580 802429A0 00031843 */  sra       $v1, $v1, 1
/* C49584 802429A4 00621821 */  addu      $v1, $v1, $v0
/* C49588 802429A8 A603008E */  sh        $v1, 0x8e($s0)
/* C4958C 802429AC 8E4200CC */  lw        $v0, 0xcc($s2)
/* C49590 802429B0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C49594 802429B4 8C420020 */  lw        $v0, 0x20($v0)
/* C49598 802429B8 AE020028 */  sw        $v0, 0x28($s0)
/* C4959C 802429BC C6200018 */  lwc1      $f0, 0x18($s1)
/* C495A0 802429C0 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C495A4 802429C4 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C495A8 802429C8 E6000018 */  swc1      $f0, 0x18($s0)
/* C495AC 802429CC 8C460028 */  lw        $a2, 0x28($v0)
/* C495B0 802429D0 0C00A720 */  jal       atan2
/* C495B4 802429D4 8C470030 */   lw       $a3, 0x30($v0)
/* C495B8 802429D8 46000506 */  mov.s     $f20, $f0
/* C495BC 802429DC C60C000C */  lwc1      $f12, 0xc($s0)
/* C495C0 802429E0 0C00A70A */  jal       get_clamped_angle_diff
/* C495C4 802429E4 4600A386 */   mov.s    $f14, $f20
/* C495C8 802429E8 46000086 */  mov.s     $f2, $f0
/* C495CC 802429EC 8E22001C */  lw        $v0, 0x1c($s1)
/* C495D0 802429F0 46001005 */  abs.s     $f0, $f2
/* C495D4 802429F4 44822000 */  mtc1      $v0, $f4
/* C495D8 802429F8 00000000 */  nop       
/* C495DC 802429FC 46802120 */  cvt.s.w   $f4, $f4
/* C495E0 80242A00 4600203C */  c.lt.s    $f4, $f0
/* C495E4 80242A04 00000000 */  nop       
/* C495E8 80242A08 4500000D */  bc1f      .L80242A40
/* C495EC 80242A0C 00000000 */   nop      
/* C495F0 80242A10 44800000 */  mtc1      $zero, $f0
/* C495F4 80242A14 C614000C */  lwc1      $f20, 0xc($s0)
/* C495F8 80242A18 4600103C */  c.lt.s    $f2, $f0
/* C495FC 80242A1C 00000000 */  nop       
/* C49600 80242A20 45000006 */  bc1f      .L80242A3C
/* C49604 80242A24 00021023 */   negu     $v0, $v0
/* C49608 80242A28 44820000 */  mtc1      $v0, $f0
/* C4960C 80242A2C 00000000 */  nop       
/* C49610 80242A30 46800020 */  cvt.s.w   $f0, $f0
/* C49614 80242A34 08090A90 */  j         .L80242A40
/* C49618 80242A38 4600A500 */   add.s    $f20, $f20, $f0
.L80242A3C:
/* C4961C 80242A3C 4604A500 */  add.s     $f20, $f20, $f4
.L80242A40:
/* C49620 80242A40 0C00A6C9 */  jal       clamp_angle
/* C49624 80242A44 4600A306 */   mov.s    $f12, $f20
/* C49628 80242A48 2402000D */  addiu     $v0, $zero, 0xd
/* C4962C 80242A4C E600000C */  swc1      $f0, 0xc($s0)
/* C49630 80242A50 AE620070 */  sw        $v0, 0x70($s3)
.L80242A54:
/* C49634 80242A54 8FBF0020 */  lw        $ra, 0x20($sp)
/* C49638 80242A58 8FB3001C */  lw        $s3, 0x1c($sp)
/* C4963C 80242A5C 8FB20018 */  lw        $s2, 0x18($sp)
/* C49640 80242A60 8FB10014 */  lw        $s1, 0x14($sp)
/* C49644 80242A64 8FB00010 */  lw        $s0, 0x10($sp)
/* C49648 80242A68 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C4964C 80242A6C 03E00008 */  jr        $ra
/* C49650 80242A70 27BD0030 */   addiu    $sp, $sp, 0x30
