.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241448_9A2428
/* 9A2428 80241448 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 9A242C 8024144C AFB40058 */  sw        $s4, 0x58($sp)
/* 9A2430 80241450 0080A02D */  daddu     $s4, $a0, $zero
/* 9A2434 80241454 AFBF0060 */  sw        $ra, 0x60($sp)
/* 9A2438 80241458 AFB5005C */  sw        $s5, 0x5c($sp)
/* 9A243C 8024145C AFB30054 */  sw        $s3, 0x54($sp)
/* 9A2440 80241460 AFB20050 */  sw        $s2, 0x50($sp)
/* 9A2444 80241464 AFB1004C */  sw        $s1, 0x4c($sp)
/* 9A2448 80241468 AFB00048 */  sw        $s0, 0x48($sp)
/* 9A244C 8024146C 8E910148 */  lw        $s1, 0x148($s4)
/* 9A2450 80241470 86240008 */  lh        $a0, 8($s1)
/* 9A2454 80241474 0C00EABB */  jal       get_npc_unsafe
/* 9A2458 80241478 00A0802D */   daddu    $s0, $a1, $zero
/* 9A245C 8024147C 8E83000C */  lw        $v1, 0xc($s4)
/* 9A2460 80241480 0280202D */  daddu     $a0, $s4, $zero
/* 9A2464 80241484 8C650000 */  lw        $a1, ($v1)
/* 9A2468 80241488 0C0B1EAF */  jal       get_variable
/* 9A246C 8024148C 0040902D */   daddu    $s2, $v0, $zero
/* 9A2470 80241490 AFA00018 */  sw        $zero, 0x18($sp)
/* 9A2474 80241494 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A2478 80241498 8C630094 */  lw        $v1, 0x94($v1)
/* 9A247C 8024149C AFA3001C */  sw        $v1, 0x1c($sp)
/* 9A2480 802414A0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A2484 802414A4 8C630080 */  lw        $v1, 0x80($v1)
/* 9A2488 802414A8 AFA30020 */  sw        $v1, 0x20($sp)
/* 9A248C 802414AC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A2490 802414B0 8C630088 */  lw        $v1, 0x88($v1)
/* 9A2494 802414B4 AFA30024 */  sw        $v1, 0x24($sp)
/* 9A2498 802414B8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A249C 802414BC 8C63008C */  lw        $v1, 0x8c($v1)
/* 9A24A0 802414C0 27B50018 */  addiu     $s5, $sp, 0x18
/* 9A24A4 802414C4 AFA30028 */  sw        $v1, 0x28($sp)
/* 9A24A8 802414C8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A24AC 802414CC 3C014282 */  lui       $at, 0x4282
/* 9A24B0 802414D0 44810000 */  mtc1      $at, $f0
/* 9A24B4 802414D4 8C630090 */  lw        $v1, 0x90($v1)
/* 9A24B8 802414D8 0040982D */  daddu     $s3, $v0, $zero
/* 9A24BC 802414DC E7A00030 */  swc1      $f0, 0x30($sp)
/* 9A24C0 802414E0 A7A00034 */  sh        $zero, 0x34($sp)
/* 9A24C4 802414E4 16000005 */  bnez      $s0, .L802414FC
/* 9A24C8 802414E8 AFA3002C */   sw       $v1, 0x2c($sp)
/* 9A24CC 802414EC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A24D0 802414F0 30420004 */  andi      $v0, $v0, 4
/* 9A24D4 802414F4 10400044 */  beqz      $v0, .L80241608
/* 9A24D8 802414F8 00000000 */   nop      
.L802414FC:
/* 9A24DC 802414FC 2404F7FF */  addiu     $a0, $zero, -0x801
/* 9A24E0 80241500 AE800070 */  sw        $zero, 0x70($s4)
/* 9A24E4 80241504 A640008E */  sh        $zero, 0x8e($s2)
/* 9A24E8 80241508 8E2200CC */  lw        $v0, 0xcc($s1)
/* 9A24EC 8024150C 8E430000 */  lw        $v1, ($s2)
/* 9A24F0 80241510 8C420000 */  lw        $v0, ($v0)
/* 9A24F4 80241514 00641824 */  and       $v1, $v1, $a0
/* 9A24F8 80241518 AE430000 */  sw        $v1, ($s2)
/* 9A24FC 8024151C AE420028 */  sw        $v0, 0x28($s2)
/* 9A2500 80241520 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9A2504 80241524 8C420098 */  lw        $v0, 0x98($v0)
/* 9A2508 80241528 54400005 */  bnel      $v0, $zero, .L80241540
/* 9A250C 8024152C 2402FDFF */   addiu    $v0, $zero, -0x201
/* 9A2510 80241530 34620200 */  ori       $v0, $v1, 0x200
/* 9A2514 80241534 2403FFF7 */  addiu     $v1, $zero, -9
/* 9A2518 80241538 08090552 */  j         .L80241548
/* 9A251C 8024153C 00431024 */   and      $v0, $v0, $v1
.L80241540:
/* 9A2520 80241540 00621024 */  and       $v0, $v1, $v0
/* 9A2524 80241544 34420008 */  ori       $v0, $v0, 8
.L80241548:
/* 9A2528 80241548 AE420000 */  sw        $v0, ($s2)
/* 9A252C 8024154C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A2530 80241550 30420004 */  andi      $v0, $v0, 4
/* 9A2534 80241554 10400008 */  beqz      $v0, .L80241578
/* 9A2538 80241558 24020063 */   addiu    $v0, $zero, 0x63
/* 9A253C 8024155C AE820070 */  sw        $v0, 0x70($s4)
/* 9A2540 80241560 AE800074 */  sw        $zero, 0x74($s4)
/* 9A2544 80241564 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A2548 80241568 2403FFFB */  addiu     $v1, $zero, -5
/* 9A254C 8024156C 00431024 */  and       $v0, $v0, $v1
/* 9A2550 80241570 08090569 */  j         .L802415A4
/* 9A2554 80241574 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241578:
/* 9A2558 80241578 8E220000 */  lw        $v0, ($s1)
/* 9A255C 8024157C 3C034000 */  lui       $v1, 0x4000
/* 9A2560 80241580 00431024 */  and       $v0, $v0, $v1
/* 9A2564 80241584 10400007 */  beqz      $v0, .L802415A4
/* 9A2568 80241588 3C03BFFF */   lui      $v1, 0xbfff
/* 9A256C 8024158C 2402000C */  addiu     $v0, $zero, 0xc
/* 9A2570 80241590 AE820070 */  sw        $v0, 0x70($s4)
/* 9A2574 80241594 8E220000 */  lw        $v0, ($s1)
/* 9A2578 80241598 3463FFFF */  ori       $v1, $v1, 0xffff
/* 9A257C 8024159C 00431024 */  and       $v0, $v0, $v1
/* 9A2580 802415A0 AE220000 */  sw        $v0, ($s1)
.L802415A4:
/* 9A2584 802415A4 27A50038 */  addiu     $a1, $sp, 0x38
/* 9A2588 802415A8 27A6003C */  addiu     $a2, $sp, 0x3c
/* 9A258C 802415AC C6400038 */  lwc1      $f0, 0x38($s2)
/* 9A2590 802415B0 864200A8 */  lh        $v0, 0xa8($s2)
/* 9A2594 802415B4 3C0142C8 */  lui       $at, 0x42c8
/* 9A2598 802415B8 44812000 */  mtc1      $at, $f4
/* 9A259C 802415BC 44823000 */  mtc1      $v0, $f6
/* 9A25A0 802415C0 00000000 */  nop       
/* 9A25A4 802415C4 468031A0 */  cvt.s.w   $f6, $f6
/* 9A25A8 802415C8 27A20044 */  addiu     $v0, $sp, 0x44
/* 9A25AC 802415CC E7A00038 */  swc1      $f0, 0x38($sp)
/* 9A25B0 802415D0 C640003C */  lwc1      $f0, 0x3c($s2)
/* 9A25B4 802415D4 C6420040 */  lwc1      $f2, 0x40($s2)
/* 9A25B8 802415D8 46060000 */  add.s     $f0, $f0, $f6
/* 9A25BC 802415DC E7A40044 */  swc1      $f4, 0x44($sp)
/* 9A25C0 802415E0 E7A20040 */  swc1      $f2, 0x40($sp)
/* 9A25C4 802415E4 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 9A25C8 802415E8 AFA20010 */  sw        $v0, 0x10($sp)
/* 9A25CC 802415EC 8E440080 */  lw        $a0, 0x80($s2)
/* 9A25D0 802415F0 0C0372DF */  jal       func_800DCB7C
/* 9A25D4 802415F4 27A70040 */   addiu    $a3, $sp, 0x40
/* 9A25D8 802415F8 10400003 */  beqz      $v0, .L80241608
/* 9A25DC 802415FC 00000000 */   nop      
/* 9A25E0 80241600 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 9A25E4 80241604 E640003C */  swc1      $f0, 0x3c($s2)
.L80241608:
/* 9A25E8 80241608 8E830070 */  lw        $v1, 0x70($s4)
/* 9A25EC 8024160C 2C620064 */  sltiu     $v0, $v1, 0x64
/* 9A25F0 80241610 10400042 */  beqz      $v0, .L8024171C
/* 9A25F4 80241614 00031080 */   sll      $v0, $v1, 2
/* 9A25F8 80241618 3C018024 */  lui       $at, %hi(D_80243350)
/* 9A25FC 8024161C 00220821 */  addu      $at, $at, $v0
/* 9A2600 80241620 8C223350 */  lw        $v0, %lo(D_80243350)($at)
/* 9A2604 80241624 00400008 */  jr        $v0
/* 9A2608 80241628 00000000 */   nop      
/* 9A260C 8024162C 0280202D */  daddu     $a0, $s4, $zero
/* 9A2610 80241630 0260282D */  daddu     $a1, $s3, $zero
/* 9A2614 80241634 0C09022D */  jal       func_802408B4_9A1894
/* 9A2618 80241638 02A0302D */   daddu    $a2, $s5, $zero
/* 9A261C 8024163C 0280202D */  daddu     $a0, $s4, $zero
/* 9A2620 80241640 0260282D */  daddu     $a1, $s3, $zero
/* 9A2624 80241644 0C090283 */  jal       func_80240A0C_9A19EC
/* 9A2628 80241648 02A0302D */   daddu    $a2, $s5, $zero
/* 9A262C 8024164C 080905C7 */  j         .L8024171C
/* 9A2630 80241650 00000000 */   nop      
/* 9A2634 80241654 0280202D */  daddu     $a0, $s4, $zero
/* 9A2638 80241658 0260282D */  daddu     $a1, $s3, $zero
/* 9A263C 8024165C 0C09032D */  jal       UnkNpcAIFunc1
/* 9A2640 80241660 02A0302D */   daddu    $a2, $s5, $zero
/* 9A2644 80241664 0280202D */  daddu     $a0, $s4, $zero
/* 9A2648 80241668 0260282D */  daddu     $a1, $s3, $zero
/* 9A264C 8024166C 0C09035D */  jal       func_80240D74_9A1D54
/* 9A2650 80241670 02A0302D */   daddu    $a2, $s5, $zero
/* 9A2654 80241674 080905C7 */  j         .L8024171C
/* 9A2658 80241678 00000000 */   nop      
/* 9A265C 8024167C 0280202D */  daddu     $a0, $s4, $zero
/* 9A2660 80241680 0260282D */  daddu     $a1, $s3, $zero
/* 9A2664 80241684 0C0903CC */  jal       func_80240F30_9A1F10
/* 9A2668 80241688 02A0302D */   daddu    $a2, $s5, $zero
/* 9A266C 8024168C 080905C7 */  j         .L8024171C
/* 9A2670 80241690 00000000 */   nop      
/* 9A2674 80241694 0280202D */  daddu     $a0, $s4, $zero
/* 9A2678 80241698 0260282D */  daddu     $a1, $s3, $zero
/* 9A267C 8024169C 0C0903F9 */  jal       NpcJumpFunc2
/* 9A2680 802416A0 02A0302D */   daddu    $a2, $s5, $zero
/* 9A2684 802416A4 0280202D */  daddu     $a0, $s4, $zero
/* 9A2688 802416A8 0260282D */  daddu     $a1, $s3, $zero
/* 9A268C 802416AC 0C090416 */  jal       NpcJumpFunc
/* 9A2690 802416B0 02A0302D */   daddu    $a2, $s5, $zero
/* 9A2694 802416B4 080905C7 */  j         .L8024171C
/* 9A2698 802416B8 00000000 */   nop      
/* 9A269C 802416BC 0280202D */  daddu     $a0, $s4, $zero
/* 9A26A0 802416C0 0260282D */  daddu     $a1, $s3, $zero
/* 9A26A4 802416C4 0C090434 */  jal       func_802410D0_9A20B0
/* 9A26A8 802416C8 02A0302D */   daddu    $a2, $s5, $zero
/* 9A26AC 802416CC 0280202D */  daddu     $a0, $s4, $zero
/* 9A26B0 802416D0 0260282D */  daddu     $a1, $s3, $zero
/* 9A26B4 802416D4 0C090480 */  jal       func_80241200_9A21E0
/* 9A26B8 802416D8 02A0302D */   daddu    $a2, $s5, $zero
/* 9A26BC 802416DC 080905C7 */  j         .L8024171C
/* 9A26C0 802416E0 00000000 */   nop      
/* 9A26C4 802416E4 0280202D */  daddu     $a0, $s4, $zero
/* 9A26C8 802416E8 0260282D */  daddu     $a1, $s3, $zero
/* 9A26CC 802416EC 0C0904C8 */  jal       UnkNpcDurationFlagFunc
/* 9A26D0 802416F0 02A0302D */   daddu    $a2, $s5, $zero
/* 9A26D4 802416F4 080905C7 */  j         .L8024171C
/* 9A26D8 802416F8 00000000 */   nop      
/* 9A26DC 802416FC 0280202D */  daddu     $a0, $s4, $zero
/* 9A26E0 80241700 0260282D */  daddu     $a1, $s3, $zero
/* 9A26E4 80241704 0C0904E2 */  jal       func_80241388_9A2368
/* 9A26E8 80241708 02A0302D */   daddu    $a2, $s5, $zero
/* 9A26EC 8024170C 080905C7 */  j         .L8024171C
/* 9A26F0 80241710 00000000 */   nop      
/* 9A26F4 80241714 0C0129CF */  jal       func_8004A73C
/* 9A26F8 80241718 0280202D */   daddu    $a0, $s4, $zero
.L8024171C:
/* 9A26FC 8024171C 8FBF0060 */  lw        $ra, 0x60($sp)
/* 9A2700 80241720 8FB5005C */  lw        $s5, 0x5c($sp)
/* 9A2704 80241724 8FB40058 */  lw        $s4, 0x58($sp)
/* 9A2708 80241728 8FB30054 */  lw        $s3, 0x54($sp)
/* 9A270C 8024172C 8FB20050 */  lw        $s2, 0x50($sp)
/* 9A2710 80241730 8FB1004C */  lw        $s1, 0x4c($sp)
/* 9A2714 80241734 8FB00048 */  lw        $s0, 0x48($sp)
/* 9A2718 80241738 0000102D */  daddu     $v0, $zero, $zero
/* 9A271C 8024173C 03E00008 */  jr        $ra
/* 9A2720 80241740 27BD0068 */   addiu    $sp, $sp, 0x68
