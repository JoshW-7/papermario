.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241030_91F5A0
/* 91F5A0 80241030 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 91F5A4 80241034 AFB20018 */  sw        $s2, 0x18($sp)
/* 91F5A8 80241038 0080902D */  daddu     $s2, $a0, $zero
/* 91F5AC 8024103C AFB10014 */  sw        $s1, 0x14($sp)
/* 91F5B0 80241040 00A0882D */  daddu     $s1, $a1, $zero
/* 91F5B4 80241044 AFBF0024 */  sw        $ra, 0x24($sp)
/* 91F5B8 80241048 AFB40020 */  sw        $s4, 0x20($sp)
/* 91F5BC 8024104C AFB3001C */  sw        $s3, 0x1c($sp)
/* 91F5C0 80241050 AFB00010 */  sw        $s0, 0x10($sp)
/* 91F5C4 80241054 8E50000C */  lw        $s0, 0xc($s2)
/* 91F5C8 80241058 8E050000 */  lw        $a1, ($s0)
/* 91F5CC 8024105C 0C0B1EAF */  jal       get_variable
/* 91F5D0 80241060 26100004 */   addiu    $s0, $s0, 4
/* 91F5D4 80241064 0240202D */  daddu     $a0, $s2, $zero
/* 91F5D8 80241068 8E050000 */  lw        $a1, ($s0)
/* 91F5DC 8024106C 0C0B1EAF */  jal       get_variable
/* 91F5E0 80241070 0040802D */   daddu    $s0, $v0, $zero
/* 91F5E4 80241074 0200202D */  daddu     $a0, $s0, $zero
/* 91F5E8 80241078 0C00EAD2 */  jal       get_npc_safe
/* 91F5EC 8024107C 0040A02D */   daddu    $s4, $v0, $zero
/* 91F5F0 80241080 3C138011 */  lui       $s3, %hi(gPlayerData)
/* 91F5F4 80241084 2673F290 */  addiu     $s3, $s3, %lo(gPlayerData)
/* 91F5F8 80241088 12200006 */  beqz      $s1, .L802410A4
/* 91F5FC 8024108C 0040802D */   daddu    $s0, $v0, $zero
/* 91F600 80241090 82620012 */  lb        $v0, 0x12($s3)
/* 91F604 80241094 54400003 */  bnel      $v0, $zero, .L802410A4
/* 91F608 80241098 AE400070 */   sw       $zero, 0x70($s2)
/* 91F60C 8024109C 24020002 */  addiu     $v0, $zero, 2
/* 91F610 802410A0 AE420070 */  sw        $v0, 0x70($s2)
.L802410A4:
/* 91F614 802410A4 8E430070 */  lw        $v1, 0x70($s2)
/* 91F618 802410A8 24110001 */  addiu     $s1, $zero, 1
/* 91F61C 802410AC 10710013 */  beq       $v1, $s1, .L802410FC
/* 91F620 802410B0 28620002 */   slti     $v0, $v1, 2
/* 91F624 802410B4 10400005 */  beqz      $v0, .L802410CC
/* 91F628 802410B8 24020002 */   addiu    $v0, $zero, 2
/* 91F62C 802410BC 10600009 */  beqz      $v1, .L802410E4
/* 91F630 802410C0 0000102D */   daddu    $v0, $zero, $zero
/* 91F634 802410C4 08090465 */  j         .L80241194
/* 91F638 802410C8 00000000 */   nop      
.L802410CC:
/* 91F63C 802410CC 10620013 */  beq       $v1, $v0, .L8024111C
/* 91F640 802410D0 24020003 */   addiu    $v0, $zero, 3
/* 91F644 802410D4 1062001E */  beq       $v1, $v0, .L80241150
/* 91F648 802410D8 0000102D */   daddu    $v0, $zero, $zero
/* 91F64C 802410DC 08090465 */  j         .L80241194
/* 91F650 802410E0 00000000 */   nop      
.L802410E4:
/* 91F654 802410E4 0C03AC5A */  jal       func_800EB168
/* 91F658 802410E8 0000202D */   daddu    $a0, $zero, $zero
/* 91F65C 802410EC 2402001E */  addiu     $v0, $zero, 0x1e
/* 91F660 802410F0 AE420074 */  sw        $v0, 0x74($s2)
/* 91F664 802410F4 08090464 */  j         .L80241190
/* 91F668 802410F8 AE510070 */   sw       $s1, 0x70($s2)
.L802410FC:
/* 91F66C 802410FC 8E420074 */  lw        $v0, 0x74($s2)
/* 91F670 80241100 2403FFFF */  addiu     $v1, $zero, -1
/* 91F674 80241104 2442FFFF */  addiu     $v0, $v0, -1
/* 91F678 80241108 14430021 */  bne       $v0, $v1, .L80241190
/* 91F67C 8024110C AE420074 */   sw       $v0, 0x74($s2)
/* 91F680 80241110 24020002 */  addiu     $v0, $zero, 2
/* 91F684 80241114 08090464 */  j         .L80241190
/* 91F688 80241118 AE420070 */   sw       $v0, 0x70($s2)
.L8024111C:
/* 91F68C 8024111C 0200202D */  daddu     $a0, $s0, $zero
/* 91F690 80241120 00141600 */  sll       $v0, $s4, 0x18
/* 91F694 80241124 00021543 */  sra       $v0, $v0, 0x15
/* 91F698 80241128 02621021 */  addu      $v0, $s3, $v0
/* 91F69C 8024112C A2740012 */  sb        $s4, 0x12($s3)
/* 91F6A0 80241130 0C03BD17 */  jal       clear_partner_move_history
/* 91F6A4 80241134 A0510014 */   sb       $s1, 0x14($v0)
/* 91F6A8 80241138 82640012 */  lb        $a0, 0x12($s3)
/* 91F6AC 8024113C 0C03ACA9 */  jal       func_800EB2A4
/* 91F6B0 80241140 00000000 */   nop      
/* 91F6B4 80241144 24020003 */  addiu     $v0, $zero, 3
/* 91F6B8 80241148 08090464 */  j         .L80241190
/* 91F6BC 8024114C AE420070 */   sw       $v0, 0x70($s2)
.L80241150:
/* 91F6C0 80241150 0C00EAD2 */  jal       get_npc_safe
/* 91F6C4 80241154 2404FFFC */   addiu    $a0, $zero, -4
/* 91F6C8 80241158 8E05000C */  lw        $a1, 0xc($s0)
/* 91F6CC 8024115C 0C00ECD0 */  jal       set_npc_yaw
/* 91F6D0 80241160 0040202D */   daddu    $a0, $v0, $zero
/* 91F6D4 80241164 0200202D */  daddu     $a0, $s0, $zero
/* 91F6D8 80241168 8E020000 */  lw        $v0, ($s0)
/* 91F6DC 8024116C 2403FFFB */  addiu     $v1, $zero, -5
/* 91F6E0 80241170 00431024 */  and       $v0, $v0, $v1
/* 91F6E4 80241174 0C00EAFF */  jal       disable_npc_shadow
/* 91F6E8 80241178 AE020000 */   sw       $v0, ($s0)
/* 91F6EC 8024117C 3C01C47A */  lui       $at, 0xc47a
/* 91F6F0 80241180 44810000 */  mtc1      $at, $f0
/* 91F6F4 80241184 24020002 */  addiu     $v0, $zero, 2
/* 91F6F8 80241188 08090465 */  j         .L80241194
/* 91F6FC 8024118C E600003C */   swc1     $f0, 0x3c($s0)
.L80241190:
/* 91F700 80241190 0000102D */  daddu     $v0, $zero, $zero
.L80241194:
/* 91F704 80241194 8FBF0024 */  lw        $ra, 0x24($sp)
/* 91F708 80241198 8FB40020 */  lw        $s4, 0x20($sp)
/* 91F70C 8024119C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 91F710 802411A0 8FB20018 */  lw        $s2, 0x18($sp)
/* 91F714 802411A4 8FB10014 */  lw        $s1, 0x14($sp)
/* 91F718 802411A8 8FB00010 */  lw        $s0, 0x10($sp)
/* 91F71C 802411AC 03E00008 */  jr        $ra
/* 91F720 802411B0 27BD0028 */   addiu    $sp, $sp, 0x28
