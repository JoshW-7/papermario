.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802417B4_8ED5D4
/* 8ED5D4 802417B4 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x2)
/* 8ED5D8 802417B8 8463A552 */  lh        $v1, %lo(gCollisionStatus+0x2)($v1)
/* 8ED5DC 802417BC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8ED5E0 802417C0 AFB00010 */  sw        $s0, 0x10($sp)
/* 8ED5E4 802417C4 0080802D */  daddu     $s0, $a0, $zero
/* 8ED5E8 802417C8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 8ED5EC 802417CC 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 8ED5F0 802417D0 10620003 */  beq       $v1, $v0, .L802417E0
/* 8ED5F4 802417D4 24020002 */   addiu    $v0, $zero, 2
/* 8ED5F8 802417D8 08090618 */  j         .L80241860
/* 8ED5FC 802417DC AE000084 */   sw       $zero, 0x84($s0)
.L802417E0:
/* 8ED600 802417E0 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 8ED604 802417E4 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 8ED608 802417E8 80620040 */  lb        $v0, 0x40($v1)
/* 8ED60C 802417EC 80670044 */  lb        $a3, 0x44($v1)
/* 8ED610 802417F0 04420001 */  bltzl     $v0, .L802417F8
/* 8ED614 802417F4 00021023 */   negu     $v0, $v0
.L802417F8:
/* 8ED618 802417F8 14400003 */  bnez      $v0, .L80241808
/* 8ED61C 802417FC 00000000 */   nop      
/* 8ED620 80241800 50E00017 */  beql      $a3, $zero, .L80241860
/* 8ED624 80241804 0000102D */   daddu    $v0, $zero, $zero
.L80241808:
/* 8ED628 80241808 44822000 */  mtc1      $v0, $f4
/* 8ED62C 8024180C 00000000 */  nop       
/* 8ED630 80241810 46802120 */  cvt.s.w   $f4, $f4
/* 8ED634 80241814 44062000 */  mfc1      $a2, $f4
/* 8ED638 80241818 44872000 */  mtc1      $a3, $f4
/* 8ED63C 8024181C 00000000 */  nop       
/* 8ED640 80241820 46802120 */  cvt.s.w   $f4, $f4
/* 8ED644 80241824 44806000 */  mtc1      $zero, $f12
/* 8ED648 80241828 44072000 */  mfc1      $a3, $f4
/* 8ED64C 8024182C 0C00A720 */  jal       atan2
/* 8ED650 80241830 46006386 */   mov.s    $f14, $f12
/* 8ED654 80241834 3C014270 */  lui       $at, 0x4270
/* 8ED658 80241838 44811000 */  mtc1      $at, $f2
/* 8ED65C 8024183C 00000000 */  nop       
/* 8ED660 80241840 4602003C */  c.lt.s    $f0, $f2
/* 8ED664 80241844 00000000 */  nop       
/* 8ED668 80241848 45000004 */  bc1f      .L8024185C
/* 8ED66C 8024184C 24020001 */   addiu    $v0, $zero, 1
/* 8ED670 80241850 AE020084 */  sw        $v0, 0x84($s0)
/* 8ED674 80241854 08090618 */  j         .L80241860
/* 8ED678 80241858 24020002 */   addiu    $v0, $zero, 2
.L8024185C:
/* 8ED67C 8024185C 0000102D */  daddu     $v0, $zero, $zero
.L80241860:
/* 8ED680 80241860 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8ED684 80241864 8FB00010 */  lw        $s0, 0x10($sp)
/* 8ED688 80241868 03E00008 */  jr        $ra
/* 8ED68C 8024186C 27BD0018 */   addiu    $sp, $sp, 0x18
