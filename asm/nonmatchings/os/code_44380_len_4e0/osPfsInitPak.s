.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osPfsInitPak
/* 44590 80069190 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 44594 80069194 AFB20060 */  sw        $s2, 0x60($sp)
/* 44598 80069198 00809021 */  addu      $s2, $a0, $zero
/* 4459C 8006919C AFB1005C */  sw        $s1, 0x5c($sp)
/* 445A0 800691A0 00A08821 */  addu      $s1, $a1, $zero
/* 445A4 800691A4 AFB30064 */  sw        $s3, 0x64($sp)
/* 445A8 800691A8 00C09821 */  addu      $s3, $a2, $zero
/* 445AC 800691AC AFBF0068 */  sw        $ra, 0x68($sp)
/* 445B0 800691B0 0C019771 */  jal       osSiGetAccess
/* 445B4 800691B4 AFB00058 */   sw       $s0, 0x58($sp)
/* 445B8 800691B8 02402021 */  addu      $a0, $s2, $zero
/* 445BC 800691BC 0C01A530 */  jal       osPfsGetStatus
/* 445C0 800691C0 02602821 */   addu     $a1, $s3, $zero
/* 445C4 800691C4 0C01978C */  jal       osSiRelAccess
/* 445C8 800691C8 00408021 */   addu     $s0, $v0, $zero
/* 445CC 800691CC 16000067 */  bnez      $s0, .L8006936C
/* 445D0 800691D0 02001021 */   addu     $v0, $s0, $zero
/* 445D4 800691D4 02202021 */  addu      $a0, $s1, $zero
/* 445D8 800691D8 AE320004 */  sw        $s2, 4($s1)
/* 445DC 800691DC AE330008 */  sw        $s3, 8($s1)
/* 445E0 800691E0 0C01A4E2 */  jal       osPfsCheckRamArea
/* 445E4 800691E4 AE200000 */   sw       $zero, ($s1)
/* 445E8 800691E8 00408021 */  addu      $s0, $v0, $zero
/* 445EC 800691EC 1600005F */  bnez      $s0, .L8006936C
/* 445F0 800691F0 02202021 */   addu     $a0, $s1, $zero
/* 445F4 800691F4 0C01A5B4 */  jal       osPfsSelectBank
/* 445F8 800691F8 00002821 */   addu     $a1, $zero, $zero
/* 445FC 800691FC 00408021 */  addu      $s0, $v0, $zero
/* 44600 80069200 1600005A */  bnez      $s0, .L8006936C
/* 44604 80069204 24060001 */   addiu    $a2, $zero, 1
/* 44608 80069208 8E240004 */  lw        $a0, 4($s1)
/* 4460C 8006920C 8E250008 */  lw        $a1, 8($s1)
/* 44610 80069210 0C01A874 */  jal       osContRamRead
/* 44614 80069214 27A70010 */   addiu    $a3, $sp, 0x10
/* 44618 80069218 00408021 */  addu      $s0, $v0, $zero
/* 4461C 8006921C 16000053 */  bnez      $s0, .L8006936C
/* 44620 80069220 27A40010 */   addiu    $a0, $sp, 0x10
/* 44624 80069224 27A50050 */  addiu     $a1, $sp, 0x50
/* 44628 80069228 0C01A5DD */  jal       osIdCheckSum
/* 4462C 8006922C 27A60052 */   addiu    $a2, $sp, 0x52
/* 44630 80069230 97A3002C */  lhu       $v1, 0x2c($sp)
/* 44634 80069234 97A20050 */  lhu       $v0, 0x50($sp)
/* 44638 80069238 14620005 */  bne       $v1, $v0, .L80069250
/* 4463C 8006923C 27B20010 */   addiu    $s2, $sp, 0x10
/* 44640 80069240 97A3002E */  lhu       $v1, 0x2e($sp)
/* 44644 80069244 97A20052 */  lhu       $v0, 0x52($sp)
/* 44648 80069248 1062000B */  beq       $v1, $v0, .L80069278
/* 4464C 8006924C 00000000 */   nop      
.L80069250:
/* 44650 80069250 02202021 */  addu      $a0, $s1, $zero
/* 44654 80069254 0C01A6A9 */  jal       osCheckPackId
/* 44658 80069258 02402821 */   addu     $a1, $s2, $zero
/* 4465C 8006925C 00408021 */  addu      $s0, $v0, $zero
/* 44660 80069260 12000005 */  beqz      $s0, .L80069278
/* 44664 80069264 00000000 */   nop      
/* 44668 80069268 8E230000 */  lw        $v1, ($s1)
/* 4466C 8006926C 34630004 */  ori       $v1, $v1, 4
/* 44670 80069270 0801A4DB */  j         .L8006936C
/* 44674 80069274 AE230000 */   sw       $v1, ($s1)
.L80069278:
/* 44678 80069278 96420018 */  lhu       $v0, 0x18($s2)
/* 4467C 8006927C 30420001 */  andi      $v0, $v0, 1
/* 44680 80069280 14400015 */  bnez      $v0, .L800692D8
/* 44684 80069284 02402021 */   addu     $a0, $s2, $zero
/* 44688 80069288 02202021 */  addu      $a0, $s1, $zero
/* 4468C 8006928C 02402821 */  addu      $a1, $s2, $zero
/* 44690 80069290 27B20030 */  addiu     $s2, $sp, 0x30
/* 44694 80069294 0C01A5EE */  jal       osRepairPackId
/* 44698 80069298 02403021 */   addu     $a2, $s2, $zero
/* 4469C 8006929C 00408021 */  addu      $s0, $v0, $zero
/* 446A0 800692A0 12000007 */  beqz      $s0, .L800692C0
/* 446A4 800692A4 2402000A */   addiu    $v0, $zero, 0xa
/* 446A8 800692A8 16020030 */  bne       $s0, $v0, .L8006936C
/* 446AC 800692AC 02001021 */   addu     $v0, $s0, $zero
/* 446B0 800692B0 8E220000 */  lw        $v0, ($s1)
/* 446B4 800692B4 34420004 */  ori       $v0, $v0, 4
/* 446B8 800692B8 0801A4DA */  j         .L80069368
/* 446BC 800692BC AE220000 */   sw       $v0, ($s1)
.L800692C0:
/* 446C0 800692C0 97A20048 */  lhu       $v0, 0x48($sp)
/* 446C4 800692C4 30420001 */  andi      $v0, $v0, 1
/* 446C8 800692C8 14400003 */  bnez      $v0, .L800692D8
/* 446CC 800692CC 02402021 */   addu     $a0, $s2, $zero
/* 446D0 800692D0 0801A4DB */  j         .L8006936C
/* 446D4 800692D4 2402000B */   addiu    $v0, $zero, 0xb
.L800692D8:
/* 446D8 800692D8 2625000C */  addiu     $a1, $s1, 0xc
/* 446DC 800692DC 0C019194 */  jal       bcopy
/* 446E0 800692E0 24060020 */   addiu    $a2, $zero, 0x20
/* 446E4 800692E4 8E240004 */  lw        $a0, 4($s1)
/* 446E8 800692E8 8E250008 */  lw        $a1, 8($s1)
/* 446EC 800692EC 9242001B */  lbu       $v0, 0x1b($s2)
/* 446F0 800692F0 24060007 */  addiu     $a2, $zero, 7
/* 446F4 800692F4 AE22004C */  sw        $v0, 0x4c($s1)
/* 446F8 800692F8 9243001A */  lbu       $v1, 0x1a($s2)
/* 446FC 800692FC 2627002C */  addiu     $a3, $s1, 0x2c
/* 44700 80069300 24020010 */  addiu     $v0, $zero, 0x10
/* 44704 80069304 AE220050 */  sw        $v0, 0x50($s1)
/* 44708 80069308 24020008 */  addiu     $v0, $zero, 8
/* 4470C 8006930C AE220054 */  sw        $v0, 0x54($s1)
/* 44710 80069310 A2230064 */  sb        $v1, 0x64($s1)
/* 44714 80069314 92220064 */  lbu       $v0, 0x64($s1)
/* 44718 80069318 00031840 */  sll       $v1, $v1, 1
/* 4471C 8006931C 24630003 */  addiu     $v1, $v1, 3
/* 44720 80069320 AE230060 */  sw        $v1, 0x60($s1)
/* 44724 80069324 92230064 */  lbu       $v1, 0x64($s1)
/* 44728 80069328 24420001 */  addiu     $v0, $v0, 1
/* 4472C 8006932C 000210C0 */  sll       $v0, $v0, 3
/* 44730 80069330 000318C0 */  sll       $v1, $v1, 3
/* 44734 80069334 AE220058 */  sw        $v0, 0x58($s1)
/* 44738 80069338 00431021 */  addu      $v0, $v0, $v1
/* 4473C 8006933C 0C01A874 */  jal       osContRamRead
/* 44740 80069340 AE22005C */   sw       $v0, 0x5c($s1)
/* 44744 80069344 00408021 */  addu      $s0, $v0, $zero
/* 44748 80069348 16000008 */  bnez      $s0, .L8006936C
/* 4474C 8006934C 02001021 */   addu     $v0, $s0, $zero
/* 44750 80069350 0C01B308 */  jal       osPfsChecker
/* 44754 80069354 02202021 */   addu     $a0, $s1, $zero
/* 44758 80069358 8E230000 */  lw        $v1, ($s1)
/* 4475C 8006935C 34630001 */  ori       $v1, $v1, 1
/* 44760 80069360 0801A4DB */  j         .L8006936C
/* 44764 80069364 AE230000 */   sw       $v1, ($s1)
.L80069368:
/* 44768 80069368 02001021 */  addu      $v0, $s0, $zero
.L8006936C:
/* 4476C 8006936C 8FBF0068 */  lw        $ra, 0x68($sp)
/* 44770 80069370 8FB30064 */  lw        $s3, 0x64($sp)
/* 44774 80069374 8FB20060 */  lw        $s2, 0x60($sp)
/* 44778 80069378 8FB1005C */  lw        $s1, 0x5c($sp)
/* 4477C 8006937C 8FB00058 */  lw        $s0, 0x58($sp)
/* 44780 80069380 03E00008 */  jr        $ra
/* 44784 80069384 27BD0070 */   addiu    $sp, $sp, 0x70
