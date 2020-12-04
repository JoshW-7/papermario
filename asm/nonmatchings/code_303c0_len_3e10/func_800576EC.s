.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800576EC
/* 32AEC 800576EC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 32AF0 800576F0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 32AF4 800576F4 00C0982D */  daddu     $s3, $a2, $zero
/* 32AF8 800576F8 AFB20018 */  sw        $s2, 0x18($sp)
/* 32AFC 800576FC 00A0902D */  daddu     $s2, $a1, $zero
/* 32B00 80057700 308400FF */  andi      $a0, $a0, 0xff
/* 32B04 80057704 00041140 */  sll       $v0, $a0, 5
/* 32B08 80057708 3C038008 */  lui       $v1, %hi(D_80078E54)
/* 32B0C 8005770C 8C638E54 */  lw        $v1, %lo(D_80078E54)($v1)
/* 32B10 80057710 00441023 */  subu      $v0, $v0, $a0
/* 32B14 80057714 AFBF0020 */  sw        $ra, 0x20($sp)
/* 32B18 80057718 AFB10014 */  sw        $s1, 0x14($sp)
/* 32B1C 8005771C AFB00010 */  sw        $s0, 0x10($sp)
/* 32B20 80057720 8C63001C */  lw        $v1, 0x1c($v1)
/* 32B24 80057724 00021080 */  sll       $v0, $v0, 2
/* 32B28 80057728 00628021 */  addu      $s0, $v1, $v0
/* 32B2C 8005772C 8E050064 */  lw        $a1, 0x64($s0)
/* 32B30 80057730 8E030068 */  lw        $v1, 0x68($s0)
/* 32B34 80057734 00A3102A */  slt       $v0, $a1, $v1
/* 32B38 80057738 14400029 */  bnez      $v0, .L800577E0
/* 32B3C 8005773C 26110048 */   addiu    $s1, $s0, 0x48
/* 32B40 80057740 3C028008 */  lui       $v0, %hi(D_80078181)
/* 32B44 80057744 24428181 */  addiu     $v0, $v0, %lo(D_80078181)
/* 32B48 80057748 90420000 */  lbu       $v0, ($v0)
/* 32B4C 8005774C 1440000E */  bnez      $v0, .L80057788
/* 32B50 80057750 AE030064 */   sw       $v1, 0x64($s0)
/* 32B54 80057754 3C048008 */  lui       $a0, %hi(D_80078E60)
/* 32B58 80057758 24848E60 */  addiu     $a0, $a0, %lo(D_80078E60)
/* 32B5C 8005775C 8603004E */  lh        $v1, 0x4e($s0)
/* 32B60 80057760 84820080 */  lh        $v0, 0x80($a0)
/* 32B64 80057764 00620018 */  mult      $v1, $v0
/* 32B68 80057768 00004012 */  mflo      $t0
/* 32B6C 8005776C 000813C3 */  sra       $v0, $t0, 0xf
/* 32B70 80057770 A6020050 */  sh        $v0, 0x50($s0)
/* 32B74 80057774 84820080 */  lh        $v0, 0x80($a0)
/* 32B78 80057778 00620018 */  mult      $v1, $v0
/* 32B7C 8005777C 00004012 */  mflo      $t0
/* 32B80 80057780 08015E02 */  j         .L80057808
/* 32B84 80057784 000813C3 */   sra      $v0, $t0, 0xf
.L80057788:
/* 32B88 80057788 8602004C */  lh        $v0, 0x4c($s0)
/* 32B8C 8005778C 8603004E */  lh        $v1, 0x4e($s0)
/* 32B90 80057790 00021040 */  sll       $v0, $v0, 1
/* 32B94 80057794 3C018008 */  lui       $at, %hi(D_80078E60)
/* 32B98 80057798 00220821 */  addu      $at, $at, $v0
/* 32B9C 8005779C 84228E60 */  lh        $v0, %lo(D_80078E60)($at)
/* 32BA0 800577A0 00620018 */  mult      $v1, $v0
/* 32BA4 800577A4 8603004C */  lh        $v1, 0x4c($s0)
/* 32BA8 800577A8 00004012 */  mflo      $t0
/* 32BAC 800577AC 000813C3 */  sra       $v0, $t0, 0xf
/* 32BB0 800577B0 A6020050 */  sh        $v0, 0x50($s0)
/* 32BB4 800577B4 2402007F */  addiu     $v0, $zero, 0x7f
/* 32BB8 800577B8 00431023 */  subu      $v0, $v0, $v1
/* 32BBC 800577BC 00021040 */  sll       $v0, $v0, 1
/* 32BC0 800577C0 8603004E */  lh        $v1, 0x4e($s0)
/* 32BC4 800577C4 3C018008 */  lui       $at, %hi(D_80078E60)
/* 32BC8 800577C8 00220821 */  addu      $at, $at, $v0
/* 32BCC 800577CC 84228E60 */  lh        $v0, %lo(D_80078E60)($at)
/* 32BD0 800577D0 00620018 */  mult      $v1, $v0
/* 32BD4 800577D4 00004012 */  mflo      $t0
/* 32BD8 800577D8 08015E02 */  j         .L80057808
/* 32BDC 800577DC 000813C3 */   sra      $v0, $t0, 0xf
.L800577E0:
/* 32BE0 800577E0 86040050 */  lh        $a0, 0x50($s0)
/* 32BE4 800577E4 8606005A */  lh        $a2, 0x5a($s0)
/* 32BE8 800577E8 0C016001 */  jal       func_80058004
/* 32BEC 800577EC 96070058 */   lhu      $a3, 0x58($s0)
/* 32BF0 800577F0 86040052 */  lh        $a0, 0x52($s0)
/* 32BF4 800577F4 8E050064 */  lw        $a1, 0x64($s0)
/* 32BF8 800577F8 86060060 */  lh        $a2, 0x60($s0)
/* 32BFC 800577FC 9607005E */  lhu       $a3, 0x5e($s0)
/* 32C00 80057800 0C016001 */  jal       func_80058004
/* 32C04 80057804 A6020050 */   sh       $v0, 0x50($s0)
.L80057808:
/* 32C08 80057808 A6020052 */  sh        $v0, 0x52($s0)
/* 32C0C 8005780C 86220008 */  lh        $v0, 8($s1)
/* 32C10 80057810 14400002 */  bnez      $v0, .L8005781C
/* 32C14 80057814 24020001 */   addiu    $v0, $zero, 1
/* 32C18 80057818 A6220008 */  sh        $v0, 8($s1)
.L8005781C:
/* 32C1C 8005781C 8622000A */  lh        $v0, 0xa($s1)
/* 32C20 80057820 14400004 */  bnez      $v0, .L80057834
/* 32C24 80057824 00121400 */   sll      $v0, $s2, 0x10
/* 32C28 80057828 24020001 */  addiu     $v0, $zero, 1
/* 32C2C 8005782C A622000A */  sh        $v0, 0xa($s1)
/* 32C30 80057830 00121400 */  sll       $v0, $s2, 0x10
.L80057834:
/* 32C34 80057834 00021403 */  sra       $v0, $v0, 0x10
/* 32C38 80057838 00420018 */  mult      $v0, $v0
/* 32C3C 8005783C 24020001 */  addiu     $v0, $zero, 1
/* 32C40 80057840 AE20001C */  sw        $zero, 0x1c($s1)
/* 32C44 80057844 AE330020 */  sw        $s3, 0x20($s1)
/* 32C48 80057848 AE220024 */  sw        $v0, 0x24($s1)
/* 32C4C 8005784C 00004012 */  mflo      $t0
/* 32C50 80057850 000813C3 */  sra       $v0, $t0, 0xf
/* 32C54 80057854 A6220006 */  sh        $v0, 6($s1)
/* 32C58 80057858 8FBF0020 */  lw        $ra, 0x20($sp)
/* 32C5C 8005785C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 32C60 80057860 8FB20018 */  lw        $s2, 0x18($sp)
/* 32C64 80057864 8FB10014 */  lw        $s1, 0x14($sp)
/* 32C68 80057868 8FB00010 */  lw        $s0, 0x10($sp)
/* 32C6C 8005786C 03E00008 */  jr        $ra
/* 32C70 80057870 27BD0028 */   addiu    $sp, $sp, 0x28
