.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240034_8821F4
/* 8821F4 80240034 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x2)
/* 8821F8 80240038 8463A552 */  lh        $v1, %lo(gCollisionStatus+0x2)($v1)
/* 8821FC 8024003C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 882200 80240040 AFB00010 */  sw        $s0, 0x10($sp)
/* 882204 80240044 0080802D */  daddu     $s0, $a0, $zero
/* 882208 80240048 AFBF0014 */  sw        $ra, 0x14($sp)
/* 88220C 8024004C 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 882210 80240050 10620003 */  beq       $v1, $v0, .L80240060
/* 882214 80240054 24020002 */   addiu    $v0, $zero, 2
/* 882218 80240058 08090038 */  j         .L802400E0
/* 88221C 8024005C AE000084 */   sw       $zero, 0x84($s0)
.L80240060:
/* 882220 80240060 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 882224 80240064 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 882228 80240068 80620040 */  lb        $v0, 0x40($v1)
/* 88222C 8024006C 80670044 */  lb        $a3, 0x44($v1)
/* 882230 80240070 04420001 */  bltzl     $v0, .L80240078
/* 882234 80240074 00021023 */   negu     $v0, $v0
.L80240078:
/* 882238 80240078 14400003 */  bnez      $v0, .L80240088
/* 88223C 8024007C 00000000 */   nop      
/* 882240 80240080 50E00017 */  beql      $a3, $zero, .L802400E0
/* 882244 80240084 0000102D */   daddu    $v0, $zero, $zero
.L80240088:
/* 882248 80240088 44822000 */  mtc1      $v0, $f4
/* 88224C 8024008C 00000000 */  nop       
/* 882250 80240090 46802120 */  cvt.s.w   $f4, $f4
/* 882254 80240094 44062000 */  mfc1      $a2, $f4
/* 882258 80240098 44872000 */  mtc1      $a3, $f4
/* 88225C 8024009C 00000000 */  nop       
/* 882260 802400A0 46802120 */  cvt.s.w   $f4, $f4
/* 882264 802400A4 44806000 */  mtc1      $zero, $f12
/* 882268 802400A8 44072000 */  mfc1      $a3, $f4
/* 88226C 802400AC 0C00A720 */  jal       atan2
/* 882270 802400B0 46006386 */   mov.s    $f14, $f12
/* 882274 802400B4 3C014270 */  lui       $at, 0x4270
/* 882278 802400B8 44811000 */  mtc1      $at, $f2
/* 88227C 802400BC 00000000 */  nop       
/* 882280 802400C0 4602003C */  c.lt.s    $f0, $f2
/* 882284 802400C4 00000000 */  nop       
/* 882288 802400C8 45000004 */  bc1f      .L802400DC
/* 88228C 802400CC 24020001 */   addiu    $v0, $zero, 1
/* 882290 802400D0 AE020084 */  sw        $v0, 0x84($s0)
/* 882294 802400D4 08090038 */  j         .L802400E0
/* 882298 802400D8 24020002 */   addiu    $v0, $zero, 2
.L802400DC:
/* 88229C 802400DC 0000102D */  daddu     $v0, $zero, $zero
.L802400E0:
/* 8822A0 802400E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8822A4 802400E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 8822A8 802400E8 03E00008 */  jr        $ra
/* 8822AC 802400EC 27BD0018 */   addiu    $sp, $sp, 0x18
