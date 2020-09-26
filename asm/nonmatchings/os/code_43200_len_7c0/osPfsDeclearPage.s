.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osPfsDeclearPage
/* 4389C 8006849C 24020001 */  addiu     $v0, $zero, 1
/* 438A0 800684A0 8FAA0014 */  lw        $t2, 0x14($sp)
/* 438A4 800684A4 93AB0013 */  lbu       $t3, 0x13($sp)
/* 438A8 800684A8 8FAE0018 */  lw        $t6, 0x18($sp)
/* 438AC 800684AC 15600002 */  bnez      $t3, .L800684B8
/* 438B0 800684B0 00007821 */   addu     $t7, $zero, $zero
/* 438B4 800684B4 8C820060 */  lw        $v0, 0x60($a0)
.L800684B8:
/* 438B8 800684B8 00402021 */  addu      $a0, $v0, $zero
/* 438BC 800684BC 28820080 */  slti      $v0, $a0, 0x80
/* 438C0 800684C0 1040000A */  beqz      $v0, .L800684EC
/* 438C4 800684C4 00041040 */   sll      $v0, $a0, 1
/* 438C8 800684C8 24080003 */  addiu     $t0, $zero, 3
/* 438CC 800684CC 00451821 */  addu      $v1, $v0, $a1
.L800684D0:
/* 438D0 800684D0 94620000 */  lhu       $v0, ($v1)
/* 438D4 800684D4 10480006 */  beq       $v0, $t0, .L800684F0
/* 438D8 800684D8 24020080 */   addiu    $v0, $zero, 0x80
/* 438DC 800684DC 24840001 */  addiu     $a0, $a0, 1
/* 438E0 800684E0 28820080 */  slti      $v0, $a0, 0x80
/* 438E4 800684E4 1440FFFA */  bnez      $v0, .L800684D0
/* 438E8 800684E8 24630002 */   addiu    $v1, $v1, 2
.L800684EC:
/* 438EC 800684EC 24020080 */  addiu     $v0, $zero, 0x80
.L800684F0:
/* 438F0 800684F0 14820004 */  bne       $a0, $v0, .L80068504
/* 438F4 800684F4 24030001 */   addiu    $v1, $zero, 1
/* 438F8 800684F8 2402FFFF */  addiu     $v0, $zero, -1
/* 438FC 800684FC 0801A16B */  j         .L800685AC
/* 43900 80068500 ACE20000 */   sw       $v0, ($a3)
.L80068504:
/* 43904 80068504 AD430000 */  sw        $v1, ($t2)
/* 43908 80068508 00804021 */  addu      $t0, $a0, $zero
/* 4390C 8006850C 25040001 */  addiu     $a0, $t0, 1
/* 43910 80068510 0066182A */  slt       $v1, $v1, $a2
/* 43914 80068514 28820080 */  slti      $v0, $a0, 0x80
/* 43918 80068518 00621824 */  and       $v1, $v1, $v0
/* 4391C 8006851C 10600015 */  beqz      $v1, .L80068574
/* 43920 80068520 01006821 */   addu     $t5, $t0, $zero
/* 43924 80068524 240C0003 */  addiu     $t4, $zero, 3
/* 43928 80068528 00041040 */  sll       $v0, $a0, 1
/* 4392C 8006852C 00454821 */  addu      $t1, $v0, $a1
.L80068530:
/* 43930 80068530 95220000 */  lhu       $v0, ($t1)
/* 43934 80068534 144C0008 */  bne       $v0, $t4, .L80068558
/* 43938 80068538 00081040 */   sll      $v0, $t0, 1
/* 4393C 8006853C 00A21021 */  addu      $v0, $a1, $v0
/* 43940 80068540 A04B0000 */  sb        $t3, ($v0)
/* 43944 80068544 A0440001 */  sb        $a0, 1($v0)
/* 43948 80068548 8D420000 */  lw        $v0, ($t2)
/* 4394C 8006854C 00804021 */  addu      $t0, $a0, $zero
/* 43950 80068550 24420001 */  addiu     $v0, $v0, 1
/* 43954 80068554 AD420000 */  sw        $v0, ($t2)
.L80068558:
/* 43958 80068558 8D430000 */  lw        $v1, ($t2)
/* 4395C 8006855C 24840001 */  addiu     $a0, $a0, 1
/* 43960 80068560 28820080 */  slti      $v0, $a0, 0x80
/* 43964 80068564 0066182A */  slt       $v1, $v1, $a2
/* 43968 80068568 00621824 */  and       $v1, $v1, $v0
/* 4396C 8006856C 1460FFF0 */  bnez      $v1, .L80068530
/* 43970 80068570 25290002 */   addiu    $t1, $t1, 2
.L80068574:
/* 43974 80068574 24020080 */  addiu     $v0, $zero, 0x80
/* 43978 80068578 14820007 */  bne       $a0, $v0, .L80068598
/* 4397C 8006857C ACED0000 */   sw       $t5, ($a3)
/* 43980 80068580 8D420000 */  lw        $v0, ($t2)
/* 43984 80068584 0046102A */  slt       $v0, $v0, $a2
/* 43988 80068588 50400004 */  beql      $v0, $zero, .L8006859C
/* 4398C 8006858C 00081040 */   sll      $v0, $t0, 1
/* 43990 80068590 0801A16B */  j         .L800685AC
/* 43994 80068594 ADC80000 */   sw       $t0, ($t6)
.L80068598:
/* 43998 80068598 00081040 */  sll       $v0, $t0, 1
.L8006859C:
/* 4399C 8006859C 00A21021 */  addu      $v0, $a1, $v0
/* 439A0 800685A0 24030001 */  addiu     $v1, $zero, 1
/* 439A4 800685A4 A4430000 */  sh        $v1, ($v0)
/* 439A8 800685A8 ADC00000 */  sw        $zero, ($t6)
.L800685AC:
/* 439AC 800685AC 03E00008 */  jr        $ra
/* 439B0 800685B0 01E01021 */   addu     $v0, $t7, $zero
/* 439B4 800685B4 00000000 */  nop       
/* 439B8 800685B8 00000000 */  nop       
/* 439BC 800685BC 00000000 */  nop       
