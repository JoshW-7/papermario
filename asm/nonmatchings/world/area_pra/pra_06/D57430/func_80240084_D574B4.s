.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240084_D574B4
/* D574B4 80240084 00041403 */  sra       $v0, $a0, 0x10
/* D574B8 80240088 304300FF */  andi      $v1, $v0, 0xff
/* D574BC 8024008C 24020006 */  addiu     $v0, $zero, 6
/* D574C0 80240090 10620015 */  beq       $v1, $v0, .L802400E8
/* D574C4 80240094 28620007 */   slti     $v0, $v1, 7
/* D574C8 80240098 10400005 */  beqz      $v0, .L802400B0
/* D574CC 8024009C 24020001 */   addiu    $v0, $zero, 1
/* D574D0 802400A0 1062000A */  beq       $v1, $v0, .L802400CC
/* D574D4 802400A4 3C020100 */   lui      $v0, 0x100
/* D574D8 802400A8 03E00008 */  jr        $ra
/* D574DC 802400AC 00821025 */   or       $v0, $a0, $v0
.L802400B0:
/* D574E0 802400B0 2862000A */  slti      $v0, $v1, 0xa
/* D574E4 802400B4 10400016 */  beqz      $v0, .L80240110
/* D574E8 802400B8 28620008 */   slti     $v0, $v1, 8
/* D574EC 802400BC 14400015 */  bnez      $v0, .L80240114
/* D574F0 802400C0 3C020100 */   lui      $v0, 0x100
/* D574F4 802400C4 03E00008 */  jr        $ra
/* D574F8 802400C8 0080102D */   daddu    $v0, $a0, $zero
.L802400CC:
/* D574FC 802400CC 3C020001 */  lui       $v0, 1
/* D57500 802400D0 3442000C */  ori       $v0, $v0, 0xc
/* D57504 802400D4 0044102A */  slt       $v0, $v0, $a0
/* D57508 802400D8 1040000E */  beqz      $v0, .L80240114
/* D5750C 802400DC 3C020100 */   lui      $v0, 0x100
.L802400E0:
/* D57510 802400E0 03E00008 */  jr        $ra
/* D57514 802400E4 0080102D */   daddu    $v0, $a0, $zero
.L802400E8:
/* D57518 802400E8 3C02FFF9 */  lui       $v0, 0xfff9
/* D5751C 802400EC 3442FFF4 */  ori       $v0, $v0, 0xfff4
/* D57520 802400F0 00821821 */  addu      $v1, $a0, $v0
/* D57524 802400F4 2C620010 */  sltiu     $v0, $v1, 0x10
/* D57528 802400F8 10400005 */  beqz      $v0, .L80240110
/* D5752C 802400FC 30620001 */   andi     $v0, $v1, 1
/* D57530 80240100 1440FFF7 */  bnez      $v0, .L802400E0
/* D57534 80240104 24820001 */   addiu    $v0, $a0, 1
/* D57538 80240108 03E00008 */  jr        $ra
/* D5753C 8024010C 00000000 */   nop      
.L80240110:
/* D57540 80240110 3C020100 */  lui       $v0, 0x100
.L80240114:
/* D57544 80240114 03E00008 */  jr        $ra
/* D57548 80240118 00821025 */   or       $v0, $a0, $v0
