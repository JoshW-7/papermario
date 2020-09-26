.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osEPiRawReadIo
/* 46970 8006B570 3C02A460 */  lui       $v0, 0xa460
/* 46974 8006B574 34420010 */  ori       $v0, $v0, 0x10
/* 46978 8006B578 8C420000 */  lw        $v0, ($v0)
/* 4697C 8006B57C 30420003 */  andi      $v0, $v0, 3
/* 46980 8006B580 10400006 */  beqz      $v0, .L8006B59C
/* 46984 8006B584 3C03A460 */   lui      $v1, 0xa460
/* 46988 8006B588 34630010 */  ori       $v1, $v1, 0x10
.L8006B58C:
/* 4698C 8006B58C 8C620000 */  lw        $v0, ($v1)
/* 46990 8006B590 30420003 */  andi      $v0, $v0, 3
/* 46994 8006B594 1440FFFD */  bnez      $v0, .L8006B58C
/* 46998 8006B598 00000000 */   nop      
.L8006B59C:
/* 4699C 8006B59C 90880009 */  lbu       $t0, 9($a0)
/* 469A0 8006B5A0 00081080 */  sll       $v0, $t0, 2
/* 469A4 8006B5A4 3C078009 */  lui       $a3, 0x8009
/* 469A8 8006B5A8 00E23821 */  addu      $a3, $a3, $v0
/* 469AC 8006B5AC 8CE73D70 */  lw        $a3, 0x3d70($a3)
/* 469B0 8006B5B0 90820004 */  lbu       $v0, 4($a0)
/* 469B4 8006B5B4 90E30004 */  lbu       $v1, 4($a3)
/* 469B8 8006B5B8 1062003F */  beq       $v1, $v0, .L8006B6B8
/* 469BC 8006B5BC 00000000 */   nop      
/* 469C0 8006B5C0 1500001A */  bnez      $t0, .L8006B62C
/* 469C4 8006B5C4 00E01821 */   addu     $v1, $a3, $zero
/* 469C8 8006B5C8 90620005 */  lbu       $v0, 5($v1)
/* 469CC 8006B5CC 90870005 */  lbu       $a3, 5($a0)
/* 469D0 8006B5D0 10470003 */  beq       $v0, $a3, .L8006B5E0
/* 469D4 8006B5D4 3C02A460 */   lui      $v0, 0xa460
/* 469D8 8006B5D8 34420014 */  ori       $v0, $v0, 0x14
/* 469DC 8006B5DC AC470000 */  sw        $a3, ($v0)
.L8006B5E0:
/* 469E0 8006B5E0 90620006 */  lbu       $v0, 6($v1)
/* 469E4 8006B5E4 90870006 */  lbu       $a3, 6($a0)
/* 469E8 8006B5E8 10470003 */  beq       $v0, $a3, .L8006B5F8
/* 469EC 8006B5EC 3C02A460 */   lui      $v0, 0xa460
/* 469F0 8006B5F0 3442001C */  ori       $v0, $v0, 0x1c
/* 469F4 8006B5F4 AC470000 */  sw        $a3, ($v0)
.L8006B5F8:
/* 469F8 8006B5F8 90620007 */  lbu       $v0, 7($v1)
/* 469FC 8006B5FC 90870007 */  lbu       $a3, 7($a0)
/* 46A00 8006B600 10470003 */  beq       $v0, $a3, .L8006B610
/* 46A04 8006B604 3C02A460 */   lui      $v0, 0xa460
/* 46A08 8006B608 34420020 */  ori       $v0, $v0, 0x20
/* 46A0C 8006B60C AC470000 */  sw        $a3, ($v0)
.L8006B610:
/* 46A10 8006B610 90620008 */  lbu       $v0, 8($v1)
/* 46A14 8006B614 90870008 */  lbu       $a3, 8($a0)
/* 46A18 8006B618 1047001D */  beq       $v0, $a3, .L8006B690
/* 46A1C 8006B61C 00000000 */   nop      
/* 46A20 8006B620 3C02A460 */  lui       $v0, 0xa460
/* 46A24 8006B624 0801ADA3 */  j         .L8006B68C
/* 46A28 8006B628 34420018 */   ori      $v0, $v0, 0x18
.L8006B62C:
/* 46A2C 8006B62C 90620005 */  lbu       $v0, 5($v1)
/* 46A30 8006B630 90870005 */  lbu       $a3, 5($a0)
/* 46A34 8006B634 10470003 */  beq       $v0, $a3, .L8006B644
/* 46A38 8006B638 3C02A460 */   lui      $v0, 0xa460
/* 46A3C 8006B63C 34420024 */  ori       $v0, $v0, 0x24
/* 46A40 8006B640 AC470000 */  sw        $a3, ($v0)
.L8006B644:
/* 46A44 8006B644 90620006 */  lbu       $v0, 6($v1)
/* 46A48 8006B648 90870006 */  lbu       $a3, 6($a0)
/* 46A4C 8006B64C 10470003 */  beq       $v0, $a3, .L8006B65C
/* 46A50 8006B650 3C02A460 */   lui      $v0, 0xa460
/* 46A54 8006B654 3442002C */  ori       $v0, $v0, 0x2c
/* 46A58 8006B658 AC470000 */  sw        $a3, ($v0)
.L8006B65C:
/* 46A5C 8006B65C 90620007 */  lbu       $v0, 7($v1)
/* 46A60 8006B660 90870007 */  lbu       $a3, 7($a0)
/* 46A64 8006B664 10470003 */  beq       $v0, $a3, .L8006B674
/* 46A68 8006B668 3C02A460 */   lui      $v0, 0xa460
/* 46A6C 8006B66C 34420030 */  ori       $v0, $v0, 0x30
/* 46A70 8006B670 AC470000 */  sw        $a3, ($v0)
.L8006B674:
/* 46A74 8006B674 90620008 */  lbu       $v0, 8($v1)
/* 46A78 8006B678 90870008 */  lbu       $a3, 8($a0)
/* 46A7C 8006B67C 10470004 */  beq       $v0, $a3, .L8006B690
/* 46A80 8006B680 00000000 */   nop      
/* 46A84 8006B684 3C02A460 */  lui       $v0, 0xa460
/* 46A88 8006B688 34420028 */  ori       $v0, $v0, 0x28
.L8006B68C:
/* 46A8C 8006B68C AC470000 */  sw        $a3, ($v0)
.L8006B690:
/* 46A90 8006B690 90820004 */  lbu       $v0, 4($a0)
/* 46A94 8006B694 A0620004 */  sb        $v0, 4($v1)
/* 46A98 8006B698 90820005 */  lbu       $v0, 5($a0)
/* 46A9C 8006B69C A0620005 */  sb        $v0, 5($v1)
/* 46AA0 8006B6A0 90820006 */  lbu       $v0, 6($a0)
/* 46AA4 8006B6A4 A0620006 */  sb        $v0, 6($v1)
/* 46AA8 8006B6A8 90820007 */  lbu       $v0, 7($a0)
/* 46AAC 8006B6AC A0620007 */  sb        $v0, 7($v1)
/* 46AB0 8006B6B0 90820008 */  lbu       $v0, 8($a0)
/* 46AB4 8006B6B4 A0620008 */  sb        $v0, 8($v1)
.L8006B6B8:
/* 46AB8 8006B6B8 8C82000C */  lw        $v0, 0xc($a0)
/* 46ABC 8006B6BC 3C03A000 */  lui       $v1, 0xa000
/* 46AC0 8006B6C0 00451025 */  or        $v0, $v0, $a1
/* 46AC4 8006B6C4 00431025 */  or        $v0, $v0, $v1
/* 46AC8 8006B6C8 8C420000 */  lw        $v0, ($v0)
/* 46ACC 8006B6CC ACC20000 */  sw        $v0, ($a2)
/* 46AD0 8006B6D0 03E00008 */  jr        $ra
/* 46AD4 8006B6D4 00001021 */   addu     $v0, $zero, $zero
/* 46AD8 8006B6D8 00000000 */  nop       
/* 46ADC 8006B6DC 00000000 */  nop       
