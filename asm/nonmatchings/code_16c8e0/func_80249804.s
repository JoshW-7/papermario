.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80249804
/* 1780E4 80249804 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 1780E8 80249808 AFB1003C */  sw        $s1, 0x3c($sp)
/* 1780EC 8024980C 00A0882D */  daddu     $s1, $a1, $zero
/* 1780F0 80249810 AFB00038 */  sw        $s0, 0x38($sp)
/* 1780F4 80249814 3C10800B */  lui       $s0, 0x800b
/* 1780F8 80249818 261022D8 */  addiu     $s0, $s0, 0x22d8
/* 1780FC 8024981C 3C02802A */  lui       $v0, 0x802a
/* 178100 80249820 9442F27C */  lhu       $v0, -0xd84($v0)
/* 178104 80249824 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 178108 80249828 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 17810C 8024982C AFBF0040 */  sw        $ra, 0x40($sp)
/* 178110 80249830 F7BE0070 */  sdc1      $f30, 0x70($sp)
/* 178114 80249834 F7BC0068 */  sdc1      $f28, 0x68($sp)
/* 178118 80249838 F7BA0060 */  sdc1      $f26, 0x60($sp)
/* 17811C 8024983C F7B80058 */  sdc1      $f24, 0x58($sp)
/* 178120 80249840 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 178124 80249844 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 178128 80249848 30430700 */  andi      $v1, $v0, 0x700
/* 17812C 8024984C 304500FF */  andi      $a1, $v0, 0xff
/* 178130 80249850 24020100 */  addiu     $v0, $zero, 0x100
/* 178134 80249854 10620065 */  beq       $v1, $v0, .L802499EC
/* 178138 80249858 28620101 */   slti     $v0, $v1, 0x101
/* 17813C 8024985C 10400005 */  beqz      $v0, .L80249874
/* 178140 80249860 24020200 */   addiu    $v0, $zero, 0x200
/* 178144 80249864 10600007 */  beqz      $v1, .L80249884
/* 178148 80249868 0000102D */   daddu    $v0, $zero, $zero
/* 17814C 8024986C 0809287A */  j         .L8024A1E8
/* 178150 80249870 00000000 */   nop      
.L80249874:
/* 178154 80249874 106200B8 */  beq       $v1, $v0, .L80249B58
/* 178158 80249878 0000102D */   daddu    $v0, $zero, $zero
/* 17815C 8024987C 0809287A */  j         .L8024A1E8
/* 178160 80249880 00000000 */   nop      
.L80249884:
/* 178164 80249884 8C8400D8 */  lw        $a0, 0xd8($a0)
/* 178168 80249888 10800257 */  beqz      $a0, .L8024A1E8
/* 17816C 8024988C 00000000 */   nop      
/* 178170 80249890 C4980144 */  lwc1      $f24, 0x144($a0)
/* 178174 80249894 90830191 */  lbu       $v1, 0x191($a0)
/* 178178 80249898 C490014C */  lwc1      $f16, 0x14c($a0)
/* 17817C 8024989C 00031042 */  srl       $v0, $v1, 1
/* 178180 802498A0 44820000 */  mtc1      $v0, $f0
/* 178184 802498A4 00000000 */  nop       
/* 178188 802498A8 46800020 */  cvt.s.w   $f0, $f0
/* 17818C 802498AC E7B00018 */  swc1      $f16, 0x18($sp)
/* 178190 802498B0 C4820148 */  lwc1      $f2, 0x148($a0)
/* 178194 802498B4 00031082 */  srl       $v0, $v1, 2
/* 178198 802498B8 46001080 */  add.s     $f2, $f2, $f0
/* 17819C 802498BC 44820000 */  mtc1      $v0, $f0
/* 1781A0 802498C0 00000000 */  nop       
/* 1781A4 802498C4 46800020 */  cvt.s.w   $f0, $f0
/* 1781A8 802498C8 90820190 */  lbu       $v0, 0x190($a0)
/* 1781AC 802498CC 46001500 */  add.s     $f20, $f2, $f0
/* 1781B0 802498D0 4483D000 */  mtc1      $v1, $f26
/* 1781B4 802498D4 00000000 */  nop       
/* 1781B8 802498D8 4680D6A0 */  cvt.s.w   $f26, $f26
/* 1781BC 802498DC 4482B000 */  mtc1      $v0, $f22
/* 1781C0 802498E0 00000000 */  nop       
/* 1781C4 802498E4 4680B5A0 */  cvt.s.w   $f22, $f22
/* 1781C8 802498E8 4616D000 */  add.s     $f0, $f26, $f22
/* 1781CC 802498EC 3C013F00 */  lui       $at, 0x3f00
/* 1781D0 802498F0 4481E000 */  mtc1      $at, $f28
/* 1781D4 802498F4 00000000 */  nop       
/* 1781D8 802498F8 461C0002 */  mul.s     $f0, $f0, $f28
/* 1781DC 802498FC 00000000 */  nop       
/* 1781E0 80249900 84840428 */  lh        $a0, 0x428($a0)
/* 1781E4 80249904 0C09A75B */  jal       get_actor
/* 1781E8 80249908 E7A0002C */   swc1     $f0, 0x2c($sp)
/* 1781EC 8024990C 0040202D */  daddu     $a0, $v0, $zero
/* 1781F0 80249910 10800235 */  beqz      $a0, .L8024A1E8
/* 1781F4 80249914 0000102D */   daddu    $v0, $zero, $zero
/* 1781F8 80249918 90830191 */  lbu       $v1, 0x191($a0)
/* 1781FC 8024991C C4820148 */  lwc1      $f2, 0x148($a0)
/* 178200 80249920 00031042 */  srl       $v0, $v1, 1
/* 178204 80249924 44820000 */  mtc1      $v0, $f0
/* 178208 80249928 00000000 */  nop       
/* 17820C 8024992C 46800020 */  cvt.s.w   $f0, $f0
/* 178210 80249930 46001080 */  add.s     $f2, $f2, $f0
/* 178214 80249934 00031082 */  srl       $v0, $v1, 2
/* 178218 80249938 44820000 */  mtc1      $v0, $f0
/* 17821C 8024993C 00000000 */  nop       
/* 178220 80249940 46800020 */  cvt.s.w   $f0, $f0
/* 178224 80249944 46001080 */  add.s     $f2, $f2, $f0
/* 178228 80249948 E7A20024 */  swc1      $f2, 0x24($sp)
/* 17822C 8024994C C4920144 */  lwc1      $f18, 0x144($a0)
/* 178230 80249950 E7B20020 */  swc1      $f18, 0x20($sp)
/* 178234 80249954 C490014C */  lwc1      $f16, 0x14c($a0)
/* 178238 80249958 E7B00028 */  swc1      $f16, 0x28($sp)
/* 17823C 8024995C 90820190 */  lbu       $v0, 0x190($a0)
/* 178240 80249960 46189001 */  sub.s     $f0, $f18, $f24
/* 178244 80249964 00621821 */  addu      $v1, $v1, $v0
/* 178248 80249968 00031843 */  sra       $v1, $v1, 1
/* 17824C 8024996C 461C0002 */  mul.s     $f0, $f0, $f28
/* 178250 80249970 00000000 */  nop       
/* 178254 80249974 44839000 */  mtc1      $v1, $f18
/* 178258 80249978 00000000 */  nop       
/* 17825C 8024997C 468094A0 */  cvt.s.w   $f18, $f18
/* 178260 80249980 3C03802A */  lui       $v1, 0x802a
/* 178264 80249984 8063F2A2 */  lb        $v1, -0xd5e($v1)
/* 178268 80249988 E7B20030 */  swc1      $f18, 0x30($sp)
/* 17826C 8024998C 0460000B */  bltz      $v1, .L802499BC
/* 178270 80249990 4600C780 */   add.s    $f30, $f24, $f0
/* 178274 80249994 506000C6 */  beql      $v1, $zero, .L80249CB0
/* 178278 80249998 4600A706 */   mov.s    $f28, $f20
/* 17827C 8024999C 4602A001 */  sub.s     $f0, $f20, $f2
/* 178280 802499A0 461C0082 */  mul.s     $f2, $f0, $f28
/* 178284 802499A4 00000000 */  nop       
/* 178288 802499A8 C7B00024 */  lwc1      $f16, 0x24($sp)
/* 17828C 802499AC 3C0140C0 */  lui       $at, 0x40c0
/* 178290 802499B0 44812000 */  mtc1      $at, $f4
/* 178294 802499B4 08092725 */  j         .L80249C94
/* 178298 802499B8 46028080 */   add.s    $f2, $f16, $f2
.L802499BC:
/* 17829C 802499BC 2402FFFF */  addiu     $v0, $zero, -1
/* 1782A0 802499C0 106200BA */  beq       $v1, $v0, .L80249CAC
/* 1782A4 802499C4 00000000 */   nop      
/* 1782A8 802499C8 C7B20024 */  lwc1      $f18, 0x24($sp)
/* 1782AC 802499CC 46149001 */  sub.s     $f0, $f18, $f20
/* 1782B0 802499D0 3C013E80 */  lui       $at, 0x3e80
/* 1782B4 802499D4 44811000 */  mtc1      $at, $f2
/* 1782B8 802499D8 00000000 */  nop       
/* 1782BC 802499DC 46020002 */  mul.s     $f0, $f0, $f2
/* 1782C0 802499E0 00000000 */  nop       
/* 1782C4 802499E4 0809272C */  j         .L80249CB0
/* 1782C8 802499E8 4600A700 */   add.s    $f28, $f20, $f0
.L802499EC:
/* 1782CC 802499EC 8C8400DC */  lw        $a0, 0xdc($a0)
/* 1782D0 802499F0 108001FD */  beqz      $a0, .L8024A1E8
/* 1782D4 802499F4 0000102D */   daddu    $v0, $zero, $zero
/* 1782D8 802499F8 C4980144 */  lwc1      $f24, 0x144($a0)
/* 1782DC 802499FC 90830191 */  lbu       $v1, 0x191($a0)
/* 1782E0 80249A00 C490014C */  lwc1      $f16, 0x14c($a0)
/* 1782E4 80249A04 00031042 */  srl       $v0, $v1, 1
/* 1782E8 80249A08 44820000 */  mtc1      $v0, $f0
/* 1782EC 80249A0C 00000000 */  nop       
/* 1782F0 80249A10 46800020 */  cvt.s.w   $f0, $f0
/* 1782F4 80249A14 E7B00018 */  swc1      $f16, 0x18($sp)
/* 1782F8 80249A18 C4820148 */  lwc1      $f2, 0x148($a0)
/* 1782FC 80249A1C 00031082 */  srl       $v0, $v1, 2
/* 178300 80249A20 46001080 */  add.s     $f2, $f2, $f0
/* 178304 80249A24 44820000 */  mtc1      $v0, $f0
/* 178308 80249A28 00000000 */  nop       
/* 17830C 80249A2C 46800020 */  cvt.s.w   $f0, $f0
/* 178310 80249A30 90820190 */  lbu       $v0, 0x190($a0)
/* 178314 80249A34 46001500 */  add.s     $f20, $f2, $f0
/* 178318 80249A38 4483D000 */  mtc1      $v1, $f26
/* 17831C 80249A3C 00000000 */  nop       
/* 178320 80249A40 4680D6A0 */  cvt.s.w   $f26, $f26
/* 178324 80249A44 4482B000 */  mtc1      $v0, $f22
/* 178328 80249A48 00000000 */  nop       
/* 17832C 80249A4C 4680B5A0 */  cvt.s.w   $f22, $f22
/* 178330 80249A50 4616D000 */  add.s     $f0, $f26, $f22
/* 178334 80249A54 3C013F00 */  lui       $at, 0x3f00
/* 178338 80249A58 4481E000 */  mtc1      $at, $f28
/* 17833C 80249A5C 00000000 */  nop       
/* 178340 80249A60 461C0002 */  mul.s     $f0, $f0, $f28
/* 178344 80249A64 00000000 */  nop       
/* 178348 80249A68 84840428 */  lh        $a0, 0x428($a0)
/* 17834C 80249A6C 0C09A75B */  jal       get_actor
/* 178350 80249A70 E7A0002C */   swc1     $f0, 0x2c($sp)
/* 178354 80249A74 0040202D */  daddu     $a0, $v0, $zero
/* 178358 80249A78 108001DB */  beqz      $a0, .L8024A1E8
/* 17835C 80249A7C 0000102D */   daddu    $v0, $zero, $zero
/* 178360 80249A80 90830191 */  lbu       $v1, 0x191($a0)
/* 178364 80249A84 C4820148 */  lwc1      $f2, 0x148($a0)
/* 178368 80249A88 00031042 */  srl       $v0, $v1, 1
/* 17836C 80249A8C 44820000 */  mtc1      $v0, $f0
/* 178370 80249A90 00000000 */  nop       
/* 178374 80249A94 46800020 */  cvt.s.w   $f0, $f0
/* 178378 80249A98 46001080 */  add.s     $f2, $f2, $f0
/* 17837C 80249A9C 00031082 */  srl       $v0, $v1, 2
/* 178380 80249AA0 44820000 */  mtc1      $v0, $f0
/* 178384 80249AA4 00000000 */  nop       
/* 178388 80249AA8 46800020 */  cvt.s.w   $f0, $f0
/* 17838C 80249AAC 46001080 */  add.s     $f2, $f2, $f0
/* 178390 80249AB0 E7A20024 */  swc1      $f2, 0x24($sp)
/* 178394 80249AB4 C4920144 */  lwc1      $f18, 0x144($a0)
/* 178398 80249AB8 E7B20020 */  swc1      $f18, 0x20($sp)
/* 17839C 80249ABC C490014C */  lwc1      $f16, 0x14c($a0)
/* 1783A0 80249AC0 46189001 */  sub.s     $f0, $f18, $f24
/* 1783A4 80249AC4 E7B00028 */  swc1      $f16, 0x28($sp)
/* 1783A8 80249AC8 90820190 */  lbu       $v0, 0x190($a0)
/* 1783AC 80249ACC 00621821 */  addu      $v1, $v1, $v0
/* 1783B0 80249AD0 461C0002 */  mul.s     $f0, $f0, $f28
/* 1783B4 80249AD4 00000000 */  nop       
/* 1783B8 80249AD8 00031843 */  sra       $v1, $v1, 1
/* 1783BC 80249ADC 3C02802A */  lui       $v0, 0x802a
/* 1783C0 80249AE0 8042F2A2 */  lb        $v0, -0xd5e($v0)
/* 1783C4 80249AE4 44839000 */  mtc1      $v1, $f18
/* 1783C8 80249AE8 00000000 */  nop       
/* 1783CC 80249AEC 468094A0 */  cvt.s.w   $f18, $f18
/* 1783D0 80249AF0 E7B20030 */  swc1      $f18, 0x30($sp)
/* 1783D4 80249AF4 0440000D */  bltz      $v0, .L80249B2C
/* 1783D8 80249AF8 4600C780 */   add.s    $f30, $f24, $f0
/* 1783DC 80249AFC 5040000C */  beql      $v0, $zero, .L80249B30
/* 1783E0 80249B00 4600A706 */   mov.s    $f28, $f20
/* 1783E4 80249B04 4602A001 */  sub.s     $f0, $f20, $f2
/* 1783E8 80249B08 461C0082 */  mul.s     $f2, $f0, $f28
/* 1783EC 80249B0C 00000000 */  nop       
/* 1783F0 80249B10 C7B00024 */  lwc1      $f16, 0x24($sp)
/* 1783F4 80249B14 3C0140C0 */  lui       $at, 0x40c0
/* 1783F8 80249B18 44812000 */  mtc1      $at, $f4
/* 1783FC 80249B1C 46028080 */  add.s     $f2, $f16, $f2
/* 178400 80249B20 46040003 */  div.s     $f0, $f0, $f4
/* 178404 80249B24 080926CC */  j         .L80249B30
/* 178408 80249B28 46001700 */   add.s    $f28, $f2, $f0
.L80249B2C:
/* 17840C 80249B2C C7BC0024 */  lwc1      $f28, 0x24($sp)
.L80249B30:
/* 178410 80249B30 C7B20028 */  lwc1      $f18, 0x28($sp)
/* 178414 80249B34 C7B00018 */  lwc1      $f16, 0x18($sp)
/* 178418 80249B38 46109001 */  sub.s     $f0, $f18, $f16
/* 17841C 80249B3C 3C013F00 */  lui       $at, 0x3f00
/* 178420 80249B40 44811000 */  mtc1      $at, $f2
/* 178424 80249B44 00000000 */  nop       
/* 178428 80249B48 46020002 */  mul.s     $f0, $f0, $f2
/* 17842C 80249B4C 00000000 */  nop       
/* 178430 80249B50 08092735 */  j         .L80249CD4
/* 178434 80249B54 46008000 */   add.s    $f0, $f16, $f0
.L80249B58:
/* 178438 80249B58 00051080 */  sll       $v0, $a1, 2
/* 17843C 80249B5C 00441021 */  addu      $v0, $v0, $a0
/* 178440 80249B60 8C4400E0 */  lw        $a0, 0xe0($v0)
/* 178444 80249B64 108001A0 */  beqz      $a0, .L8024A1E8
/* 178448 80249B68 0000102D */   daddu    $v0, $zero, $zero
/* 17844C 80249B6C C4980144 */  lwc1      $f24, 0x144($a0)
/* 178450 80249B70 90830191 */  lbu       $v1, 0x191($a0)
/* 178454 80249B74 C492014C */  lwc1      $f18, 0x14c($a0)
/* 178458 80249B78 00031042 */  srl       $v0, $v1, 1
/* 17845C 80249B7C 44820000 */  mtc1      $v0, $f0
/* 178460 80249B80 00000000 */  nop       
/* 178464 80249B84 46800020 */  cvt.s.w   $f0, $f0
/* 178468 80249B88 E7B20018 */  swc1      $f18, 0x18($sp)
/* 17846C 80249B8C C4820148 */  lwc1      $f2, 0x148($a0)
/* 178470 80249B90 00031082 */  srl       $v0, $v1, 2
/* 178474 80249B94 46001080 */  add.s     $f2, $f2, $f0
/* 178478 80249B98 44820000 */  mtc1      $v0, $f0
/* 17847C 80249B9C 00000000 */  nop       
/* 178480 80249BA0 46800020 */  cvt.s.w   $f0, $f0
/* 178484 80249BA4 90820190 */  lbu       $v0, 0x190($a0)
/* 178488 80249BA8 46001500 */  add.s     $f20, $f2, $f0
/* 17848C 80249BAC 4483D000 */  mtc1      $v1, $f26
/* 178490 80249BB0 00000000 */  nop       
/* 178494 80249BB4 4680D6A0 */  cvt.s.w   $f26, $f26
/* 178498 80249BB8 4482B000 */  mtc1      $v0, $f22
/* 17849C 80249BBC 00000000 */  nop       
/* 1784A0 80249BC0 4680B5A0 */  cvt.s.w   $f22, $f22
/* 1784A4 80249BC4 4616D000 */  add.s     $f0, $f26, $f22
/* 1784A8 80249BC8 3C013F00 */  lui       $at, 0x3f00
/* 1784AC 80249BCC 4481E000 */  mtc1      $at, $f28
/* 1784B0 80249BD0 00000000 */  nop       
/* 1784B4 80249BD4 461C0002 */  mul.s     $f0, $f0, $f28
/* 1784B8 80249BD8 00000000 */  nop       
/* 1784BC 80249BDC 84840428 */  lh        $a0, 0x428($a0)
/* 1784C0 80249BE0 0C09A75B */  jal       get_actor
/* 1784C4 80249BE4 E7A0002C */   swc1     $f0, 0x2c($sp)
/* 1784C8 80249BE8 0040202D */  daddu     $a0, $v0, $zero
/* 1784CC 80249BEC 1080017E */  beqz      $a0, .L8024A1E8
/* 1784D0 80249BF0 0000102D */   daddu    $v0, $zero, $zero
/* 1784D4 80249BF4 90830191 */  lbu       $v1, 0x191($a0)
/* 1784D8 80249BF8 C4820148 */  lwc1      $f2, 0x148($a0)
/* 1784DC 80249BFC 00031042 */  srl       $v0, $v1, 1
/* 1784E0 80249C00 44820000 */  mtc1      $v0, $f0
/* 1784E4 80249C04 00000000 */  nop       
/* 1784E8 80249C08 46800020 */  cvt.s.w   $f0, $f0
/* 1784EC 80249C0C 46001080 */  add.s     $f2, $f2, $f0
/* 1784F0 80249C10 00031082 */  srl       $v0, $v1, 2
/* 1784F4 80249C14 44820000 */  mtc1      $v0, $f0
/* 1784F8 80249C18 00000000 */  nop       
/* 1784FC 80249C1C 46800020 */  cvt.s.w   $f0, $f0
/* 178500 80249C20 46001080 */  add.s     $f2, $f2, $f0
/* 178504 80249C24 E7A20024 */  swc1      $f2, 0x24($sp)
/* 178508 80249C28 C4900144 */  lwc1      $f16, 0x144($a0)
/* 17850C 80249C2C E7B00020 */  swc1      $f16, 0x20($sp)
/* 178510 80249C30 C492014C */  lwc1      $f18, 0x14c($a0)
/* 178514 80249C34 E7B20028 */  swc1      $f18, 0x28($sp)
/* 178518 80249C38 90820190 */  lbu       $v0, 0x190($a0)
/* 17851C 80249C3C 46188001 */  sub.s     $f0, $f16, $f24
/* 178520 80249C40 00621821 */  addu      $v1, $v1, $v0
/* 178524 80249C44 00031843 */  sra       $v1, $v1, 1
/* 178528 80249C48 461C0002 */  mul.s     $f0, $f0, $f28
/* 17852C 80249C4C 00000000 */  nop       
/* 178530 80249C50 44838000 */  mtc1      $v1, $f16
/* 178534 80249C54 00000000 */  nop       
/* 178538 80249C58 46808420 */  cvt.s.w   $f16, $f16
/* 17853C 80249C5C 3C03802A */  lui       $v1, 0x802a
/* 178540 80249C60 8063F2A2 */  lb        $v1, -0xd5e($v1)
/* 178544 80249C64 E7B00030 */  swc1      $f16, 0x30($sp)
/* 178548 80249C68 0460000D */  bltz      $v1, .L80249CA0
/* 17854C 80249C6C 4600C780 */   add.s    $f30, $f24, $f0
/* 178550 80249C70 5060000F */  beql      $v1, $zero, .L80249CB0
/* 178554 80249C74 4600A706 */   mov.s    $f28, $f20
/* 178558 80249C78 4602A001 */  sub.s     $f0, $f20, $f2
/* 17855C 80249C7C 461C0082 */  mul.s     $f2, $f0, $f28
/* 178560 80249C80 00000000 */  nop       
/* 178564 80249C84 C7B20024 */  lwc1      $f18, 0x24($sp)
/* 178568 80249C88 3C0140C0 */  lui       $at, 0x40c0
/* 17856C 80249C8C 44812000 */  mtc1      $at, $f4
/* 178570 80249C90 46029080 */  add.s     $f2, $f18, $f2
.L80249C94:
/* 178574 80249C94 46040003 */  div.s     $f0, $f0, $f4
/* 178578 80249C98 0809272C */  j         .L80249CB0
/* 17857C 80249C9C 46001700 */   add.s    $f28, $f2, $f0
.L80249CA0:
/* 178580 80249CA0 2402FFFF */  addiu     $v0, $zero, -1
/* 178584 80249CA4 14620002 */  bne       $v1, $v0, .L80249CB0
/* 178588 80249CA8 4600A706 */   mov.s    $f28, $f20
.L80249CAC:
/* 17858C 80249CAC C7BC0024 */  lwc1      $f28, 0x24($sp)
.L80249CB0:
/* 178590 80249CB0 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 178594 80249CB4 C7B20018 */  lwc1      $f18, 0x18($sp)
/* 178598 80249CB8 46128001 */  sub.s     $f0, $f16, $f18
/* 17859C 80249CBC 3C013F00 */  lui       $at, 0x3f00
/* 1785A0 80249CC0 44811000 */  mtc1      $at, $f2
/* 1785A4 80249CC4 00000000 */  nop       
/* 1785A8 80249CC8 46020002 */  mul.s     $f0, $f0, $f2
/* 1785AC 80249CCC 00000000 */  nop       
/* 1785B0 80249CD0 46009000 */  add.s     $f0, $f18, $f0
.L80249CD4:
/* 1785B4 80249CD4 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 1785B8 80249CD8 3C02802A */  lui       $v0, 0x802a
/* 1785BC 80249CDC 8042F2A6 */  lb        $v0, -0xd5a($v0)
/* 1785C0 80249CE0 10400029 */  beqz      $v0, .L80249D88
/* 1785C4 80249CE4 00000000 */   nop      
/* 1785C8 80249CE8 3C01802A */  lui       $at, 0x802a
/* 1785CC 80249CEC C422F28C */  lwc1      $f2, -0xd74($at)
/* 1785D0 80249CF0 3C0143FA */  lui       $at, 0x43fa
/* 1785D4 80249CF4 44810000 */  mtc1      $at, $f0
/* 1785D8 80249CF8 00000000 */  nop       
/* 1785DC 80249CFC 46020001 */  sub.s     $f0, $f0, $f2
/* 1785E0 80249D00 3C01802A */  lui       $at, 0x802a
/* 1785E4 80249D04 D422CC08 */  ldc1      $f2, -0x33f8($at)
/* 1785E8 80249D08 46000021 */  cvt.d.s   $f0, $f0
/* 1785EC 80249D0C 46220002 */  mul.d     $f0, $f0, $f2
/* 1785F0 80249D10 00000000 */  nop       
/* 1785F4 80249D14 3C01403E */  lui       $at, 0x403e
/* 1785F8 80249D18 44811800 */  mtc1      $at, $f3
/* 1785FC 80249D1C 44801000 */  mtc1      $zero, $f2
/* 178600 80249D20 00000000 */  nop       
/* 178604 80249D24 46220000 */  add.d     $f0, $f0, $f2
/* 178608 80249D28 46200120 */  cvt.s.d   $f4, $f0
/* 17860C 80249D2C 46002007 */  neg.s     $f0, $f4
/* 178610 80249D30 4600F03C */  c.lt.s    $f30, $f0
/* 178614 80249D34 00000000 */  nop       
/* 178618 80249D38 45000008 */  bc1f      .L80249D5C
/* 17861C 80249D3C 00000000 */   nop      
/* 178620 80249D40 461E0001 */  sub.s     $f0, $f0, $f30
/* 178624 80249D44 3C013F00 */  lui       $at, 0x3f00
/* 178628 80249D48 44811000 */  mtc1      $at, $f2
/* 17862C 80249D4C 00000000 */  nop       
/* 178630 80249D50 46020002 */  mul.s     $f0, $f0, $f2
/* 178634 80249D54 00000000 */  nop       
/* 178638 80249D58 4600F780 */  add.s     $f30, $f30, $f0
.L80249D5C:
/* 17863C 80249D5C 461E203C */  c.lt.s    $f4, $f30
/* 178640 80249D60 00000000 */  nop       
/* 178644 80249D64 45000008 */  bc1f      .L80249D88
/* 178648 80249D68 00000000 */   nop      
/* 17864C 80249D6C 461E2001 */  sub.s     $f0, $f4, $f30
/* 178650 80249D70 3C013F00 */  lui       $at, 0x3f00
/* 178654 80249D74 44811000 */  mtc1      $at, $f2
/* 178658 80249D78 00000000 */  nop       
/* 17865C 80249D7C 46020002 */  mul.s     $f0, $f0, $f2
/* 178660 80249D80 00000000 */  nop       
/* 178664 80249D84 4600F780 */  add.s     $f30, $f30, $f0
.L80249D88:
/* 178668 80249D88 12200055 */  beqz      $s1, .L80249EE0
/* 17866C 80249D8C 00000000 */   nop      
/* 178670 80249D90 3C0141C0 */  lui       $at, 0x41c0
/* 178674 80249D94 44810000 */  mtc1      $at, $f0
/* 178678 80249D98 00000000 */  nop       
/* 17867C 80249D9C 4600B581 */  sub.s     $f22, $f22, $f0
/* 178680 80249DA0 4600D681 */  sub.s     $f26, $f26, $f0
/* 178684 80249DA4 44800000 */  mtc1      $zero, $f0
/* 178688 80249DA8 00000000 */  nop       
/* 17868C 80249DAC 4600B03C */  c.lt.s    $f22, $f0
/* 178690 80249DB0 00000000 */  nop       
/* 178694 80249DB4 45030001 */  bc1tl     .L80249DBC
/* 178698 80249DB8 46000586 */   mov.s    $f22, $f0
.L80249DBC:
/* 17869C 80249DBC 4600D03C */  c.lt.s    $f26, $f0
/* 1786A0 80249DC0 00000000 */  nop       
/* 1786A4 80249DC4 45030001 */  bc1tl     .L80249DCC
/* 1786A8 80249DC8 46000686 */   mov.s    $f26, $f0
.L80249DCC:
/* 1786AC 80249DCC 3C03802A */  lui       $v1, 0x802a
/* 1786B0 80249DD0 2463F280 */  addiu     $v1, $v1, -0xd80
/* 1786B4 80249DD4 84620000 */  lh        $v0, ($v1)
/* 1786B8 80249DD8 461AB080 */  add.s     $f2, $f22, $f26
/* 1786BC 80249DDC 44820000 */  mtc1      $v0, $f0
/* 1786C0 80249DE0 00000000 */  nop       
/* 1786C4 80249DE4 46800020 */  cvt.s.w   $f0, $f0
/* 1786C8 80249DE8 46020000 */  add.s     $f0, $f0, $f2
/* 1786CC 80249DEC 3C02802A */  lui       $v0, 0x802a
/* 1786D0 80249DF0 8042F2A4 */  lb        $v0, -0xd5c($v0)
/* 1786D4 80249DF4 4600040D */  trunc.w.s $f16, $f0
/* 1786D8 80249DF8 44048000 */  mfc1      $a0, $f16
/* 1786DC 80249DFC 10400010 */  beqz      $v0, .L80249E40
/* 1786E0 80249E00 A4640000 */   sh       $a0, ($v1)
/* 1786E4 80249E04 E61E0054 */  swc1      $f30, 0x54($s0)
/* 1786E8 80249E08 E61C0058 */  swc1      $f28, 0x58($s0)
/* 1786EC 80249E0C C7B0001C */  lwc1      $f16, 0x1c($sp)
/* 1786F0 80249E10 3C02802A */  lui       $v0, 0x802a
/* 1786F4 80249E14 8442F286 */  lh        $v0, -0xd7a($v0)
/* 1786F8 80249E18 3C03802A */  lui       $v1, 0x802a
/* 1786FC 80249E1C 9463F282 */  lhu       $v1, -0xd7e($v1)
/* 178700 80249E20 A604001E */  sh        $a0, 0x1e($s0)
/* 178704 80249E24 3C04802A */  lui       $a0, 0x802a
/* 178708 80249E28 9484F284 */  lhu       $a0, -0xd7c($a0)
/* 17870C 80249E2C 00021200 */  sll       $v0, $v0, 8
/* 178710 80249E30 E610005C */  swc1      $f16, 0x5c($s0)
/* 178714 80249E34 A6020026 */  sh        $v0, 0x26($s0)
/* 178718 80249E38 A6030024 */  sh        $v1, 0x24($s0)
/* 17871C 80249E3C A6040022 */  sh        $a0, 0x22($s0)
.L80249E40:
/* 178720 80249E40 8602001E */  lh        $v0, 0x1e($s0)
/* 178724 80249E44 86040026 */  lh        $a0, 0x26($s0)
/* 178728 80249E48 86030024 */  lh        $v1, 0x24($s0)
/* 17872C 80249E4C 44820000 */  mtc1      $v0, $f0
/* 178730 80249E50 00000000 */  nop       
/* 178734 80249E54 46800020 */  cvt.s.w   $f0, $f0
/* 178738 80249E58 86020022 */  lh        $v0, 0x22($s0)
/* 17873C 80249E5C 3C01802A */  lui       $at, 0x802a
/* 178740 80249E60 E420F28C */  swc1      $f0, -0xd74($at)
/* 178744 80249E64 44820000 */  mtc1      $v0, $f0
/* 178748 80249E68 00000000 */  nop       
/* 17874C 80249E6C 46800020 */  cvt.s.w   $f0, $f0
/* 178750 80249E70 3C01802A */  lui       $at, 0x802a
/* 178754 80249E74 E420F294 */  swc1      $f0, -0xd6c($at)
/* 178758 80249E78 44830000 */  mtc1      $v1, $f0
/* 17875C 80249E7C 00000000 */  nop       
/* 178760 80249E80 46800020 */  cvt.s.w   $f0, $f0
/* 178764 80249E84 3C01802A */  lui       $at, 0x802a
/* 178768 80249E88 E420F290 */  swc1      $f0, -0xd70($at)
/* 17876C 80249E8C 04820001 */  bltzl     $a0, .L80249E94
/* 178770 80249E90 248400FF */   addiu    $a0, $a0, 0xff
.L80249E94:
/* 178774 80249E94 00041203 */  sra       $v0, $a0, 8
/* 178778 80249E98 C6020054 */  lwc1      $f2, 0x54($s0)
/* 17877C 80249E9C C6040058 */  lwc1      $f4, 0x58($s0)
/* 178780 80249EA0 C606005C */  lwc1      $f6, 0x5c($s0)
/* 178784 80249EA4 3C03802A */  lui       $v1, 0x802a
/* 178788 80249EA8 9463F29E */  lhu       $v1, -0xd62($v1)
/* 17878C 80249EAC 44820000 */  mtc1      $v0, $f0
/* 178790 80249EB0 00000000 */  nop       
/* 178794 80249EB4 46800020 */  cvt.s.w   $f0, $f0
/* 178798 80249EB8 3C01802A */  lui       $at, 0x802a
/* 17879C 80249EBC E420F298 */  swc1      $f0, -0xd68($at)
/* 1787A0 80249EC0 3C01802A */  lui       $at, 0x802a
/* 1787A4 80249EC4 E422F2A8 */  swc1      $f2, -0xd58($at)
/* 1787A8 80249EC8 3C01802A */  lui       $at, 0x802a
/* 1787AC 80249ECC E424F2AC */  swc1      $f4, -0xd54($at)
/* 1787B0 80249ED0 3C01802A */  lui       $at, 0x802a
/* 1787B4 80249ED4 E426F2B0 */  swc1      $f6, -0xd50($at)
/* 1787B8 80249ED8 3C01802A */  lui       $at, 0x802a
/* 1787BC 80249EDC A423F2A0 */  sh        $v1, -0xd60($at)
.L80249EE0:
/* 1787C0 80249EE0 3C02802A */  lui       $v0, 0x802a
/* 1787C4 80249EE4 8042F2A5 */  lb        $v0, -0xd5b($v0)
/* 1787C8 80249EE8 14400027 */  bnez      $v0, .L80249F88
/* 1787CC 80249EEC 00000000 */   nop      
/* 1787D0 80249EF0 3C02802A */  lui       $v0, 0x802a
/* 1787D4 80249EF4 8442F29E */  lh        $v0, -0xd62($v0)
/* 1787D8 80249EF8 3C03802A */  lui       $v1, 0x802a
/* 1787DC 80249EFC 8463F2A0 */  lh        $v1, -0xd60($v1)
/* 1787E0 80249F00 3C013F80 */  lui       $at, 0x3f80
/* 1787E4 80249F04 4481C000 */  mtc1      $at, $f24
/* 1787E8 80249F08 4482D000 */  mtc1      $v0, $f26
/* 1787EC 80249F0C 00000000 */  nop       
/* 1787F0 80249F10 4680D6A0 */  cvt.s.w   $f26, $f26
/* 1787F4 80249F14 44830000 */  mtc1      $v1, $f0
/* 1787F8 80249F18 00000000 */  nop       
/* 1787FC 80249F1C 46800020 */  cvt.s.w   $f0, $f0
/* 178800 80249F20 4600D683 */  div.s     $f26, $f26, $f0
/* 178804 80249F24 461AC301 */  sub.s     $f12, $f24, $f26
/* 178808 80249F28 3C014049 */  lui       $at, 0x4049
/* 17880C 80249F2C 34210FD0 */  ori       $at, $at, 0xfd0
/* 178810 80249F30 4481B000 */  mtc1      $at, $f22
/* 178814 80249F34 00000000 */  nop       
/* 178818 80249F38 46166302 */  mul.s     $f12, $f12, $f22
/* 17881C 80249F3C 00000000 */  nop       
/* 178820 80249F40 3C013F00 */  lui       $at, 0x3f00
/* 178824 80249F44 4481A000 */  mtc1      $at, $f20
/* 178828 80249F48 00000000 */  nop       
/* 17882C 80249F4C 46146302 */  mul.s     $f12, $f12, $f20
/* 178830 80249F50 0C00A85B */  jal       sin_rad
/* 178834 80249F54 00000000 */   nop      
/* 178838 80249F58 46160002 */  mul.s     $f0, $f0, $f22
/* 17883C 80249F5C 00000000 */  nop       
/* 178840 80249F60 46140302 */  mul.s     $f12, $f0, $f20
/* 178844 80249F64 0C00A85B */  jal       sin_rad
/* 178848 80249F68 00000000 */   nop      
/* 17884C 80249F6C 46160002 */  mul.s     $f0, $f0, $f22
/* 178850 80249F70 00000000 */  nop       
/* 178854 80249F74 46140302 */  mul.s     $f12, $f0, $f20
/* 178858 80249F78 0C00A85B */  jal       sin_rad
/* 17885C 80249F7C 00000000 */   nop      
/* 178860 80249F80 080927ED */  j         .L80249FB4
/* 178864 80249F84 4600C681 */   sub.s    $f26, $f24, $f0
.L80249F88:
/* 178868 80249F88 3C02802A */  lui       $v0, 0x802a
/* 17886C 80249F8C 8442F29E */  lh        $v0, -0xd62($v0)
/* 178870 80249F90 3C03802A */  lui       $v1, 0x802a
/* 178874 80249F94 8463F2A0 */  lh        $v1, -0xd60($v1)
/* 178878 80249F98 4482D000 */  mtc1      $v0, $f26
/* 17887C 80249F9C 00000000 */  nop       
/* 178880 80249FA0 4680D6A0 */  cvt.s.w   $f26, $f26
/* 178884 80249FA4 44830000 */  mtc1      $v1, $f0
/* 178888 80249FA8 00000000 */  nop       
/* 17888C 80249FAC 46800020 */  cvt.s.w   $f0, $f0
/* 178890 80249FB0 4600D683 */  div.s     $f26, $f26, $f0
.L80249FB4:
/* 178894 80249FB4 3C01802A */  lui       $at, 0x802a
/* 178898 80249FB8 C426F2A8 */  lwc1      $f6, -0xd58($at)
/* 17889C 80249FBC 461A3182 */  mul.s     $f6, $f6, $f26
/* 1788A0 80249FC0 00000000 */  nop       
/* 1788A4 80249FC4 3C01802A */  lui       $at, 0x802a
/* 1788A8 80249FC8 C428F2AC */  lwc1      $f8, -0xd54($at)
/* 1788AC 80249FCC 461A4202 */  mul.s     $f8, $f8, $f26
/* 1788B0 80249FD0 00000000 */  nop       
/* 1788B4 80249FD4 3C01802A */  lui       $at, 0x802a
/* 1788B8 80249FD8 C424F2B0 */  lwc1      $f4, -0xd50($at)
/* 1788BC 80249FDC 461A2102 */  mul.s     $f4, $f4, $f26
/* 1788C0 80249FE0 00000000 */  nop       
/* 1788C4 80249FE4 3C01802A */  lui       $at, 0x802a
/* 1788C8 80249FE8 C422F298 */  lwc1      $f2, -0xd68($at)
/* 1788CC 80249FEC 461A1082 */  mul.s     $f2, $f2, $f26
/* 1788D0 80249FF0 00000000 */  nop       
/* 1788D4 80249FF4 3C013F80 */  lui       $at, 0x3f80
/* 1788D8 80249FF8 4481B000 */  mtc1      $at, $f22
/* 1788DC 80249FFC 00000000 */  nop       
/* 1788E0 8024A000 461AB581 */  sub.s     $f22, $f22, $f26
/* 1788E4 8024A004 4616F302 */  mul.s     $f12, $f30, $f22
/* 1788E8 8024A008 00000000 */  nop       
/* 1788EC 8024A00C 4616E382 */  mul.s     $f14, $f28, $f22
/* 1788F0 8024A010 00000000 */  nop       
/* 1788F4 8024A014 3C02802A */  lui       $v0, 0x802a
/* 1788F8 8024A018 8442F286 */  lh        $v0, -0xd7a($v0)
/* 1788FC 8024A01C 44820000 */  mtc1      $v0, $f0
/* 178900 8024A020 00000000 */  nop       
/* 178904 8024A024 46800020 */  cvt.s.w   $f0, $f0
/* 178908 8024A028 46160002 */  mul.s     $f0, $f0, $f22
/* 17890C 8024A02C 00000000 */  nop       
/* 178910 8024A030 C7B2001C */  lwc1      $f18, 0x1c($sp)
/* 178914 8024A034 46169282 */  mul.s     $f10, $f18, $f22
/* 178918 8024A038 00000000 */  nop       
/* 17891C 8024A03C 46001080 */  add.s     $f2, $f2, $f0
/* 178920 8024A040 C6180054 */  lwc1      $f24, 0x54($s0)
/* 178924 8024A044 C6140058 */  lwc1      $f20, 0x58($s0)
/* 178928 8024A048 460C3180 */  add.s     $f6, $f6, $f12
/* 17892C 8024A04C C610005C */  lwc1      $f16, 0x5c($s0)
/* 178930 8024A050 4406F000 */  mfc1      $a2, $f30
/* 178934 8024A054 460A2100 */  add.s     $f4, $f4, $f10
/* 178938 8024A058 44079000 */  mfc1      $a3, $f18
/* 17893C 8024A05C 3C014380 */  lui       $at, 0x4380
/* 178940 8024A060 44810000 */  mtc1      $at, $f0
/* 178944 8024A064 460E4200 */  add.s     $f8, $f8, $f14
/* 178948 8024A068 E7B00018 */  swc1      $f16, 0x18($sp)
/* 17894C 8024A06C E6060054 */  swc1      $f6, 0x54($s0)
/* 178950 8024A070 46001082 */  mul.s     $f2, $f2, $f0
/* 178954 8024A074 00000000 */  nop       
/* 178958 8024A078 46003306 */  mov.s     $f12, $f6
/* 17895C 8024A07C E604005C */  swc1      $f4, 0x5c($s0)
/* 178960 8024A080 46002386 */  mov.s     $f14, $f4
/* 178964 8024A084 E6080058 */  swc1      $f8, 0x58($s0)
/* 178968 8024A088 4600148D */  trunc.w.s $f18, $f2
/* 17896C 8024A08C 44029000 */  mfc1      $v0, $f18
/* 178970 8024A090 0C00A7B5 */  jal       dist2D
/* 178974 8024A094 A6020026 */   sh       $v0, 0x26($s0)
/* 178978 8024A098 4600A386 */  mov.s     $f14, $f20
/* 17897C 8024A09C 8FA60018 */  lw        $a2, 0x18($sp)
/* 178980 8024A0A0 C7B0002C */  lwc1      $f16, 0x2c($sp)
/* 178984 8024A0A4 8FA70020 */  lw        $a3, 0x20($sp)
/* 178988 8024A0A8 C7B20030 */  lwc1      $f18, 0x30($sp)
/* 17898C 8024A0AC 46100500 */  add.s     $f20, $f0, $f16
/* 178990 8024A0B0 3C014280 */  lui       $at, 0x4280
/* 178994 8024A0B4 44810000 */  mtc1      $at, $f0
/* 178998 8024A0B8 C7B00024 */  lwc1      $f16, 0x24($sp)
/* 17899C 8024A0BC 4612A500 */  add.s     $f20, $f20, $f18
/* 1789A0 8024A0C0 C7B20028 */  lwc1      $f18, 0x28($sp)
/* 1789A4 8024A0C4 4600C306 */  mov.s     $f12, $f24
/* 1789A8 8024A0C8 E7B00010 */  swc1      $f16, 0x10($sp)
/* 1789AC 8024A0CC E7B20014 */  swc1      $f18, 0x14($sp)
/* 1789B0 8024A0D0 0C00A7CB */  jal       dist3D
/* 1789B4 8024A0D4 4600A501 */   sub.s    $f20, $f20, $f0
/* 1789B8 8024A0D8 3C013F00 */  lui       $at, 0x3f00
/* 1789BC 8024A0DC 44811000 */  mtc1      $at, $f2
/* 1789C0 8024A0E0 00000000 */  nop       
/* 1789C4 8024A0E4 46020002 */  mul.s     $f0, $f0, $f2
/* 1789C8 8024A0E8 00000000 */  nop       
/* 1789CC 8024A0EC 3C01802A */  lui       $at, 0x802a
/* 1789D0 8024A0F0 C42AF28C */  lwc1      $f10, -0xd74($at)
/* 1789D4 8024A0F4 461A5282 */  mul.s     $f10, $f10, $f26
/* 1789D8 8024A0F8 00000000 */  nop       
/* 1789DC 8024A0FC 3C01802A */  lui       $at, 0x802a
/* 1789E0 8024A100 C428F290 */  lwc1      $f8, -0xd70($at)
/* 1789E4 8024A104 461A4202 */  mul.s     $f8, $f8, $f26
/* 1789E8 8024A108 00000000 */  nop       
/* 1789EC 8024A10C 3C01802A */  lui       $at, 0x802a
/* 1789F0 8024A110 C424F294 */  lwc1      $f4, -0xd6c($at)
/* 1789F4 8024A114 3C02802A */  lui       $v0, 0x802a
/* 1789F8 8024A118 8442F280 */  lh        $v0, -0xd80($v0)
/* 1789FC 8024A11C 461A2102 */  mul.s     $f4, $f4, $f26
/* 178A00 8024A120 00000000 */  nop       
/* 178A04 8024A124 44821000 */  mtc1      $v0, $f2
/* 178A08 8024A128 00000000 */  nop       
/* 178A0C 8024A12C 468010A0 */  cvt.s.w   $f2, $f2
/* 178A10 8024A130 3C02802A */  lui       $v0, 0x802a
/* 178A14 8024A134 8442F282 */  lh        $v0, -0xd7e($v0)
/* 178A18 8024A138 44823000 */  mtc1      $v0, $f6
/* 178A1C 8024A13C 00000000 */  nop       
/* 178A20 8024A140 468031A0 */  cvt.s.w   $f6, $f6
/* 178A24 8024A144 46163182 */  mul.s     $f6, $f6, $f22
/* 178A28 8024A148 00000000 */  nop       
/* 178A2C 8024A14C 46141080 */  add.s     $f2, $f2, $f20
/* 178A30 8024A150 3C02802A */  lui       $v0, 0x802a
/* 178A34 8024A154 8442F284 */  lh        $v0, -0xd7c($v0)
/* 178A38 8024A158 46001080 */  add.s     $f2, $f2, $f0
/* 178A3C 8024A15C 44820000 */  mtc1      $v0, $f0
/* 178A40 8024A160 00000000 */  nop       
/* 178A44 8024A164 46800020 */  cvt.s.w   $f0, $f0
/* 178A48 8024A168 46160002 */  mul.s     $f0, $f0, $f22
/* 178A4C 8024A16C 00000000 */  nop       
/* 178A50 8024A170 46161082 */  mul.s     $f2, $f2, $f22
/* 178A54 8024A174 00000000 */  nop       
/* 178A58 8024A178 46064200 */  add.s     $f8, $f8, $f6
/* 178A5C 8024A17C 3C04802A */  lui       $a0, 0x802a
/* 178A60 8024A180 2484F29E */  addiu     $a0, $a0, -0xd62
/* 178A64 8024A184 46002100 */  add.s     $f4, $f4, $f0
/* 178A68 8024A188 4600440D */  trunc.w.s $f16, $f8
/* 178A6C 8024A18C 44028000 */  mfc1      $v0, $f16
/* 178A70 8024A190 00000000 */  nop       
/* 178A74 8024A194 A6020024 */  sh        $v0, 0x24($s0)
/* 178A78 8024A198 46025280 */  add.s     $f10, $f10, $f2
/* 178A7C 8024A19C 4600240D */  trunc.w.s $f16, $f4
/* 178A80 8024A1A0 44028000 */  mfc1      $v0, $f16
/* 178A84 8024A1A4 00000000 */  nop       
/* 178A88 8024A1A8 A6020022 */  sh        $v0, 0x22($s0)
/* 178A8C 8024A1AC 4600540D */  trunc.w.s $f16, $f10
/* 178A90 8024A1B0 44028000 */  mfc1      $v0, $f16
/* 178A94 8024A1B4 00000000 */  nop       
/* 178A98 8024A1B8 A602001E */  sh        $v0, 0x1e($s0)
/* 178A9C 8024A1BC 84820000 */  lh        $v0, ($a0)
/* 178AA0 8024A1C0 94830000 */  lhu       $v1, ($a0)
/* 178AA4 8024A1C4 14400006 */  bnez      $v0, .L8024A1E0
/* 178AA8 8024A1C8 2462FFFF */   addiu    $v0, $v1, -1
/* 178AAC 8024A1CC 24020001 */  addiu     $v0, $zero, 1
/* 178AB0 8024A1D0 3C01802A */  lui       $at, 0x802a
/* 178AB4 8024A1D4 A022F29C */  sb        $v0, -0xd64($at)
/* 178AB8 8024A1D8 0809287A */  j         .L8024A1E8
/* 178ABC 8024A1DC 0000102D */   daddu    $v0, $zero, $zero
.L8024A1E0:
/* 178AC0 8024A1E0 A4820000 */  sh        $v0, ($a0)
/* 178AC4 8024A1E4 0000102D */  daddu     $v0, $zero, $zero
.L8024A1E8:
/* 178AC8 8024A1E8 8FBF0040 */  lw        $ra, 0x40($sp)
/* 178ACC 8024A1EC 8FB1003C */  lw        $s1, 0x3c($sp)
/* 178AD0 8024A1F0 8FB00038 */  lw        $s0, 0x38($sp)
/* 178AD4 8024A1F4 D7BE0070 */  ldc1      $f30, 0x70($sp)
/* 178AD8 8024A1F8 D7BC0068 */  ldc1      $f28, 0x68($sp)
/* 178ADC 8024A1FC D7BA0060 */  ldc1      $f26, 0x60($sp)
/* 178AE0 8024A200 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 178AE4 8024A204 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 178AE8 8024A208 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 178AEC 8024A20C 03E00008 */  jr        $ra
/* 178AF0 8024A210 27BD0078 */   addiu    $sp, $sp, 0x78
