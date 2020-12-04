.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024522C_805AAC
/* 805AAC 8024522C 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 805AB0 80245230 AFB5002C */  sw        $s5, 0x2c($sp)
/* 805AB4 80245234 0080A82D */  daddu     $s5, $a0, $zero
/* 805AB8 80245238 AFBF003C */  sw        $ra, 0x3c($sp)
/* 805ABC 8024523C AFBE0038 */  sw        $fp, 0x38($sp)
/* 805AC0 80245240 AFB70034 */  sw        $s7, 0x34($sp)
/* 805AC4 80245244 AFB60030 */  sw        $s6, 0x30($sp)
/* 805AC8 80245248 AFB40028 */  sw        $s4, 0x28($sp)
/* 805ACC 8024524C AFB30024 */  sw        $s3, 0x24($sp)
/* 805AD0 80245250 AFB20020 */  sw        $s2, 0x20($sp)
/* 805AD4 80245254 AFB1001C */  sw        $s1, 0x1c($sp)
/* 805AD8 80245258 AFB00018 */  sw        $s0, 0x18($sp)
/* 805ADC 8024525C 8EA700AC */  lw        $a3, 0xac($s5)
/* 805AE0 80245260 3C168026 */  lui       $s6, %hi(D_80262C38)
/* 805AE4 80245264 26D62C38 */  addiu     $s6, $s6, %lo(D_80262C38)
/* 805AE8 80245268 10A0003D */  beqz      $a1, .L80245360
/* 805AEC 8024526C AFA70010 */   sw       $a3, 0x10($sp)
/* 805AF0 80245270 0000A02D */  daddu     $s4, $zero, $zero
/* 805AF4 80245274 0280982D */  daddu     $s3, $s4, $zero
/* 805AF8 80245278 3C1EF840 */  lui       $fp, 0xf840
/* 805AFC 8024527C 37DE5C19 */  ori       $fp, $fp, 0x5c19
/* 805B00 80245280 3C17F840 */  lui       $s7, 0xf840
/* 805B04 80245284 36F75C2C */  ori       $s7, $s7, 0x5c2c
/* 805B08 80245288 3C128025 */  lui       $s2, %hi(D_80256ADC)
/* 805B0C 8024528C 26526ADC */  addiu     $s2, $s2, %lo(D_80256ADC)
/* 805B10 80245290 02C0882D */  daddu     $s1, $s6, $zero
.L80245294:
/* 805B14 80245294 0000202D */  daddu     $a0, $zero, $zero
/* 805B18 80245298 0C0B1EAF */  jal       get_variable
/* 805B1C 8024529C 027E2821 */   addu     $a1, $s3, $fp
/* 805B20 802452A0 0000202D */  daddu     $a0, $zero, $zero
/* 805B24 802452A4 02772821 */  addu      $a1, $s3, $s7
/* 805B28 802452A8 0C0B1EAF */  jal       get_variable
/* 805B2C 802452AC 0040802D */   daddu    $s0, $v0, $zero
/* 805B30 802452B0 1200001C */  beqz      $s0, .L80245324
/* 805B34 802452B4 0040202D */   daddu    $a0, $v0, $zero
/* 805B38 802452B8 8E420000 */  lw        $v0, ($s2)
/* 805B3C 802452BC 8FA70010 */  lw        $a3, 0x10($sp)
/* 805B40 802452C0 54E20019 */  bnel      $a3, $v0, .L80245328
/* 805B44 802452C4 26730001 */   addiu    $s3, $s3, 1
/* 805B48 802452C8 3C028009 */  lui       $v0, %hi(gItemTable+0xA84)
/* 805B4C 802452CC 84428364 */  lh        $v0, %lo(gItemTable+0xA84)($v0)
/* 805B50 802452D0 3C078009 */  lui       $a3, %hi(D_8008A680)
/* 805B54 802452D4 24E7A680 */  addiu     $a3, $a3, %lo(D_8008A680)
/* 805B58 802452D8 AE330108 */  sw        $s3, 0x108($s1)
/* 805B5C 802452DC 8E430008 */  lw        $v1, 8($s2)
/* 805B60 802452E0 000210C0 */  sll       $v0, $v0, 3
/* 805B64 802452E4 AE230084 */  sw        $v1, 0x84($s1)
/* 805B68 802452E8 8E43000C */  lw        $v1, 0xc($s2)
/* 805B6C 802452EC 00471021 */  addu      $v0, $v0, $a3
/* 805B70 802452F0 AE200210 */  sw        $zero, 0x210($s1)
/* 805B74 802452F4 10800005 */  beqz      $a0, .L8024530C
/* 805B78 802452F8 AE230294 */   sw       $v1, 0x294($s1)
/* 805B7C 802452FC 8C420004 */  lw        $v0, 4($v0)
/* 805B80 80245300 AE20018C */  sw        $zero, 0x18c($s1)
/* 805B84 80245304 080914C7 */  j         .L8024531C
/* 805B88 80245308 AE220000 */   sw       $v0, ($s1)
.L8024530C:
/* 805B8C 8024530C 8C430000 */  lw        $v1, ($v0)
/* 805B90 80245310 24020001 */  addiu     $v0, $zero, 1
/* 805B94 80245314 AE22018C */  sw        $v0, 0x18c($s1)
/* 805B98 80245318 AE230000 */  sw        $v1, ($s1)
.L8024531C:
/* 805B9C 8024531C 26310004 */  addiu     $s1, $s1, 4
/* 805BA0 80245320 26940001 */  addiu     $s4, $s4, 1
.L80245324:
/* 805BA4 80245324 26730001 */  addiu     $s3, $s3, 1
.L80245328:
/* 805BA8 80245328 2E620013 */  sltiu     $v0, $s3, 0x13
/* 805BAC 8024532C 1440FFD9 */  bnez      $v0, .L80245294
/* 805BB0 80245330 26520014 */   addiu    $s2, $s2, 0x14
/* 805BB4 80245334 02C0202D */  daddu     $a0, $s6, $zero
/* 805BB8 80245338 24020008 */  addiu     $v0, $zero, 8
/* 805BBC 8024533C AEC20318 */  sw        $v0, 0x318($s6)
/* 805BC0 80245340 AED40324 */  sw        $s4, 0x324($s6)
/* 805BC4 80245344 0C03D390 */  jal       func_800F4E40
/* 805BC8 80245348 AEC00328 */   sw       $zero, 0x328($s6)
/* 805BCC 8024534C 0C03A631 */  jal       func_800E98C4
/* 805BD0 80245350 00000000 */   nop      
/* 805BD4 80245354 0C03A5EE */  jal       func_800E97B8
/* 805BD8 80245358 00000000 */   nop      
/* 805BDC 8024535C AEA00070 */  sw        $zero, 0x70($s5)
.L80245360:
/* 805BE0 80245360 8EA20070 */  lw        $v0, 0x70($s5)
/* 805BE4 80245364 14400008 */  bnez      $v0, .L80245388
/* 805BE8 80245368 24420001 */   addiu    $v0, $v0, 1
/* 805BEC 8024536C 86C2032C */  lh        $v0, 0x32c($s6)
/* 805BF0 80245370 10400009 */  beqz      $v0, .L80245398
/* 805BF4 80245374 AEA20074 */   sw       $v0, 0x74($s5)
/* 805BF8 80245378 0C03C4EC */  jal       func_800F13B0
/* 805BFC 8024537C 00000000 */   nop      
/* 805C00 80245380 8EA20070 */  lw        $v0, 0x70($s5)
/* 805C04 80245384 24420001 */  addiu     $v0, $v0, 1
.L80245388:
/* 805C08 80245388 AEA20070 */  sw        $v0, 0x70($s5)
/* 805C0C 8024538C 28420014 */  slti      $v0, $v0, 0x14
/* 805C10 80245390 10400003 */  beqz      $v0, .L802453A0
/* 805C14 80245394 00000000 */   nop      
.L80245398:
/* 805C18 80245398 08091504 */  j         .L80245410
/* 805C1C 8024539C 0000102D */   daddu    $v0, $zero, $zero
.L802453A0:
/* 805C20 802453A0 0C03C54E */  jal       func_800F1538
/* 805C24 802453A4 00000000 */   nop      
/* 805C28 802453A8 8EA40074 */  lw        $a0, 0x74($s5)
/* 805C2C 802453AC 240200FF */  addiu     $v0, $zero, 0xff
/* 805C30 802453B0 10820014 */  beq       $a0, $v0, .L80245404
/* 805C34 802453B4 3C03F840 */   lui      $v1, 0xf840
/* 805C38 802453B8 34635C2C */  ori       $v1, $v1, 0x5c2c
/* 805C3C 802453BC 2482FFFF */  addiu     $v0, $a0, -1
/* 805C40 802453C0 00021080 */  sll       $v0, $v0, 2
/* 805C44 802453C4 02C21021 */  addu      $v0, $s6, $v0
/* 805C48 802453C8 0000202D */  daddu     $a0, $zero, $zero
/* 805C4C 802453CC 8C450108 */  lw        $a1, 0x108($v0)
/* 805C50 802453D0 24060001 */  addiu     $a2, $zero, 1
/* 805C54 802453D4 00051080 */  sll       $v0, $a1, 2
/* 805C58 802453D8 00451021 */  addu      $v0, $v0, $a1
/* 805C5C 802453DC 00021080 */  sll       $v0, $v0, 2
/* 805C60 802453E0 AEA50088 */  sw        $a1, 0x88($s5)
/* 805C64 802453E4 3C018025 */  lui       $at, %hi(D_80256AEC)
/* 805C68 802453E8 00220821 */  addu      $at, $at, $v0
/* 805C6C 802453EC 8C226AEC */  lw        $v0, %lo(D_80256AEC)($at)
/* 805C70 802453F0 00A32821 */  addu      $a1, $a1, $v1
/* 805C74 802453F4 0C0B2026 */  jal       set_variable
/* 805C78 802453F8 AEA20084 */   sw       $v0, 0x84($s5)
/* 805C7C 802453FC 08091504 */  j         .L80245410
/* 805C80 80245400 24020002 */   addiu    $v0, $zero, 2
.L80245404:
/* 805C84 80245404 2402FFFF */  addiu     $v0, $zero, -1
/* 805C88 80245408 AEA20088 */  sw        $v0, 0x88($s5)
/* 805C8C 8024540C 24020002 */  addiu     $v0, $zero, 2
.L80245410:
/* 805C90 80245410 8FBF003C */  lw        $ra, 0x3c($sp)
/* 805C94 80245414 8FBE0038 */  lw        $fp, 0x38($sp)
/* 805C98 80245418 8FB70034 */  lw        $s7, 0x34($sp)
/* 805C9C 8024541C 8FB60030 */  lw        $s6, 0x30($sp)
/* 805CA0 80245420 8FB5002C */  lw        $s5, 0x2c($sp)
/* 805CA4 80245424 8FB40028 */  lw        $s4, 0x28($sp)
/* 805CA8 80245428 8FB30024 */  lw        $s3, 0x24($sp)
/* 805CAC 8024542C 8FB20020 */  lw        $s2, 0x20($sp)
/* 805CB0 80245430 8FB1001C */  lw        $s1, 0x1c($sp)
/* 805CB4 80245434 8FB00018 */  lw        $s0, 0x18($sp)
/* 805CB8 80245438 03E00008 */  jr        $ra
/* 805CBC 8024543C 27BD0040 */   addiu    $sp, $sp, 0x40
