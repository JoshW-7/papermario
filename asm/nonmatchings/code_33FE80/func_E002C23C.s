.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E002C23C
/* 3400BC E002C23C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3400C0 E002C240 AFBF0010 */  sw        $ra, 0x10($sp)
/* 3400C4 E002C244 8C85000C */  lw        $a1, 0xc($a0)
/* 3400C8 E002C248 8CA20024 */  lw        $v0, 0x24($a1)
/* 3400CC E002C24C 1440001A */  bnez      $v0, .LE002C2B8
/* 3400D0 E002C250 00000000 */   nop      
/* 3400D4 E002C254 C4A00014 */  lwc1      $f0, 0x14($a1)
/* 3400D8 E002C258 3C01E003 */  lui       $at, %hi(D_E002C9D8)
/* 3400DC E002C25C D422C9D8 */  ldc1      $f2, %lo(D_E002C9D8)($at)
/* 3400E0 E002C260 C4A6002C */  lwc1      $f6, 0x2c($a1)
/* 3400E4 E002C264 46000021 */  cvt.d.s   $f0, $f0
/* 3400E8 E002C268 46220000 */  add.d     $f0, $f0, $f2
/* 3400EC E002C26C C4A40038 */  lwc1      $f4, 0x38($a1)
/* 3400F0 E002C270 C4A8000C */  lwc1      $f8, 0xc($a1)
/* 3400F4 E002C274 46043180 */  add.s     $f6, $f6, $f4
/* 3400F8 E002C278 C4A20004 */  lwc1      $f2, 4($a1)
/* 3400FC E002C27C 46200020 */  cvt.s.d   $f0, $f0
/* 340100 E002C280 46001080 */  add.s     $f2, $f2, $f0
/* 340104 E002C284 C4A4003C */  lwc1      $f4, 0x3c($a1)
/* 340108 E002C288 E4A20004 */  swc1      $f2, 4($a1)
/* 34010C E002C28C C4A20030 */  lwc1      $f2, 0x30($a1)
/* 340110 E002C290 C4AA0004 */  lwc1      $f10, 4($a1)
/* 340114 E002C294 46041080 */  add.s     $f2, $f2, $f4
/* 340118 E002C298 E4A00014 */  swc1      $f0, 0x14($a1)
/* 34011C E002C29C E4A6002C */  swc1      $f6, 0x2c($a1)
/* 340120 E002C2A0 4608503E */  c.le.s    $f10, $f8
/* 340124 E002C2A4 00000000 */  nop       
/* 340128 E002C2A8 45000003 */  bc1f      .LE002C2B8
/* 34012C E002C2AC E4A20030 */   swc1     $f2, 0x30($a1)
/* 340130 E002C2B0 24020001 */  addiu     $v0, $zero, 1
/* 340134 E002C2B4 ACA20024 */  sw        $v0, 0x24($a1)
.LE002C2B8:
/* 340138 E002C2B8 8CA30024 */  lw        $v1, 0x24($a1)
/* 34013C E002C2BC 24020001 */  addiu     $v0, $zero, 1
/* 340140 E002C2C0 14620040 */  bne       $v1, $v0, .LE002C3C4
/* 340144 E002C2C4 00000000 */   nop      
/* 340148 E002C2C8 8CA20020 */  lw        $v0, 0x20($a1)
/* 34014C E002C2CC 2442FFFF */  addiu     $v0, $v0, -1
/* 340150 E002C2D0 04410005 */  bgez      $v0, .LE002C2E8
/* 340154 E002C2D4 ACA20020 */   sw       $v0, 0x20($a1)
/* 340158 E002C2D8 0C080128 */  jal       func_E02004A0
/* 34015C E002C2DC 00000000 */   nop      
/* 340160 E002C2E0 0800B0F1 */  j         .LE002C3C4
/* 340164 E002C2E4 00000000 */   nop      
.LE002C2E8:
/* 340168 E002C2E8 2842000A */  slti      $v0, $v0, 0xa
/* 34016C E002C2EC 10400009 */  beqz      $v0, .LE002C314
/* 340170 E002C2F0 00000000 */   nop      
/* 340174 E002C2F4 3C01E003 */  lui       $at, %hi(D_E002C9E0)
/* 340178 E002C2F8 D422C9E0 */  ldc1      $f2, %lo(D_E002C9E0)($at)
/* 34017C E002C2FC C4A00028 */  lwc1      $f0, 0x28($a1)
/* 340180 E002C300 46800021 */  cvt.d.w   $f0, $f0
/* 340184 E002C304 46220002 */  mul.d     $f0, $f0, $f2
/* 340188 E002C308 00000000 */  nop       
/* 34018C E002C30C 4620038D */  trunc.w.d $f14, $f0
/* 340190 E002C310 E4AE0028 */  swc1      $f14, 0x28($a1)
.LE002C314:
/* 340194 E002C314 8C820008 */  lw        $v0, 8($a0)
/* 340198 E002C318 24060001 */  addiu     $a2, $zero, 1
/* 34019C E002C31C 00C2102A */  slt       $v0, $a2, $v0
/* 3401A0 E002C320 10400028 */  beqz      $v0, .LE002C3C4
/* 3401A4 E002C324 24A50040 */   addiu    $a1, $a1, 0x40
/* 3401A8 E002C328 24A30034 */  addiu     $v1, $a1, 0x34
/* 3401AC E002C32C 3C01E003 */  lui       $at, %hi(D_E002C9E8)
/* 3401B0 E002C330 D428C9E8 */  ldc1      $f8, %lo(D_E002C9E8)($at)
/* 3401B4 E002C334 3C01E003 */  lui       $at, %hi(D_E002C9F0)
/* 3401B8 E002C338 D426C9F0 */  ldc1      $f6, %lo(D_E002C9F0)($at)
/* 3401BC E002C33C 3C014120 */  lui       $at, 0x4120
/* 3401C0 E002C340 44816000 */  mtc1      $at, $f12
/* 3401C4 E002C344 3C0141A0 */  lui       $at, 0x41a0
/* 3401C8 E002C348 44815000 */  mtc1      $at, $f10
.LE002C34C:
/* 3401CC E002C34C C462FFDC */  lwc1      $f2, -0x24($v1)
/* 3401D0 E002C350 460010A1 */  cvt.d.s   $f2, $f2
/* 3401D4 E002C354 46261082 */  mul.d     $f2, $f2, $f6
/* 3401D8 E002C358 00000000 */  nop       
/* 3401DC E002C35C C460FFE0 */  lwc1      $f0, -0x20($v1)
/* 3401E0 E002C360 46000021 */  cvt.d.s   $f0, $f0
/* 3401E4 E002C364 46280000 */  add.d     $f0, $f0, $f8
/* 3401E8 E002C368 46200020 */  cvt.s.d   $f0, $f0
/* 3401EC E002C36C E460FFE0 */  swc1      $f0, -0x20($v1)
/* 3401F0 E002C370 462010A0 */  cvt.s.d   $f2, $f2
/* 3401F4 E002C374 E462FFDC */  swc1      $f2, -0x24($v1)
/* 3401F8 E002C378 C4A00000 */  lwc1      $f0, ($a1)
/* 3401FC E002C37C 46020000 */  add.s     $f0, $f0, $f2
/* 340200 E002C380 E4A00000 */  swc1      $f0, ($a1)
/* 340204 E002C384 C464FFD0 */  lwc1      $f4, -0x30($v1)
/* 340208 E002C388 C460FFE0 */  lwc1      $f0, -0x20($v1)
/* 34020C E002C38C 46002100 */  add.s     $f4, $f4, $f0
/* 340210 E002C390 C462FFF8 */  lwc1      $f2, -8($v1)
/* 340214 E002C394 24C60001 */  addiu     $a2, $a2, 1
/* 340218 E002C398 460C1080 */  add.s     $f2, $f2, $f12
/* 34021C E002C39C C4600000 */  lwc1      $f0, ($v1)
/* 340220 E002C3A0 24A50040 */  addiu     $a1, $a1, 0x40
/* 340224 E002C3A4 460A0000 */  add.s     $f0, $f0, $f10
/* 340228 E002C3A8 E464FFD0 */  swc1      $f4, -0x30($v1)
/* 34022C E002C3AC E462FFF8 */  swc1      $f2, -8($v1)
/* 340230 E002C3B0 E4600000 */  swc1      $f0, ($v1)
/* 340234 E002C3B4 8C820008 */  lw        $v0, 8($a0)
/* 340238 E002C3B8 00C2102A */  slt       $v0, $a2, $v0
/* 34023C E002C3BC 1440FFE3 */  bnez      $v0, .LE002C34C
/* 340240 E002C3C0 24630040 */   addiu    $v1, $v1, 0x40
.LE002C3C4:
/* 340244 E002C3C4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 340248 E002C3C8 03E00008 */  jr        $ra
/* 34024C E002C3CC 27BD0018 */   addiu    $sp, $sp, 0x18
