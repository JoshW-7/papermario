.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel remove_consumable
/* 8392C 800EA47C 3C028011 */  lui       $v0, 0x8011
/* 83930 800EA480 8C42CD20 */  lw        $v0, -0x32e0($v0)
/* 83934 800EA484 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 83938 800EA488 AFBF0010 */  sw        $ra, 0x10($sp)
/* 8393C 800EA48C 00021040 */  sll       $v0, $v0, 1
/* 83940 800EA490 3C018011 */  lui       $at, 0x8011
/* 83944 800EA494 00220821 */  addu      $at, $at, $v0
/* 83948 800EA498 A420F444 */  sh        $zero, -0xbbc($at)
/* 8394C 800EA49C 0C039DB3 */  jal       sort_items
/* 83950 800EA4A0 00000000 */   nop      
/* 83954 800EA4A4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 83958 800EA4A8 03E00008 */  jr        $ra
/* 8395C 800EA4AC 27BD0018 */   addiu    $sp, $sp, 0x18
