.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242858_95DA58
/* 95DA58 80242858 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 95DA5C 8024285C AFB20018 */  sw        $s2, 0x18($sp)
/* 95DA60 80242860 0080902D */  daddu     $s2, $a0, $zero
/* 95DA64 80242864 AFBF0020 */  sw        $ra, 0x20($sp)
/* 95DA68 80242868 AFB3001C */  sw        $s3, 0x1c($sp)
/* 95DA6C 8024286C AFB10014 */  sw        $s1, 0x14($sp)
/* 95DA70 80242870 AFB00010 */  sw        $s0, 0x10($sp)
/* 95DA74 80242874 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 95DA78 80242878 8E42000C */  lw        $v0, 0xc($s2)
/* 95DA7C 8024287C 00A0802D */  daddu     $s0, $a1, $zero
/* 95DA80 80242880 0C0B1EAF */  jal       get_variable
/* 95DA84 80242884 8C450000 */   lw       $a1, ($v0)
/* 95DA88 80242888 3C138011 */  lui       $s3, %hi(gPlayerStatus)
/* 95DA8C 8024288C 2673EFC8 */  addiu     $s3, $s3, %lo(gPlayerStatus)
/* 95DA90 80242890 1200001A */  beqz      $s0, .L802428FC
/* 95DA94 80242894 0040882D */   daddu    $s1, $v0, $zero
/* 95DA98 80242898 0C00AB39 */  jal       heap_malloc
/* 95DA9C 8024289C 2404003C */   addiu    $a0, $zero, 0x3c
/* 95DAA0 802428A0 AE420074 */  sw        $v0, 0x74($s2)
/* 95DAA4 802428A4 8E230000 */  lw        $v1, ($s1)
/* 95DAA8 802428A8 0040802D */  daddu     $s0, $v0, $zero
/* 95DAAC 802428AC AE030000 */  sw        $v1, ($s0)
/* 95DAB0 802428B0 8E220004 */  lw        $v0, 4($s1)
/* 95DAB4 802428B4 AE020004 */  sw        $v0, 4($s0)
/* 95DAB8 802428B8 8E220008 */  lw        $v0, 8($s1)
/* 95DABC 802428BC AE020008 */  sw        $v0, 8($s0)
/* 95DAC0 802428C0 8E22000C */  lw        $v0, 0xc($s1)
/* 95DAC4 802428C4 AE02000C */  sw        $v0, 0xc($s0)
/* 95DAC8 802428C8 8E220010 */  lw        $v0, 0x10($s1)
/* 95DACC 802428CC AE020010 */  sw        $v0, 0x10($s0)
/* 95DAD0 802428D0 8E220014 */  lw        $v0, 0x14($s1)
/* 95DAD4 802428D4 AE000018 */  sw        $zero, 0x18($s0)
/* 95DAD8 802428D8 AE00001C */  sw        $zero, 0x1c($s0)
/* 95DADC 802428DC AE000020 */  sw        $zero, 0x20($s0)
/* 95DAE0 802428E0 AE000024 */  sw        $zero, 0x24($s0)
/* 95DAE4 802428E4 AE000028 */  sw        $zero, 0x28($s0)
/* 95DAE8 802428E8 AE00002C */  sw        $zero, 0x2c($s0)
/* 95DAEC 802428EC AE000030 */  sw        $zero, 0x30($s0)
/* 95DAF0 802428F0 AE000034 */  sw        $zero, 0x34($s0)
/* 95DAF4 802428F4 AE000038 */  sw        $zero, 0x38($s0)
/* 95DAF8 802428F8 AE020014 */  sw        $v0, 0x14($s0)
.L802428FC:
/* 95DAFC 802428FC 8E500074 */  lw        $s0, 0x74($s2)
/* 95DB00 80242900 8E030020 */  lw        $v1, 0x20($s0)
/* 95DB04 80242904 2C620005 */  sltiu     $v0, $v1, 5
/* 95DB08 80242908 10400116 */  beqz      $v0, .L80242D64
/* 95DB0C 8024290C 00031080 */   sll      $v0, $v1, 2
/* 95DB10 80242910 3C018025 */  lui       $at, %hi(D_8024DF80)
/* 95DB14 80242914 00220821 */  addu      $at, $at, $v0
/* 95DB18 80242918 8C22DF80 */  lw        $v0, %lo(D_8024DF80)($at)
/* 95DB1C 8024291C 00400008 */  jr        $v0
/* 95DB20 80242920 00000000 */   nop      
/* 95DB24 80242924 C60C0000 */  lwc1      $f12, ($s0)
/* 95DB28 80242928 46806320 */  cvt.s.w   $f12, $f12
/* 95DB2C 8024292C C60E0008 */  lwc1      $f14, 8($s0)
/* 95DB30 80242930 0C038022 */  jal       func_800E0088
/* 95DB34 80242934 468073A0 */   cvt.s.w  $f14, $f14
/* 95DB38 80242938 8E02000C */  lw        $v0, 0xc($s0)
/* 95DB3C 8024293C 4600010D */  trunc.w.s $f4, $f0
/* 95DB40 80242940 44032000 */  mfc1      $v1, $f4
/* 95DB44 80242944 00000000 */  nop       
/* 95DB48 80242948 0062102A */  slt       $v0, $v1, $v0
/* 95DB4C 8024294C 10400105 */  beqz      $v0, .L80242D64
/* 95DB50 80242950 00000000 */   nop      
/* 95DB54 80242954 C6600028 */  lwc1      $f0, 0x28($s3)
/* 95DB58 80242958 8E020020 */  lw        $v0, 0x20($s0)
/* 95DB5C 8024295C E6000024 */  swc1      $f0, 0x24($s0)
/* 95DB60 80242960 C6600030 */  lwc1      $f0, 0x30($s3)
/* 95DB64 80242964 24420001 */  addiu     $v0, $v0, 1
/* 95DB68 80242968 AE020020 */  sw        $v0, 0x20($s0)
/* 95DB6C 8024296C 08090B59 */  j         .L80242D64
/* 95DB70 80242970 E6000028 */   swc1     $f0, 0x28($s0)
/* 95DB74 80242974 C60C0000 */  lwc1      $f12, ($s0)
/* 95DB78 80242978 46806320 */  cvt.s.w   $f12, $f12
/* 95DB7C 8024297C C60E0008 */  lwc1      $f14, 8($s0)
/* 95DB80 80242980 0C038022 */  jal       func_800E0088
/* 95DB84 80242984 468073A0 */   cvt.s.w  $f14, $f14
/* 95DB88 80242988 8E02000C */  lw        $v0, 0xc($s0)
/* 95DB8C 8024298C 4600010D */  trunc.w.s $f4, $f0
/* 95DB90 80242990 44032000 */  mfc1      $v1, $f4
/* 95DB94 80242994 00000000 */  nop       
/* 95DB98 80242998 0062102A */  slt       $v0, $v1, $v0
/* 95DB9C 8024299C 504000F1 */  beql      $v0, $zero, .L80242D64
/* 95DBA0 802429A0 AE000020 */   sw       $zero, 0x20($s0)
/* 95DBA4 802429A4 C60C0000 */  lwc1      $f12, ($s0)
/* 95DBA8 802429A8 46806320 */  cvt.s.w   $f12, $f12
/* 95DBAC 802429AC 8E060024 */  lw        $a2, 0x24($s0)
/* 95DBB0 802429B0 8E070028 */  lw        $a3, 0x28($s0)
/* 95DBB4 802429B4 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DBB8 802429B8 0C00A720 */  jal       atan2
/* 95DBBC 802429BC 468073A0 */   cvt.s.w  $f14, $f14
/* 95DBC0 802429C0 4600010D */  trunc.w.s $f4, $f0
/* 95DBC4 802429C4 44112000 */  mfc1      $s1, $f4
/* 95DBC8 802429C8 C60C0000 */  lwc1      $f12, ($s0)
/* 95DBCC 802429CC 46806320 */  cvt.s.w   $f12, $f12
/* 95DBD0 802429D0 8E660028 */  lw        $a2, 0x28($s3)
/* 95DBD4 802429D4 8E670030 */  lw        $a3, 0x30($s3)
/* 95DBD8 802429D8 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DBDC 802429DC 0C00A720 */  jal       atan2
/* 95DBE0 802429E0 468073A0 */   cvt.s.w  $f14, $f14
/* 95DBE4 802429E4 4600010D */  trunc.w.s $f4, $f0
/* 95DBE8 802429E8 44022000 */  mfc1      $v0, $f4
/* 95DBEC 802429EC 44916000 */  mtc1      $s1, $f12
/* 95DBF0 802429F0 00000000 */  nop       
/* 95DBF4 802429F4 46806320 */  cvt.s.w   $f12, $f12
/* 95DBF8 802429F8 44827000 */  mtc1      $v0, $f14
/* 95DBFC 802429FC 00000000 */  nop       
/* 95DC00 80242A00 0C00A70A */  jal       get_clamped_angle_diff
/* 95DC04 80242A04 468073A0 */   cvt.s.w  $f14, $f14
/* 95DC08 80242A08 4600010D */  trunc.w.s $f4, $f0
/* 95DC0C 80242A0C 44022000 */  mfc1      $v0, $f4
/* 95DC10 80242A10 00000000 */  nop       
/* 95DC14 80242A14 44826000 */  mtc1      $v0, $f12
/* 95DC18 80242A18 00000000 */  nop       
/* 95DC1C 80242A1C 0C00A69F */  jal       signF
/* 95DC20 80242A20 46806320 */   cvt.s.w  $f12, $f12
/* 95DC24 80242A24 8E020020 */  lw        $v0, 0x20($s0)
/* 95DC28 80242A28 08090B52 */  j         .L80242D48
/* 95DC2C 80242A2C E6000034 */   swc1     $f0, 0x34($s0)
/* 95DC30 80242A30 C60C0000 */  lwc1      $f12, ($s0)
/* 95DC34 80242A34 46806320 */  cvt.s.w   $f12, $f12
/* 95DC38 80242A38 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DC3C 80242A3C 0C038022 */  jal       func_800E0088
/* 95DC40 80242A40 468073A0 */   cvt.s.w  $f14, $f14
/* 95DC44 80242A44 8E02000C */  lw        $v0, 0xc($s0)
/* 95DC48 80242A48 4600010D */  trunc.w.s $f4, $f0
/* 95DC4C 80242A4C 44032000 */  mfc1      $v1, $f4
/* 95DC50 80242A50 00000000 */  nop       
/* 95DC54 80242A54 0062102A */  slt       $v0, $v1, $v0
/* 95DC58 80242A58 504000C2 */  beql      $v0, $zero, .L80242D64
/* 95DC5C 80242A5C AE000020 */   sw       $zero, 0x20($s0)
/* 95DC60 80242A60 C60C0000 */  lwc1      $f12, ($s0)
/* 95DC64 80242A64 46806320 */  cvt.s.w   $f12, $f12
/* 95DC68 80242A68 8E06002C */  lw        $a2, 0x2c($s0)
/* 95DC6C 80242A6C 8E070030 */  lw        $a3, 0x30($s0)
/* 95DC70 80242A70 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DC74 80242A74 0C00A720 */  jal       atan2
/* 95DC78 80242A78 468073A0 */   cvt.s.w  $f14, $f14
/* 95DC7C 80242A7C 4600010D */  trunc.w.s $f4, $f0
/* 95DC80 80242A80 44112000 */  mfc1      $s1, $f4
/* 95DC84 80242A84 C60C0000 */  lwc1      $f12, ($s0)
/* 95DC88 80242A88 46806320 */  cvt.s.w   $f12, $f12
/* 95DC8C 80242A8C 8E660028 */  lw        $a2, 0x28($s3)
/* 95DC90 80242A90 8E670030 */  lw        $a3, 0x30($s3)
/* 95DC94 80242A94 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DC98 80242A98 0C00A720 */  jal       atan2
/* 95DC9C 80242A9C 468073A0 */   cvt.s.w  $f14, $f14
/* 95DCA0 80242AA0 4600010D */  trunc.w.s $f4, $f0
/* 95DCA4 80242AA4 44022000 */  mfc1      $v0, $f4
/* 95DCA8 80242AA8 44916000 */  mtc1      $s1, $f12
/* 95DCAC 80242AAC 00000000 */  nop       
/* 95DCB0 80242AB0 46806320 */  cvt.s.w   $f12, $f12
/* 95DCB4 80242AB4 44827000 */  mtc1      $v0, $f14
/* 95DCB8 80242AB8 00000000 */  nop       
/* 95DCBC 80242ABC 0C00A70A */  jal       get_clamped_angle_diff
/* 95DCC0 80242AC0 468073A0 */   cvt.s.w  $f14, $f14
/* 95DCC4 80242AC4 4600010D */  trunc.w.s $f4, $f0
/* 95DCC8 80242AC8 44022000 */  mfc1      $v0, $f4
/* 95DCCC 80242ACC 00000000 */  nop       
/* 95DCD0 80242AD0 44826000 */  mtc1      $v0, $f12
/* 95DCD4 80242AD4 00000000 */  nop       
/* 95DCD8 80242AD8 0C00A69F */  jal       signF
/* 95DCDC 80242ADC 46806320 */   cvt.s.w  $f12, $f12
/* 95DCE0 80242AE0 C6020034 */  lwc1      $f2, 0x34($s0)
/* 95DCE4 80242AE4 46001032 */  c.eq.s    $f2, $f0
/* 95DCE8 80242AE8 00000000 */  nop       
/* 95DCEC 80242AEC 4502009D */  bc1fl     .L80242D64
/* 95DCF0 80242AF0 AE000020 */   sw       $zero, 0x20($s0)
/* 95DCF4 80242AF4 C60C0000 */  lwc1      $f12, ($s0)
/* 95DCF8 80242AF8 46806320 */  cvt.s.w   $f12, $f12
/* 95DCFC 80242AFC 8E060024 */  lw        $a2, 0x24($s0)
/* 95DD00 80242B00 8E070028 */  lw        $a3, 0x28($s0)
/* 95DD04 80242B04 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DD08 80242B08 0C00A720 */  jal       atan2
/* 95DD0C 80242B0C 468073A0 */   cvt.s.w  $f14, $f14
/* 95DD10 80242B10 4600010D */  trunc.w.s $f4, $f0
/* 95DD14 80242B14 44112000 */  mfc1      $s1, $f4
/* 95DD18 80242B18 C60C0000 */  lwc1      $f12, ($s0)
/* 95DD1C 80242B1C 46806320 */  cvt.s.w   $f12, $f12
/* 95DD20 80242B20 8E660028 */  lw        $a2, 0x28($s3)
/* 95DD24 80242B24 8E670030 */  lw        $a3, 0x30($s3)
/* 95DD28 80242B28 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DD2C 80242B2C 0C00A720 */  jal       atan2
/* 95DD30 80242B30 468073A0 */   cvt.s.w  $f14, $f14
/* 95DD34 80242B34 4600010D */  trunc.w.s $f4, $f0
/* 95DD38 80242B38 44022000 */  mfc1      $v0, $f4
/* 95DD3C 80242B3C 44916000 */  mtc1      $s1, $f12
/* 95DD40 80242B40 00000000 */  nop       
/* 95DD44 80242B44 46806320 */  cvt.s.w   $f12, $f12
/* 95DD48 80242B48 44827000 */  mtc1      $v0, $f14
/* 95DD4C 80242B4C 00000000 */  nop       
/* 95DD50 80242B50 0C00A70A */  jal       get_clamped_angle_diff
/* 95DD54 80242B54 468073A0 */   cvt.s.w  $f14, $f14
/* 95DD58 80242B58 4600010D */  trunc.w.s $f4, $f0
/* 95DD5C 80242B5C 44022000 */  mfc1      $v0, $f4
/* 95DD60 80242B60 00000000 */  nop       
/* 95DD64 80242B64 44820000 */  mtc1      $v0, $f0
/* 95DD68 80242B68 00000000 */  nop       
/* 95DD6C 80242B6C 46800020 */  cvt.s.w   $f0, $f0
/* 95DD70 80242B70 3C0142B4 */  lui       $at, 0x42b4
/* 95DD74 80242B74 44811000 */  mtc1      $at, $f2
/* 95DD78 80242B78 46000505 */  abs.s     $f20, $f0
/* 95DD7C 80242B7C 4614103C */  c.lt.s    $f2, $f20
/* 95DD80 80242B80 00000000 */  nop       
/* 95DD84 80242B84 45000077 */  bc1f      .L80242D64
/* 95DD88 80242B88 00000000 */   nop      
/* 95DD8C 80242B8C 8E020014 */  lw        $v0, 0x14($s0)
/* 95DD90 80242B90 10400003 */  beqz      $v0, .L80242BA0
/* 95DD94 80242B94 0200202D */   daddu    $a0, $s0, $zero
/* 95DD98 80242B98 0040F809 */  jalr      $v0
/* 95DD9C 80242B9C 0000282D */   daddu    $a1, $zero, $zero
.L80242BA0:
/* 95DDA0 80242BA0 C6000018 */  lwc1      $f0, 0x18($s0)
/* 95DDA4 80242BA4 46800020 */  cvt.s.w   $f0, $f0
/* 95DDA8 80242BA8 8E020020 */  lw        $v0, 0x20($s0)
/* 95DDAC 80242BAC 46140000 */  add.s     $f0, $f0, $f20
/* 95DDB0 80242BB0 24420001 */  addiu     $v0, $v0, 1
/* 95DDB4 80242BB4 AE020020 */  sw        $v0, 0x20($s0)
/* 95DDB8 80242BB8 4600010D */  trunc.w.s $f4, $f0
/* 95DDBC 80242BBC 08090B59 */  j         .L80242D64
/* 95DDC0 80242BC0 E6040018 */   swc1     $f4, 0x18($s0)
/* 95DDC4 80242BC4 C60C0000 */  lwc1      $f12, ($s0)
/* 95DDC8 80242BC8 46806320 */  cvt.s.w   $f12, $f12
/* 95DDCC 80242BCC C60E0008 */  lwc1      $f14, 8($s0)
/* 95DDD0 80242BD0 0C038022 */  jal       func_800E0088
/* 95DDD4 80242BD4 468073A0 */   cvt.s.w  $f14, $f14
/* 95DDD8 80242BD8 8E020010 */  lw        $v0, 0x10($s0)
/* 95DDDC 80242BDC 4600010D */  trunc.w.s $f4, $f0
/* 95DDE0 80242BE0 44032000 */  mfc1      $v1, $f4
/* 95DDE4 80242BE4 00000000 */  nop       
/* 95DDE8 80242BE8 0062102A */  slt       $v0, $v1, $v0
/* 95DDEC 80242BEC 10400050 */  beqz      $v0, .L80242D30
/* 95DDF0 80242BF0 00000000 */   nop      
/* 95DDF4 80242BF4 C60C0000 */  lwc1      $f12, ($s0)
/* 95DDF8 80242BF8 46806320 */  cvt.s.w   $f12, $f12
/* 95DDFC 80242BFC 8E06002C */  lw        $a2, 0x2c($s0)
/* 95DE00 80242C00 8E070030 */  lw        $a3, 0x30($s0)
/* 95DE04 80242C04 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DE08 80242C08 0C00A720 */  jal       atan2
/* 95DE0C 80242C0C 468073A0 */   cvt.s.w  $f14, $f14
/* 95DE10 80242C10 4600010D */  trunc.w.s $f4, $f0
/* 95DE14 80242C14 44112000 */  mfc1      $s1, $f4
/* 95DE18 80242C18 C60C0000 */  lwc1      $f12, ($s0)
/* 95DE1C 80242C1C 46806320 */  cvt.s.w   $f12, $f12
/* 95DE20 80242C20 8E660028 */  lw        $a2, 0x28($s3)
/* 95DE24 80242C24 8E670030 */  lw        $a3, 0x30($s3)
/* 95DE28 80242C28 C60E0008 */  lwc1      $f14, 8($s0)
/* 95DE2C 80242C2C 0C00A720 */  jal       atan2
/* 95DE30 80242C30 468073A0 */   cvt.s.w  $f14, $f14
/* 95DE34 80242C34 4600010D */  trunc.w.s $f4, $f0
/* 95DE38 80242C38 44022000 */  mfc1      $v0, $f4
/* 95DE3C 80242C3C 44916000 */  mtc1      $s1, $f12
/* 95DE40 80242C40 00000000 */  nop       
/* 95DE44 80242C44 46806320 */  cvt.s.w   $f12, $f12
/* 95DE48 80242C48 44827000 */  mtc1      $v0, $f14
/* 95DE4C 80242C4C 00000000 */  nop       
/* 95DE50 80242C50 0C00A70A */  jal       get_clamped_angle_diff
/* 95DE54 80242C54 468073A0 */   cvt.s.w  $f14, $f14
/* 95DE58 80242C58 4600010D */  trunc.w.s $f4, $f0
/* 95DE5C 80242C5C 44022000 */  mfc1      $v0, $f4
/* 95DE60 80242C60 00000000 */  nop       
/* 95DE64 80242C64 4482A000 */  mtc1      $v0, $f20
/* 95DE68 80242C68 00000000 */  nop       
/* 95DE6C 80242C6C 4680A520 */  cvt.s.w   $f20, $f20
/* 95DE70 80242C70 0C00A69F */  jal       signF
/* 95DE74 80242C74 4600A306 */   mov.s    $f12, $f20
/* 95DE78 80242C78 C6020034 */  lwc1      $f2, 0x34($s0)
/* 95DE7C 80242C7C 46001032 */  c.eq.s    $f2, $f0
/* 95DE80 80242C80 00000000 */  nop       
/* 95DE84 80242C84 4503000A */  bc1tl     .L80242CB0
/* 95DE88 80242C88 4600A005 */   abs.s    $f0, $f20
/* 95DE8C 80242C8C 8E020014 */  lw        $v0, 0x14($s0)
/* 95DE90 80242C90 10400003 */  beqz      $v0, .L80242CA0
/* 95DE94 80242C94 0200202D */   daddu    $a0, $s0, $zero
/* 95DE98 80242C98 0040F809 */  jalr      $v0
/* 95DE9C 80242C9C 24050003 */   addiu    $a1, $zero, 3
.L80242CA0:
/* 95DEA0 80242CA0 8E020020 */  lw        $v0, 0x20($s0)
/* 95DEA4 80242CA4 24420001 */  addiu     $v0, $v0, 1
/* 95DEA8 80242CA8 08090B45 */  j         .L80242D14
/* 95DEAC 80242CAC AE020020 */   sw       $v0, 0x20($s0)
.L80242CB0:
/* 95DEB0 80242CB0 C6020018 */  lwc1      $f2, 0x18($s0)
/* 95DEB4 80242CB4 468010A0 */  cvt.s.w   $f2, $f2
/* 95DEB8 80242CB8 46001080 */  add.s     $f2, $f2, $f0
/* 95DEBC 80242CBC 3C02B60B */  lui       $v0, 0xb60b
/* 95DEC0 80242CC0 344260B7 */  ori       $v0, $v0, 0x60b7
/* 95DEC4 80242CC4 4600110D */  trunc.w.s $f4, $f2
/* 95DEC8 80242CC8 44032000 */  mfc1      $v1, $f4
/* 95DECC 80242CCC 00000000 */  nop       
/* 95DED0 80242CD0 00620018 */  mult      $v1, $v0
/* 95DED4 80242CD4 8E040038 */  lw        $a0, 0x38($s0)
/* 95DED8 80242CD8 AE030018 */  sw        $v1, 0x18($s0)
/* 95DEDC 80242CDC 00004010 */  mfhi      $t0
/* 95DEE0 80242CE0 01031021 */  addu      $v0, $t0, $v1
/* 95DEE4 80242CE4 00021203 */  sra       $v0, $v0, 8
/* 95DEE8 80242CE8 00031FC3 */  sra       $v1, $v1, 0x1f
/* 95DEEC 80242CEC 00431023 */  subu      $v0, $v0, $v1
/* 95DEF0 80242CF0 10440008 */  beq       $v0, $a0, .L80242D14
/* 95DEF4 80242CF4 AE02001C */   sw       $v0, 0x1c($s0)
/* 95DEF8 80242CF8 8E020014 */  lw        $v0, 0x14($s0)
/* 95DEFC 80242CFC 10400003 */  beqz      $v0, .L80242D0C
/* 95DF00 80242D00 0200202D */   daddu    $a0, $s0, $zero
/* 95DF04 80242D04 0040F809 */  jalr      $v0
/* 95DF08 80242D08 24050001 */   addiu    $a1, $zero, 1
.L80242D0C:
/* 95DF0C 80242D0C 8E02001C */  lw        $v0, 0x1c($s0)
/* 95DF10 80242D10 AE020038 */  sw        $v0, 0x38($s0)
.L80242D14:
/* 95DF14 80242D14 8E020014 */  lw        $v0, 0x14($s0)
/* 95DF18 80242D18 10400012 */  beqz      $v0, .L80242D64
/* 95DF1C 80242D1C 0200202D */   daddu    $a0, $s0, $zero
/* 95DF20 80242D20 0040F809 */  jalr      $v0
/* 95DF24 80242D24 24050002 */   addiu    $a1, $zero, 2
/* 95DF28 80242D28 08090B59 */  j         .L80242D64
/* 95DF2C 80242D2C 00000000 */   nop      
.L80242D30:
/* 95DF30 80242D30 8E020014 */  lw        $v0, 0x14($s0)
/* 95DF34 80242D34 10400003 */  beqz      $v0, .L80242D44
/* 95DF38 80242D38 0200202D */   daddu    $a0, $s0, $zero
/* 95DF3C 80242D3C 0040F809 */  jalr      $v0
/* 95DF40 80242D40 24050004 */   addiu    $a1, $zero, 4
.L80242D44:
/* 95DF44 80242D44 8E020020 */  lw        $v0, 0x20($s0)
.L80242D48:
/* 95DF48 80242D48 24420001 */  addiu     $v0, $v0, 1
/* 95DF4C 80242D4C 08090B59 */  j         .L80242D64
/* 95DF50 80242D50 AE020020 */   sw       $v0, 0x20($s0)
/* 95DF54 80242D54 AE000018 */  sw        $zero, 0x18($s0)
/* 95DF58 80242D58 AE00001C */  sw        $zero, 0x1c($s0)
/* 95DF5C 80242D5C AE000038 */  sw        $zero, 0x38($s0)
/* 95DF60 80242D60 AE000020 */  sw        $zero, 0x20($s0)
.L80242D64:
/* 95DF64 80242D64 C6600028 */  lwc1      $f0, 0x28($s3)
/* 95DF68 80242D68 E600002C */  swc1      $f0, 0x2c($s0)
/* 95DF6C 80242D6C C6600030 */  lwc1      $f0, 0x30($s3)
/* 95DF70 80242D70 E6000030 */  swc1      $f0, 0x30($s0)
/* 95DF74 80242D74 8FBF0020 */  lw        $ra, 0x20($sp)
/* 95DF78 80242D78 8FB3001C */  lw        $s3, 0x1c($sp)
/* 95DF7C 80242D7C 8FB20018 */  lw        $s2, 0x18($sp)
/* 95DF80 80242D80 8FB10014 */  lw        $s1, 0x14($sp)
/* 95DF84 80242D84 8FB00010 */  lw        $s0, 0x10($sp)
/* 95DF88 80242D88 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 95DF8C 80242D8C 0000102D */  daddu     $v0, $zero, $zero
/* 95DF90 80242D90 03E00008 */  jr        $ra
/* 95DF94 80242D94 27BD0030 */   addiu    $sp, $sp, 0x30
