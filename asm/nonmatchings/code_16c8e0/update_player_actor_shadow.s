.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_player_actor_shadow
/* 18648C 80257BAC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 186490 80257BB0 3C02800E */  lui       $v0, 0x800e
/* 186494 80257BB4 2442C070 */  addiu     $v0, $v0, -0x3f90
/* 186498 80257BB8 AFBF0038 */  sw        $ra, 0x38($sp)
/* 18649C 80257BBC AFB30034 */  sw        $s3, 0x34($sp)
/* 1864A0 80257BC0 AFB20030 */  sw        $s2, 0x30($sp)
/* 1864A4 80257BC4 AFB1002C */  sw        $s1, 0x2c($sp)
/* 1864A8 80257BC8 AFB00028 */  sw        $s0, 0x28($sp)
/* 1864AC 80257BCC 8C5000D8 */  lw        $s0, 0xd8($v0)
/* 1864B0 80257BD0 8E1201F4 */  lw        $s2, 0x1f4($s0)
/* 1864B4 80257BD4 0000202D */  daddu     $a0, $zero, $zero
/* 1864B8 80257BD8 8E450088 */  lw        $a1, 0x88($s2)
/* 1864BC 80257BDC 8E460090 */  lw        $a2, 0x90($s2)
/* 1864C0 80257BE0 0C0B76A3 */  jal       func_802DDA8C
/* 1864C4 80257BE4 0040982D */   daddu    $s3, $v0, $zero
/* 1864C8 80257BE8 AE42008C */  sw        $v0, 0x8c($s2)
/* 1864CC 80257BEC 8E020000 */  lw        $v0, ($s0)
/* 1864D0 80257BF0 3C031000 */  lui       $v1, 0x1000
/* 1864D4 80257BF4 00431024 */  and       $v0, $v0, $v1
/* 1864D8 80257BF8 10400003 */  beqz      $v0, .L80257C08
/* 1864DC 80257BFC 00000000 */   nop      
/* 1864E0 80257C00 0C09527D */  jal       func_802549F4
/* 1864E4 80257C04 0200202D */   daddu    $a0, $s0, $zero
.L80257C08:
/* 1864E8 80257C08 8E04042C */  lw        $a0, 0x42c($s0)
/* 1864EC 80257C0C 0C044181 */  jal       get_shadow_by_index
/* 1864F0 80257C10 00000000 */   nop      
/* 1864F4 80257C14 0040882D */  daddu     $s1, $v0, $zero
/* 1864F8 80257C18 8E220000 */  lw        $v0, ($s1)
/* 1864FC 80257C1C 2403FFFE */  addiu     $v1, $zero, -2
/* 186500 80257C20 00431024 */  and       $v0, $v0, $v1
/* 186504 80257C24 AE220000 */  sw        $v0, ($s1)
/* 186508 80257C28 8262009A */  lb        $v0, 0x9a($s3)
/* 18650C 80257C2C 14400002 */  bnez      $v0, .L80257C38
/* 186510 80257C30 24020028 */   addiu    $v0, $zero, 0x28
/* 186514 80257C34 24020080 */  addiu     $v0, $zero, 0x80
.L80257C38:
/* 186518 80257C38 A2220005 */  sb        $v0, 5($s1)
/* 18651C 80257C3C 0000202D */  daddu     $a0, $zero, $zero
/* 186520 80257C40 27A50018 */  addiu     $a1, $sp, 0x18
/* 186524 80257C44 27A6001C */  addiu     $a2, $sp, 0x1c
/* 186528 80257C48 3C0146FF */  lui       $at, 0x46ff
/* 18652C 80257C4C 3421FE00 */  ori       $at, $at, 0xfe00
/* 186530 80257C50 44810000 */  mtc1      $at, $f0
/* 186534 80257C54 27A70020 */  addiu     $a3, $sp, 0x20
/* 186538 80257C58 E7A00024 */  swc1      $f0, 0x24($sp)
/* 18653C 80257C5C 86020150 */  lh        $v0, 0x150($s0)
/* 186540 80257C60 C6060144 */  lwc1      $f6, 0x144($s0)
/* 186544 80257C64 C604014C */  lwc1      $f4, 0x14c($s0)
/* 186548 80257C68 44820000 */  mtc1      $v0, $f0
/* 18654C 80257C6C 00000000 */  nop       
/* 186550 80257C70 46800020 */  cvt.s.w   $f0, $f0
/* 186554 80257C74 46003180 */  add.s     $f6, $f6, $f0
/* 186558 80257C78 86020152 */  lh        $v0, 0x152($s0)
/* 18655C 80257C7C C6000148 */  lwc1      $f0, 0x148($s0)
/* 186560 80257C80 44821000 */  mtc1      $v0, $f2
/* 186564 80257C84 00000000 */  nop       
/* 186568 80257C88 468010A0 */  cvt.s.w   $f2, $f2
/* 18656C 80257C8C 86020154 */  lh        $v0, 0x154($s0)
/* 186570 80257C90 46020000 */  add.s     $f0, $f0, $f2
/* 186574 80257C94 44821000 */  mtc1      $v0, $f2
/* 186578 80257C98 00000000 */  nop       
/* 18657C 80257C9C 468010A0 */  cvt.s.w   $f2, $f2
/* 186580 80257CA0 27A20024 */  addiu     $v0, $sp, 0x24
/* 186584 80257CA4 46022100 */  add.s     $f4, $f4, $f2
/* 186588 80257CA8 3C014028 */  lui       $at, 0x4028
/* 18658C 80257CAC 44811800 */  mtc1      $at, $f3
/* 186590 80257CB0 44801000 */  mtc1      $zero, $f2
/* 186594 80257CB4 46000021 */  cvt.d.s   $f0, $f0
/* 186598 80257CB8 46220000 */  add.d     $f0, $f0, $f2
/* 18659C 80257CBC E7A60018 */  swc1      $f6, 0x18($sp)
/* 1865A0 80257CC0 E7A40020 */  swc1      $f4, 0x20($sp)
/* 1865A4 80257CC4 46200020 */  cvt.s.d   $f0, $f0
/* 1865A8 80257CC8 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 1865AC 80257CCC 0C0372DF */  jal       func_800DCB7C
/* 1865B0 80257CD0 AFA20010 */   sw       $v0, 0x10($sp)
/* 1865B4 80257CD4 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 1865B8 80257CD8 3C014348 */  lui       $at, 0x4348
/* 1865BC 80257CDC 44810000 */  mtc1      $at, $f0
/* 1865C0 80257CE0 00000000 */  nop       
/* 1865C4 80257CE4 4602003C */  c.lt.s    $f0, $f2
/* 1865C8 80257CE8 00000000 */  nop       
/* 1865CC 80257CEC 45000004 */  bc1f      .L80257D00
/* 1865D0 80257CF0 00000000 */   nop      
/* 1865D4 80257CF4 8E220000 */  lw        $v0, ($s1)
/* 1865D8 80257CF8 34420001 */  ori       $v0, $v0, 1
/* 1865DC 80257CFC AE220000 */  sw        $v0, ($s1)
.L80257D00:
/* 1865E0 80257D00 C7A00018 */  lwc1      $f0, 0x18($sp)
/* 1865E4 80257D04 C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 1865E8 80257D08 C7A40020 */  lwc1      $f4, 0x20($sp)
/* 1865EC 80257D0C 3C02800B */  lui       $v0, 0x800b
/* 1865F0 80257D10 244222D8 */  addiu     $v0, $v0, 0x22d8
/* 1865F4 80257D14 E6200010 */  swc1      $f0, 0x10($s1)
/* 1865F8 80257D18 E6220014 */  swc1      $f2, 0x14($s1)
/* 1865FC 80257D1C E6240018 */  swc1      $f4, 0x18($s1)
/* 186600 80257D20 C600018C */  lwc1      $f0, 0x18c($s0)
/* 186604 80257D24 C44C006C */  lwc1      $f12, 0x6c($v0)
/* 186608 80257D28 0C00A6C9 */  jal       clamp_angle
/* 18660C 80257D2C 460C0301 */   sub.s    $f12, $f0, $f12
/* 186610 80257D30 8FA50024 */  lw        $a1, 0x24($sp)
/* 186614 80257D34 0220202D */  daddu     $a0, $s1, $zero
/* 186618 80257D38 0C044A17 */  jal       set_standard_shadow_scale
/* 18661C 80257D3C E620002C */   swc1     $f0, 0x2c($s1)
/* 186620 80257D40 C6020430 */  lwc1      $f2, 0x430($s0)
/* 186624 80257D44 C6000188 */  lwc1      $f0, 0x188($s0)
/* 186628 80257D48 46001082 */  mul.s     $f2, $f2, $f0
/* 18662C 80257D4C 00000000 */  nop       
/* 186630 80257D50 C620001C */  lwc1      $f0, 0x1c($s1)
/* 186634 80257D54 46020002 */  mul.s     $f0, $f0, $f2
/* 186638 80257D58 00000000 */  nop       
/* 18663C 80257D5C E620001C */  swc1      $f0, 0x1c($s1)
/* 186640 80257D60 86420098 */  lh        $v0, 0x98($s2)
/* 186644 80257D64 284200FF */  slti      $v0, $v0, 0xff
/* 186648 80257D68 14400006 */  bnez      $v0, .L80257D84
/* 18664C 80257D6C 24020022 */   addiu    $v0, $zero, 0x22
/* 186650 80257D70 8E420000 */  lw        $v0, ($s2)
/* 186654 80257D74 30420100 */  andi      $v0, $v0, 0x100
/* 186658 80257D78 14400002 */  bnez      $v0, .L80257D84
/* 18665C 80257D7C 24020022 */   addiu    $v0, $zero, 0x22
/* 186660 80257D80 2402000D */  addiu     $v0, $zero, 0xd
.L80257D84:
/* 186664 80257D84 A6020434 */  sh        $v0, 0x434($s0)
/* 186668 80257D88 8FBF0038 */  lw        $ra, 0x38($sp)
/* 18666C 80257D8C 8FB30034 */  lw        $s3, 0x34($sp)
/* 186670 80257D90 8FB20030 */  lw        $s2, 0x30($sp)
/* 186674 80257D94 8FB1002C */  lw        $s1, 0x2c($sp)
/* 186678 80257D98 8FB00028 */  lw        $s0, 0x28($sp)
/* 18667C 80257D9C 03E00008 */  jr        $ra
/* 186680 80257DA0 27BD0040 */   addiu    $sp, $sp, 0x40
