.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240020_D788A0
/* D788A0 80240020 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D788A4 80240024 AFB00010 */  sw        $s0, 0x10($sp)
/* D788A8 80240028 0080802D */  daddu     $s0, $a0, $zero
/* D788AC 8024002C AFBF0014 */  sw        $ra, 0x14($sp)
/* D788B0 80240030 8E02000C */  lw        $v0, 0xc($s0)
/* D788B4 80240034 0C0B1EAF */  jal       get_variable
/* D788B8 80240038 8C450000 */   lw       $a1, ($v0)
/* D788BC 8024003C 0040302D */  daddu     $a2, $v0, $zero
/* D788C0 80240040 3C058016 */  lui       $a1, %hi(gCollisionStatus)
/* D788C4 80240044 84A5A550 */  lh        $a1, %lo(gCollisionStatus)($a1)
/* D788C8 80240048 3C048011 */  lui       $a0, %hi(gPlayerStatus)
/* D788CC 8024004C 2484EFC8 */  addiu     $a0, $a0, %lo(gPlayerStatus)
/* D788D0 80240050 10A60004 */  beq       $a1, $a2, .L80240064
/* D788D4 80240054 24020014 */   addiu    $v0, $zero, 0x14
/* D788D8 80240058 808300B4 */  lb        $v1, 0xb4($a0)
/* D788DC 8024005C 10620006 */  beq       $v1, $v0, .L80240078
/* D788E0 80240060 00000000 */   nop      
.L80240064:
/* D788E4 80240064 8C820014 */  lw        $v0, 0x14($a0)
/* D788E8 80240068 3C03FFFF */  lui       $v1, 0xffff
/* D788EC 8024006C 00431024 */  and       $v0, $v0, $v1
/* D788F0 80240070 10400005 */  beqz      $v0, .L80240088
/* D788F4 80240074 00000000 */   nop      
.L80240078:
/* D788F8 80240078 0C039769 */  jal       set_action_state
/* D788FC 8024007C 0000202D */   daddu    $a0, $zero, $zero
/* D78900 80240080 08090032 */  j         .L802400C8
/* D78904 80240084 AE000084 */   sw       $zero, 0x84($s0)
.L80240088:
/* D78908 80240088 54A6000F */  bnel      $a1, $a2, .L802400C8
/* D7890C 8024008C AE000084 */   sw       $zero, 0x84($s0)
/* D78910 80240090 808300B4 */  lb        $v1, 0xb4($a0)
/* D78914 80240094 24020014 */  addiu     $v0, $zero, 0x14
/* D78918 80240098 10620005 */  beq       $v1, $v0, .L802400B0
/* D7891C 8024009C 24020001 */   addiu    $v0, $zero, 1
/* D78920 802400A0 10620003 */  beq       $v1, $v0, .L802400B0
/* D78924 802400A4 24020002 */   addiu    $v0, $zero, 2
/* D78928 802400A8 54620008 */  bnel      $v1, $v0, .L802400CC
/* D7892C 802400AC AE000084 */   sw       $zero, 0x84($s0)
.L802400B0:
/* D78930 802400B0 8C820004 */  lw        $v0, 4($a0)
/* D78934 802400B4 30420001 */  andi      $v0, $v0, 1
/* D78938 802400B8 54400003 */  bnel      $v0, $zero, .L802400C8
/* D7893C 802400BC AE000084 */   sw       $zero, 0x84($s0)
/* D78940 802400C0 24020001 */  addiu     $v0, $zero, 1
/* D78944 802400C4 AE020084 */  sw        $v0, 0x84($s0)
.L802400C8:
/* D78948 802400C8 24020002 */  addiu     $v0, $zero, 2
.L802400CC:
/* D7894C 802400CC 8FBF0014 */  lw        $ra, 0x14($sp)
/* D78950 802400D0 8FB00010 */  lw        $s0, 0x10($sp)
/* D78954 802400D4 03E00008 */  jr        $ra
/* D78958 802400D8 27BD0018 */   addiu    $sp, $sp, 0x18
