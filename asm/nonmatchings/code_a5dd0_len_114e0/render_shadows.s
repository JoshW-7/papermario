.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel render_shadows
/* A67CC 801100CC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A67D0 801100D0 AFB10014 */  sw        $s1, 0x14($sp)
/* A67D4 801100D4 0000882D */  daddu     $s1, $zero, $zero
/* A67D8 801100D8 AFB3001C */  sw        $s3, 0x1c($sp)
/* A67DC 801100DC 3C131000 */  lui       $s3, 0x1000
/* A67E0 801100E0 AFB20018 */  sw        $s2, 0x18($sp)
/* A67E4 801100E4 3C122000 */  lui       $s2, 0x2000
/* A67E8 801100E8 AFBF0020 */  sw        $ra, 0x20($sp)
/* A67EC 801100EC AFB00010 */  sw        $s0, 0x10($sp)
.L801100F0:
/* A67F0 801100F0 0C044181 */  jal       get_shadow_by_index
/* A67F4 801100F4 0220202D */   daddu    $a0, $s1, $zero
/* A67F8 801100F8 0040802D */  daddu     $s0, $v0, $zero
/* A67FC 801100FC 52000041 */  beql      $s0, $zero, .L80110204
/* A6800 80110100 26310001 */   addiu    $s1, $s1, 1
/* A6804 80110104 8E030000 */  lw        $v1, ($s0)
/* A6808 80110108 30620001 */  andi      $v0, $v1, 1
/* A680C 8011010C 1040000E */  beqz      $v0, .L80110148
/* A6810 80110110 00731024 */   and      $v0, $v1, $s3
/* A6814 80110114 5040003B */  beql      $v0, $zero, .L80110204
/* A6818 80110118 26310001 */   addiu    $s1, $s1, 1
/* A681C 8011011C 92020005 */  lbu       $v0, 5($s0)
/* A6820 80110120 2442FFEC */  addiu     $v0, $v0, -0x14
/* A6824 80110124 A2020005 */  sb        $v0, 5($s0)
/* A6828 80110128 304200FF */  andi      $v0, $v0, 0xff
/* A682C 8011012C 2C420015 */  sltiu     $v0, $v0, 0x15
/* A6830 80110130 50400034 */  beql      $v0, $zero, .L80110204
/* A6834 80110134 26310001 */   addiu    $s1, $s1, 1
/* A6838 80110138 0060102D */  daddu     $v0, $v1, $zero
/* A683C 8011013C 00521025 */  or        $v0, $v0, $s2
/* A6840 80110140 08044080 */  j         .L80110200
/* A6844 80110144 AE020000 */   sw       $v0, ($s0)
.L80110148:
/* A6848 80110148 30620008 */  andi      $v0, $v1, 8
/* A684C 8011014C 1040000F */  beqz      $v0, .L8011018C
/* A6850 80110150 00731024 */   and      $v0, $v1, $s3
/* A6854 80110154 8E07000C */  lw        $a3, 0xc($s0)
/* A6858 80110158 14E00006 */  bnez      $a3, .L80110174
/* A685C 8011015C 00000000 */   nop      
/* A6860 80110160 86040008 */  lh        $a0, 8($s0)
/* A6864 80110164 0C047CC1 */  jal       func_8011F304
/* A6868 80110168 26050038 */   addiu    $a1, $s0, 0x38
/* A686C 8011016C 08044081 */  j         .L80110204
/* A6870 80110170 26310001 */   addiu    $s1, $s1, 1
.L80110174:
/* A6874 80110174 86040008 */  lh        $a0, 8($s0)
/* A6878 80110178 8606000A */  lh        $a2, 0xa($s0)
/* A687C 8011017C 0C047CFA */  jal       func_8011F3E8
/* A6880 80110180 26050038 */   addiu    $a1, $s0, 0x38
/* A6884 80110184 08044081 */  j         .L80110204
/* A6888 80110188 26310001 */   addiu    $s1, $s1, 1
.L8011018C:
/* A688C 8011018C 1040000B */  beqz      $v0, .L801101BC
/* A6890 80110190 00000000 */   nop      
/* A6894 80110194 92020005 */  lbu       $v0, 5($s0)
/* A6898 80110198 2442FFEC */  addiu     $v0, $v0, -0x14
/* A689C 8011019C A2020005 */  sb        $v0, 5($s0)
/* A68A0 801101A0 304200FF */  andi      $v0, $v0, 0xff
/* A68A4 801101A4 2C420015 */  sltiu     $v0, $v0, 0x15
/* A68A8 801101A8 10400004 */  beqz      $v0, .L801101BC
/* A68AC 801101AC 00000000 */   nop      
/* A68B0 801101B0 8E020000 */  lw        $v0, ($s0)
/* A68B4 801101B4 00521025 */  or        $v0, $v0, $s2
/* A68B8 801101B8 AE020000 */  sw        $v0, ($s0)
.L801101BC:
/* A68BC 801101BC 86040008 */  lh        $a0, 8($s0)
/* A68C0 801101C0 92050005 */  lbu       $a1, 5($s0)
/* A68C4 801101C4 3C068011 */  lui       $a2, 0x8011
/* A68C8 801101C8 0C048BD9 */  jal       func_80122F64
/* A68CC 801101CC 24C6FE68 */   addiu    $a2, $a2, -0x198
/* A68D0 801101D0 8E07000C */  lw        $a3, 0xc($s0)
/* A68D4 801101D4 14E00006 */  bnez      $a3, .L801101F0
/* A68D8 801101D8 00000000 */   nop      
/* A68DC 801101DC 86040008 */  lh        $a0, 8($s0)
/* A68E0 801101E0 0C04873A */  jal       func_80121CE8
/* A68E4 801101E4 26050038 */   addiu    $a1, $s0, 0x38
/* A68E8 801101E8 08044081 */  j         .L80110204
/* A68EC 801101EC 26310001 */   addiu    $s1, $s1, 1
.L801101F0:
/* A68F0 801101F0 86040008 */  lh        $a0, 8($s0)
/* A68F4 801101F4 8606000A */  lh        $a2, 0xa($s0)
/* A68F8 801101F8 0C0487AE */  jal       func_80121EB8
/* A68FC 801101FC 26050038 */   addiu    $a1, $s0, 0x38
.L80110200:
/* A6900 80110200 26310001 */  addiu     $s1, $s1, 1
.L80110204:
/* A6904 80110204 2A22003C */  slti      $v0, $s1, 0x3c
/* A6908 80110208 1440FFB9 */  bnez      $v0, .L801100F0
/* A690C 8011020C 00000000 */   nop      
/* A6910 80110210 8FBF0020 */  lw        $ra, 0x20($sp)
/* A6914 80110214 8FB3001C */  lw        $s3, 0x1c($sp)
/* A6918 80110218 8FB20018 */  lw        $s2, 0x18($sp)
/* A691C 8011021C 8FB10014 */  lw        $s1, 0x14($sp)
/* A6920 80110220 8FB00010 */  lw        $s0, 0x10($sp)
/* A6924 80110224 03E00008 */  jr        $ra
/* A6928 80110228 27BD0028 */   addiu    $sp, $sp, 0x28
