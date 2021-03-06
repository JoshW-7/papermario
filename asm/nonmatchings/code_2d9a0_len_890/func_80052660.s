.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80052660
/* 2DA60 80052660 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 2DA64 80052664 AFB60028 */  sw        $s6, 0x28($sp)
/* 2DA68 80052668 0080B02D */  daddu     $s6, $a0, $zero
/* 2DA6C 8005266C AFB20018 */  sw        $s2, 0x18($sp)
/* 2DA70 80052670 0000902D */  daddu     $s2, $zero, $zero
/* 2DA74 80052674 AFB50024 */  sw        $s5, 0x24($sp)
/* 2DA78 80052678 3C158008 */  lui       $s5, %hi(D_800785A0)
/* 2DA7C 8005267C 26B585A0 */  addiu     $s5, $s5, %lo(D_800785A0)
/* 2DA80 80052680 AFB3001C */  sw        $s3, 0x1c($sp)
/* 2DA84 80052684 241300B8 */  addiu     $s3, $zero, 0xb8
/* 2DA88 80052688 AFB40020 */  sw        $s4, 0x20($sp)
/* 2DA8C 8005268C 2414FFFF */  addiu     $s4, $zero, -1
/* 2DA90 80052690 AFB10014 */  sw        $s1, 0x14($sp)
/* 2DA94 80052694 24111320 */  addiu     $s1, $zero, 0x1320
/* 2DA98 80052698 AFBF002C */  sw        $ra, 0x2c($sp)
/* 2DA9C 8005269C AFB00010 */  sw        $s0, 0x10($sp)
/* 2DAA0 800526A0 02D18021 */  addu      $s0, $s6, $s1
.L800526A4:
/* 2DAA4 800526A4 8E02001C */  lw        $v0, 0x1c($s0)
/* 2DAA8 800526A8 50400118 */  beql      $v0, $zero, .L80052B0C
/* 2DAAC 800526AC 26310048 */   addiu    $s1, $s1, 0x48
/* 2DAB0 800526B0 9204003D */  lbu       $a0, 0x3d($s0)
/* 2DAB4 800526B4 30820002 */  andi      $v0, $a0, 2
/* 2DAB8 800526B8 10400005 */  beqz      $v0, .L800526D0
/* 2DABC 800526BC 30820010 */   andi     $v0, $a0, 0x10
/* 2DAC0 800526C0 0C014AD1 */  jal       func_80052B44
/* 2DAC4 800526C4 0200202D */   daddu    $a0, $s0, $zero
/* 2DAC8 800526C8 08014AC3 */  j         .L80052B0C
/* 2DACC 800526CC 26310048 */   addiu    $s1, $s1, 0x48
.L800526D0:
/* 2DAD0 800526D0 1040005C */  beqz      $v0, .L80052844
/* 2DAD4 800526D4 308200EF */   andi     $v0, $a0, 0xef
/* 2DAD8 800526D8 8E030018 */  lw        $v1, 0x18($s0)
/* 2DADC 800526DC 8E040028 */  lw        $a0, 0x28($s0)
/* 2DAE0 800526E0 34420001 */  ori       $v0, $v0, 1
/* 2DAE4 800526E4 A202003D */  sb        $v0, 0x3d($s0)
/* 2DAE8 800526E8 28821677 */  slti      $v0, $a0, 0x1677
/* 2DAEC 800526EC 1440000E */  bnez      $v0, .L80052728
/* 2DAF0 800526F0 AE03001C */   sw       $v1, 0x1c($s0)
/* 2DAF4 800526F4 8E020024 */  lw        $v0, 0x24($s0)
/* 2DAF8 800526F8 C602002C */  lwc1      $f2, 0x2c($s0)
/* 2DAFC 800526FC 00441023 */  subu      $v0, $v0, $a0
/* 2DB00 80052700 44820000 */  mtc1      $v0, $f0
/* 2DB04 80052704 00000000 */  nop       
/* 2DB08 80052708 46800020 */  cvt.s.w   $f0, $f0
/* 2DB0C 8005270C 46001082 */  mul.s     $f2, $f2, $f0
/* 2DB10 80052710 00000000 */  nop       
/* 2DB14 80052714 92020039 */  lbu       $v0, 0x39($s0)
/* 2DB18 80052718 4600110D */  trunc.w.s $f4, $f2
/* 2DB1C 8005271C 44032000 */  mfc1      $v1, $f4
/* 2DB20 80052720 080149CB */  j         .L8005272C
/* 2DB24 80052724 00431021 */   addu     $v0, $v0, $v1
.L80052728:
/* 2DB28 80052728 9202003A */  lbu       $v0, 0x3a($s0)
.L8005272C:
/* 2DB2C 8005272C A2020039 */  sb        $v0, 0x39($s0)
/* 2DB30 80052730 8E02001C */  lw        $v0, 0x1c($s0)
/* 2DB34 80052734 90430000 */  lbu       $v1, ($v0)
/* 2DB38 80052738 24420001 */  addiu     $v0, $v0, 1
/* 2DB3C 8005273C AE02001C */  sw        $v0, 0x1c($s0)
/* 2DB40 80052740 A203003B */  sb        $v1, 0x3b($s0)
/* 2DB44 80052744 90440000 */  lbu       $a0, ($v0)
/* 2DB48 80052748 80430000 */  lb        $v1, ($v0)
/* 2DB4C 8005274C 24420001 */  addiu     $v0, $v0, 1
/* 2DB50 80052750 04610006 */  bgez      $v1, .L8005276C
/* 2DB54 80052754 AE02001C */   sw       $v0, 0x1c($s0)
/* 2DB58 80052758 3084007F */  andi      $a0, $a0, 0x7f
/* 2DB5C 8005275C 92030039 */  lbu       $v1, 0x39($s0)
/* 2DB60 80052760 24020001 */  addiu     $v0, $zero, 1
/* 2DB64 80052764 A202003E */  sb        $v0, 0x3e($s0)
/* 2DB68 80052768 A203003F */  sb        $v1, 0x3f($s0)
.L8005276C:
/* 2DB6C 8005276C 9202003B */  lbu       $v0, 0x3b($s0)
/* 2DB70 80052770 9205003D */  lbu       $a1, 0x3d($s0)
/* 2DB74 80052774 A204003A */  sb        $a0, 0x3a($s0)
/* 2DB78 80052778 00021080 */  sll       $v0, $v0, 2
/* 2DB7C 8005277C 00551021 */  addu      $v0, $v0, $s5
/* 2DB80 80052780 8C440000 */  lw        $a0, ($v0)
/* 2DB84 80052784 30A20020 */  andi      $v0, $a1, 0x20
/* 2DB88 80052788 AE040028 */  sw        $a0, 0x28($s0)
/* 2DB8C 8005278C 1040001A */  beqz      $v0, .L800527F8
/* 2DB90 80052790 AE040024 */   sw       $a0, 0x24($s0)
/* 2DB94 80052794 0080182D */  daddu     $v1, $a0, $zero
/* 2DB98 80052798 30A200DF */  andi      $v0, $a1, 0xdf
/* 2DB9C 8005279C A202003D */  sb        $v0, 0x3d($s0)
/* 2DBA0 800527A0 28621677 */  slti      $v0, $v1, 0x1677
/* 2DBA4 800527A4 14400011 */  bnez      $v0, .L800527EC
/* 2DBA8 800527A8 2462E98A */   addiu    $v0, $v1, -0x1676
/* 2DBAC 800527AC 00621823 */  subu      $v1, $v1, $v0
/* 2DBB0 800527B0 C602002C */  lwc1      $f2, 0x2c($s0)
/* 2DBB4 800527B4 44830000 */  mtc1      $v1, $f0
/* 2DBB8 800527B8 00000000 */  nop       
/* 2DBBC 800527BC 46800020 */  cvt.s.w   $f0, $f0
/* 2DBC0 800527C0 AE020028 */  sw        $v0, 0x28($s0)
/* 2DBC4 800527C4 46001082 */  mul.s     $f2, $f2, $f0
/* 2DBC8 800527C8 00000000 */  nop       
/* 2DBCC 800527CC 9202003D */  lbu       $v0, 0x3d($s0)
/* 2DBD0 800527D0 92030039 */  lbu       $v1, 0x39($s0)
/* 2DBD4 800527D4 34420002 */  ori       $v0, $v0, 2
/* 2DBD8 800527D8 A202003D */  sb        $v0, 0x3d($s0)
/* 2DBDC 800527DC 4600110D */  trunc.w.s $f4, $f2
/* 2DBE0 800527E0 44022000 */  mfc1      $v0, $f4
/* 2DBE4 800527E4 080149FC */  j         .L800527F0
/* 2DBE8 800527E8 00621821 */   addu     $v1, $v1, $v0
.L800527EC:
/* 2DBEC 800527EC 9203003A */  lbu       $v1, 0x3a($s0)
.L800527F0:
/* 2DBF0 800527F0 08014A02 */  j         .L80052808
/* 2DBF4 800527F4 AE130008 */   sw       $s3, 8($s0)
.L800527F8:
/* 2DBF8 800527F8 0C014AF0 */  jal       func_80052BC0
/* 2DBFC 800527FC 00000000 */   nop      
/* 2DC00 80052800 9203003A */  lbu       $v1, 0x3a($s0)
/* 2DC04 80052804 AE020008 */  sw        $v0, 8($s0)
.L80052808:
/* 2DC08 80052808 00031400 */  sll       $v0, $v1, 0x10
/* 2DC0C 8005280C 86030040 */  lh        $v1, 0x40($s0)
/* 2DC10 80052810 00021403 */  sra       $v0, $v0, 0x10
/* 2DC14 80052814 00430018 */  mult      $v0, $v1
/* 2DC18 80052818 00003012 */  mflo      $a2
/* 2DC1C 8005281C 9202003F */  lbu       $v0, 0x3f($s0)
/* 2DC20 80052820 00000000 */  nop       
/* 2DC24 80052824 00C20018 */  mult      $a2, $v0
/* 2DC28 80052828 00003012 */  mflo      $a2
/* 2DC2C 8005282C 8E030030 */  lw        $v1, 0x30($s0)
/* 2DC30 80052830 00061383 */  sra       $v0, $a2, 0xe
/* 2DC34 80052834 00430018 */  mult      $v0, $v1
/* 2DC38 80052838 92020043 */  lbu       $v0, 0x43($s0)
/* 2DC3C 8005283C 08014ABE */  j         .L80052AF8
/* 2DC40 80052840 34420004 */   ori      $v0, $v0, 4
.L80052844:
/* 2DC44 80052844 8E020028 */  lw        $v0, 0x28($s0)
/* 2DC48 80052848 14540015 */  bne       $v0, $s4, .L800528A0
/* 2DC4C 8005284C 2442E98A */   addiu    $v0, $v0, -0x1676
/* 2DC50 80052850 30820020 */  andi      $v0, $a0, 0x20
/* 2DC54 80052854 504000AD */  beql      $v0, $zero, .L80052B0C
/* 2DC58 80052858 26310048 */   addiu    $s1, $s1, 0x48
/* 2DC5C 8005285C 92030039 */  lbu       $v1, 0x39($s0)
/* 2DC60 80052860 86020040 */  lh        $v0, 0x40($s0)
/* 2DC64 80052864 00620018 */  mult      $v1, $v0
/* 2DC68 80052868 00003012 */  mflo      $a2
/* 2DC6C 8005286C 9202003F */  lbu       $v0, 0x3f($s0)
/* 2DC70 80052870 00000000 */  nop       
/* 2DC74 80052874 00C20018 */  mult      $a2, $v0
/* 2DC78 80052878 00003012 */  mflo      $a2
/* 2DC7C 8005287C 8E030030 */  lw        $v1, 0x30($s0)
/* 2DC80 80052880 00061383 */  sra       $v0, $a2, 0xe
/* 2DC84 80052884 00430018 */  mult      $v0, $v1
/* 2DC88 80052888 92030043 */  lbu       $v1, 0x43($s0)
/* 2DC8C 8005288C 308200DF */  andi      $v0, $a0, 0xdf
/* 2DC90 80052890 A202003D */  sb        $v0, 0x3d($s0)
/* 2DC94 80052894 34630004 */  ori       $v1, $v1, 4
/* 2DC98 80052898 08014ABF */  j         .L80052AFC
/* 2DC9C 8005289C A2030043 */   sb       $v1, 0x43($s0)
.L800528A0:
/* 2DCA0 800528A0 1C40006A */  bgtz      $v0, .L80052A4C
/* 2DCA4 800528A4 AE020028 */   sw       $v0, 0x28($s0)
/* 2DCA8 800528A8 8E02001C */  lw        $v0, 0x1c($s0)
/* 2DCAC 800528AC 90430000 */  lbu       $v1, ($v0)
/* 2DCB0 800528B0 240200FF */  addiu     $v0, $zero, 0xff
/* 2DCB4 800528B4 14620012 */  bne       $v1, $v0, .L80052900
/* 2DCB8 800528B8 00000000 */   nop      
/* 2DCBC 800528BC 9202003D */  lbu       $v0, 0x3d($s0)
/* 2DCC0 800528C0 30420001 */  andi      $v0, $v0, 1
/* 2DCC4 800528C4 10400005 */  beqz      $v0, .L800528DC
/* 2DCC8 800528C8 24020001 */   addiu    $v0, $zero, 1
/* 2DCCC 800528CC A200003D */  sb        $zero, 0x3d($s0)
/* 2DCD0 800528D0 AE00001C */  sw        $zero, 0x1c($s0)
/* 2DCD4 800528D4 08014AC2 */  j         .L80052B08
/* 2DCD8 800528D8 A2020042 */   sb       $v0, 0x42($s0)
.L800528DC:
/* 2DCDC 800528DC 9203003A */  lbu       $v1, 0x3a($s0)
/* 2DCE0 800528E0 2402003B */  addiu     $v0, $zero, 0x3b
/* 2DCE4 800528E4 AE140028 */  sw        $s4, 0x28($s0)
/* 2DCE8 800528E8 AE140024 */  sw        $s4, 0x24($s0)
/* 2DCEC 800528EC A202003B */  sb        $v0, 0x3b($s0)
/* 2DCF0 800528F0 AE130008 */  sw        $s3, 8($s0)
/* 2DCF4 800528F4 AE00002C */  sw        $zero, 0x2c($s0)
/* 2DCF8 800528F8 08014AC2 */  j         .L80052B08
/* 2DCFC 800528FC A2030039 */   sb       $v1, 0x39($s0)
.L80052900:
/* 2DD00 80052900 0C014B3F */  jal       func_80052CFC
/* 2DD04 80052904 0200202D */   daddu    $a0, $s0, $zero
/* 2DD08 80052908 A202003B */  sb        $v0, 0x3b($s0)
/* 2DD0C 8005290C 304200FF */  andi      $v0, $v0, 0xff
/* 2DD10 80052910 00021080 */  sll       $v0, $v0, 2
/* 2DD14 80052914 8E03001C */  lw        $v1, 0x1c($s0)
/* 2DD18 80052918 9204003A */  lbu       $a0, 0x3a($s0)
/* 2DD1C 8005291C 00551021 */  addu      $v0, $v0, $s5
/* 2DD20 80052920 A2040039 */  sb        $a0, 0x39($s0)
/* 2DD24 80052924 90640000 */  lbu       $a0, ($v1)
/* 2DD28 80052928 24630001 */  addiu     $v1, $v1, 1
/* 2DD2C 8005292C AE03001C */  sw        $v1, 0x1c($s0)
/* 2DD30 80052930 3084007F */  andi      $a0, $a0, 0x7f
/* 2DD34 80052934 A204003A */  sb        $a0, 0x3a($s0)
/* 2DD38 80052938 8C440000 */  lw        $a0, ($v0)
/* 2DD3C 8005293C AE040028 */  sw        $a0, 0x28($s0)
/* 2DD40 80052940 10800010 */  beqz      $a0, .L80052984
/* 2DD44 80052944 AE040024 */   sw       $a0, 0x24($s0)
/* 2DD48 80052948 9202003A */  lbu       $v0, 0x3a($s0)
/* 2DD4C 8005294C 92030039 */  lbu       $v1, 0x39($s0)
/* 2DD50 80052950 44821000 */  mtc1      $v0, $f2
/* 2DD54 80052954 00000000 */  nop       
/* 2DD58 80052958 468010A0 */  cvt.s.w   $f2, $f2
/* 2DD5C 8005295C 44830000 */  mtc1      $v1, $f0
/* 2DD60 80052960 00000000 */  nop       
/* 2DD64 80052964 46800020 */  cvt.s.w   $f0, $f0
/* 2DD68 80052968 46001081 */  sub.s     $f2, $f2, $f0
/* 2DD6C 8005296C 44840000 */  mtc1      $a0, $f0
/* 2DD70 80052970 00000000 */  nop       
/* 2DD74 80052974 46800020 */  cvt.s.w   $f0, $f0
/* 2DD78 80052978 46001083 */  div.s     $f2, $f2, $f0
/* 2DD7C 8005297C 08014A62 */  j         .L80052988
/* 2DD80 80052980 E602002C */   swc1     $f2, 0x2c($s0)
.L80052984:
/* 2DD84 80052984 AE00002C */  sw        $zero, 0x2c($s0)
.L80052988:
/* 2DD88 80052988 9203003D */  lbu       $v1, 0x3d($s0)
/* 2DD8C 8005298C 30620020 */  andi      $v0, $v1, 0x20
/* 2DD90 80052990 1040001A */  beqz      $v0, .L800529FC
/* 2DD94 80052994 306200DF */   andi     $v0, $v1, 0xdf
/* 2DD98 80052998 8E040028 */  lw        $a0, 0x28($s0)
/* 2DD9C 8005299C A202003D */  sb        $v0, 0x3d($s0)
/* 2DDA0 800529A0 28821677 */  slti      $v0, $a0, 0x1677
/* 2DDA4 800529A4 14400012 */  bnez      $v0, .L800529F0
/* 2DDA8 800529A8 2482E98A */   addiu    $v0, $a0, -0x1676
/* 2DDAC 800529AC 8E030024 */  lw        $v1, 0x24($s0)
/* 2DDB0 800529B0 C602002C */  lwc1      $f2, 0x2c($s0)
/* 2DDB4 800529B4 AE020028 */  sw        $v0, 0x28($s0)
/* 2DDB8 800529B8 00621823 */  subu      $v1, $v1, $v0
/* 2DDBC 800529BC 44830000 */  mtc1      $v1, $f0
/* 2DDC0 800529C0 00000000 */  nop       
/* 2DDC4 800529C4 46800020 */  cvt.s.w   $f0, $f0
/* 2DDC8 800529C8 46001082 */  mul.s     $f2, $f2, $f0
/* 2DDCC 800529CC 00000000 */  nop       
/* 2DDD0 800529D0 9202003D */  lbu       $v0, 0x3d($s0)
/* 2DDD4 800529D4 92030039 */  lbu       $v1, 0x39($s0)
/* 2DDD8 800529D8 34420002 */  ori       $v0, $v0, 2
/* 2DDDC 800529DC A202003D */  sb        $v0, 0x3d($s0)
/* 2DDE0 800529E0 4600110D */  trunc.w.s $f4, $f2
/* 2DDE4 800529E4 44022000 */  mfc1      $v0, $f4
/* 2DDE8 800529E8 08014A7D */  j         .L800529F4
/* 2DDEC 800529EC 00621821 */   addu     $v1, $v1, $v0
.L800529F0:
/* 2DDF0 800529F0 9203003A */  lbu       $v1, 0x3a($s0)
.L800529F4:
/* 2DDF4 800529F4 08014A84 */  j         .L80052A10
/* 2DDF8 800529F8 AE130008 */   sw       $s3, 8($s0)
.L800529FC:
/* 2DDFC 800529FC 8E040024 */  lw        $a0, 0x24($s0)
/* 2DE00 80052A00 0C014AF0 */  jal       func_80052BC0
/* 2DE04 80052A04 00000000 */   nop      
/* 2DE08 80052A08 9203003A */  lbu       $v1, 0x3a($s0)
/* 2DE0C 80052A0C AE020008 */  sw        $v0, 8($s0)
.L80052A10:
/* 2DE10 80052A10 00031400 */  sll       $v0, $v1, 0x10
/* 2DE14 80052A14 86030040 */  lh        $v1, 0x40($s0)
/* 2DE18 80052A18 00021403 */  sra       $v0, $v0, 0x10
/* 2DE1C 80052A1C 00430018 */  mult      $v0, $v1
/* 2DE20 80052A20 00003012 */  mflo      $a2
/* 2DE24 80052A24 9202003F */  lbu       $v0, 0x3f($s0)
/* 2DE28 80052A28 00000000 */  nop       
/* 2DE2C 80052A2C 00C20018 */  mult      $a2, $v0
/* 2DE30 80052A30 00003012 */  mflo      $a2
/* 2DE34 80052A34 8E030030 */  lw        $v1, 0x30($s0)
/* 2DE38 80052A38 00061383 */  sra       $v0, $a2, 0xe
/* 2DE3C 80052A3C 00430018 */  mult      $v0, $v1
/* 2DE40 80052A40 92020043 */  lbu       $v0, 0x43($s0)
/* 2DE44 80052A44 08014ABE */  j         .L80052AF8
/* 2DE48 80052A48 34420004 */   ori      $v0, $v0, 4
.L80052A4C:
/* 2DE4C 80052A4C 9203003D */  lbu       $v1, 0x3d($s0)
/* 2DE50 80052A50 30620020 */  andi      $v0, $v1, 0x20
/* 2DE54 80052A54 5040002D */  beql      $v0, $zero, .L80052B0C
/* 2DE58 80052A58 26310048 */   addiu    $s1, $s1, 0x48
/* 2DE5C 80052A5C 8E040028 */  lw        $a0, 0x28($s0)
/* 2DE60 80052A60 306200DF */  andi      $v0, $v1, 0xdf
/* 2DE64 80052A64 A202003D */  sb        $v0, 0x3d($s0)
/* 2DE68 80052A68 28821677 */  slti      $v0, $a0, 0x1677
/* 2DE6C 80052A6C 14400012 */  bnez      $v0, .L80052AB8
/* 2DE70 80052A70 2482E98A */   addiu    $v0, $a0, -0x1676
/* 2DE74 80052A74 8E030024 */  lw        $v1, 0x24($s0)
/* 2DE78 80052A78 C602002C */  lwc1      $f2, 0x2c($s0)
/* 2DE7C 80052A7C AE020028 */  sw        $v0, 0x28($s0)
/* 2DE80 80052A80 00621823 */  subu      $v1, $v1, $v0
/* 2DE84 80052A84 44830000 */  mtc1      $v1, $f0
/* 2DE88 80052A88 00000000 */  nop       
/* 2DE8C 80052A8C 46800020 */  cvt.s.w   $f0, $f0
/* 2DE90 80052A90 46001082 */  mul.s     $f2, $f2, $f0
/* 2DE94 80052A94 00000000 */  nop       
/* 2DE98 80052A98 9202003D */  lbu       $v0, 0x3d($s0)
/* 2DE9C 80052A9C 92030039 */  lbu       $v1, 0x39($s0)
/* 2DEA0 80052AA0 34420002 */  ori       $v0, $v0, 2
/* 2DEA4 80052AA4 A202003D */  sb        $v0, 0x3d($s0)
/* 2DEA8 80052AA8 4600110D */  trunc.w.s $f4, $f2
/* 2DEAC 80052AAC 44022000 */  mfc1      $v0, $f4
/* 2DEB0 80052AB0 08014AAF */  j         .L80052ABC
/* 2DEB4 80052AB4 00621821 */   addu     $v1, $v1, $v0
.L80052AB8:
/* 2DEB8 80052AB8 9203003A */  lbu       $v1, 0x3a($s0)
.L80052ABC:
/* 2DEBC 80052ABC 00031400 */  sll       $v0, $v1, 0x10
/* 2DEC0 80052AC0 86030040 */  lh        $v1, 0x40($s0)
/* 2DEC4 80052AC4 00021403 */  sra       $v0, $v0, 0x10
/* 2DEC8 80052AC8 00430018 */  mult      $v0, $v1
/* 2DECC 80052ACC 00003012 */  mflo      $a2
/* 2DED0 80052AD0 9202003F */  lbu       $v0, 0x3f($s0)
/* 2DED4 80052AD4 00000000 */  nop       
/* 2DED8 80052AD8 00C20018 */  mult      $a2, $v0
/* 2DEDC 80052ADC 00003012 */  mflo      $a2
/* 2DEE0 80052AE0 8E030030 */  lw        $v1, 0x30($s0)
/* 2DEE4 80052AE4 00061383 */  sra       $v0, $a2, 0xe
/* 2DEE8 80052AE8 00430018 */  mult      $v0, $v1
/* 2DEEC 80052AEC 92020043 */  lbu       $v0, 0x43($s0)
/* 2DEF0 80052AF0 AE130008 */  sw        $s3, 8($s0)
/* 2DEF4 80052AF4 34420004 */  ori       $v0, $v0, 4
.L80052AF8:
/* 2DEF8 80052AF8 A2020043 */  sb        $v0, 0x43($s0)
.L80052AFC:
/* 2DEFC 80052AFC 00003012 */  mflo      $a2
/* 2DF00 80052B00 000611C3 */  sra       $v0, $a2, 7
/* 2DF04 80052B04 A602000C */  sh        $v0, 0xc($s0)
.L80052B08:
/* 2DF08 80052B08 26310048 */  addiu     $s1, $s1, 0x48
.L80052B0C:
/* 2DF0C 80052B0C 26520001 */  addiu     $s2, $s2, 1
/* 2DF10 80052B10 2A420018 */  slti      $v0, $s2, 0x18
/* 2DF14 80052B14 1440FEE3 */  bnez      $v0, .L800526A4
/* 2DF18 80052B18 02D18021 */   addu     $s0, $s6, $s1
/* 2DF1C 80052B1C 8FBF002C */  lw        $ra, 0x2c($sp)
/* 2DF20 80052B20 8FB60028 */  lw        $s6, 0x28($sp)
/* 2DF24 80052B24 8FB50024 */  lw        $s5, 0x24($sp)
/* 2DF28 80052B28 8FB40020 */  lw        $s4, 0x20($sp)
/* 2DF2C 80052B2C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 2DF30 80052B30 8FB20018 */  lw        $s2, 0x18($sp)
/* 2DF34 80052B34 8FB10014 */  lw        $s1, 0x14($sp)
/* 2DF38 80052B38 8FB00010 */  lw        $s0, 0x10($sp)
/* 2DF3C 80052B3C 03E00008 */  jr        $ra
/* 2DF40 80052B40 27BD0030 */   addiu    $sp, $sp, 0x30
