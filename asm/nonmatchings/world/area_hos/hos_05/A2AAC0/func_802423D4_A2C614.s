.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802423D4_A2C614
/* A2C614 802423D4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A2C618 802423D8 24040004 */  addiu     $a0, $zero, 4
/* A2C61C 802423DC AFB20020 */  sw        $s2, 0x20($sp)
/* A2C620 802423E0 3C128025 */  lui       $s2, %hi(D_80249A80)
/* A2C624 802423E4 26529A80 */  addiu     $s2, $s2, %lo(D_80249A80)
/* A2C628 802423E8 AFBF0034 */  sw        $ra, 0x34($sp)
/* A2C62C 802423EC AFB60030 */  sw        $s6, 0x30($sp)
/* A2C630 802423F0 AFB5002C */  sw        $s5, 0x2c($sp)
/* A2C634 802423F4 AFB40028 */  sw        $s4, 0x28($sp)
/* A2C638 802423F8 AFB30024 */  sw        $s3, 0x24($sp)
/* A2C63C 802423FC AFB1001C */  sw        $s1, 0x1c($sp)
/* A2C640 80242400 AFB00018 */  sw        $s0, 0x18($sp)
/* A2C644 80242404 F7B60040 */  sdc1      $f22, 0x40($sp)
/* A2C648 80242408 F7B40038 */  sdc1      $f20, 0x38($sp)
/* A2C64C 8024240C C6400000 */  lwc1      $f0, ($s2)
/* A2C650 80242410 46800020 */  cvt.s.w   $f0, $f0
/* A2C654 80242414 3C168025 */  lui       $s6, %hi(D_8024F2E0)
/* A2C658 80242418 26D6F2E0 */  addiu     $s6, $s6, %lo(D_8024F2E0)
/* A2C65C 8024241C 3C01420C */  lui       $at, 0x420c
/* A2C660 80242420 44811000 */  mtc1      $at, $f2
/* A2C664 80242424 44070000 */  mfc1      $a3, $f0
/* A2C668 80242428 3C0142A0 */  lui       $at, 0x42a0
/* A2C66C 8024242C 4481A000 */  mtc1      $at, $f20
/* A2C670 80242430 3C028007 */  lui       $v0, %hi(gCurrentCameraID)
/* A2C674 80242434 8C427410 */  lw        $v0, %lo(gCurrentCameraID)($v0)
/* A2C678 80242438 3C03800B */  lui       $v1, %hi(gCameras)
/* A2C67C 8024243C 24631D80 */  addiu     $v1, $v1, %lo(gCameras)
/* A2C680 80242440 AFB60014 */  sw        $s6, 0x14($sp)
/* A2C684 80242444 00028080 */  sll       $s0, $v0, 2
/* A2C688 80242448 02028021 */  addu      $s0, $s0, $v0
/* A2C68C 8024244C 00108080 */  sll       $s0, $s0, 2
/* A2C690 80242450 02028023 */  subu      $s0, $s0, $v0
/* A2C694 80242454 001010C0 */  sll       $v0, $s0, 3
/* A2C698 80242458 02028021 */  addu      $s0, $s0, $v0
/* A2C69C 8024245C 001080C0 */  sll       $s0, $s0, 3
/* A2C6A0 80242460 44051000 */  mfc1      $a1, $f2
/* A2C6A4 80242464 02038021 */  addu      $s0, $s0, $v1
/* A2C6A8 80242468 E7B40010 */  swc1      $f20, 0x10($sp)
/* A2C6AC 8024246C 0C090439 */  jal       func_802410E4_A2B324
/* A2C6B0 80242470 00A0302D */   daddu    $a2, $a1, $zero
/* A2C6B4 80242474 C6400000 */  lwc1      $f0, ($s2)
/* A2C6B8 80242478 46800020 */  cvt.s.w   $f0, $f0
/* A2C6BC 8024247C 24040004 */  addiu     $a0, $zero, 4
/* A2C6C0 80242480 3C054302 */  lui       $a1, 0x4302
/* A2C6C4 80242484 3C064387 */  lui       $a2, 0x4387
/* A2C6C8 80242488 44070000 */  mfc1      $a3, $f0
/* A2C6CC 8024248C 3C158025 */  lui       $s5, %hi(D_8024F2E4)
/* A2C6D0 80242490 26B5F2E4 */  addiu     $s5, $s5, %lo(D_8024F2E4)
/* A2C6D4 80242494 E7B40010 */  swc1      $f20, 0x10($sp)
/* A2C6D8 80242498 0C090439 */  jal       func_802410E4_A2B324
/* A2C6DC 8024249C AFB50014 */   sw       $s5, 0x14($sp)
/* A2C6E0 802424A0 C6400000 */  lwc1      $f0, ($s2)
/* A2C6E4 802424A4 46800020 */  cvt.s.w   $f0, $f0
/* A2C6E8 802424A8 24040004 */  addiu     $a0, $zero, 4
/* A2C6EC 802424AC 4480B000 */  mtc1      $zero, $f22
/* A2C6F0 802424B0 3C0541F0 */  lui       $a1, 0x41f0
/* A2C6F4 802424B4 44070000 */  mfc1      $a3, $f0
/* A2C6F8 802424B8 4406B000 */  mfc1      $a2, $f22
/* A2C6FC 802424BC 3C148025 */  lui       $s4, %hi(D_8024F2E8)
/* A2C700 802424C0 2694F2E8 */  addiu     $s4, $s4, %lo(D_8024F2E8)
/* A2C704 802424C4 E7B40010 */  swc1      $f20, 0x10($sp)
/* A2C708 802424C8 0C090439 */  jal       func_802410E4_A2B324
/* A2C70C 802424CC AFB40014 */   sw       $s4, 0x14($sp)
/* A2C710 802424D0 C6400000 */  lwc1      $f0, ($s2)
/* A2C714 802424D4 46800020 */  cvt.s.w   $f0, $f0
/* A2C718 802424D8 24040004 */  addiu     $a0, $zero, 4
/* A2C71C 802424DC 3C054368 */  lui       $a1, 0x4368
/* A2C720 802424E0 3C064331 */  lui       $a2, 0x4331
/* A2C724 802424E4 44070000 */  mfc1      $a3, $f0
/* A2C728 802424E8 3C138025 */  lui       $s3, %hi(D_8024F2EC)
/* A2C72C 802424EC 2673F2EC */  addiu     $s3, $s3, %lo(D_8024F2EC)
/* A2C730 802424F0 E7B40010 */  swc1      $f20, 0x10($sp)
/* A2C734 802424F4 0C090439 */  jal       func_802410E4_A2B324
/* A2C738 802424F8 AFB30014 */   sw       $s3, 0x14($sp)
/* A2C73C 802424FC C6400000 */  lwc1      $f0, ($s2)
/* A2C740 80242500 46800020 */  cvt.s.w   $f0, $f0
/* A2C744 80242504 24040004 */  addiu     $a0, $zero, 4
/* A2C748 80242508 4405B000 */  mfc1      $a1, $f22
/* A2C74C 8024250C 44070000 */  mfc1      $a3, $f0
/* A2C750 80242510 3C118025 */  lui       $s1, %hi(D_8024F2F0)
/* A2C754 80242514 2631F2F0 */  addiu     $s1, $s1, %lo(D_8024F2F0)
/* A2C758 80242518 E7B40010 */  swc1      $f20, 0x10($sp)
/* A2C75C 8024251C AFB10014 */  sw        $s1, 0x14($sp)
/* A2C760 80242520 0C090439 */  jal       func_802410E4_A2B324
/* A2C764 80242524 00A0302D */   daddu    $a2, $a1, $zero
/* A2C768 80242528 8EC50000 */  lw        $a1, ($s6)
/* A2C76C 8024252C 0C090355 */  jal       func_80240D54_A2AF94
/* A2C770 80242530 0000202D */   daddu    $a0, $zero, $zero
/* A2C774 80242534 C6A00000 */  lwc1      $f0, ($s5)
/* A2C778 80242538 C6820000 */  lwc1      $f2, ($s4)
/* A2C77C 8024253C C6640000 */  lwc1      $f4, ($s3)
/* A2C780 80242540 C6260000 */  lwc1      $f6, ($s1)
/* A2C784 80242544 8E420000 */  lw        $v0, ($s2)
/* A2C788 80242548 24030001 */  addiu     $v1, $zero, 1
/* A2C78C 8024254C A6030506 */  sh        $v1, 0x506($s0)
/* A2C790 80242550 24420001 */  addiu     $v0, $v0, 1
/* A2C794 80242554 E60004DC */  swc1      $f0, 0x4dc($s0)
/* A2C798 80242558 E60204B0 */  swc1      $f2, 0x4b0($s0)
/* A2C79C 8024255C E60404B4 */  swc1      $f4, 0x4b4($s0)
/* A2C7A0 80242560 E60604B8 */  swc1      $f6, 0x4b8($s0)
/* A2C7A4 80242564 AE420000 */  sw        $v0, ($s2)
/* A2C7A8 80242568 2842005B */  slti      $v0, $v0, 0x5b
/* A2C7AC 8024256C 8FBF0034 */  lw        $ra, 0x34($sp)
/* A2C7B0 80242570 8FB60030 */  lw        $s6, 0x30($sp)
/* A2C7B4 80242574 8FB5002C */  lw        $s5, 0x2c($sp)
/* A2C7B8 80242578 8FB40028 */  lw        $s4, 0x28($sp)
/* A2C7BC 8024257C 8FB30024 */  lw        $s3, 0x24($sp)
/* A2C7C0 80242580 8FB20020 */  lw        $s2, 0x20($sp)
/* A2C7C4 80242584 8FB1001C */  lw        $s1, 0x1c($sp)
/* A2C7C8 80242588 8FB00018 */  lw        $s0, 0x18($sp)
/* A2C7CC 8024258C D7B60040 */  ldc1      $f22, 0x40($sp)
/* A2C7D0 80242590 D7B40038 */  ldc1      $f20, 0x38($sp)
/* A2C7D4 80242594 38420001 */  xori      $v0, $v0, 1
/* A2C7D8 80242598 03E00008 */  jr        $ra
/* A2C7DC 8024259C 27BD0048 */   addiu    $sp, $sp, 0x48
