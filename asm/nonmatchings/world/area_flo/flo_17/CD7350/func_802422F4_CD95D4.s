.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802422F4_CD95D4
/* CD95D4 802422F4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* CD95D8 802422F8 AFB3003C */  sw        $s3, 0x3c($sp)
/* CD95DC 802422FC 0080982D */  daddu     $s3, $a0, $zero
/* CD95E0 80242300 AFBF0040 */  sw        $ra, 0x40($sp)
/* CD95E4 80242304 AFB20038 */  sw        $s2, 0x38($sp)
/* CD95E8 80242308 AFB10034 */  sw        $s1, 0x34($sp)
/* CD95EC 8024230C AFB00030 */  sw        $s0, 0x30($sp)
/* CD95F0 80242310 8E710148 */  lw        $s1, 0x148($s3)
/* CD95F4 80242314 0C00EABB */  jal       get_npc_unsafe
/* CD95F8 80242318 86240008 */   lh       $a0, 8($s1)
/* CD95FC 8024231C 0040802D */  daddu     $s0, $v0, $zero
/* CD9600 80242320 8E22007C */  lw        $v0, 0x7c($s1)
/* CD9604 80242324 8603008E */  lh        $v1, 0x8e($s0)
/* CD9608 80242328 2442FFFF */  addiu     $v0, $v0, -1
/* CD960C 8024232C 14620012 */  bne       $v1, $v0, .L80242378
/* CD9610 80242330 00000000 */   nop      
/* CD9614 80242334 C6000038 */  lwc1      $f0, 0x38($s0)
/* CD9618 80242338 4600020D */  trunc.w.s $f8, $f0
/* CD961C 8024233C 44024000 */  mfc1      $v0, $f8
/* CD9620 80242340 00000000 */  nop       
/* CD9624 80242344 A6220010 */  sh        $v0, 0x10($s1)
/* CD9628 80242348 C600003C */  lwc1      $f0, 0x3c($s0)
/* CD962C 8024234C 4600020D */  trunc.w.s $f8, $f0
/* CD9630 80242350 44024000 */  mfc1      $v0, $f8
/* CD9634 80242354 00000000 */  nop       
/* CD9638 80242358 A6220012 */  sh        $v0, 0x12($s1)
/* CD963C 8024235C C6000040 */  lwc1      $f0, 0x40($s0)
/* CD9640 80242360 24020001 */  addiu     $v0, $zero, 1
/* CD9644 80242364 A2220007 */  sb        $v0, 7($s1)
/* CD9648 80242368 4600020D */  trunc.w.s $f8, $f0
/* CD964C 8024236C 44024000 */  mfc1      $v0, $f8
/* CD9650 80242370 00000000 */  nop       
/* CD9654 80242374 A6220014 */  sh        $v0, 0x14($s1)
.L80242378:
/* CD9658 80242378 C6000038 */  lwc1      $f0, 0x38($s0)
/* CD965C 8024237C C602003C */  lwc1      $f2, 0x3c($s0)
/* CD9660 80242380 C6040040 */  lwc1      $f4, 0x40($s0)
/* CD9664 80242384 C6060018 */  lwc1      $f6, 0x18($s0)
/* CD9668 80242388 E7A00020 */  swc1      $f0, 0x20($sp)
/* CD966C 8024238C E7A20024 */  swc1      $f2, 0x24($sp)
/* CD9670 80242390 E7A40028 */  swc1      $f4, 0x28($sp)
/* CD9674 80242394 E7A60010 */  swc1      $f6, 0x10($sp)
/* CD9678 80242398 C600000C */  lwc1      $f0, 0xc($s0)
/* CD967C 8024239C E7A00014 */  swc1      $f0, 0x14($sp)
/* CD9680 802423A0 860200A8 */  lh        $v0, 0xa8($s0)
/* CD9684 802423A4 27A50020 */  addiu     $a1, $sp, 0x20
/* CD9688 802423A8 44820000 */  mtc1      $v0, $f0
/* CD968C 802423AC 00000000 */  nop       
/* CD9690 802423B0 46800020 */  cvt.s.w   $f0, $f0
/* CD9694 802423B4 E7A00018 */  swc1      $f0, 0x18($sp)
/* CD9698 802423B8 860200A6 */  lh        $v0, 0xa6($s0)
/* CD969C 802423BC 27A60024 */  addiu     $a2, $sp, 0x24
/* CD96A0 802423C0 44820000 */  mtc1      $v0, $f0
/* CD96A4 802423C4 00000000 */  nop       
/* CD96A8 802423C8 46800020 */  cvt.s.w   $f0, $f0
/* CD96AC 802423CC E7A0001C */  swc1      $f0, 0x1c($sp)
/* CD96B0 802423D0 8E040080 */  lw        $a0, 0x80($s0)
/* CD96B4 802423D4 0C037711 */  jal       func_800DDC44
/* CD96B8 802423D8 27A70028 */   addiu    $a3, $sp, 0x28
/* CD96BC 802423DC 0040902D */  daddu     $s2, $v0, $zero
/* CD96C0 802423E0 16400005 */  bnez      $s2, .L802423F8
/* CD96C4 802423E4 00000000 */   nop      
/* CD96C8 802423E8 8E050018 */  lw        $a1, 0x18($s0)
/* CD96CC 802423EC 8E06000C */  lw        $a2, 0xc($s0)
/* CD96D0 802423F0 0C00EA95 */  jal       npc_move_heading
/* CD96D4 802423F4 0200202D */   daddu    $a0, $s0, $zero
.L802423F8:
/* CD96D8 802423F8 8602008E */  lh        $v0, 0x8e($s0)
/* CD96DC 802423FC 9603008E */  lhu       $v1, 0x8e($s0)
/* CD96E0 80242400 18400007 */  blez      $v0, .L80242420
/* CD96E4 80242404 2462FFFF */   addiu    $v0, $v1, -1
/* CD96E8 80242408 A602008E */  sh        $v0, 0x8e($s0)
/* CD96EC 8024240C 00021400 */  sll       $v0, $v0, 0x10
/* CD96F0 80242410 18400003 */  blez      $v0, .L80242420
/* CD96F4 80242414 00000000 */   nop      
/* CD96F8 80242418 12400008 */  beqz      $s2, .L8024243C
/* CD96FC 8024241C 00000000 */   nop      
.L80242420:
/* CD9700 80242420 8E2200CC */  lw        $v0, 0xcc($s1)
/* CD9704 80242424 A2200007 */  sb        $zero, 7($s1)
/* CD9708 80242428 8C420028 */  lw        $v0, 0x28($v0)
/* CD970C 8024242C A600008E */  sh        $zero, 0x8e($s0)
/* CD9710 80242430 AE020028 */  sw        $v0, 0x28($s0)
/* CD9714 80242434 2402000F */  addiu     $v0, $zero, 0xf
/* CD9718 80242438 AE620070 */  sw        $v0, 0x70($s3)
.L8024243C:
/* CD971C 8024243C 8FBF0040 */  lw        $ra, 0x40($sp)
/* CD9720 80242440 8FB3003C */  lw        $s3, 0x3c($sp)
/* CD9724 80242444 8FB20038 */  lw        $s2, 0x38($sp)
/* CD9728 80242448 8FB10034 */  lw        $s1, 0x34($sp)
/* CD972C 8024244C 8FB00030 */  lw        $s0, 0x30($sp)
/* CD9730 80242450 03E00008 */  jr        $ra
/* CD9734 80242454 27BD0048 */   addiu    $sp, $sp, 0x48
