.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80282880
/* 7E3700 80282880 3C028011 */  lui       $v0, %hi(gPlayerStatus)
/* 7E3704 80282884 2442EFC8 */  addiu     $v0, $v0, %lo(gPlayerStatus)
/* 7E3708 80282888 C4420028 */  lwc1      $f2, 0x28($v0)
/* 7E370C 8028288C C4800084 */  lwc1      $f0, 0x84($a0)
/* 7E3710 80282890 46800020 */  cvt.s.w   $f0, $f0
/* 7E3714 80282894 46020001 */  sub.s     $f0, $f0, $f2
/* 7E3718 80282898 3C013F00 */  lui       $at, 0x3f00
/* 7E371C 8028289C 44812000 */  mtc1      $at, $f4
/* 7E3720 802828A0 00000000 */  nop       
/* 7E3724 802828A4 46040002 */  mul.s     $f0, $f0, $f4
/* 7E3728 802828A8 00000000 */  nop       
/* 7E372C 802828AC 46001080 */  add.s     $f2, $f2, $f0
/* 7E3730 802828B0 E4420028 */  swc1      $f2, 0x28($v0)
/* 7E3734 802828B4 C4420030 */  lwc1      $f2, 0x30($v0)
/* 7E3738 802828B8 C480008C */  lwc1      $f0, 0x8c($a0)
/* 7E373C 802828BC 46800020 */  cvt.s.w   $f0, $f0
/* 7E3740 802828C0 46020001 */  sub.s     $f0, $f0, $f2
/* 7E3744 802828C4 46040002 */  mul.s     $f0, $f0, $f4
/* 7E3748 802828C8 00000000 */  nop       
/* 7E374C 802828CC 46001080 */  add.s     $f2, $f2, $f0
/* 7E3750 802828D0 E4420030 */  swc1      $f2, 0x30($v0)
/* 7E3754 802828D4 03E00008 */  jr        $ra
/* 7E3758 802828D8 24020002 */   addiu    $v0, $zero, 2
