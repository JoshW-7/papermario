.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802441EC_804A6C
/* 804A6C 802441EC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 804A70 802441F0 AFB00018 */  sw        $s0, 0x18($sp)
/* 804A74 802441F4 0080802D */  daddu     $s0, $a0, $zero
/* 804A78 802441F8 10A00005 */  beqz      $a1, .L80244210
/* 804A7C 802441FC AFBF001C */   sw       $ra, 0x1c($sp)
/* 804A80 80244200 24020040 */  addiu     $v0, $zero, 0x40
/* 804A84 80244204 AE020070 */  sw        $v0, 0x70($s0)
/* 804A88 80244208 AE020078 */  sw        $v0, 0x78($s0)
/* 804A8C 8024420C AE000074 */  sw        $zero, 0x74($s0)
.L80244210:
/* 804A90 80244210 8E020074 */  lw        $v0, 0x74($s0)
/* 804A94 80244214 1440001A */  bnez      $v0, .L80244280
/* 804A98 80244218 00000000 */   nop      
/* 804A9C 8024421C 8E020070 */  lw        $v0, 0x70($s0)
/* 804AA0 80244220 24420004 */  addiu     $v0, $v0, 4
/* 804AA4 80244224 AE020070 */  sw        $v0, 0x70($s0)
/* 804AA8 80244228 8E020078 */  lw        $v0, 0x78($s0)
/* 804AAC 8024422C 8E030070 */  lw        $v1, 0x70($s0)
/* 804AB0 80244230 24420004 */  addiu     $v0, $v0, 4
/* 804AB4 80244234 28630080 */  slti      $v1, $v1, 0x80
/* 804AB8 80244238 14600003 */  bnez      $v1, .L80244248
/* 804ABC 8024423C AE020078 */   sw       $v0, 0x78($s0)
/* 804AC0 80244240 2402007F */  addiu     $v0, $zero, 0x7f
/* 804AC4 80244244 AE020070 */  sw        $v0, 0x70($s0)
.L80244248:
/* 804AC8 80244248 8E020078 */  lw        $v0, 0x78($s0)
/* 804ACC 8024424C 28420080 */  slti      $v0, $v0, 0x80
/* 804AD0 80244250 14400002 */  bnez      $v0, .L8024425C
/* 804AD4 80244254 2402007F */   addiu    $v0, $zero, 0x7f
/* 804AD8 80244258 AE020078 */  sw        $v0, 0x78($s0)
.L8024425C:
/* 804ADC 8024425C 8E030070 */  lw        $v1, 0x70($s0)
/* 804AE0 80244260 2402007F */  addiu     $v0, $zero, 0x7f
/* 804AE4 80244264 14620014 */  bne       $v1, $v0, .L802442B8
/* 804AE8 80244268 00000000 */   nop      
/* 804AEC 8024426C 8E020078 */  lw        $v0, 0x78($s0)
/* 804AF0 80244270 14430011 */  bne       $v0, $v1, .L802442B8
/* 804AF4 80244274 24020001 */   addiu    $v0, $zero, 1
/* 804AF8 80244278 080910AE */  j         .L802442B8
/* 804AFC 8024427C AE020074 */   sw       $v0, 0x74($s0)
.L80244280:
/* 804B00 80244280 8E020070 */  lw        $v0, 0x70($s0)
/* 804B04 80244284 2442FFFC */  addiu     $v0, $v0, -4
/* 804B08 80244288 AE020070 */  sw        $v0, 0x70($s0)
/* 804B0C 8024428C 8E020078 */  lw        $v0, 0x78($s0)
/* 804B10 80244290 8E030070 */  lw        $v1, 0x70($s0)
/* 804B14 80244294 2442FFFC */  addiu     $v0, $v0, -4
/* 804B18 80244298 28630040 */  slti      $v1, $v1, 0x40
/* 804B1C 8024429C 10600003 */  beqz      $v1, .L802442AC
/* 804B20 802442A0 AE020078 */   sw       $v0, 0x78($s0)
/* 804B24 802442A4 24020040 */  addiu     $v0, $zero, 0x40
/* 804B28 802442A8 AE020070 */  sw        $v0, 0x70($s0)
.L802442AC:
/* 804B2C 802442AC 8E020078 */  lw        $v0, 0x78($s0)
/* 804B30 802442B0 04420001 */  bltzl     $v0, .L802442B8
/* 804B34 802442B4 AE000078 */   sw       $zero, 0x78($s0)
.L802442B8:
/* 804B38 802442B8 92040073 */  lbu       $a0, 0x73($s0)
/* 804B3C 802442BC 9207007B */  lbu       $a3, 0x7b($s0)
/* 804B40 802442C0 0080282D */  daddu     $a1, $a0, $zero
/* 804B44 802442C4 AFA70010 */  sw        $a3, 0x10($sp)
/* 804B48 802442C8 9202007B */  lbu       $v0, 0x7b($s0)
/* 804B4C 802442CC 0080302D */  daddu     $a2, $a0, $zero
/* 804B50 802442D0 0C046FE6 */  jal       func_8011BF98
/* 804B54 802442D4 AFA20014 */   sw       $v0, 0x14($sp)
/* 804B58 802442D8 8E030070 */  lw        $v1, 0x70($s0)
/* 804B5C 802442DC 24020040 */  addiu     $v0, $zero, 0x40
/* 804B60 802442E0 14620005 */  bne       $v1, $v0, .L802442F8
/* 804B64 802442E4 0000102D */   daddu    $v0, $zero, $zero
/* 804B68 802442E8 8E030078 */  lw        $v1, 0x78($s0)
/* 804B6C 802442EC 10600002 */  beqz      $v1, .L802442F8
/* 804B70 802442F0 24020002 */   addiu    $v0, $zero, 2
/* 804B74 802442F4 0000102D */  daddu     $v0, $zero, $zero
.L802442F8:
/* 804B78 802442F8 8FBF001C */  lw        $ra, 0x1c($sp)
/* 804B7C 802442FC 8FB00018 */  lw        $s0, 0x18($sp)
/* 804B80 80244300 03E00008 */  jr        $ra
/* 804B84 80244304 27BD0020 */   addiu    $sp, $sp, 0x20
