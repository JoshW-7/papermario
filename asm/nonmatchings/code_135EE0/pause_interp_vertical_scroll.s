.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_interp_vertical_scroll
/* 1367AC 8024346C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1367B0 80243470 AFB00010 */  sw        $s0, 0x10($sp)
/* 1367B4 80243474 04810002 */  bgez      $a0, .L80243480
/* 1367B8 80243478 0080802D */   daddu    $s0, $a0, $zero
/* 1367BC 8024347C 00108023 */  negu      $s0, $s0
.L80243480:
/* 1367C0 80243480 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1367C4 80243484 0C00A52C */  jal       sign
/* 1367C8 80243488 00000000 */   nop      
/* 1367CC 8024348C 0040182D */  daddu     $v1, $v0, $zero
/* 1367D0 80243490 2A020010 */  slti      $v0, $s0, 0x10
/* 1367D4 80243494 14400008 */  bnez      $v0, .L802434B8
/* 1367D8 80243498 001017C2 */   srl      $v0, $s0, 0x1f
/* 1367DC 8024349C 02021021 */  addu      $v0, $s0, $v0
/* 1367E0 802434A0 00022043 */  sra       $a0, $v0, 1
/* 1367E4 802434A4 28820015 */  slti      $v0, $a0, 0x15
/* 1367E8 802434A8 50400006 */  beql      $v0, $zero, .L802434C4
/* 1367EC 802434AC 24040014 */   addiu    $a0, $zero, 0x14
/* 1367F0 802434B0 08090D32 */  j         .L802434C8
/* 1367F4 802434B4 00830018 */   mult     $a0, $v1
.L802434B8:
/* 1367F8 802434B8 3C048025 */  lui       $a0, %hi(gPauseMenuPageScrollInterpEasingLUT)
/* 1367FC 802434BC 00902021 */  addu      $a0, $a0, $s0
/* 136800 802434C0 9084F0BC */  lbu       $a0, %lo(gPauseMenuPageScrollInterpEasingLUT)($a0)
.L802434C4:
/* 136804 802434C4 00830018 */  mult      $a0, $v1
.L802434C8:
/* 136808 802434C8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 13680C 802434CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 136810 802434D0 00001012 */  mflo      $v0
/* 136814 802434D4 03E00008 */  jr        $ra
/* 136818 802434D8 27BD0018 */   addiu    $sp, $sp, 0x18
