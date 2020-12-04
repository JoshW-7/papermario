.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_97DAD0
/* 97DAD0 80240000 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 97DAD4 80240004 AFB00030 */  sw        $s0, 0x30($sp)
/* 97DAD8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 97DADC 8024000C AFBF0040 */  sw        $ra, 0x40($sp)
/* 97DAE0 80240010 AFB3003C */  sw        $s3, 0x3c($sp)
/* 97DAE4 80240014 AFB20038 */  sw        $s2, 0x38($sp)
/* 97DAE8 80240018 AFB10034 */  sw        $s1, 0x34($sp)
/* 97DAEC 8024001C F7B60050 */  sdc1      $f22, 0x50($sp)
/* 97DAF0 80240020 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 97DAF4 80240024 8E130148 */  lw        $s3, 0x148($s0)
/* 97DAF8 80240028 00A0882D */  daddu     $s1, $a1, $zero
/* 97DAFC 8024002C 86640008 */  lh        $a0, 8($s3)
/* 97DB00 80240030 0C00EABB */  jal       get_npc_unsafe
/* 97DB04 80240034 00C0902D */   daddu    $s2, $a2, $zero
/* 97DB08 80240038 0200202D */  daddu     $a0, $s0, $zero
/* 97DB0C 8024003C 0220282D */  daddu     $a1, $s1, $zero
/* 97DB10 80240040 0240302D */  daddu     $a2, $s2, $zero
/* 97DB14 80240044 0C012568 */  jal       func_800495A0
/* 97DB18 80240048 0040802D */   daddu    $s0, $v0, $zero
/* 97DB1C 8024004C 8E020000 */  lw        $v0, ($s0)
/* 97DB20 80240050 2404002D */  addiu     $a0, $zero, 0x2d
/* 97DB24 80240054 34420800 */  ori       $v0, $v0, 0x800
/* 97DB28 80240058 0C00A67F */  jal       rand_int
/* 97DB2C 8024005C AE020000 */   sw       $v0, ($s0)
/* 97DB30 80240060 0200202D */  daddu     $a0, $s0, $zero
/* 97DB34 80240064 3C05B000 */  lui       $a1, 0xb000
/* 97DB38 80240068 34A50017 */  ori       $a1, $a1, 0x17
/* 97DB3C 8024006C 44820000 */  mtc1      $v0, $f0
/* 97DB40 80240070 00000000 */  nop       
/* 97DB44 80240074 46800021 */  cvt.d.w   $f0, $f0
/* 97DB48 80240078 3C014024 */  lui       $at, 0x4024
/* 97DB4C 8024007C 44811800 */  mtc1      $at, $f3
/* 97DB50 80240080 44801000 */  mtc1      $zero, $f2
/* 97DB54 80240084 3C014020 */  lui       $at, 0x4020
/* 97DB58 80240088 44812800 */  mtc1      $at, $f5
/* 97DB5C 8024008C 44802000 */  mtc1      $zero, $f4
/* 97DB60 80240090 46220003 */  div.d     $f0, $f0, $f2
/* 97DB64 80240094 46240000 */  add.d     $f0, $f0, $f4
/* 97DB68 80240098 3C013FC0 */  lui       $at, 0x3fc0
/* 97DB6C 8024009C 44811000 */  mtc1      $at, $f2
/* 97DB70 802400A0 0000302D */  daddu     $a2, $zero, $zero
/* 97DB74 802400A4 E6020014 */  swc1      $f2, 0x14($s0)
/* 97DB78 802400A8 46200020 */  cvt.s.d   $f0, $f0
/* 97DB7C 802400AC 0C012530 */  jal       func_800494C0
/* 97DB80 802400B0 E600001C */   swc1     $f0, 0x1c($s0)
/* 97DB84 802400B4 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 97DB88 802400B8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 97DB8C 802400BC C4620000 */  lwc1      $f2, ($v1)
/* 97DB90 802400C0 468010A0 */  cvt.s.w   $f2, $f2
/* 97DB94 802400C4 C4640008 */  lwc1      $f4, 8($v1)
/* 97DB98 802400C8 46802120 */  cvt.s.w   $f4, $f4
/* 97DB9C 802400CC E7A00010 */  swc1      $f0, 0x10($sp)
/* 97DBA0 802400D0 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 97DBA4 802400D4 44051000 */  mfc1      $a1, $f2
/* 97DBA8 802400D8 C440000C */  lwc1      $f0, 0xc($v0)
/* 97DBAC 802400DC 46800020 */  cvt.s.w   $f0, $f0
/* 97DBB0 802400E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* 97DBB4 802400E4 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 97DBB8 802400E8 44062000 */  mfc1      $a2, $f4
/* 97DBBC 802400EC C4400010 */  lwc1      $f0, 0x10($v0)
/* 97DBC0 802400F0 46800020 */  cvt.s.w   $f0, $f0
/* 97DBC4 802400F4 E7A00018 */  swc1      $f0, 0x18($sp)
/* 97DBC8 802400F8 8C640018 */  lw        $a0, 0x18($v1)
/* 97DBCC 802400FC 0C0123F5 */  jal       is_point_within_region
/* 97DBD0 80240100 8E070038 */   lw       $a3, 0x38($s0)
/* 97DBD4 80240104 10400035 */  beqz      $v0, .L802401DC
/* 97DBD8 80240108 00000000 */   nop      
/* 97DBDC 8024010C C60C0038 */  lwc1      $f12, 0x38($s0)
/* 97DBE0 80240110 3C0141C8 */  lui       $at, 0x41c8
/* 97DBE4 80240114 4481B000 */  mtc1      $at, $f22
/* 97DBE8 80240118 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 97DBEC 8024011C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 97DBF0 80240120 C4480000 */  lwc1      $f8, ($v0)
/* 97DBF4 80240124 46804220 */  cvt.s.w   $f8, $f8
/* 97DBF8 80240128 44064000 */  mfc1      $a2, $f8
/* 97DBFC 8024012C C4480008 */  lwc1      $f8, 8($v0)
/* 97DC00 80240130 46804220 */  cvt.s.w   $f8, $f8
/* 97DC04 80240134 44074000 */  mfc1      $a3, $f8
/* 97DC08 80240138 3C01403E */  lui       $at, 0x403e
/* 97DC0C 8024013C 4481A800 */  mtc1      $at, $f21
/* 97DC10 80240140 4480A000 */  mtc1      $zero, $f20
/* 97DC14 80240144 0C00A720 */  jal       atan2
/* 97DC18 80240148 0000882D */   daddu    $s1, $zero, $zero
/* 97DC1C 8024014C C6020038 */  lwc1      $f2, 0x38($s0)
/* 97DC20 80240150 C604003C */  lwc1      $f4, 0x3c($s0)
/* 97DC24 80240154 C6060040 */  lwc1      $f6, 0x40($s0)
/* 97DC28 80240158 E600000C */  swc1      $f0, 0xc($s0)
/* 97DC2C 8024015C E7A20020 */  swc1      $f2, 0x20($sp)
/* 97DC30 80240160 E7A40024 */  swc1      $f4, 0x24($sp)
/* 97DC34 80240164 E7A60028 */  swc1      $f6, 0x28($sp)
.L80240168:
/* 97DC38 80240168 E7B60010 */  swc1      $f22, 0x10($sp)
/* 97DC3C 8024016C C600000C */  lwc1      $f0, 0xc($s0)
/* 97DC40 80240170 E7A00014 */  swc1      $f0, 0x14($sp)
/* 97DC44 80240174 860200A8 */  lh        $v0, 0xa8($s0)
/* 97DC48 80240178 27A50020 */  addiu     $a1, $sp, 0x20
/* 97DC4C 8024017C 44820000 */  mtc1      $v0, $f0
/* 97DC50 80240180 00000000 */  nop       
/* 97DC54 80240184 46800020 */  cvt.s.w   $f0, $f0
/* 97DC58 80240188 E7A00018 */  swc1      $f0, 0x18($sp)
/* 97DC5C 8024018C 860200A6 */  lh        $v0, 0xa6($s0)
/* 97DC60 80240190 27A60024 */  addiu     $a2, $sp, 0x24
/* 97DC64 80240194 44820000 */  mtc1      $v0, $f0
/* 97DC68 80240198 00000000 */  nop       
/* 97DC6C 8024019C 46800020 */  cvt.s.w   $f0, $f0
/* 97DC70 802401A0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 97DC74 802401A4 8E040080 */  lw        $a0, 0x80($s0)
/* 97DC78 802401A8 0C037711 */  jal       func_800DDC44
/* 97DC7C 802401AC 27A70028 */   addiu    $a3, $sp, 0x28
/* 97DC80 802401B0 10400016 */  beqz      $v0, .L8024020C
/* 97DC84 802401B4 26310001 */   addiu    $s1, $s1, 1
/* 97DC88 802401B8 C600000C */  lwc1      $f0, 0xc($s0)
/* 97DC8C 802401BC 46000021 */  cvt.d.s   $f0, $f0
/* 97DC90 802401C0 46340000 */  add.d     $f0, $f0, $f20
/* 97DC94 802401C4 2A220006 */  slti      $v0, $s1, 6
/* 97DC98 802401C8 46200020 */  cvt.s.d   $f0, $f0
/* 97DC9C 802401CC 1440FFE6 */  bnez      $v0, .L80240168
/* 97DCA0 802401D0 E600000C */   swc1     $f0, 0xc($s0)
/* 97DCA4 802401D4 08090083 */  j         .L8024020C
/* 97DCA8 802401D8 00000000 */   nop      
.L802401DC:
/* 97DCAC 802401DC 0C00A67F */  jal       rand_int
/* 97DCB0 802401E0 2404003C */   addiu    $a0, $zero, 0x3c
/* 97DCB4 802401E4 C60C000C */  lwc1      $f12, 0xc($s0)
/* 97DCB8 802401E8 44820000 */  mtc1      $v0, $f0
/* 97DCBC 802401EC 00000000 */  nop       
/* 97DCC0 802401F0 46800020 */  cvt.s.w   $f0, $f0
/* 97DCC4 802401F4 46006300 */  add.s     $f12, $f12, $f0
/* 97DCC8 802401F8 3C0141F0 */  lui       $at, 0x41f0
/* 97DCCC 802401FC 44810000 */  mtc1      $at, $f0
/* 97DCD0 80240200 0C00A6C9 */  jal       clamp_angle
/* 97DCD4 80240204 46006301 */   sub.s    $f12, $f12, $f0
/* 97DCD8 80240208 E600000C */  swc1      $f0, 0xc($s0)
.L8024020C:
/* 97DCDC 8024020C 8FBF0040 */  lw        $ra, 0x40($sp)
/* 97DCE0 80240210 8FB3003C */  lw        $s3, 0x3c($sp)
/* 97DCE4 80240214 8FB20038 */  lw        $s2, 0x38($sp)
/* 97DCE8 80240218 8FB10034 */  lw        $s1, 0x34($sp)
/* 97DCEC 8024021C 8FB00030 */  lw        $s0, 0x30($sp)
/* 97DCF0 80240220 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 97DCF4 80240224 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 97DCF8 80240228 03E00008 */  jr        $ra
/* 97DCFC 8024022C 27BD0058 */   addiu    $sp, $sp, 0x58
