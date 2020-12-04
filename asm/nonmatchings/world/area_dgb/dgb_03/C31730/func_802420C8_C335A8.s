.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802420C8_C335A8
/* C335A8 802420C8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C335AC 802420CC AFB20020 */  sw        $s2, 0x20($sp)
/* C335B0 802420D0 0080902D */  daddu     $s2, $a0, $zero
/* C335B4 802420D4 AFBF0028 */  sw        $ra, 0x28($sp)
/* C335B8 802420D8 AFB30024 */  sw        $s3, 0x24($sp)
/* C335BC 802420DC AFB1001C */  sw        $s1, 0x1c($sp)
/* C335C0 802420E0 AFB00018 */  sw        $s0, 0x18($sp)
/* C335C4 802420E4 8E510148 */  lw        $s1, 0x148($s2)
/* C335C8 802420E8 00A0982D */  daddu     $s3, $a1, $zero
/* C335CC 802420EC 86240008 */  lh        $a0, 8($s1)
/* C335D0 802420F0 0C00EABB */  jal       get_npc_unsafe
/* C335D4 802420F4 00C0802D */   daddu    $s0, $a2, $zero
/* C335D8 802420F8 0200202D */  daddu     $a0, $s0, $zero
/* C335DC 802420FC 0040802D */  daddu     $s0, $v0, $zero
/* C335E0 80242100 AFA00010 */  sw        $zero, 0x10($sp)
/* C335E4 80242104 8E660024 */  lw        $a2, 0x24($s3)
/* C335E8 80242108 8E670028 */  lw        $a3, 0x28($s3)
/* C335EC 8024210C 0C01242D */  jal       func_800490B4
/* C335F0 80242110 0220282D */   daddu    $a1, $s1, $zero
/* C335F4 80242114 1040000C */  beqz      $v0, .L80242148
/* C335F8 80242118 00000000 */   nop      
/* C335FC 8024211C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C33600 80242120 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C33604 80242124 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C33608 80242128 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C3360C 8024212C 8C460028 */  lw        $a2, 0x28($v0)
/* C33610 80242130 0C00A720 */  jal       atan2
/* C33614 80242134 8C470030 */   lw       $a3, 0x30($v0)
/* C33618 80242138 2402000C */  addiu     $v0, $zero, 0xc
/* C3361C 8024213C E600000C */  swc1      $f0, 0xc($s0)
/* C33620 80242140 08090879 */  j         .L802421E4
/* C33624 80242144 AE420070 */   sw       $v0, 0x70($s2)
.L80242148:
/* C33628 80242148 9602008E */  lhu       $v0, 0x8e($s0)
/* C3362C 8024214C 2442FFFF */  addiu     $v0, $v0, -1
/* C33630 80242150 A602008E */  sh        $v0, 0x8e($s0)
/* C33634 80242154 00021400 */  sll       $v0, $v0, 0x10
/* C33638 80242158 1C400022 */  bgtz      $v0, .L802421E4
/* C3363C 8024215C 00000000 */   nop      
/* C33640 80242160 8E420074 */  lw        $v0, 0x74($s2)
/* C33644 80242164 2442FFFF */  addiu     $v0, $v0, -1
/* C33648 80242168 18400014 */  blez      $v0, .L802421BC
/* C3364C 8024216C AE420074 */   sw       $v0, 0x74($s2)
/* C33650 80242170 C600000C */  lwc1      $f0, 0xc($s0)
/* C33654 80242174 3C014334 */  lui       $at, 0x4334
/* C33658 80242178 44816000 */  mtc1      $at, $f12
/* C3365C 8024217C 0C00A6C9 */  jal       clamp_angle
/* C33660 80242180 460C0300 */   add.s    $f12, $f0, $f12
/* C33664 80242184 E600000C */  swc1      $f0, 0xc($s0)
/* C33668 80242188 8E640008 */  lw        $a0, 8($s3)
/* C3366C 8024218C 000417C2 */  srl       $v0, $a0, 0x1f
/* C33670 80242190 00822021 */  addu      $a0, $a0, $v0
/* C33674 80242194 00042043 */  sra       $a0, $a0, 1
/* C33678 80242198 0C00A67F */  jal       rand_int
/* C3367C 8024219C 24840001 */   addiu    $a0, $a0, 1
/* C33680 802421A0 8E630008 */  lw        $v1, 8($s3)
/* C33684 802421A4 000327C2 */  srl       $a0, $v1, 0x1f
/* C33688 802421A8 00641821 */  addu      $v1, $v1, $a0
/* C3368C 802421AC 00031843 */  sra       $v1, $v1, 1
/* C33690 802421B0 00621821 */  addu      $v1, $v1, $v0
/* C33694 802421B4 08090879 */  j         .L802421E4
/* C33698 802421B8 A603008E */   sh       $v1, 0x8e($s0)
.L802421BC:
/* C3369C 802421BC 8E250088 */  lw        $a1, 0x88($s1)
/* C336A0 802421C0 24020028 */  addiu     $v0, $zero, 0x28
/* C336A4 802421C4 14A20003 */  bne       $a1, $v0, .L802421D4
/* C336A8 802421C8 24020032 */   addiu    $v0, $zero, 0x32
/* C336AC 802421CC 08090877 */  j         .L802421DC
/* C336B0 802421D0 24020014 */   addiu    $v0, $zero, 0x14
.L802421D4:
/* C336B4 802421D4 14A20003 */  bne       $a1, $v0, .L802421E4
/* C336B8 802421D8 24020019 */   addiu    $v0, $zero, 0x19
.L802421DC:
/* C336BC 802421DC A602008E */  sh        $v0, 0x8e($s0)
/* C336C0 802421E0 AE450070 */  sw        $a1, 0x70($s2)
.L802421E4:
/* C336C4 802421E4 8FBF0028 */  lw        $ra, 0x28($sp)
/* C336C8 802421E8 8FB30024 */  lw        $s3, 0x24($sp)
/* C336CC 802421EC 8FB20020 */  lw        $s2, 0x20($sp)
/* C336D0 802421F0 8FB1001C */  lw        $s1, 0x1c($sp)
/* C336D4 802421F4 8FB00018 */  lw        $s0, 0x18($sp)
/* C336D8 802421F8 03E00008 */  jr        $ra
/* C336DC 802421FC 27BD0030 */   addiu    $sp, $sp, 0x30
