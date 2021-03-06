.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel test_up_ray_triangle
/* 37BA4 8005C7A4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 37BA8 8005C7A8 F7BC0020 */  sdc1      $f28, 0x20($sp)
/* 37BAC 8005C7AC F7BA0018 */  sdc1      $f26, 0x18($sp)
/* 37BB0 8005C7B0 F7B80010 */  sdc1      $f24, 0x10($sp)
/* 37BB4 8005C7B4 F7B60008 */  sdc1      $f22, 8($sp)
/* 37BB8 8005C7B8 F7B40000 */  sdc1      $f20, ($sp)
/* 37BBC 8005C7BC C4800030 */  lwc1      $f0, 0x30($a0)
/* 37BC0 8005C7C0 44801000 */  mtc1      $zero, $f2
/* 37BC4 8005C7C4 00000000 */  nop       
/* 37BC8 8005C7C8 46020032 */  c.eq.s    $f0, $f2
/* 37BCC 8005C7CC 00000000 */  nop       
/* 37BD0 8005C7D0 4500000B */  bc1f      .L8005C800
/* 37BD4 8005C7D4 00000000 */   nop      
/* 37BD8 8005C7D8 C4800034 */  lwc1      $f0, 0x34($a0)
/* 37BDC 8005C7DC 46020032 */  c.eq.s    $f0, $f2
/* 37BE0 8005C7E0 00000000 */  nop       
/* 37BE4 8005C7E4 45000006 */  bc1f      .L8005C800
/* 37BE8 8005C7E8 00000000 */   nop      
/* 37BEC 8005C7EC C4800038 */  lwc1      $f0, 0x38($a0)
/* 37BF0 8005C7F0 46020032 */  c.eq.s    $f0, $f2
/* 37BF4 8005C7F4 00000000 */  nop       
/* 37BF8 8005C7F8 4501012E */  bc1t      .L8005CCB4
/* 37BFC 8005C7FC 0000102D */   daddu    $v0, $zero, $zero
.L8005C800:
/* 37C00 8005C800 8C820000 */  lw        $v0, ($a0)
/* 37C04 8005C804 3C01800A */  lui       $at, %hi(D_800A4230)
/* 37C08 8005C808 C4364230 */  lwc1      $f22, %lo(D_800A4230)($at)
/* 37C0C 8005C80C C4400000 */  lwc1      $f0, ($v0)
/* 37C10 8005C810 4600B381 */  sub.s     $f14, $f22, $f0
/* 37C14 8005C814 C4880030 */  lwc1      $f8, 0x30($a0)
/* 37C18 8005C818 460E4102 */  mul.s     $f4, $f8, $f14
/* 37C1C 8005C81C 00000000 */  nop       
/* 37C20 8005C820 3C01800A */  lui       $at, %hi(D_800A4234)
/* 37C24 8005C824 C4384234 */  lwc1      $f24, %lo(D_800A4234)($at)
/* 37C28 8005C828 C4400004 */  lwc1      $f0, 4($v0)
/* 37C2C 8005C82C 4600C501 */  sub.s     $f20, $f24, $f0
/* 37C30 8005C830 C4820034 */  lwc1      $f2, 0x34($a0)
/* 37C34 8005C834 46141082 */  mul.s     $f2, $f2, $f20
/* 37C38 8005C838 00000000 */  nop       
/* 37C3C 8005C83C 3C01800A */  lui       $at, %hi(D_800A4238)
/* 37C40 8005C840 C43C4238 */  lwc1      $f28, %lo(D_800A4238)($at)
/* 37C44 8005C844 C4400008 */  lwc1      $f0, 8($v0)
/* 37C48 8005C848 4600E401 */  sub.s     $f16, $f28, $f0
/* 37C4C 8005C84C C4860038 */  lwc1      $f6, 0x38($a0)
/* 37C50 8005C850 46103002 */  mul.s     $f0, $f6, $f16
/* 37C54 8005C854 00000000 */  nop       
/* 37C58 8005C858 8C830004 */  lw        $v1, 4($a0)
/* 37C5C 8005C85C 46022100 */  add.s     $f4, $f4, $f2
/* 37C60 8005C860 8C850008 */  lw        $a1, 8($a0)
/* 37C64 8005C864 8482003C */  lh        $v0, 0x3c($a0)
/* 37C68 8005C868 10400068 */  beqz      $v0, .L8005CA0C
/* 37C6C 8005C86C 46002480 */   add.s    $f18, $f4, $f0
/* 37C70 8005C870 4480D000 */  mtc1      $zero, $f26
/* 37C74 8005C874 00000000 */  nop       
/* 37C78 8005C878 461A903C */  c.lt.s    $f18, $f26
/* 37C7C 8005C87C 00000000 */  nop       
/* 37C80 8005C880 4503010C */  bc1tl     .L8005CCB4
/* 37C84 8005C884 0000102D */   daddu    $v0, $zero, $zero
/* 37C88 8005C888 3C01800A */  lui       $at, %hi(D_800A423C)
/* 37C8C 8005C88C C42C423C */  lwc1      $f12, %lo(D_800A423C)($at)
/* 37C90 8005C890 460C4002 */  mul.s     $f0, $f8, $f12
/* 37C94 8005C894 00000000 */  nop       
/* 37C98 8005C898 3C01800A */  lui       $at, %hi(D_800A4244)
/* 37C9C 8005C89C C42A4244 */  lwc1      $f10, %lo(D_800A4244)($at)
/* 37CA0 8005C8A0 460A3082 */  mul.s     $f2, $f6, $f10
/* 37CA4 8005C8A4 00000000 */  nop       
/* 37CA8 8005C8A8 46020000 */  add.s     $f0, $f0, $f2
/* 37CAC 8005C8AC 4600D03E */  c.le.s    $f26, $f0
/* 37CB0 8005C8B0 00000000 */  nop       
/* 37CB4 8005C8B4 450100FF */  bc1t      .L8005CCB4
/* 37CB8 8005C8B8 0000102D */   daddu    $v0, $zero, $zero
/* 37CBC 8005C8BC C4860010 */  lwc1      $f6, 0x10($a0)
/* 37CC0 8005C8C0 46003107 */  neg.s     $f4, $f6
/* 37CC4 8005C8C4 460A2102 */  mul.s     $f4, $f4, $f10
/* 37CC8 8005C8C8 00000000 */  nop       
/* 37CCC 8005C8CC C480000C */  lwc1      $f0, 0xc($a0)
/* 37CD0 8005C8D0 460A0002 */  mul.s     $f0, $f0, $f10
/* 37CD4 8005C8D4 00000000 */  nop       
/* 37CD8 8005C8D8 C4820014 */  lwc1      $f2, 0x14($a0)
/* 37CDC 8005C8DC 460C1082 */  mul.s     $f2, $f2, $f12
/* 37CE0 8005C8E0 00000000 */  nop       
/* 37CE4 8005C8E4 460C3182 */  mul.s     $f6, $f6, $f12
/* 37CE8 8005C8E8 00000000 */  nop       
/* 37CEC 8005C8EC 46047102 */  mul.s     $f4, $f14, $f4
/* 37CF0 8005C8F0 00000000 */  nop       
/* 37CF4 8005C8F4 46068182 */  mul.s     $f6, $f16, $f6
/* 37CF8 8005C8F8 00000000 */  nop       
/* 37CFC 8005C8FC 46020001 */  sub.s     $f0, $f0, $f2
/* 37D00 8005C900 4600A002 */  mul.s     $f0, $f20, $f0
/* 37D04 8005C904 00000000 */  nop       
/* 37D08 8005C908 46002100 */  add.s     $f4, $f4, $f0
/* 37D0C 8005C90C 46062100 */  add.s     $f4, $f4, $f6
/* 37D10 8005C910 461A203C */  c.lt.s    $f4, $f26
/* 37D14 8005C914 00000000 */  nop       
/* 37D18 8005C918 450100E6 */  bc1t      .L8005CCB4
/* 37D1C 8005C91C 00000000 */   nop      
/* 37D20 8005C920 C488001C */  lwc1      $f8, 0x1c($a0)
/* 37D24 8005C924 46004007 */  neg.s     $f0, $f8
/* 37D28 8005C928 460A0002 */  mul.s     $f0, $f0, $f10
/* 37D2C 8005C92C 00000000 */  nop       
/* 37D30 8005C930 C4840018 */  lwc1      $f4, 0x18($a0)
/* 37D34 8005C934 460A2102 */  mul.s     $f4, $f4, $f10
/* 37D38 8005C938 00000000 */  nop       
/* 37D3C 8005C93C 460C4202 */  mul.s     $f8, $f8, $f12
/* 37D40 8005C940 00000000 */  nop       
/* 37D44 8005C944 C4620000 */  lwc1      $f2, ($v1)
/* 37D48 8005C948 4602B081 */  sub.s     $f2, $f22, $f2
/* 37D4C 8005C94C 46001082 */  mul.s     $f2, $f2, $f0
/* 37D50 8005C950 00000000 */  nop       
/* 37D54 8005C954 C4800020 */  lwc1      $f0, 0x20($a0)
/* 37D58 8005C958 460C0002 */  mul.s     $f0, $f0, $f12
/* 37D5C 8005C95C 00000000 */  nop       
/* 37D60 8005C960 C4660004 */  lwc1      $f6, 4($v1)
/* 37D64 8005C964 4606C181 */  sub.s     $f6, $f24, $f6
/* 37D68 8005C968 46002101 */  sub.s     $f4, $f4, $f0
/* 37D6C 8005C96C 46043182 */  mul.s     $f6, $f6, $f4
/* 37D70 8005C970 00000000 */  nop       
/* 37D74 8005C974 C4600008 */  lwc1      $f0, 8($v1)
/* 37D78 8005C978 4600E001 */  sub.s     $f0, $f28, $f0
/* 37D7C 8005C97C 46080002 */  mul.s     $f0, $f0, $f8
/* 37D80 8005C980 00000000 */  nop       
/* 37D84 8005C984 46061080 */  add.s     $f2, $f2, $f6
/* 37D88 8005C988 46001080 */  add.s     $f2, $f2, $f0
/* 37D8C 8005C98C 461A103C */  c.lt.s    $f2, $f26
/* 37D90 8005C990 00000000 */  nop       
/* 37D94 8005C994 450100C7 */  bc1t      .L8005CCB4
/* 37D98 8005C998 00000000 */   nop      
/* 37D9C 8005C99C C4880028 */  lwc1      $f8, 0x28($a0)
/* 37DA0 8005C9A0 46004007 */  neg.s     $f0, $f8
/* 37DA4 8005C9A4 460A0002 */  mul.s     $f0, $f0, $f10
/* 37DA8 8005C9A8 00000000 */  nop       
/* 37DAC 8005C9AC C4840024 */  lwc1      $f4, 0x24($a0)
/* 37DB0 8005C9B0 460A2102 */  mul.s     $f4, $f4, $f10
/* 37DB4 8005C9B4 00000000 */  nop       
/* 37DB8 8005C9B8 460C4202 */  mul.s     $f8, $f8, $f12
/* 37DBC 8005C9BC 00000000 */  nop       
/* 37DC0 8005C9C0 C4A20000 */  lwc1      $f2, ($a1)
/* 37DC4 8005C9C4 4602B081 */  sub.s     $f2, $f22, $f2
/* 37DC8 8005C9C8 46001082 */  mul.s     $f2, $f2, $f0
/* 37DCC 8005C9CC 00000000 */  nop       
/* 37DD0 8005C9D0 C480002C */  lwc1      $f0, 0x2c($a0)
/* 37DD4 8005C9D4 460C0002 */  mul.s     $f0, $f0, $f12
/* 37DD8 8005C9D8 00000000 */  nop       
/* 37DDC 8005C9DC C4A60004 */  lwc1      $f6, 4($a1)
/* 37DE0 8005C9E0 4606C181 */  sub.s     $f6, $f24, $f6
/* 37DE4 8005C9E4 46002101 */  sub.s     $f4, $f4, $f0
/* 37DE8 8005C9E8 46043182 */  mul.s     $f6, $f6, $f4
/* 37DEC 8005C9EC 00000000 */  nop       
/* 37DF0 8005C9F0 C4A00008 */  lwc1      $f0, 8($a1)
/* 37DF4 8005C9F4 4600E001 */  sub.s     $f0, $f28, $f0
/* 37DF8 8005C9F8 46080002 */  mul.s     $f0, $f0, $f8
/* 37DFC 8005C9FC 00000000 */  nop       
/* 37E00 8005CA00 46061080 */  add.s     $f2, $f2, $f6
/* 37E04 8005CA04 080172ED */  j         .L8005CBB4
/* 37E08 8005CA08 46001080 */   add.s    $f2, $f2, $f0
.L8005CA0C:
/* 37E0C 8005CA0C 3C01800A */  lui       $at, %hi(D_800A423C)
/* 37E10 8005CA10 C42C423C */  lwc1      $f12, %lo(D_800A423C)($at)
/* 37E14 8005CA14 460C4002 */  mul.s     $f0, $f8, $f12
/* 37E18 8005CA18 00000000 */  nop       
/* 37E1C 8005CA1C 3C01800A */  lui       $at, %hi(D_800A4244)
/* 37E20 8005CA20 C42A4244 */  lwc1      $f10, %lo(D_800A4244)($at)
/* 37E24 8005CA24 460A3082 */  mul.s     $f2, $f6, $f10
/* 37E28 8005CA28 00000000 */  nop       
/* 37E2C 8005CA2C 46020000 */  add.s     $f0, $f0, $f2
/* 37E30 8005CA30 46120002 */  mul.s     $f0, $f0, $f18
/* 37E34 8005CA34 00000000 */  nop       
/* 37E38 8005CA38 4480D000 */  mtc1      $zero, $f26
/* 37E3C 8005CA3C 00000000 */  nop       
/* 37E40 8005CA40 4600D03E */  c.le.s    $f26, $f0
/* 37E44 8005CA44 00000000 */  nop       
/* 37E48 8005CA48 4501009A */  bc1t      .L8005CCB4
/* 37E4C 8005CA4C 0000102D */   daddu    $v0, $zero, $zero
/* 37E50 8005CA50 C4860010 */  lwc1      $f6, 0x10($a0)
/* 37E54 8005CA54 46003107 */  neg.s     $f4, $f6
/* 37E58 8005CA58 460A2102 */  mul.s     $f4, $f4, $f10
/* 37E5C 8005CA5C 00000000 */  nop       
/* 37E60 8005CA60 C480000C */  lwc1      $f0, 0xc($a0)
/* 37E64 8005CA64 460A0002 */  mul.s     $f0, $f0, $f10
/* 37E68 8005CA68 00000000 */  nop       
/* 37E6C 8005CA6C C4820014 */  lwc1      $f2, 0x14($a0)
/* 37E70 8005CA70 460C1082 */  mul.s     $f2, $f2, $f12
/* 37E74 8005CA74 00000000 */  nop       
/* 37E78 8005CA78 460C3182 */  mul.s     $f6, $f6, $f12
/* 37E7C 8005CA7C 00000000 */  nop       
/* 37E80 8005CA80 46047102 */  mul.s     $f4, $f14, $f4
/* 37E84 8005CA84 00000000 */  nop       
/* 37E88 8005CA88 46068182 */  mul.s     $f6, $f16, $f6
/* 37E8C 8005CA8C 00000000 */  nop       
/* 37E90 8005CA90 46020001 */  sub.s     $f0, $f0, $f2
/* 37E94 8005CA94 4600A002 */  mul.s     $f0, $f20, $f0
/* 37E98 8005CA98 00000000 */  nop       
/* 37E9C 8005CA9C 46002100 */  add.s     $f4, $f4, $f0
/* 37EA0 8005CAA0 46062100 */  add.s     $f4, $f4, $f6
/* 37EA4 8005CAA4 46122102 */  mul.s     $f4, $f4, $f18
/* 37EA8 8005CAA8 00000000 */  nop       
/* 37EAC 8005CAAC 461A203C */  c.lt.s    $f4, $f26
/* 37EB0 8005CAB0 00000000 */  nop       
/* 37EB4 8005CAB4 4501007F */  bc1t      .L8005CCB4
/* 37EB8 8005CAB8 00000000 */   nop      
/* 37EBC 8005CABC C488001C */  lwc1      $f8, 0x1c($a0)
/* 37EC0 8005CAC0 46004007 */  neg.s     $f0, $f8
/* 37EC4 8005CAC4 460A0002 */  mul.s     $f0, $f0, $f10
/* 37EC8 8005CAC8 00000000 */  nop       
/* 37ECC 8005CACC C4840018 */  lwc1      $f4, 0x18($a0)
/* 37ED0 8005CAD0 460A2102 */  mul.s     $f4, $f4, $f10
/* 37ED4 8005CAD4 00000000 */  nop       
/* 37ED8 8005CAD8 460C4202 */  mul.s     $f8, $f8, $f12
/* 37EDC 8005CADC 00000000 */  nop       
/* 37EE0 8005CAE0 C4620000 */  lwc1      $f2, ($v1)
/* 37EE4 8005CAE4 4602B081 */  sub.s     $f2, $f22, $f2
/* 37EE8 8005CAE8 46001082 */  mul.s     $f2, $f2, $f0
/* 37EEC 8005CAEC 00000000 */  nop       
/* 37EF0 8005CAF0 C4800020 */  lwc1      $f0, 0x20($a0)
/* 37EF4 8005CAF4 460C0002 */  mul.s     $f0, $f0, $f12
/* 37EF8 8005CAF8 00000000 */  nop       
/* 37EFC 8005CAFC C4660004 */  lwc1      $f6, 4($v1)
/* 37F00 8005CB00 4606C181 */  sub.s     $f6, $f24, $f6
/* 37F04 8005CB04 46002101 */  sub.s     $f4, $f4, $f0
/* 37F08 8005CB08 46043182 */  mul.s     $f6, $f6, $f4
/* 37F0C 8005CB0C 00000000 */  nop       
/* 37F10 8005CB10 C4600008 */  lwc1      $f0, 8($v1)
/* 37F14 8005CB14 4600E001 */  sub.s     $f0, $f28, $f0
/* 37F18 8005CB18 46080002 */  mul.s     $f0, $f0, $f8
/* 37F1C 8005CB1C 00000000 */  nop       
/* 37F20 8005CB20 46061080 */  add.s     $f2, $f2, $f6
/* 37F24 8005CB24 46001080 */  add.s     $f2, $f2, $f0
/* 37F28 8005CB28 46121082 */  mul.s     $f2, $f2, $f18
/* 37F2C 8005CB2C 00000000 */  nop       
/* 37F30 8005CB30 461A103C */  c.lt.s    $f2, $f26
/* 37F34 8005CB34 00000000 */  nop       
/* 37F38 8005CB38 4501005E */  bc1t      .L8005CCB4
/* 37F3C 8005CB3C 00000000 */   nop      
/* 37F40 8005CB40 C4880028 */  lwc1      $f8, 0x28($a0)
/* 37F44 8005CB44 46004007 */  neg.s     $f0, $f8
/* 37F48 8005CB48 460A0002 */  mul.s     $f0, $f0, $f10
/* 37F4C 8005CB4C 00000000 */  nop       
/* 37F50 8005CB50 C4840024 */  lwc1      $f4, 0x24($a0)
/* 37F54 8005CB54 460A2102 */  mul.s     $f4, $f4, $f10
/* 37F58 8005CB58 00000000 */  nop       
/* 37F5C 8005CB5C 460C4202 */  mul.s     $f8, $f8, $f12
/* 37F60 8005CB60 00000000 */  nop       
/* 37F64 8005CB64 C4A20000 */  lwc1      $f2, ($a1)
/* 37F68 8005CB68 4602B081 */  sub.s     $f2, $f22, $f2
/* 37F6C 8005CB6C 46001082 */  mul.s     $f2, $f2, $f0
/* 37F70 8005CB70 00000000 */  nop       
/* 37F74 8005CB74 C480002C */  lwc1      $f0, 0x2c($a0)
/* 37F78 8005CB78 460C0002 */  mul.s     $f0, $f0, $f12
/* 37F7C 8005CB7C 00000000 */  nop       
/* 37F80 8005CB80 C4A60004 */  lwc1      $f6, 4($a1)
/* 37F84 8005CB84 4606C181 */  sub.s     $f6, $f24, $f6
/* 37F88 8005CB88 46002101 */  sub.s     $f4, $f4, $f0
/* 37F8C 8005CB8C 46043182 */  mul.s     $f6, $f6, $f4
/* 37F90 8005CB90 00000000 */  nop       
/* 37F94 8005CB94 C4A00008 */  lwc1      $f0, 8($a1)
/* 37F98 8005CB98 4600E001 */  sub.s     $f0, $f28, $f0
/* 37F9C 8005CB9C 46080002 */  mul.s     $f0, $f0, $f8
/* 37FA0 8005CBA0 00000000 */  nop       
/* 37FA4 8005CBA4 46061080 */  add.s     $f2, $f2, $f6
/* 37FA8 8005CBA8 46001080 */  add.s     $f2, $f2, $f0
/* 37FAC 8005CBAC 46121082 */  mul.s     $f2, $f2, $f18
/* 37FB0 8005CBB0 00000000 */  nop       
.L8005CBB4:
/* 37FB4 8005CBB4 461A103C */  c.lt.s    $f2, $f26
/* 37FB8 8005CBB8 00000000 */  nop       
/* 37FBC 8005CBBC 4503003D */  bc1tl     .L8005CCB4
/* 37FC0 8005CBC0 0000102D */   daddu    $v0, $zero, $zero
/* 37FC4 8005CBC4 C4840030 */  lwc1      $f4, 0x30($a0)
/* 37FC8 8005CBC8 3C01800A */  lui       $at, %hi(D_800A423C)
/* 37FCC 8005CBCC C420423C */  lwc1      $f0, %lo(D_800A423C)($at)
/* 37FD0 8005CBD0 46002102 */  mul.s     $f4, $f4, $f0
/* 37FD4 8005CBD4 00000000 */  nop       
/* 37FD8 8005CBD8 C4820038 */  lwc1      $f2, 0x38($a0)
/* 37FDC 8005CBDC 3C01800A */  lui       $at, %hi(D_800A4244)
/* 37FE0 8005CBE0 C4204244 */  lwc1      $f0, %lo(D_800A4244)($at)
/* 37FE4 8005CBE4 46001082 */  mul.s     $f2, $f2, $f0
/* 37FE8 8005CBE8 00000000 */  nop       
/* 37FEC 8005CBEC 3C01800A */  lui       $at, %hi(D_800A4254)
/* 37FF0 8005CBF0 C4264254 */  lwc1      $f6, %lo(D_800A4254)($at)
/* 37FF4 8005CBF4 44800000 */  mtc1      $zero, $f0
/* 37FF8 8005CBF8 00000000 */  nop       
/* 37FFC 8005CBFC 4606003E */  c.le.s    $f0, $f6
/* 38000 8005CC00 00000000 */  nop       
/* 38004 8005CC04 45000007 */  bc1f      .L8005CC24
/* 38008 8005CC08 46022100 */   add.s    $f4, $f4, $f2
/* 3800C 8005CC0C 46009007 */  neg.s     $f0, $f18
/* 38010 8005CC10 46040003 */  div.s     $f0, $f0, $f4
/* 38014 8005CC14 4600303E */  c.le.s    $f6, $f0
/* 38018 8005CC18 00000000 */  nop       
/* 3801C 8005CC1C 45010025 */  bc1t      .L8005CCB4
/* 38020 8005CC20 0000102D */   daddu    $v0, $zero, $zero
.L8005CC24:
/* 38024 8005CC24 46009007 */  neg.s     $f0, $f18
/* 38028 8005CC28 46040003 */  div.s     $f0, $f0, $f4
/* 3802C 8005CC2C 3C01800A */  lui       $at, %hi(D_800A423C)
/* 38030 8005CC30 C422423C */  lwc1      $f2, %lo(D_800A423C)($at)
/* 38034 8005CC34 3C01800A */  lui       $at, %hi(D_800A4230)
/* 38038 8005CC38 C4264230 */  lwc1      $f6, %lo(D_800A4230)($at)
/* 3803C 8005CC3C 3C01800A */  lui       $at, %hi(D_800A4234)
/* 38040 8005CC40 C42C4234 */  lwc1      $f12, %lo(D_800A4234)($at)
/* 38044 8005CC44 3C01800A */  lui       $at, %hi(D_800A4244)
/* 38048 8005CC48 C4244244 */  lwc1      $f4, %lo(D_800A4244)($at)
/* 3804C 8005CC4C 46001082 */  mul.s     $f2, $f2, $f0
/* 38050 8005CC50 00000000 */  nop       
/* 38054 8005CC54 C4880030 */  lwc1      $f8, 0x30($a0)
/* 38058 8005CC58 C48A0034 */  lwc1      $f10, 0x34($a0)
/* 3805C 8005CC5C 3C01800A */  lui       $at, %hi(D_800A4254)
/* 38060 8005CC60 E4204254 */  swc1      $f0, %lo(D_800A4254)($at)
/* 38064 8005CC64 46002102 */  mul.s     $f4, $f4, $f0
/* 38068 8005CC68 00000000 */  nop       
/* 3806C 8005CC6C 3C01800A */  lui       $at, %hi(D_800A4238)
/* 38070 8005CC70 C4204238 */  lwc1      $f0, %lo(D_800A4238)($at)
/* 38074 8005CC74 24020001 */  addiu     $v0, $zero, 1
/* 38078 8005CC78 3C01800A */  lui       $at, %hi(D_800A424C)
/* 3807C 8005CC7C E42C424C */  swc1      $f12, %lo(D_800A424C)($at)
/* 38080 8005CC80 3C01800A */  lui       $at, %hi(D_800A4258)
/* 38084 8005CC84 E4284258 */  swc1      $f8, %lo(D_800A4258)($at)
/* 38088 8005CC88 46023180 */  add.s     $f6, $f6, $f2
/* 3808C 8005CC8C 3C01800A */  lui       $at, %hi(D_800A425C)
/* 38090 8005CC90 E42A425C */  swc1      $f10, %lo(D_800A425C)($at)
/* 38094 8005CC94 C4820038 */  lwc1      $f2, 0x38($a0)
/* 38098 8005CC98 46040000 */  add.s     $f0, $f0, $f4
/* 3809C 8005CC9C 3C01800A */  lui       $at, %hi(D_800A4260)
/* 380A0 8005CCA0 E4224260 */  swc1      $f2, %lo(D_800A4260)($at)
/* 380A4 8005CCA4 3C01800A */  lui       $at, %hi(D_800A4248)
/* 380A8 8005CCA8 E4264248 */  swc1      $f6, %lo(D_800A4248)($at)
/* 380AC 8005CCAC 3C01800A */  lui       $at, %hi(D_800A4250)
/* 380B0 8005CCB0 E4204250 */  swc1      $f0, %lo(D_800A4250)($at)
.L8005CCB4:
/* 380B4 8005CCB4 D7BC0020 */  ldc1      $f28, 0x20($sp)
/* 380B8 8005CCB8 D7BA0018 */  ldc1      $f26, 0x18($sp)
/* 380BC 8005CCBC D7B80010 */  ldc1      $f24, 0x10($sp)
/* 380C0 8005CCC0 D7B60008 */  ldc1      $f22, 8($sp)
/* 380C4 8005CCC4 D7B40000 */  ldc1      $f20, ($sp)
/* 380C8 8005CCC8 03E00008 */  jr        $ra
/* 380CC 8005CCCC 27BD0028 */   addiu    $sp, $sp, 0x28
