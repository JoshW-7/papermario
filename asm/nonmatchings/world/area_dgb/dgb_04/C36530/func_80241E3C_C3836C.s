.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241E3C_C3836C
/* C3836C 80241E3C 27BDFF88 */  addiu     $sp, $sp, -0x78
/* C38370 80241E40 AFB20048 */  sw        $s2, 0x48($sp)
/* C38374 80241E44 0080902D */  daddu     $s2, $a0, $zero
/* C38378 80241E48 AFBF0054 */  sw        $ra, 0x54($sp)
/* C3837C 80241E4C AFB40050 */  sw        $s4, 0x50($sp)
/* C38380 80241E50 AFB3004C */  sw        $s3, 0x4c($sp)
/* C38384 80241E54 AFB10044 */  sw        $s1, 0x44($sp)
/* C38388 80241E58 AFB00040 */  sw        $s0, 0x40($sp)
/* C3838C 80241E5C F7BA0070 */  sdc1      $f26, 0x70($sp)
/* C38390 80241E60 F7B80068 */  sdc1      $f24, 0x68($sp)
/* C38394 80241E64 F7B60060 */  sdc1      $f22, 0x60($sp)
/* C38398 80241E68 F7B40058 */  sdc1      $f20, 0x58($sp)
/* C3839C 80241E6C 8E500148 */  lw        $s0, 0x148($s2)
/* C383A0 80241E70 00A0982D */  daddu     $s3, $a1, $zero
/* C383A4 80241E74 86040008 */  lh        $a0, 8($s0)
/* C383A8 80241E78 0C00EABB */  jal       get_npc_unsafe
/* C383AC 80241E7C 00C0A02D */   daddu    $s4, $a2, $zero
/* C383B0 80241E80 0040882D */  daddu     $s1, $v0, $zero
/* C383B4 80241E84 C6200038 */  lwc1      $f0, 0x38($s1)
/* C383B8 80241E88 C622003C */  lwc1      $f2, 0x3c($s1)
/* C383BC 80241E8C C6240040 */  lwc1      $f4, 0x40($s1)
/* C383C0 80241E90 3C01447A */  lui       $at, 0x447a
/* C383C4 80241E94 44813000 */  mtc1      $at, $f6
/* C383C8 80241E98 C60C0074 */  lwc1      $f12, 0x74($s0)
/* C383CC 80241E9C 46806320 */  cvt.s.w   $f12, $f12
/* C383D0 80241EA0 E7A00028 */  swc1      $f0, 0x28($sp)
/* C383D4 80241EA4 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C383D8 80241EA8 E7A40030 */  swc1      $f4, 0x30($sp)
/* C383DC 80241EAC E7A60034 */  swc1      $f6, 0x34($sp)
/* C383E0 80241EB0 C6000078 */  lwc1      $f0, 0x78($s0)
/* C383E4 80241EB4 46800020 */  cvt.s.w   $f0, $f0
/* C383E8 80241EB8 46000021 */  cvt.d.s   $f0, $f0
/* C383EC 80241EBC C6020088 */  lwc1      $f2, 0x88($s0)
/* C383F0 80241EC0 468010A0 */  cvt.s.w   $f2, $f2
/* C383F4 80241EC4 3C014059 */  lui       $at, 0x4059
/* C383F8 80241EC8 44812800 */  mtc1      $at, $f5
/* C383FC 80241ECC 44802000 */  mtc1      $zero, $f4
/* C38400 80241ED0 460010A1 */  cvt.d.s   $f2, $f2
/* C38404 80241ED4 46240003 */  div.d     $f0, $f0, $f4
/* C38408 80241ED8 462006A0 */  cvt.s.d   $f26, $f0
/* C3840C 80241EDC 46241083 */  div.d     $f2, $f2, $f4
/* C38410 80241EE0 462010A0 */  cvt.s.d   $f2, $f2
/* C38414 80241EE4 C6000070 */  lwc1      $f0, 0x70($s0)
/* C38418 80241EE8 46800020 */  cvt.s.w   $f0, $f0
/* C3841C 80241EEC 46000021 */  cvt.d.s   $f0, $f0
/* C38420 80241EF0 46240003 */  div.d     $f0, $f0, $f4
/* C38424 80241EF4 462005A0 */  cvt.s.d   $f22, $f0
/* C38428 80241EF8 0C00A8BB */  jal       sin_deg
/* C3842C 80241EFC 4602D600 */   add.s    $f24, $f26, $f2
/* C38430 80241F00 27A50028 */  addiu     $a1, $sp, 0x28
/* C38434 80241F04 27A6002C */  addiu     $a2, $sp, 0x2c
/* C38438 80241F08 27A70030 */  addiu     $a3, $sp, 0x30
/* C3843C 80241F0C 27A20034 */  addiu     $v0, $sp, 0x34
/* C38440 80241F10 AFA20010 */  sw        $v0, 0x10($sp)
/* C38444 80241F14 8E240080 */  lw        $a0, 0x80($s1)
/* C38448 80241F18 0C0372DF */  jal       func_800DCB7C
/* C3844C 80241F1C 46000506 */   mov.s    $f20, $f0
/* C38450 80241F20 10400007 */  beqz      $v0, .L80241F40
/* C38454 80241F24 00000000 */   nop      
/* C38458 80241F28 4616A082 */  mul.s     $f2, $f20, $f22
/* C3845C 80241F2C 00000000 */  nop       
/* C38460 80241F30 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* C38464 80241F34 461A0000 */  add.s     $f0, $f0, $f26
/* C38468 80241F38 080907D3 */  j         .L80241F4C
/* C3846C 80241F3C 46020000 */   add.s    $f0, $f0, $f2
.L80241F40:
/* C38470 80241F40 4616A002 */  mul.s     $f0, $f20, $f22
/* C38474 80241F44 00000000 */  nop       
/* C38478 80241F48 4600C000 */  add.s     $f0, $f24, $f0
.L80241F4C:
/* C3847C 80241F4C E620003C */  swc1      $f0, 0x3c($s1)
/* C38480 80241F50 8E020074 */  lw        $v0, 0x74($s0)
/* C38484 80241F54 2442000C */  addiu     $v0, $v0, 0xc
/* C38488 80241F58 44826000 */  mtc1      $v0, $f12
/* C3848C 80241F5C 00000000 */  nop       
/* C38490 80241F60 0C00A6C9 */  jal       clamp_angle
/* C38494 80241F64 46806320 */   cvt.s.w  $f12, $f12
/* C38498 80241F68 4600020D */  trunc.w.s $f8, $f0
/* C3849C 80241F6C E6080074 */  swc1      $f8, 0x74($s0)
/* C384A0 80241F70 8E420074 */  lw        $v0, 0x74($s2)
/* C384A4 80241F74 1C400037 */  bgtz      $v0, .L80242054
/* C384A8 80241F78 2442FFFF */   addiu    $v0, $v0, -1
/* C384AC 80241F7C 8E620014 */  lw        $v0, 0x14($s3)
/* C384B0 80241F80 AE420074 */  sw        $v0, 0x74($s2)
/* C384B4 80241F84 C662000C */  lwc1      $f2, 0xc($s3)
/* C384B8 80241F88 3C013FE0 */  lui       $at, 0x3fe0
/* C384BC 80241F8C 44812800 */  mtc1      $at, $f5
/* C384C0 80241F90 44802000 */  mtc1      $zero, $f4
/* C384C4 80241F94 460010A1 */  cvt.d.s   $f2, $f2
/* C384C8 80241F98 46241082 */  mul.d     $f2, $f2, $f4
/* C384CC 80241F9C 00000000 */  nop       
/* C384D0 80241FA0 C6600010 */  lwc1      $f0, 0x10($s3)
/* C384D4 80241FA4 46000021 */  cvt.d.s   $f0, $f0
/* C384D8 80241FA8 46240002 */  mul.d     $f0, $f0, $f4
/* C384DC 80241FAC 00000000 */  nop       
/* C384E0 80241FB0 0280202D */  daddu     $a0, $s4, $zero
/* C384E4 80241FB4 462010A0 */  cvt.s.d   $f2, $f2
/* C384E8 80241FB8 46200020 */  cvt.s.d   $f0, $f0
/* C384EC 80241FBC 44061000 */  mfc1      $a2, $f2
/* C384F0 80241FC0 44070000 */  mfc1      $a3, $f0
/* C384F4 80241FC4 0200282D */  daddu     $a1, $s0, $zero
/* C384F8 80241FC8 0C01242D */  jal       func_800490B4
/* C384FC 80241FCC AFA00010 */   sw       $zero, 0x10($sp)
/* C38500 80241FD0 1040001E */  beqz      $v0, .L8024204C
/* C38504 80241FD4 0000202D */   daddu    $a0, $zero, $zero
/* C38508 80241FD8 0220282D */  daddu     $a1, $s1, $zero
/* C3850C 80241FDC 0000302D */  daddu     $a2, $zero, $zero
/* C38510 80241FE0 2410000C */  addiu     $s0, $zero, 0xc
/* C38514 80241FE4 862300A8 */  lh        $v1, 0xa8($s1)
/* C38518 80241FE8 3C013F80 */  lui       $at, 0x3f80
/* C3851C 80241FEC 44810000 */  mtc1      $at, $f0
/* C38520 80241FF0 3C014000 */  lui       $at, 0x4000
/* C38524 80241FF4 44811000 */  mtc1      $at, $f2
/* C38528 80241FF8 3C01C1A0 */  lui       $at, 0xc1a0
/* C3852C 80241FFC 44812000 */  mtc1      $at, $f4
/* C38530 80242000 44834000 */  mtc1      $v1, $f8
/* C38534 80242004 00000000 */  nop       
/* C38538 80242008 46804220 */  cvt.s.w   $f8, $f8
/* C3853C 8024200C 44074000 */  mfc1      $a3, $f8
/* C38540 80242010 27A20038 */  addiu     $v0, $sp, 0x38
/* C38544 80242014 AFB0001C */  sw        $s0, 0x1c($sp)
/* C38548 80242018 AFA20020 */  sw        $v0, 0x20($sp)
/* C3854C 8024201C E7A00010 */  swc1      $f0, 0x10($sp)
/* C38550 80242020 E7A20014 */  swc1      $f2, 0x14($sp)
/* C38554 80242024 0C01BFA4 */  jal       fx_emote
/* C38558 80242028 E7A40018 */   swc1     $f4, 0x18($sp)
/* C3855C 8024202C 0220202D */  daddu     $a0, $s1, $zero
/* C38560 80242030 240502F4 */  addiu     $a1, $zero, 0x2f4
/* C38564 80242034 0C012530 */  jal       func_800494C0
/* C38568 80242038 3C060020 */   lui      $a2, 0x20
/* C3856C 8024203C C620003C */  lwc1      $f0, 0x3c($s1)
/* C38570 80242040 E6200064 */  swc1      $f0, 0x64($s1)
/* C38574 80242044 08090849 */  j         .L80242124
/* C38578 80242048 AE500070 */   sw       $s0, 0x70($s2)
.L8024204C:
/* C3857C 8024204C 8E420074 */  lw        $v0, 0x74($s2)
/* C38580 80242050 2442FFFF */  addiu     $v0, $v0, -1
.L80242054:
/* C38584 80242054 AE420074 */  sw        $v0, 0x74($s2)
/* C38588 80242058 8622008C */  lh        $v0, 0x8c($s1)
/* C3858C 8024205C 14400031 */  bnez      $v0, .L80242124
/* C38590 80242060 00000000 */   nop      
/* C38594 80242064 C62C0038 */  lwc1      $f12, 0x38($s1)
/* C38598 80242068 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C3859C 8024206C C62E0040 */  lwc1      $f14, 0x40($s1)
/* C385A0 80242070 C4480000 */  lwc1      $f8, ($v0)
/* C385A4 80242074 46804220 */  cvt.s.w   $f8, $f8
/* C385A8 80242078 44064000 */  mfc1      $a2, $f8
/* C385AC 8024207C C4480008 */  lwc1      $f8, 8($v0)
/* C385B0 80242080 46804220 */  cvt.s.w   $f8, $f8
/* C385B4 80242084 44074000 */  mfc1      $a3, $f8
/* C385B8 80242088 0C00A720 */  jal       atan2
/* C385BC 8024208C 00000000 */   nop      
/* C385C0 80242090 8E250018 */  lw        $a1, 0x18($s1)
/* C385C4 80242094 44060000 */  mfc1      $a2, $f0
/* C385C8 80242098 0220202D */  daddu     $a0, $s1, $zero
/* C385CC 8024209C 0C00EA95 */  jal       npc_move_heading
/* C385D0 802420A0 AE26000C */   sw       $a2, 0xc($s1)
/* C385D4 802420A4 C62C0038 */  lwc1      $f12, 0x38($s1)
/* C385D8 802420A8 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C385DC 802420AC C62E0040 */  lwc1      $f14, 0x40($s1)
/* C385E0 802420B0 C4480000 */  lwc1      $f8, ($v0)
/* C385E4 802420B4 46804220 */  cvt.s.w   $f8, $f8
/* C385E8 802420B8 44064000 */  mfc1      $a2, $f8
/* C385EC 802420BC C4480008 */  lwc1      $f8, 8($v0)
/* C385F0 802420C0 46804220 */  cvt.s.w   $f8, $f8
/* C385F4 802420C4 44074000 */  mfc1      $a3, $f8
/* C385F8 802420C8 0C00A7B5 */  jal       dist2D
/* C385FC 802420CC 00000000 */   nop      
/* C38600 802420D0 C6220018 */  lwc1      $f2, 0x18($s1)
/* C38604 802420D4 46021080 */  add.s     $f2, $f2, $f2
/* C38608 802420D8 4602003E */  c.le.s    $f0, $f2
/* C3860C 802420DC 00000000 */  nop       
/* C38610 802420E0 45000010 */  bc1f      .L80242124
/* C38614 802420E4 E7A00034 */   swc1     $f0, 0x34($sp)
/* C38618 802420E8 0C00A67F */  jal       rand_int
/* C3861C 802420EC 240403E8 */   addiu    $a0, $zero, 0x3e8
/* C38620 802420F0 3C035555 */  lui       $v1, 0x5555
/* C38624 802420F4 34635556 */  ori       $v1, $v1, 0x5556
/* C38628 802420F8 00430018 */  mult      $v0, $v1
/* C3862C 802420FC 24030002 */  addiu     $v1, $zero, 2
/* C38630 80242100 000227C3 */  sra       $a0, $v0, 0x1f
/* C38634 80242104 AE430070 */  sw        $v1, 0x70($s2)
/* C38638 80242108 00004010 */  mfhi      $t0
/* C3863C 8024210C 01042023 */  subu      $a0, $t0, $a0
/* C38640 80242110 00041840 */  sll       $v1, $a0, 1
/* C38644 80242114 00641821 */  addu      $v1, $v1, $a0
/* C38648 80242118 00431023 */  subu      $v0, $v0, $v1
/* C3864C 8024211C 24420002 */  addiu     $v0, $v0, 2
/* C38650 80242120 AE420074 */  sw        $v0, 0x74($s2)
.L80242124:
/* C38654 80242124 8FBF0054 */  lw        $ra, 0x54($sp)
/* C38658 80242128 8FB40050 */  lw        $s4, 0x50($sp)
/* C3865C 8024212C 8FB3004C */  lw        $s3, 0x4c($sp)
/* C38660 80242130 8FB20048 */  lw        $s2, 0x48($sp)
/* C38664 80242134 8FB10044 */  lw        $s1, 0x44($sp)
/* C38668 80242138 8FB00040 */  lw        $s0, 0x40($sp)
/* C3866C 8024213C D7BA0070 */  ldc1      $f26, 0x70($sp)
/* C38670 80242140 D7B80068 */  ldc1      $f24, 0x68($sp)
/* C38674 80242144 D7B60060 */  ldc1      $f22, 0x60($sp)
/* C38678 80242148 D7B40058 */  ldc1      $f20, 0x58($sp)
/* C3867C 8024214C 03E00008 */  jr        $ra
/* C38680 80242150 27BD0078 */   addiu    $sp, $sp, 0x78
