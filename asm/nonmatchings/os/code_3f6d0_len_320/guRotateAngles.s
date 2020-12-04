.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel guRotateAngles
/* 3F858 80064458 3C018009 */  lui       $at, %hi(D_80093DD0)
/* 3F85C 8006445C C4203DD0 */  lwc1      $f0, %lo(D_80093DD0)($at)
/* 3F860 80064460 44854000 */  mtc1      $a1, $f8
/* 3F864 80064464 27BDFF68 */  addiu     $sp, $sp, -0x98
/* 3F868 80064468 F7B40068 */  sdc1      $f20, 0x68($sp)
/* 3F86C 8006446C 46004502 */  mul.s     $f20, $f8, $f0
/* 3F870 80064470 44864000 */  mtc1      $a2, $f8
/* 3F874 80064474 F7B60070 */  sdc1      $f22, 0x70($sp)
/* 3F878 80064478 46004582 */  mul.s     $f22, $f8, $f0
/* 3F87C 8006447C AFB1005C */  sw        $s1, 0x5c($sp)
/* 3F880 80064480 44874000 */  mtc1      $a3, $f8
/* 3F884 80064484 00808821 */  addu      $s1, $a0, $zero
/* 3F888 80064488 AFBF0060 */  sw        $ra, 0x60($sp)
/* 3F88C 8006448C 46004202 */  mul.s     $f8, $f8, $f0
/* 3F890 80064490 AFB00058 */  sw        $s0, 0x58($sp)
/* 3F894 80064494 F7BE0090 */  sdc1      $f30, 0x90($sp)
/* 3F898 80064498 F7BC0088 */  sdc1      $f28, 0x88($sp)
/* 3F89C 8006449C F7BA0080 */  sdc1      $f26, 0x80($sp)
/* 3F8A0 800644A0 F7B80078 */  sdc1      $f24, 0x78($sp)
/* 3F8A4 800644A4 44104000 */  mfc1      $s0, $f8
/* 3F8A8 800644A8 00000000 */  nop       
/* 3F8AC 800644AC 0C00A85B */  jal       sin_rad
/* 3F8B0 800644B0 4600A306 */   mov.s    $f12, $f20
/* 3F8B4 800644B4 4600A306 */  mov.s     $f12, $f20
/* 3F8B8 800644B8 0C00A874 */  jal       cos_rad
/* 3F8BC 800644BC 46000786 */   mov.s    $f30, $f0
/* 3F8C0 800644C0 4600B306 */  mov.s     $f12, $f22
/* 3F8C4 800644C4 0C00A85B */  jal       sin_rad
/* 3F8C8 800644C8 46000706 */   mov.s    $f28, $f0
/* 3F8CC 800644CC 4600B306 */  mov.s     $f12, $f22
/* 3F8D0 800644D0 0C00A874 */  jal       cos_rad
/* 3F8D4 800644D4 46000686 */   mov.s    $f26, $f0
/* 3F8D8 800644D8 44906000 */  mtc1      $s0, $f12
/* 3F8DC 800644DC 00000000 */  nop       
/* 3F8E0 800644E0 0C00A85B */  jal       sin_rad
/* 3F8E4 800644E4 46000606 */   mov.s    $f24, $f0
/* 3F8E8 800644E8 44906000 */  mtc1      $s0, $f12
/* 3F8EC 800644EC 00000000 */  nop       
/* 3F8F0 800644F0 0C00A874 */  jal       cos_rad
/* 3F8F4 800644F4 46000506 */   mov.s    $f20, $f0
/* 3F8F8 800644F8 27B00010 */  addiu     $s0, $sp, 0x10
/* 3F8FC 800644FC 02002021 */  addu      $a0, $s0, $zero
/* 3F900 80064500 0C019D28 */  jal       guMtxIdentF
/* 3F904 80064504 46000586 */   mov.s    $f22, $f0
/* 3F908 80064508 00000000 */  nop       
/* 3F90C 8006450C 4616C402 */  mul.s     $f16, $f24, $f22
/* 3F910 80064510 00000000 */  nop       
/* 3F914 80064514 461AF082 */  mul.s     $f2, $f30, $f26
/* 3F918 80064518 00000000 */  nop       
/* 3F91C 8006451C 4614C482 */  mul.s     $f18, $f24, $f20
/* 3F920 80064520 00000000 */  nop       
/* 3F924 80064524 4614E202 */  mul.s     $f8, $f28, $f20
/* 3F928 80064528 00000000 */  nop       
/* 3F92C 8006452C 4616E282 */  mul.s     $f10, $f28, $f22
/* 3F930 80064530 00000000 */  nop       
/* 3F934 80064534 461AE002 */  mul.s     $f0, $f28, $f26
/* 3F938 80064538 00000000 */  nop       
/* 3F93C 8006453C 4618F382 */  mul.s     $f14, $f30, $f24
/* 3F940 80064540 00000000 */  nop       
/* 3F944 80064544 4614F302 */  mul.s     $f12, $f30, $f20
/* 3F948 80064548 00000000 */  nop       
/* 3F94C 8006454C 4618E702 */  mul.s     $f28, $f28, $f24
/* 3F950 80064550 00000000 */  nop       
/* 3F954 80064554 4616F782 */  mul.s     $f30, $f30, $f22
/* 3F958 80064558 00000000 */  nop       
/* 3F95C 8006455C 46161182 */  mul.s     $f6, $f2, $f22
/* 3F960 80064560 00000000 */  nop       
/* 3F964 80064564 46141082 */  mul.s     $f2, $f2, $f20
/* 3F968 80064568 00000000 */  nop       
/* 3F96C 8006456C 46160102 */  mul.s     $f4, $f0, $f22
/* 3F970 80064570 46083181 */  sub.s     $f6, $f6, $f8
/* 3F974 80064574 02002021 */  addu      $a0, $s0, $zero
/* 3F978 80064578 4600D687 */  neg.s     $f26, $f26
/* 3F97C 8006457C 02202821 */  addu      $a1, $s1, $zero
/* 3F980 80064580 460A1080 */  add.s     $f2, $f2, $f10
/* 3F984 80064584 46140002 */  mul.s     $f0, $f0, $f20
/* 3F988 80064588 E7BA0018 */  swc1      $f26, 0x18($sp)
/* 3F98C 8006458C E7B00010 */  swc1      $f16, 0x10($sp)
/* 3F990 80064590 460C2100 */  add.s     $f4, $f4, $f12
/* 3F994 80064594 E7B20014 */  swc1      $f18, 0x14($sp)
/* 3F998 80064598 E7AE0028 */  swc1      $f14, 0x28($sp)
/* 3F99C 8006459C E7BC0038 */  swc1      $f28, 0x38($sp)
/* 3F9A0 800645A0 461E0001 */  sub.s     $f0, $f0, $f30
/* 3F9A4 800645A4 E7A60020 */  swc1      $f6, 0x20($sp)
/* 3F9A8 800645A8 E7A20024 */  swc1      $f2, 0x24($sp)
/* 3F9AC 800645AC E7A40030 */  swc1      $f4, 0x30($sp)
/* 3F9B0 800645B0 0C019D40 */  jal       guMtxF2L
/* 3F9B4 800645B4 E7A00034 */   swc1     $f0, 0x34($sp)
/* 3F9B8 800645B8 8FBF0060 */  lw        $ra, 0x60($sp)
/* 3F9BC 800645BC 8FB1005C */  lw        $s1, 0x5c($sp)
/* 3F9C0 800645C0 8FB00058 */  lw        $s0, 0x58($sp)
/* 3F9C4 800645C4 D7BE0090 */  ldc1      $f30, 0x90($sp)
/* 3F9C8 800645C8 D7BC0088 */  ldc1      $f28, 0x88($sp)
/* 3F9CC 800645CC D7BA0080 */  ldc1      $f26, 0x80($sp)
/* 3F9D0 800645D0 D7B80078 */  ldc1      $f24, 0x78($sp)
/* 3F9D4 800645D4 D7B60070 */  ldc1      $f22, 0x70($sp)
/* 3F9D8 800645D8 D7B40068 */  ldc1      $f20, 0x68($sp)
/* 3F9DC 800645DC 03E00008 */  jr        $ra
/* 3F9E0 800645E0 27BD0098 */   addiu    $sp, $sp, 0x98
/* 3F9E4 800645E4 00000000 */  nop       
/* 3F9E8 800645E8 00000000 */  nop       
/* 3F9EC 800645EC 00000000 */  nop       
