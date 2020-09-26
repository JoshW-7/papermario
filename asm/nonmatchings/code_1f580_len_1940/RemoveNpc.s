.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel RemoveNpc
/* 1F740 80044340 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1F744 80044344 AFB20018 */  sw        $s2, 0x18($sp)
/* 1F748 80044348 0080902D */  daddu     $s2, $a0, $zero
/* 1F74C 8004434C AFB3001C */  sw        $s3, 0x1c($sp)
/* 1F750 80044350 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1F754 80044354 AFB40020 */  sw        $s4, 0x20($sp)
/* 1F758 80044358 AFB10014 */  sw        $s1, 0x14($sp)
/* 1F75C 8004435C AFB00010 */  sw        $s0, 0x10($sp)
/* 1F760 80044360 8E42000C */  lw        $v0, 0xc($s2)
/* 1F764 80044364 8C450000 */  lw        $a1, ($v0)
/* 1F768 80044368 8E500148 */  lw        $s0, 0x148($s2)
/* 1F76C 8004436C 0C0B1EAF */  jal       get_variable
/* 1F770 80044370 24130001 */   addiu    $s3, $zero, 1
/* 1F774 80044374 0040882D */  daddu     $s1, $v0, $zero
/* 1F778 80044378 3C14800B */  lui       $s4, 0x800b
/* 1F77C 8004437C 26940F10 */  addiu     $s4, $s4, 0xf10
/* 1F780 80044380 2402FFFF */  addiu     $v0, $zero, -1
/* 1F784 80044384 12020017 */  beq       $s0, $v0, .L800443E4
/* 1F788 80044388 00000000 */   nop      
/* 1F78C 8004438C 16220004 */  bne       $s1, $v0, .L800443A0
/* 1F790 80044390 00000000 */   nop      
/* 1F794 80044394 86110008 */  lh        $s1, 8($s0)
/* 1F798 80044398 080110FB */  j         .L800443EC
/* 1F79C 8004439C 241300FF */   addiu    $s3, $zero, 0xff
.L800443A0:
/* 1F7A0 800443A0 86020008 */  lh        $v0, 8($s0)
/* 1F7A4 800443A4 1451000F */  bne       $v0, $s1, .L800443E4
/* 1F7A8 800443A8 0240202D */   daddu    $a0, $s2, $zero
.L800443AC:
/* 1F7AC 800443AC 8C820064 */  lw        $v0, 0x64($a0)
/* 1F7B0 800443B0 10400003 */  beqz      $v0, .L800443C0
/* 1F7B4 800443B4 00000000 */   nop      
/* 1F7B8 800443B8 080110EB */  j         .L800443AC
/* 1F7BC 800443BC 0040202D */   daddu    $a0, $v0, $zero
.L800443C0:
/* 1F7C0 800443C0 8E02003C */  lw        $v0, 0x3c($s0)
/* 1F7C4 800443C4 50820009 */  beql      $a0, $v0, .L800443EC
/* 1F7C8 800443C8 241300FF */   addiu    $s3, $zero, 0xff
/* 1F7CC 800443CC 080110FB */  j         .L800443EC
/* 1F7D0 800443D0 00000000 */   nop      
.L800443D4:
/* 1F7D4 800443D4 0C00F9EB */  jal       kill_enemy
/* 1F7D8 800443D8 0200202D */   daddu    $a0, $s0, $zero
/* 1F7DC 800443DC 08011116 */  j         .L80044458
/* 1F7E0 800443E0 0260102D */   daddu    $v0, $s3, $zero
.L800443E4:
/* 1F7E4 800443E4 0C00FB3A */  jal       get_enemy
/* 1F7E8 800443E8 0220202D */   daddu    $a0, $s1, $zero
.L800443EC:
/* 1F7EC 800443EC 8282001C */  lb        $v0, 0x1c($s4)
/* 1F7F0 800443F0 18400018 */  blez      $v0, .L80044454
/* 1F7F4 800443F4 0000282D */   daddu    $a1, $zero, $zero
/* 1F7F8 800443F8 0040402D */  daddu     $t0, $v0, $zero
/* 1F7FC 800443FC 0280382D */  daddu     $a3, $s4, $zero
.L80044400:
/* 1F800 80044400 8CE20028 */  lw        $v0, 0x28($a3)
/* 1F804 80044404 50400010 */  beql      $v0, $zero, .L80044448
/* 1F808 80044408 24A50001 */   addiu    $a1, $a1, 1
/* 1F80C 8004440C 8C430000 */  lw        $v1, ($v0)
/* 1F810 80044410 1860000C */  blez      $v1, .L80044444
/* 1F814 80044414 0000202D */   daddu    $a0, $zero, $zero
/* 1F818 80044418 0060302D */  daddu     $a2, $v1, $zero
/* 1F81C 8004441C 0040182D */  daddu     $v1, $v0, $zero
.L80044420:
/* 1F820 80044420 8C700004 */  lw        $s0, 4($v1)
/* 1F824 80044424 12000004 */  beqz      $s0, .L80044438
/* 1F828 80044428 24840001 */   addiu    $a0, $a0, 1
/* 1F82C 8004442C 86020008 */  lh        $v0, 8($s0)
/* 1F830 80044430 1051FFE8 */  beq       $v0, $s1, .L800443D4
/* 1F834 80044434 00000000 */   nop      
.L80044438:
/* 1F838 80044438 0086102A */  slt       $v0, $a0, $a2
/* 1F83C 8004443C 1440FFF8 */  bnez      $v0, .L80044420
/* 1F840 80044440 24630004 */   addiu    $v1, $v1, 4
.L80044444:
/* 1F844 80044444 24A50001 */  addiu     $a1, $a1, 1
.L80044448:
/* 1F848 80044448 00A8102A */  slt       $v0, $a1, $t0
/* 1F84C 8004444C 1440FFEC */  bnez      $v0, .L80044400
/* 1F850 80044450 24E70004 */   addiu    $a3, $a3, 4
.L80044454:
/* 1F854 80044454 0260102D */  daddu     $v0, $s3, $zero
.L80044458:
/* 1F858 80044458 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1F85C 8004445C 8FB40020 */  lw        $s4, 0x20($sp)
/* 1F860 80044460 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1F864 80044464 8FB20018 */  lw        $s2, 0x18($sp)
/* 1F868 80044468 8FB10014 */  lw        $s1, 0x14($sp)
/* 1F86C 8004446C 8FB00010 */  lw        $s0, 0x10($sp)
/* 1F870 80044470 03E00008 */  jr        $ra
/* 1F874 80044474 27BD0028 */   addiu    $sp, $sp, 0x28
