.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80032970
/* DD70 80032970 44853000 */  mtc1      $a1, $f6
/* DD74 80032974 94820000 */  lhu       $v0, ($a0)
/* DD78 80032978 8C830448 */  lw        $v1, 0x448($a0)
/* DD7C 8003297C 30421000 */  andi      $v0, $v0, 0x1000
/* DD80 80032980 10600005 */  beqz      $v1, .L80032998
/* DD84 80032984 0002302B */   sltu     $a2, $zero, $v0
/* DD88 80032988 8C630000 */  lw        $v1, ($v1)
/* DD8C 8003298C 24020004 */  addiu     $v0, $zero, 4
/* DD90 80032990 50620001 */  beql      $v1, $v0, .L80032998
/* DD94 80032994 24060001 */   addiu    $a2, $zero, 1
.L80032998:
/* DD98 80032998 10C00008 */  beqz      $a2, .L800329BC
/* DD9C 8003299C 24020001 */   addiu    $v0, $zero, 1
/* DDA0 800329A0 44804000 */  mtc1      $zero, $f8
/* DDA4 800329A4 3C013F80 */  lui       $at, 0x3f80
/* DDA8 800329A8 44810000 */  mtc1      $at, $f0
/* DDAC 800329AC AC82051C */  sw        $v0, 0x51c($a0)
/* DDB0 800329B0 E4800514 */  swc1      $f0, 0x514($a0)
/* DDB4 800329B4 0800CA8D */  j         .L80032A34
/* DDB8 800329B8 E4880510 */   swc1     $f8, 0x510($a0)
.L800329BC:
/* DDBC 800329BC 3C05800F */  lui       $a1, %hi(gPlayerStatusPtr)
/* DDC0 800329C0 8CA57B30 */  lw        $a1, %lo(gPlayerStatusPtr)($a1)
/* DDC4 800329C4 8CA20004 */  lw        $v0, 4($a1)
/* DDC8 800329C8 3C030040 */  lui       $v1, 0x40
/* DDCC 800329CC 00431024 */  and       $v0, $v0, $v1
/* DDD0 800329D0 10400007 */  beqz      $v0, .L800329F0
/* DDD4 800329D4 00000000 */   nop      
/* DDD8 800329D8 3C028011 */  lui       $v0, %hi(D_8010EBB4)
/* DDDC 800329DC 8442EBB4 */  lh        $v0, %lo(D_8010EBB4)($v0)
/* DDE0 800329E0 44824000 */  mtc1      $v0, $f8
/* DDE4 800329E4 00000000 */  nop       
/* DDE8 800329E8 0800CA7E */  j         .L800329F8
/* DDEC 800329EC 46804220 */   cvt.s.w  $f8, $f8
.L800329F0:
/* DDF0 800329F0 C4A800E8 */  lwc1      $f8, 0xe8($a1)
/* DDF4 800329F4 46804220 */  cvt.s.w   $f8, $f8
.L800329F8:
/* DDF8 800329F8 44800000 */  mtc1      $zero, $f0
/* DDFC 800329FC 00000000 */  nop       
/* DE00 80032A00 4608003C */  c.lt.s    $f0, $f8
/* DE04 80032A04 00000000 */  nop       
/* DE08 80032A08 45000004 */  bc1f      .L80032A1C
/* DE0C 80032A0C 00000000 */   nop      
/* DE10 80032A10 3C014248 */  lui       $at, 0x4248
/* DE14 80032A14 44814000 */  mtc1      $at, $f8
/* DE18 80032A18 00000000 */  nop       
.L80032A1C:
/* DE1C 80032A1C 4600403C */  c.lt.s    $f8, $f0
/* DE20 80032A20 00000000 */  nop       
/* DE24 80032A24 45000003 */  bc1f      .L80032A34
/* DE28 80032A28 00000000 */   nop      
/* DE2C 80032A2C 3C01C248 */  lui       $at, 0xc248
/* DE30 80032A30 44814000 */  mtc1      $at, $f8
.L80032A34:
/* DE34 80032A34 44801000 */  mtc1      $zero, $f2
/* DE38 80032A38 00000000 */  nop       
/* DE3C 80032A3C 46024032 */  c.eq.s    $f8, $f2
/* DE40 80032A40 00000000 */  nop       
/* DE44 80032A44 4501003A */  bc1t      .L80032B30
/* DE48 80032A48 00000000 */   nop      
/* DE4C 80032A4C 4602403C */  c.lt.s    $f8, $f2
/* DE50 80032A50 00000000 */  nop       
/* DE54 80032A54 4500001C */  bc1f      .L80032AC8
/* DE58 80032A58 00000000 */   nop      
/* DE5C 80032A5C C4800518 */  lwc1      $f0, 0x518($a0)
/* DE60 80032A60 4600103C */  c.lt.s    $f2, $f0
/* DE64 80032A64 00000000 */  nop       
/* DE68 80032A68 45020003 */  bc1fl     .L80032A78
/* DE6C 80032A6C 46080000 */   add.s    $f0, $f0, $f8
/* DE70 80032A70 0800CA9F */  j         .L80032A7C
/* DE74 80032A74 E4880518 */   swc1     $f8, 0x518($a0)
.L80032A78:
/* DE78 80032A78 E4800518 */  swc1      $f0, 0x518($a0)
.L80032A7C:
/* DE7C 80032A7C C4800518 */  lwc1      $f0, 0x518($a0)
/* DE80 80032A80 3C01C396 */  lui       $at, 0xc396
/* DE84 80032A84 44812000 */  mtc1      $at, $f4
/* DE88 80032A88 00000000 */  nop       
/* DE8C 80032A8C 4604003E */  c.le.s    $f0, $f4
/* DE90 80032A90 00000000 */  nop       
/* DE94 80032A94 45000026 */  bc1f      .L80032B30
/* DE98 80032A98 24020001 */   addiu    $v0, $zero, 1
/* DE9C 80032A9C C4800510 */  lwc1      $f0, 0x510($a0)
/* DEA0 80032AA0 44801000 */  mtc1      $zero, $f2
/* DEA4 80032AA4 00000000 */  nop       
/* DEA8 80032AA8 4600103C */  c.lt.s    $f2, $f0
/* DEAC 80032AAC 00000000 */  nop       
/* DEB0 80032AB0 45000002 */  bc1f      .L80032ABC
/* DEB4 80032AB4 AC82051C */   sw       $v0, 0x51c($a0)
/* DEB8 80032AB8 E4820514 */  swc1      $f2, 0x514($a0)
.L80032ABC:
/* DEBC 80032ABC 46003007 */  neg.s     $f0, $f6
/* DEC0 80032AC0 0800CACB */  j         .L80032B2C
/* DEC4 80032AC4 E4800510 */   swc1     $f0, 0x510($a0)
.L80032AC8:
/* DEC8 80032AC8 C4800518 */  lwc1      $f0, 0x518($a0)
/* DECC 80032ACC 4602003C */  c.lt.s    $f0, $f2
/* DED0 80032AD0 00000000 */  nop       
/* DED4 80032AD4 45020003 */  bc1fl     .L80032AE4
/* DED8 80032AD8 46080000 */   add.s    $f0, $f0, $f8
/* DEDC 80032ADC 0800CABA */  j         .L80032AE8
/* DEE0 80032AE0 E4880518 */   swc1     $f8, 0x518($a0)
.L80032AE4:
/* DEE4 80032AE4 E4800518 */  swc1      $f0, 0x518($a0)
.L80032AE8:
/* DEE8 80032AE8 C4800518 */  lwc1      $f0, 0x518($a0)
/* DEEC 80032AEC 3C014396 */  lui       $at, 0x4396
/* DEF0 80032AF0 44812000 */  mtc1      $at, $f4
/* DEF4 80032AF4 00000000 */  nop       
/* DEF8 80032AF8 4600203E */  c.le.s    $f4, $f0
/* DEFC 80032AFC 00000000 */  nop       
/* DF00 80032B00 4500000B */  bc1f      .L80032B30
/* DF04 80032B04 24020001 */   addiu    $v0, $zero, 1
/* DF08 80032B08 C4800510 */  lwc1      $f0, 0x510($a0)
/* DF0C 80032B0C 44801000 */  mtc1      $zero, $f2
/* DF10 80032B10 00000000 */  nop       
/* DF14 80032B14 4602003C */  c.lt.s    $f0, $f2
/* DF18 80032B18 00000000 */  nop       
/* DF1C 80032B1C 45000002 */  bc1f      .L80032B28
/* DF20 80032B20 AC82051C */   sw       $v0, 0x51c($a0)
/* DF24 80032B24 E4820514 */  swc1      $f2, 0x514($a0)
.L80032B28:
/* DF28 80032B28 E4860510 */  swc1      $f6, 0x510($a0)
.L80032B2C:
/* DF2C 80032B2C E4840518 */  swc1      $f4, 0x518($a0)
.L80032B30:
/* DF30 80032B30 8C82051C */  lw        $v0, 0x51c($a0)
/* DF34 80032B34 1040000F */  beqz      $v0, .L80032B74
/* DF38 80032B38 00000000 */   nop      
/* DF3C 80032B3C C4800514 */  lwc1      $f0, 0x514($a0)
/* DF40 80032B40 3C013C23 */  lui       $at, 0x3c23
/* DF44 80032B44 3421D70A */  ori       $at, $at, 0xd70a
/* DF48 80032B48 44811000 */  mtc1      $at, $f2
/* DF4C 80032B4C 00000000 */  nop       
/* DF50 80032B50 46020000 */  add.s     $f0, $f0, $f2
/* DF54 80032B54 3C013F80 */  lui       $at, 0x3f80
/* DF58 80032B58 44811000 */  mtc1      $at, $f2
/* DF5C 80032B5C 00000000 */  nop       
/* DF60 80032B60 4600103C */  c.lt.s    $f2, $f0
/* DF64 80032B64 00000000 */  nop       
/* DF68 80032B68 45000002 */  bc1f      .L80032B74
/* DF6C 80032B6C E4800514 */   swc1     $f0, 0x514($a0)
/* DF70 80032B70 E4820514 */  swc1      $f2, 0x514($a0)
.L80032B74:
/* DF74 80032B74 C4800510 */  lwc1      $f0, 0x510($a0)
/* DF78 80032B78 C482050C */  lwc1      $f2, 0x50c($a0)
/* DF7C 80032B7C 46020001 */  sub.s     $f0, $f0, $f2
/* DF80 80032B80 44805000 */  mtc1      $zero, $f10
/* DF84 80032B84 00000000 */  nop       
/* DF88 80032B88 460A0032 */  c.eq.s    $f0, $f10
/* DF8C 80032B8C 00000000 */  nop       
/* DF90 80032B90 45000003 */  bc1f      .L80032BA0
/* DF94 80032B94 00000000 */   nop      
/* DF98 80032B98 E48A0514 */  swc1      $f10, 0x514($a0)
/* DF9C 80032B9C AC80051C */  sw        $zero, 0x51c($a0)
.L80032BA0:
/* DFA0 80032BA0 C4800510 */  lwc1      $f0, 0x510($a0)
/* DFA4 80032BA4 C482050C */  lwc1      $f2, 0x50c($a0)
/* DFA8 80032BA8 46020101 */  sub.s     $f4, $f0, $f2
/* DFAC 80032BAC C4800514 */  lwc1      $f0, 0x514($a0)
/* DFB0 80032BB0 46002182 */  mul.s     $f6, $f4, $f0
/* DFB4 80032BB4 00000000 */  nop       
/* DFB8 80032BB8 4604503C */  c.lt.s    $f10, $f4
/* DFBC 80032BBC 00000000 */  nop       
/* DFC0 80032BC0 4500000D */  bc1f      .L80032BF8
/* DFC4 80032BC4 46002021 */   cvt.d.s  $f0, $f4
/* DFC8 80032BC8 3C01800A */  lui       $at, %hi(D_80098280)
/* DFCC 80032BCC D4228280 */  ldc1      $f2, %lo(D_80098280)($at)
/* DFD0 80032BD0 4622003C */  c.lt.d    $f0, $f2
/* DFD4 80032BD4 00000000 */  nop       
/* DFD8 80032BD8 45030001 */  bc1tl     .L80032BE0
/* DFDC 80032BDC 46002186 */   mov.s    $f6, $f4
.L80032BE0:
/* DFE0 80032BE0 3C014040 */  lui       $at, 0x4040
/* DFE4 80032BE4 44810000 */  mtc1      $at, $f0
/* DFE8 80032BE8 00000000 */  nop       
/* DFEC 80032BEC 4606003C */  c.lt.s    $f0, $f6
/* DFF0 80032BF0 0800CB09 */  j         .L80032C24
/* DFF4 80032BF4 00000000 */   nop      
.L80032BF8:
/* DFF8 80032BF8 3C01800A */  lui       $at, %hi(D_80098288)
/* DFFC 80032BFC D4228288 */  ldc1      $f2, %lo(D_80098288)($at)
/* E000 80032C00 4620103C */  c.lt.d    $f2, $f0
/* E004 80032C04 00000000 */  nop       
/* E008 80032C08 45030001 */  bc1tl     .L80032C10
/* E00C 80032C0C 46002186 */   mov.s    $f6, $f4
.L80032C10:
/* E010 80032C10 3C01C040 */  lui       $at, 0xc040
/* E014 80032C14 44810000 */  mtc1      $at, $f0
/* E018 80032C18 00000000 */  nop       
/* E01C 80032C1C 4600303C */  c.lt.s    $f6, $f0
/* E020 80032C20 00000000 */  nop       
.L80032C24:
/* E024 80032C24 45030001 */  bc1tl     .L80032C2C
/* E028 80032C28 46000186 */   mov.s    $f6, $f0
.L80032C2C:
/* E02C 80032C2C 44800000 */  mtc1      $zero, $f0
/* E030 80032C30 00000000 */  nop       
/* E034 80032C34 46004032 */  c.eq.s    $f8, $f0
/* E038 80032C38 00000000 */  nop       
/* E03C 80032C3C 45000003 */  bc1f      .L80032C4C
/* E040 80032C40 00000000 */   nop      
/* E044 80032C44 10C00005 */  beqz      $a2, .L80032C5C
/* E048 80032C48 00000000 */   nop      
.L80032C4C:
/* E04C 80032C4C C480050C */  lwc1      $f0, 0x50c($a0)
/* E050 80032C50 46060000 */  add.s     $f0, $f0, $f6
/* E054 80032C54 03E00008 */  jr        $ra
/* E058 80032C58 E480050C */   swc1     $f0, 0x50c($a0)
.L80032C5C:
/* E05C 80032C5C 03E00008 */  jr        $ra
/* E060 80032C60 E4800514 */   swc1     $f0, 0x514($a0)
