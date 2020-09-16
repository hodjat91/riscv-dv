.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: j h0_start
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15
                  j init_machine_mode

custom_csr_setup: 
                  nop

init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x15ae8efe
                  li x3, 0xae1bfa45
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x0
                  li x10, 0xf7fa3be3
                  li x11, 0x200bb972
                  li x12, 0xf
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xf38c5f7e
                  li x16, 0xcc606817
                  li x17, 0x1
                  li x18, 0x0
                  li x19, 0x80000000
                  li x21, 0x9ef46cb6
                  li x22, 0xf6ae0834
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xd4922567
                  li x27, 0x747cd7bc
                  li x28, 0xffb25952
                  li x29, 0x1
                  li x30, 0x0
                  li x31, 0x0
                  la x9, user_stack_end
main:             li         s0, 0x199c1d #start riscv_int_numeric_corner_stream_16
                  li         a2, 0x80000000
                  li         s3, 0x0
                  li         ra, 0x0
                  li         s2, 0xffffffff
                  li         s7, 0x80000000
                  li         gp, 0x0
                  li         t4, 0xffffffff
                  li         sp, 0x6345852
                  li         a5, 0xffffffff
                  addi       a2, s2, -863
                  add        sp, a5, t4
                  addi       sp, gp, -86
                  nop
                  sub        a2, ra, t4
                  add        s3, sp, s7
                  sub        s7, s3, a5
                  sub        t4, s2, gp
                  add        ra, ra, sp
                  addi       gp, a2, 194
                  add        s2, a5, a2
                  auipc      gp, 498925
                  nop
                  auipc      s0, 409897
                  sub        gp, s7, t4
                  nop
                  add        s7, a2, gp
                  lui        a5, 932578
                  nop
                  nop
                  sub        s3, s0, sp
                  add        s0, sp, s7
                  auipc      gp, 757984
                  add        s7, ra, gp
                  auipc      s7, 693319
                  lui        s7, 1005757
                  addi       gp, s7, -390
                  nop
                  auipc      a2, 773798
                  lui        ra, 441915 #end riscv_int_numeric_corner_stream_16
                  li         s3, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li         s2, 0x790503ad
                  li         a7, 0x80000000
                  li         t4, 0x80000000
                  li         sp, 0x80000000
                  li         tp, 0xffffffff
                  li         ra, 0x7fc44600
                  li         s5, 0x730f31f8
                  li         a3, 0x0
                  li         a6, 0x80000000
                  nop
                  add        a3, a6, s3
                  addi       t4, s3, -357
                  lui        a6, 834775
                  auipc      s3, 99618
                  lui        a6, 405781
                  sub        a7, t4, sp
                  nop
                  auipc      s5, 477871
                  nop
                  addi       s2, tp, 684
                  nop
                  sub        tp, a6, tp
                  auipc      tp, 986878
                  lui        t4, 750232
                  lui        t4, 233212
                  auipc      ra, 405901 #end riscv_int_numeric_corner_stream_37
                  li         t1, 0xb8ba7d43 #start riscv_int_numeric_corner_stream_27
                  li         t5, 0xf73e2ec1
                  li         ra, 0x8f179143
                  li         a1, 0xd40d1e24
                  li         s2, 0x0
                  li         a5, 0x0
                  li         t4, 0xffffffff
                  li         s5, 0x0
                  li         a2, 0xffffffff
                  li         a0, 0x80000000
                  sub        t1, a5, t1
                  nop
                  auipc      t1, 197110
                  addi       s5, s2, 871
                  sub        a2, a2, s2
                  auipc      t4, 986508
                  nop
                  nop
                  auipc      s2, 970074
                  addi       t1, t4, -10
                  addi       s5, s2, -157
                  addi       s5, s2, -671
                  add        a1, t5, t5
                  sub        ra, ra, t1
                  add        s2, s5, ra
                  add        s2, a5, s2
                  add        t4, ra, t5
                  addi       a2, a1, -37
                  nop
                  sub        a1, t5, t5
                  auipc      a0, 12520
                  auipc      a2, 850807
                  add        ra, s2, t4
                  lui        a5, 715174
                  sub        t4, a5, s2
                  auipc      t1, 970399
                  addi       s5, a1, -279
                  nop
                  lui        t5, 35029
                  sub        s2, t1, a0 #end riscv_int_numeric_corner_stream_27
                  li         s8, 0xeb9658ba #start riscv_int_numeric_corner_stream_8
                  li         gp, 0x0
                  li         s0, 0x80000000
                  li         t3, 0x80000000
                  li         a5, 0xffffffff
                  li         s7, 0x80000000
                  li         a0, 0xffffffff
                  li         a3, 0x20e219b7
                  li         a7, 0x0
                  li         a1, 0xffffffff
                  addi       a3, s0, 908
                  sub        a5, a3, a5
                  addi       a1, s0, 365
                  sub        t3, a7, a0
                  addi       a5, a0, 422
                  addi       a1, a0, -567
                  lui        s8, 796619
                  nop
                  auipc      a7, 917017
                  auipc      a1, 1031972
                  add        a3, gp, s7
                  sub        s7, s7, a3
                  nop
                  lui        s8, 377224
                  add        a0, s7, s8
                  auipc      a1, 1040375
                  add        s0, s7, gp
                  add        s8, s0, t3
                  nop
                  auipc      s7, 637821
                  auipc      a5, 1031074
                  auipc      s7, 548306
                  nop
                  auipc      a1, 824785
                  auipc      s7, 821025
                  add        a7, a0, s7 #end riscv_int_numeric_corner_stream_8
                  li         a2, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li         a7, 0x80000000
                  li         t0, 0xffffffff
                  li         a1, 0x0
                  li         s3, 0xcf2a9c98
                  li         s5, 0x0
                  li         t1, 0x421b7240
                  li         t4, 0x0
                  li         gp, 0x80000000
                  li         a4, 0x80000000
                  auipc      s5, 667786
                  lui        t0, 852499
                  addi       gp, s3, 944
                  add        a4, a2, a7
                  sub        a7, s5, t0
                  nop
                  auipc      t0, 866780
                  nop
                  add        a1, a4, a4
                  add        s5, s5, gp
                  nop
                  sub        a1, gp, s5
                  addi       a2, a2, -598
                  add        t1, s3, t4
                  auipc      t0, 958399
                  sub        t4, t1, s3
                  add        a4, s3, gp
                  sub        a1, t1, t1
                  addi       a1, s5, 467
                  auipc      s3, 434505
                  add        a1, t0, s5 #end riscv_int_numeric_corner_stream_29
                  li         t2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li         a0, 0x80000000
                  li         sp, 0x80000000
                  li         t0, 0x80000000
                  li         t6, 0x0
                  li         t3, 0xffffffff
                  li         t4, 0x8cfa4dd3
                  li         s9, 0xffffffff
                  li         a6, 0x80000000
                  li         s5, 0x5ef2a9e
                  lui        a6, 567839
                  add        a0, t3, s9
                  addi       t6, sp, 467
                  lui        a0, 204208
                  nop
                  auipc      t0, 648282
                  addi       sp, sp, 958
                  addi       a6, sp, -831
                  lui        s5, 899525
                  addi       s9, s5, 351
                  nop
                  nop
                  auipc      s5, 292673
                  lui        t4, 292007
                  sub        a0, t3, t6
                  auipc      sp, 18015
                  lui        s9, 83729
                  lui        t3, 581838
                  auipc      s5, 621090
                  auipc      a6, 479413
                  auipc      s5, 872686
                  add        t6, a0, t3
                  addi       t2, t0, 143
                  add        s9, a6, a6
                  add        a6, s5, t2
                  auipc      s5, 236534 #end riscv_int_numeric_corner_stream_4
                  li         a1, 0xffffffff #start riscv_int_numeric_corner_stream_20
                  li         t0, 0x80000000
                  li         s3, 0x80000000
                  li         s8, 0x80000000
                  li         ra, 0x466a3ec
                  li         sp, 0xdcdc1052
                  li         a3, 0x80000000
                  li         s7, 0xffffffff
                  li         s2, 0x0
                  li         s6, 0xff311b3c
                  addi       s7, ra, 886
                  lui        a1, 566084
                  addi       s6, s8, -803
                  addi       sp, a1, 968
                  auipc      s2, 514267
                  nop
                  nop
                  auipc      s3, 846150
                  add        sp, s8, s8
                  lui        t0, 528227
                  lui        s2, 112136
                  auipc      ra, 489190
                  auipc      s6, 979453
                  sub        s2, s6, s6
                  sub        s8, s7, s2
                  lui        a1, 441114
                  nop
                  auipc      ra, 951601
                  lui        t0, 567941
                  sub        s8, a3, s3
                  add        ra, t0, t0
                  addi       a1, s8, 209
                  lui        a1, 756853
                  addi       t0, t0, -1002
                  sub        s3, s6, s2
                  addi       ra, ra, 500
                  sub        ra, ra, s3
                  lui        s6, 179513
                  add        s8, ra, s2
                  sub        sp, t0, s8 #end riscv_int_numeric_corner_stream_20
                  li         t1, 0x0 #start riscv_int_numeric_corner_stream_26
                  li         s9, 0xffffffff
                  li         s8, 0x80000000
                  li         a0, 0xffffffff
                  li         a2, 0x0
                  li         a3, 0xb950d61
                  li         a5, 0xffffffff
                  li         t2, 0x0
                  li         a6, 0xb8350d06
                  li         ra, 0xc8efea17
                  lui        a2, 295693
                  nop
                  lui        s8, 207021
                  add        a0, s8, t1
                  lui        a2, 2065
                  auipc      a0, 49730
                  nop
                  addi       ra, ra, 249
                  sub        t1, a3, t2
                  add        a2, a2, t1
                  nop
                  sub        a0, a5, a0
                  sub        a3, t1, ra
                  nop
                  addi       a5, a6, -250
                  addi       s9, a3, -979
                  auipc      a5, 813842
                  auipc      a6, 163540
                  auipc      t2, 639602
                  nop
                  add        s8, a6, t2
                  lui        a0, 420790
                  nop
                  addi       ra, t1, -590 #end riscv_int_numeric_corner_stream_26
                  li         s0, 0x39abde0c #start riscv_int_numeric_corner_stream_6
                  li         t6, 0x0
                  li         a1, 0xffffffff
                  li         s2, 0x0
                  li         tp, 0x0
                  li         s5, 0xffffffff
                  li         a3, 0x80000000
                  li         t4, 0xffffffff
                  li         s11, 0x9824ed13
                  li         t2, 0x80000000
                  auipc      t2, 168558
                  add        a3, tp, s11
                  lui        a3, 1037187
                  auipc      a3, 97740
                  auipc      t4, 56631
                  addi       s5, s2, -141
                  addi       s11, tp, 446
                  auipc      t6, 987716
                  sub        s0, s11, s11
                  addi       s11, s11, 336
                  addi       a3, s11, 363
                  sub        t4, a3, s5
                  add        a1, t6, a3
                  lui        s11, 839474
                  add        s11, tp, s0
                  lui        tp, 471326
                  nop
                  add        a3, s0, tp
                  addi       a3, s2, 928
                  sub        t4, s5, a3
                  auipc      t2, 93351
                  auipc      t2, 504609
                  lui        a3, 268677
                  add        s2, t4, a1
                  sub        tp, s2, t2
                  auipc      t4, 158427 #end riscv_int_numeric_corner_stream_6
                  li         t1, 0xb39ecc2d #start riscv_int_numeric_corner_stream_24
                  li         a0, 0x0
                  li         t3, 0xffffffff
                  li         sp, 0x0
                  li         s11, 0x0
                  li         s7, 0x0
                  li         s6, 0xffffffff
                  li         s9, 0x80000000
                  li         t0, 0x80000000
                  li         a7, 0x80000000
                  add        t0, t3, t1
                  addi       t1, t3, 147
                  nop
                  add        s6, sp, s9
                  addi       s6, s11, 689
                  add        s9, s11, s7
                  add        t3, t3, s6
                  auipc      s11, 60041
                  auipc      sp, 83742
                  nop
                  auipc      a7, 715330
                  add        s11, sp, s6
                  addi       a7, t1, 953
                  lui        a7, 511563
                  auipc      sp, 569230
                  addi       sp, t1, -767
                  sub        s9, a7, s11
                  auipc      t3, 612224
                  auipc      sp, 821672
                  auipc      s7, 883098
                  addi       a0, t0, 989
                  sub        s7, sp, s11
                  nop
                  auipc      s9, 93676
                  lui        s6, 844084 #end riscv_int_numeric_corner_stream_24
                  li         a1, 0x0 #start riscv_int_numeric_corner_stream_12
                  li         a5, 0x80000000
                  li         s6, 0xffffffff
                  li         a2, 0xffffffff
                  li         a4, 0x80000000
                  li         t5, 0x949120d8
                  li         gp, 0x0
                  li         t2, 0xffffffff
                  li         a3, 0x80000000
                  li         a6, 0x0
                  addi       a1, a1, 366
                  add        gp, s6, t2
                  addi       s6, a3, 873
                  auipc      a1, 774846
                  nop
                  addi       a4, a1, -446
                  auipc      t5, 328830
                  sub        a5, a5, t2
                  auipc      a6, 403641
                  add        a3, a1, gp
                  add        gp, gp, a5
                  sub        a1, t5, a3
                  nop
                  addi       a3, a5, -783
                  lui        a2, 68052
                  nop
                  lui        a1, 755518
                  lui        s6, 834034 #end riscv_int_numeric_corner_stream_12
                  li         sp, 0x0 #start riscv_int_numeric_corner_stream_13
                  li         s5, 0x0
                  li         t5, 0x0
                  li         s11, 0x80000000
                  li         s3, 0xffffffff
                  li         a3, 0x395dbd8d
                  li         ra, 0x0
                  li         t2, 0x80000000
                  li         a0, 0xe2ef2d93
                  li         a5, 0xe9c9a5
                  addi       a3, a5, -608
                  add        a5, ra, s11
                  nop
                  lui        a5, 1026279
                  lui        t2, 998146
                  sub        a0, a0, sp
                  add        ra, s11, s3
                  sub        s3, s11, a0
                  addi       a3, sp, 353
                  addi       t5, sp, 1004
                  addi       a5, a3, 810
                  add        s5, a5, ra
                  lui        t5, 894239
                  add        ra, sp, s5
                  addi       t2, s3, 837
                  sub        sp, a0, s3 #end riscv_int_numeric_corner_stream_13
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_39
                  li         s3, 0x4ebae98f
                  li         a3, 0x80000000
                  li         t0, 0x80000000
                  li         sp, 0x80000000
                  li         gp, 0x0
                  li         t1, 0x0
                  li         a6, 0xc286a811
                  li         s2, 0xf087c1eb
                  li         s9, 0x80000000
                  nop
                  nop
                  nop
                  addi       t1, s11, -1014
                  addi       s3, sp, -245
                  sub        t1, s3, a3
                  sub        s9, s11, a3
                  addi       a3, a6, -953
                  add        t0, s9, gp
                  auipc      t0, 821914
                  add        s3, s11, s11
                  sub        t0, t1, gp
                  lui        s9, 818138
                  sub        t1, s9, s2
                  nop
                  sub        t1, sp, sp
                  add        gp, a6, s11
                  addi       sp, gp, -149
                  nop
                  sub        gp, sp, s3
                  nop
                  nop
                  sub        s3, s11, s2
                  lui        s2, 146697
                  sub        s11, sp, gp #end riscv_int_numeric_corner_stream_39
                  li         s0, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li         s3, 0xffffffff
                  li         s9, 0xecb39157
                  li         ra, 0x0
                  li         s6, 0xffffffff
                  li         t0, 0x80000000
                  li         t5, 0xffffffff
                  li         s2, 0x80000000
                  li         a1, 0x74e4918e
                  li         s8, 0xffffffff
                  addi       s8, t0, -355
                  sub        s3, t5, s6
                  lui        ra, 640111
                  nop
                  auipc      s3, 434651
                  addi       s9, a1, -866
                  add        a1, s6, t0
                  addi       s6, s8, -408
                  addi       s8, s0, -638
                  lui        a1, 497886
                  lui        s0, 756655
                  addi       t5, a1, 615
                  nop
                  nop
                  add        s9, s0, s8
                  addi       t0, s6, 658
                  auipc      s6, 246733
                  addi       ra, s8, 96
                  addi       t0, s6, -409
                  nop
                  lui        s9, 466782 #end riscv_int_numeric_corner_stream_14
                  li         a5, 0x80000000 #start riscv_int_numeric_corner_stream_31
                  li         t0, 0xffffffff
                  li         t6, 0x80000000
                  li         a1, 0xffffffff
                  li         s5, 0x80000000
                  li         a6, 0x80000000
                  li         sp, 0xf786ee60
                  li         tp, 0x0
                  li         t3, 0xffffffff
                  li         t5, 0x0
                  sub        a6, t0, s5
                  nop
                  addi       tp, a5, 132
                  nop
                  nop
                  lui        t0, 387197
                  sub        t3, s5, sp
                  add        t6, a1, a6
                  sub        tp, sp, a6
                  add        t5, t0, t0
                  nop
                  add        a6, sp, s5
                  auipc      a6, 977182
                  addi       tp, sp, 153
                  addi       sp, t0, -296
                  nop
                  sub        a5, a6, sp
                  lui        s5, 247783
                  sub        tp, s5, t6
                  lui        t0, 800366
                  auipc      s5, 355387
                  auipc      tp, 315763
                  nop #end riscv_int_numeric_corner_stream_31
                  li         s5, 0xffffffff #start riscv_int_numeric_corner_stream_28
                  li         t2, 0x80000000
                  li         a3, 0x0
                  li         t6, 0xffffffff
                  li         gp, 0x0
                  li         s9, 0x80000000
                  li         sp, 0x28e4cdcf
                  li         t1, 0xe63542e5
                  li         a4, 0x80000000
                  li         a7, 0x0
                  nop
                  lui        t2, 706227
                  nop
                  add        a4, t1, a7
                  nop
                  auipc      t2, 1023917
                  lui        sp, 530590
                  lui        t2, 371565
                  add        a7, t2, a7
                  lui        t1, 353328
                  auipc      t1, 220659
                  lui        s9, 282637
                  auipc      sp, 901365
                  nop
                  addi       gp, s9, -323
                  add        t1, sp, t1
                  lui        t1, 98915
                  lui        a3, 662040
                  addi       t6, s5, -775
                  nop
                  lui        t1, 457689
                  lui        s9, 182487
                  lui        t1, 906766
                  sub        s9, t2, t2
                  add        s9, t2, a3 #end riscv_int_numeric_corner_stream_28
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         s8, 0xffffffff
                  li         a7, 0xffffffff
                  li         t3, 0xcadc9cc0
                  li         a2, 0x37fcb194
                  li         a5, 0x6ffb8cb7
                  li         a4, 0xfa3f7623
                  li         t1, 0x0
                  li         a0, 0xddfd828
                  li         a6, 0xffffffff
                  lui        a5, 450660
                  nop
                  lui        a2, 710560
                  addi       s8, a5, -622
                  nop
                  lui        a5, 927911
                  nop
                  lui        t1, 206628
                  addi       a2, a0, 176
                  auipc      a2, 1010077
                  auipc      a7, 212053
                  auipc      s8, 625153
                  nop
                  sub        a2, a4, a0
                  add        t3, t3, a6
                  auipc      a0, 125120
                  sub        a7, s7, a2
                  nop
                  add        t3, s8, a7 #end riscv_int_numeric_corner_stream_0
                  li         ra, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li         t4, 0x7eea1b0f
                  li         a6, 0x80000000
                  li         a2, 0xffffffff
                  li         s9, 0x80000000
                  li         a4, 0xffffffff
                  li         t3, 0x19e59809
                  li         gp, 0x80000000
                  li         a1, 0xb9f08b9
                  li         tp, 0x0
                  addi       t3, ra, 955
                  addi       a6, a6, -470
                  auipc      t3, 880846
                  addi       a6, a6, 639
                  auipc      a4, 540823
                  add        a6, gp, t4
                  nop
                  addi       a1, a6, 620
                  auipc      gp, 629069
                  lui        a1, 956201
                  lui        a2, 674904
                  lui        t3, 398057
                  sub        tp, t3, ra
                  add        a1, t3, a1
                  sub        t3, a1, s9
                  addi       t4, t3, -230
                  nop
                  auipc      tp, 800713
                  lui        s9, 428673
                  add        a6, a4, ra
                  addi       t4, ra, -609
                  nop
                  addi       a6, tp, 865
                  lui        s9, 545743
                  addi       gp, ra, -48
                  auipc      ra, 169174
                  sub        a4, a1, a1
                  sub        s9, t4, ra
                  nop #end riscv_int_numeric_corner_stream_19
                  sra        a0, a4, s10
                  nop
                  andi       zero, s9, -599
                  srli       a7, t0, 18
                  and        a2, s8, s0
                  srl        a3, s0, s6
                  sll        t5, t5, a4
                  xor        a5, gp, s1
                  sra        t5, t3, t1
                  srli       tp, gp, 24
                  addi       t4, s2, -415
                  sll        a0, s1, a6
                  or         s3, a1, a0
                  sltu       s9, s6, s7
                  sub        ra, tp, t0
                  srli       a0, sp, 23
                  andi       a0, zero, -255
                  lui        a2, 356426
                  sltiu      sp, a0, 223
                  add        a0, s1, s4
                  ori        s11, t0, 995
                  or         ra, zero, gp
                  sll        gp, a7, sp
                  sll        t1, sp, t6
                  sltiu      s9, s8, 391
                  nop
                  sll        s11, gp, s8
                  sltiu      s2, s8, -529
                  sub        ra, a6, s0
                  sltu       s7, t2, s2
                  andi       t2, s1, 656
                  srl        s0, a3, t5
                  sltiu      a4, t5, -717
                  addi       a4, tp, -994
                  lui        t2, 281415
                  xori       a2, sp, 666
                  sub        zero, s7, s0
                  sll        sp, t0, a1
                  slti       ra, s0, 608
                  sll        a6, t5, s10
                  xori       a6, t0, 861
                  sra        s6, a6, t3
                  slti       gp, s0, 77
                  sra        t3, zero, a5
                  srai       t2, t5, 29
                  slt        s3, gp, a2
                  nop
                  xor        ra, a0, t6
                  srai       a7, a2, 27
                  lui        s9, 1030292
                  srai       gp, a0, 18
                  srli       tp, a4, 5
                  sra        s0, s3, s9
                  srai       t1, s6, 12
                  xor        s6, s9, s6
                  addi       a7, a6, 371
                  or         a2, t5, a7
                  srl        tp, t2, ra
                  add        ra, a1, s2
                  sra        tp, ra, gp
                  srai       t5, t4, 26
                  slti       a7, a5, -475
                  sltu       t2, s7, s0
                  sub        t1, s5, s5
                  or         zero, sp, s2
                  xor        t5, s3, a0
                  slli       s6, s5, 4
                  lui        t2, 207521
                  nop
                  xor        t0, ra, s0
                  and        s9, s6, s0
                  srli       a6, gp, 26
                  srli       a7, s6, 14
                  andi       a5, a4, 891
                  sltiu      a5, t4, 705
                  sra        t2, s0, s6
                  srl        gp, s2, s6
                  srai       t1, t3, 0
                  ori        t5, t0, 181
                  andi       s3, a6, -158
                  slli       t2, s9, 31
                  add        s9, a6, t3
                  or         s8, s2, ra
                  sll        s3, s4, s4
                  auipc      s3, 462246
                  andi       s2, s5, 698
                  slt        s8, tp, s7
                  or         gp, s3, a7
                  sra        a3, a7, t2
                  auipc      s5, 234848
                  slti       a3, a3, -176
                  srl        a4, s4, t4
                  ori        s6, tp, 775
                  add        s6, s3, zero
                  srli       s6, t1, 18
                  addi       s6, s1, 774
                  srl        s11, a5, tp
                  slt        s5, ra, t3
                  andi       a6, s9, -357
                  slti       a5, s7, 749
                  slti       s8, s0, -244
                  slli       t4, s5, 11
                  andi       s0, t2, 93
                  addi       t3, t5, -95
                  sub        s11, a1, t1
                  xor        a7, gp, t1
                  srl        t3, t2, s8
                  ori        a4, t2, 491
                  sll        a2, t6, a7
                  sltu       s9, a7, s9
                  xor        s0, sp, a4
                  sltiu      s11, s4, 296
                  srl        gp, t2, s1
                  srai       a6, t2, 21
                  slt        t1, t0, s5
                  xori       s3, t3, 403
                  ori        a5, a7, -95
                  slti       a6, a3, 977
                  xori       sp, s6, -831
                  lui        tp, 158550
                  nop
                  nop
                  sra        gp, s6, t4
                  nop
                  auipc      t4, 892940
                  slli       ra, s2, 22
                  addi       s7, ra, 775
                  addi       a2, s11, 913
                  srai       a4, s4, 2
                  sltiu      s2, sp, 933
                  sltu       t3, s10, a4
                  or         t1, t3, a2
                  srli       t1, a1, 9
                  srli       a6, a3, 9
                  or         zero, s4, gp
                  addi       s5, t4, 39
                  sra        tp, s7, sp
                  sra        s9, a1, s9
                  slt        s9, t5, s5
                  ori        s8, s3, 590
                  sltiu      gp, a0, 773
                  lui        s9, 172139
                  xori       t1, a2, -292
                  xori       gp, tp, -816
                  nop
                  srli       a3, s4, 23
                  sll        a1, s11, s7
                  nop
                  lui        gp, 614946
                  lui        s8, 38561
                  nop
                  add        t1, a1, t2
                  sra        a2, a0, t3
                  lui        s9, 758342
                  xor        s2, t0, s11
                  slt        s0, t3, t5
                  slli       t1, a6, 23
                  nop
                  sltu       a2, s11, s8
                  nop
                  srli       t5, a5, 5
                  ori        t6, sp, -263
                  sra        a4, t5, a5
                  andi       s5, a3, -126
                  sra        tp, a7, a1
                  add        s3, t1, s2
                  and        a5, tp, a4
                  sltu       t5, s4, a1
                  slti       a4, s11, -967
                  andi       a2, a7, 372
                  add        a3, gp, s4
                  srli       s8, s11, 8
                  sltu       a1, s0, a0
                  slti       zero, gp, 569
                  and        s8, s3, a4
                  andi       t5, a1, -859
                  xori       s9, t4, 391
                  add        a7, s11, a6
                  nop
                  slli       a4, ra, 24
                  add        a0, s9, sp
                  auipc      a7, 866631
                  sub        a7, s5, a1
                  srli       a1, s0, 0
                  slli       a3, s1, 28
                  and        s6, a6, a3
                  xori       t6, s0, -599
                  ori        t1, ra, 195
                  or         a4, s3, t3
                  addi       tp, t5, -81
                  xori       s7, a1, -651
                  nop
                  srl        s2, zero, a0
                  xori       zero, a6, 331
                  and        t3, t6, s10
                  slli       t0, a1, 3
                  sltiu      s5, s9, 243
                  addi       t3, gp, -602
                  xor        a3, a5, a3
                  and        a7, a1, s8
                  auipc      t1, 740981
                  slli       s2, gp, 10
                  sltu       s9, sp, t0
                  andi       s7, s1, 415
                  slt        a4, a0, a7
                  sltu       t4, t1, s1
                  add        sp, t0, sp
                  sub        a2, t3, tp
                  auipc      s8, 656594
                  auipc      s9, 564282
                  or         s9, ra, s3
                  sltiu      t5, s9, -888
                  ori        sp, t1, -119
                  slt        a3, t2, s10
                  sra        s11, t5, t4
                  andi       t0, s0, 995
                  addi       gp, s7, 260
                  xori       a5, s6, -237
                  nop
                  slt        a2, t0, s4
                  addi       t6, s1, -182
                  nop
                  sra        a2, t1, t1
                  ori        t1, s5, 765
                  sra        t2, a2, t3
                  andi       tp, s0, 145
                  auipc      t5, 486956
                  ori        s0, zero, -867
                  sltiu      s11, t2, 492
                  srai       zero, s10, 5
                  slli       a6, s7, 12
                  lui        s5, 565445
                  slli       s6, ra, 5
                  xori       s5, tp, 978
                  srai       s2, s11, 26
                  ori        s11, s8, -115
                  xor        sp, s10, t0
                  srli       a7, s4, 21
                  sltiu      s3, t1, 512
                  xor        t2, sp, sp
                  sltiu      a5, gp, -837
                  lui        gp, 859316
                  auipc      s2, 868470
                  add        t1, s11, s4
                  or         t5, a1, a6
                  xor        t5, t0, t2
                  or         t2, zero, s5
                  srl        s0, s2, a3
                  andi       s11, s1, 484
                  sra        a5, zero, a3
                  sub        s3, s9, s9
                  srl        t3, a0, t0
                  sltiu      a3, s6, 1007
                  add        s8, t5, t3
                  auipc      s5, 686243
                  nop
                  srl        a2, s5, s8
                  srli       t4, tp, 16
                  addi       s11, s9, -348
                  xori       sp, t2, -864
                  slt        s6, a0, t1
                  xor        a1, a0, t6
                  sub        t2, s7, s2
                  slti       s3, zero, -863
                  ori        a6, a3, 183
                  sll        a6, t2, tp
                  xor        s11, t4, s2
                  sra        a3, a6, s8
                  xor        a2, t0, t6
                  slti       a4, t0, 283
                  sra        s6, s9, s5
                  xori       t3, a2, -543
                  srai       s0, s8, 6
                  srli       s11, s0, 26
                  or         a2, s9, s1
                  auipc      a7, 755804
                  sltiu      s3, t3, 601
                  xor        s11, s0, a5
                  sra        t6, s5, s10
                  slt        a7, s4, s0
                  auipc      t3, 144187
                  slti       a1, t0, -721
                  or         t2, s10, s5
                  andi       s7, s0, 377
                  sltiu      sp, a2, 144
                  nop
                  slti       s0, s5, -186
                  ori        t2, t1, 428
                  srai       t0, gp, 28
                  srai       t0, s0, 23
                  slli       s8, s2, 11
                  add        s9, sp, s11
                  srli       s5, s9, 9
                  sll        s9, a0, t1
                  sra        s5, s0, t4
                  sub        s6, s7, s8
                  andi       a3, a2, -947
                  xor        ra, a5, gp
                  andi       s5, a7, 378
                  ori        t3, s1, 223
                  xor        a5, gp, a5
                  or         a1, a4, t0
                  addi       a3, a5, -652
                  srl        s7, s7, s11
                  slli       a2, t4, 28
                  or         s3, t4, tp
                  sra        t4, s3, t0
                  andi       t6, s0, -545
                  slt        t5, t1, s8
                  xori       a6, t2, 262
                  lui        s8, 343514
                  srl        a5, s1, t4
                  srai       s0, s0, 30
                  ori        t3, s4, 552
                  ori        t4, gp, -816
                  sltiu      s2, s1, -606
                  xor        t0, t4, a6
                  xori       sp, ra, -345
                  slli       s9, s11, 1
                  andi       s3, s6, 413
                  xor        s0, gp, t2
                  andi       t5, s8, 616
                  xor        t2, gp, s7
                  sltu       zero, a3, a0
                  or         a2, t1, a1
                  auipc      zero, 455889
                  srli       ra, a0, 13
                  andi       gp, tp, 230
                  srl        ra, sp, a6
                  or         t3, sp, a5
                  xor        t6, t1, s10
                  ori        s8, s5, 23
                  nop
                  slli       t6, s3, 26
                  slti       a0, s10, 272
                  sltiu      s2, s2, -865
                  sra        t6, a0, s9
                  slt        s8, sp, t0
                  addi       s9, a1, 10
                  slli       s3, zero, 5
                  ori        ra, s10, -996
                  sltu       s8, t4, gp
                  or         sp, sp, sp
                  slti       a7, s8, -893
                  sra        s3, s6, a4
                  ori        s3, a4, -624
                  slt        a4, t4, tp
                  srai       zero, a6, 9
                  or         sp, s0, s3
                  and        t1, t2, a4
                  li         tp, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li         a1, 0x80000000
                  li         a7, 0x2553abdc
                  li         s3, 0x80000000
                  li         s0, 0x80000000
                  li         a4, 0xffffffff
                  li         s9, 0xffffffff
                  li         a5, 0xffffffff
                  li         t2, 0x0
                  li         t1, 0xffffffff
                  nop
                  nop
                  lui        s3, 1007028
                  auipc      a1, 912938
                  add        s9, t2, s0
                  auipc      a4, 511651
                  nop
                  add        t2, t2, tp
                  add        s3, s3, t1
                  auipc      a4, 107067
                  nop
                  addi       a4, tp, -292
                  addi       a5, a7, -330
                  add        a1, a5, a5
                  add        s9, a5, s9
                  addi       tp, a7, -539
                  lui        a1, 625249
                  auipc      a7, 150589
                  add        a4, a4, t2
                  addi       s3, s0, -894
                  addi       s3, a4, 402
                  sub        tp, a4, s3 #end riscv_int_numeric_corner_stream_34
                  srai       tp, s2, 30
                  srai       t6, s4, 6
                  and        a7, s3, t1
                  sltu       s6, zero, s9
                  xori       tp, s4, -794
                  sltiu      s9, a5, -626
                  lui        s7, 1027616
                  xor        s7, s5, s10
                  andi       s0, a0, -942
                  and        a3, sp, t3
                  sltu       s0, tp, a7
                  addi       s0, t1, -569
                  auipc      s11, 2476
                  srai       s7, s8, 18
                  sra        a3, a2, s2
                  slt        a5, ra, t5
                  or         s9, t5, a3
                  slt        a5, a7, s8
                  sltu       t5, a4, s0
                  and        t5, t3, s6
                  srli       t1, t1, 13
                  slli       sp, ra, 29
                  slli       s3, s8, 26
                  lui        t0, 392412
                  slt        t4, s2, t0
                  or         t3, t3, t3
                  and        a5, gp, ra
                  andi       s3, ra, -989
                  add        s6, zero, t4
                  and        t5, s11, ra
                  slt        a0, s5, s9
                  sltiu      a1, s3, 489
                  addi       s5, s2, -59
                  sltu       s0, a3, zero
                  nop
                  sra        s0, a7, a0
                  and        s2, a4, a6
                  srai       t2, t3, 23
                  srai       t1, t0, 27
                  xor        s9, s7, t4
                  slti       t2, gp, -656
                  slti       s5, s7, 105
                  srai       s8, s9, 13
                  slt        a0, s11, a6
                  sra        s2, a6, a3
                  sltu       t2, ra, t6
                  nop
                  slti       t1, a3, 8
                  xori       tp, t5, 592
                  lui        ra, 837168
                  slli       s5, a6, 22
                  slli       a1, zero, 6
                  addi       t6, s5, -175
                  sltu       s0, s6, a7
                  add        t6, s10, sp
                  add        t3, s8, t2
                  srl        a4, zero, a2
                  sra        ra, s7, a5
                  sub        a3, t3, t0
                  sra        zero, t1, s1
                  sub        ra, t0, s10
                  or         s2, a7, t6
                  srli       tp, t0, 23
                  sub        sp, s2, t1
                  sll        a2, s3, s0
                  sll        a3, t5, a7
                  nop
                  slti       a2, s8, -238
                  srl        a1, s6, s5
                  slt        s6, tp, a4
                  xor        zero, a3, s6
                  addi       t4, ra, -1000
                  xori       a6, s6, -214
                  li         a0, 0x391610ce #start riscv_int_numeric_corner_stream_11
                  li         t4, 0x0
                  li         s2, 0x0
                  li         a3, 0x80000000
                  li         s11, 0xffffffff
                  li         t5, 0x80000000
                  li         t1, 0xffffffff
                  li         a6, 0xffffffff
                  li         a2, 0x80000000
                  li         a4, 0xffffffff
                  add        a6, s11, a2
                  add        a4, a0, s11
                  sub        a3, s11, a4
                  add        t5, t4, a2
                  add        t4, t5, a2
                  nop
                  sub        a0, a0, a0
                  nop
                  sub        a2, t1, a4
                  lui        t4, 328274
                  auipc      a4, 31699
                  auipc      a3, 118169
                  auipc      t5, 159341
                  addi       a4, t5, -906
                  nop #end riscv_int_numeric_corner_stream_11
                  or         t0, s4, s10
                  andi       a0, s3, -417
                  slt        t3, s7, t2
                  ori        s5, t3, -15
                  sra        t3, a0, s7
                  sltiu      a2, s11, 960
                  ori        a3, s5, -674
                  xori       s3, s9, -487
                  xor        a3, zero, a3
                  addi       t6, t6, -211
                  sltiu      a7, t5, -152
                  slti       gp, a6, 203
                  sltu       t0, a7, t4
                  nop
                  sll        sp, s11, s11
                  sll        s2, s7, a2
                  srl        gp, a7, t0
                  andi       s6, t2, -941
                  xor        t2, s10, a4
                  sub        s6, t3, a7
                  addi       t1, s1, -503
                  srai       a6, a1, 5
                  lui        zero, 191704
                  or         a3, t2, t2
                  auipc      a3, 926918
                  sltu       ra, zero, s7
                  srai       t6, s1, 25
                  sll        t0, t6, a5
                  lui        a2, 355088
                  sltu       s8, s9, sp
                  auipc      zero, 863857
                  nop
                  auipc      t2, 993564
                  slti       ra, gp, 851
                  sltiu      s7, tp, 240
                  slt        zero, zero, gp
                  srl        s0, s11, t2
                  srl        s3, t3, t6
                  xor        t0, zero, gp
                  sub        s2, t2, t2
                  sra        tp, s2, s4
                  add        s5, a3, s8
                  xor        a4, a6, a5
                  sra        s2, s5, sp
                  sub        t2, a0, s9
                  slt        sp, t1, s1
                  slli       s2, gp, 24
                  xor        s11, s10, s4
                  sra        s0, t1, t3
                  sll        zero, zero, s8
                  lui        s8, 499661
                  ori        a0, t2, 36
                  lui        a2, 399513
                  slli       a1, s0, 19
                  sltiu      sp, a1, -784
                  addi       s5, tp, -703
                  xor        a3, s6, a2
                  ori        s7, s6, -685
                  sltu       a1, a3, a5
                  slti       t6, s0, -794
                  and        s11, gp, sp
                  slt        t5, a2, s7
                  srai       a0, ra, 6
                  srai       s11, s11, 4
                  srl        s5, sp, a3
                  xori       s3, a1, -388
                  slt        s0, t2, sp
                  sra        s6, sp, t3
                  and        zero, a4, t2
                  srl        t1, a6, t1
                  slti       t5, s8, 723
                  lui        a6, 740728
                  lui        s7, 737187
                  xori       tp, s3, -833
                  srai       t6, a4, 26
                  sra        t1, s5, a1
                  addi       s0, a3, 967
                  andi       s8, s9, -620
                  srai       s2, s3, 22
                  sltu       s6, s10, t0
                  xor        tp, t2, s10
                  sll        a5, zero, sp
                  slti       t3, sp, 838
                  srl        a0, t3, s6
                  nop
                  and        a7, a3, a5
                  addi       t0, t5, -903
                  and        zero, s8, s7
                  sltu       s3, t6, s1
                  addi       s8, t6, 263
                  sub        a0, t2, a1
                  slt        s6, a6, t1
                  or         s0, s7, s3
                  xor        t4, a6, a4
                  sub        a6, sp, s10
                  srai       t4, a3, 24
                  sll        a0, tp, s4
                  and        s2, t6, t5
                  sra        s7, a6, zero
                  xor        s0, s7, s4
                  srl        s7, a0, t4
                  and        tp, s1, t1
                  sltiu      gp, a2, -625
                  ori        t5, s7, 503
                  lui        t2, 634626
                  slt        s0, t6, s10
                  sltiu      tp, ra, 933
                  sll        s11, s5, a5
                  andi       s2, a6, 290
                  srli       t3, a1, 0
                  add        s7, gp, s1
                  add        a6, a1, a6
                  sltu       gp, s9, t2
                  ori        s11, s11, 120
                  lui        a1, 836770
                  add        s3, a1, s5
                  or         a0, s11, a4
                  ori        a2, ra, -848
                  sltiu      t4, s4, 769
                  srl        a4, s10, t5
                  lui        t2, 419963
                  andi       s2, a5, -274
                  auipc      a2, 935230
                  xori       s7, s0, 855
                  lui        s9, 923813
                  and        t3, a5, a0
                  srli       t1, s1, 16
                  add        s3, a1, s11
                  sltu       s7, a0, s8
                  srli       t1, s9, 29
                  slt        a0, s1, s2
                  xori       a4, ra, 951
                  sltu       a3, s11, tp
                  xor        s9, s2, a7
                  srli       t1, a7, 26
                  addi       s9, a5, -76
                  sra        s7, zero, a3
                  xori       a4, s10, -980
                  slli       s8, ra, 10
                  sra        a1, a4, s0
                  sll        s11, s11, s9
                  xor        a7, a2, s11
                  and        sp, ra, s4
                  xori       t4, s4, 22
                  and        ra, s1, t4
                  or         s6, a0, s6
                  sra        t6, t6, zero
                  srl        t0, s5, s2
                  srl        t2, a6, t3
                  addi       s3, tp, 333
                  add        t6, s2, a5
                  sra        a0, s1, t6
                  srai       t4, a5, 31
                  and        s2, s1, sp
                  ori        a3, a1, -446
                  srl        a4, t3, a4
                  ori        t0, a5, -968
                  sltu       s2, sp, zero
                  ori        ra, s3, -290
                  srli       s3, s4, 25
                  add        s9, t4, t3
                  sra        a7, s6, s8
                  sltiu      s9, s5, 510
                  sltiu      a4, ra, 238
                  xori       t5, a5, -871
                  xori       s0, s11, -201
                  sltiu      tp, s2, 979
                  xori       s0, s0, 995
                  add        a2, zero, s4
                  andi       a4, s7, 934
                  srli       s11, a7, 28
                  sra        t5, a6, t3
                  or         s3, s3, a4
                  add        t4, s7, a2
                  slt        t0, s9, a1
                  andi       t3, s5, -412
                  or         t1, a0, zero
                  slti       s5, t2, -876
                  xor        s5, s1, a6
                  slli       s11, a7, 25
                  ori        t3, s8, 647
                  andi       ra, t1, 55
                  xor        a7, s1, a6
                  sltiu      t2, ra, -882
                  and        s8, s3, a0
                  sll        a1, t3, t5
                  auipc      t0, 43644
                  slli       t0, tp, 30
                  or         tp, s10, s3
                  andi       a6, t3, -54
                  auipc      t6, 633591
                  add        a5, s4, a2
                  slt        s3, s10, gp
                  addi       zero, t6, -73
                  srl        t4, a2, t2
                  ori        sp, t5, -153
                  sltu       s2, sp, s10
                  nop
                  auipc      t4, 454918
                  addi       a6, t0, -658
                  xori       t5, t5, -141
                  xori       s0, s10, 789
                  sub        zero, a2, t2
                  or         s5, tp, s6
                  add        t1, s8, a6
                  xor        s2, t2, t6
                  andi       sp, s10, -127
                  srli       a1, t2, 26
                  srl        a1, t3, s8
                  and        a7, t1, s9
                  srai       s11, gp, 28
                  srl        ra, t2, zero
                  and        a6, t2, s10
                  xori       gp, s11, 708
                  sltu       t4, a7, t1
                  ori        a2, ra, 447
                  slli       s6, s4, 2
                  sltu       a0, gp, s10
                  srli       s7, s3, 19
                  srli       t0, s0, 16
                  auipc      zero, 428797
                  xor        t6, s2, s7
                  and        sp, t2, s8
                  sll        s7, t2, s5
                  ori        t0, t6, -423
                  lui        ra, 589923
                  srl        tp, s5, gp
                  ori        s5, a6, -34
                  xori       gp, t3, 120
                  sub        a0, s10, a6
                  sra        s0, t0, s9
                  sub        s9, a7, s11
                  auipc      t6, 643498
                  slt        zero, a4, s3
                  sra        tp, sp, s6
                  slli       a5, t3, 16
                  slt        t2, a3, s1
                  slt        t5, s9, t6
                  ori        a3, s11, 458
                  andi       a4, s11, 499
                  srl        s0, a2, a1
                  sltiu      t4, a5, -134
                  auipc      t3, 810565
                  slti       t6, a5, 390
                  xor        zero, a0, t5
                  srli       a7, a1, 17
                  lui        t3, 736248
                  add        a0, s5, a6
                  slti       t4, gp, 785
                  sltiu      s5, t2, 326
                  xori       gp, a3, -21
                  and        gp, t1, a7
                  slt        t3, t3, t3
                  srli       s6, s7, 7
                  sltiu      s5, s2, -104
                  and        s0, s11, s5
                  add        t3, t2, s2
                  srl        t6, s11, sp
                  slli       t1, s1, 28
                  sra        a0, a2, s11
                  xor        a0, s9, ra
                  auipc      s2, 142892
                  slli       t2, t6, 18
                  sll        a4, a3, a5
                  add        zero, t5, s6
                  nop
                  andi       s2, a5, 599
                  sub        a3, tp, s4
                  xor        a0, s4, a1
                  srai       t5, t0, 2
                  srl        a2, t6, a1
                  srl        a2, t6, zero
                  auipc      a4, 212800
                  slli       s5, s5, 6
                  xori       s0, a2, -245
                  srli       s11, t5, 19
                  nop
                  srli       a2, s6, 3
                  slli       a3, t3, 5
                  xori       t4, s7, -518
                  sltiu      ra, s3, -497
                  sltiu      s0, s2, -959
                  sltu       a1, zero, zero
                  addi       a1, a5, 336
                  slt        a6, zero, s1
                  add        a1, s0, s9
                  add        s0, a1, a2
                  sltiu      tp, a0, -612
                  sll        a0, a2, t0
                  sub        s0, s5, s10
                  nop
                  sll        a7, gp, t6
                  or         s6, a1, t5
                  xori       a5, s3, -88
                  add        a1, s2, s0
                  auipc      a7, 992371
                  or         s9, a0, s8
                  slli       gp, t5, 28
                  add        s9, a4, t5
                  slti       sp, s6, -492
                  sra        s7, a6, t2
                  and        gp, a7, s5
                  lui        s0, 82718
                  andi       t3, s10, -519
                  or         s9, a1, a6
                  add        gp, ra, a6
                  lui        t2, 376946
                  xor        s2, a4, s8
                  sub        zero, t3, s6
                  srl        ra, t1, a0
                  slt        a2, a1, s0
                  addi       zero, s2, 165
                  slli       a0, sp, 31
                  sll        s6, t0, s2
                  sltu       a1, s11, gp
                  andi       a3, gp, -814
                  add        a3, a4, t3
                  nop
                  auipc      s5, 240493
                  sub        s11, a4, zero
                  add        t3, s1, t1
                  auipc      t5, 198438
                  nop
                  andi       s11, s11, -764
                  lui        a2, 115595
                  sltiu      t5, s11, 431
                  xori       a3, s9, 359
                  add        a1, s5, s10
                  xori       t6, s2, -850
                  addi       a1, a7, 390
                  sltu       s7, s3, s10
                  sra        s11, t1, s0
                  addi       t0, t0, 789
                  andi       a2, s7, 203
                  ori        t5, s4, 392
                  andi       s9, s2, 551
                  xor        a3, s7, s2
                  sub        a3, t3, t4
                  srai       gp, s11, 16
                  sll        a5, t6, t0
                  xor        ra, s6, tp
                  auipc      s3, 234752
                  add        tp, t1, s2
                  slli       t4, s1, 7
                  xori       a6, s9, -81
                  andi       s11, a6, 289
                  srli       a4, s2, 2
                  sltiu      s6, sp, 249
                  sub        s7, s2, tp
                  srai       s9, sp, 5
                  srl        a6, s8, s5
                  sub        sp, t2, a6
                  add        a1, s9, s6
                  slti       t2, t6, -643
                  and        a4, s1, s0
                  sltu       s3, s10, t6
                  xor        tp, sp, s9
                  xor        ra, s0, a5
                  lui        a0, 9236
                  srli       t0, s9, 20
                  sub        t2, a5, s8
                  addi       a0, a3, 210
                  slti       s9, s3, 512
                  nop
                  xor        a5, s8, s0
                  nop
                  sll        ra, s0, s11
                  addi       a7, s3, 715
                  add        a5, s2, t0
                  srli       s2, s11, 6
                  xori       s8, a4, -245
                  add        a3, t3, s4
                  slt        t4, a3, gp
                  lui        a6, 657479
                  sra        s8, zero, s6
                  andi       ra, t6, 613
                  sra        a6, a7, s6
                  auipc      s11, 411598
                  lui        t0, 410750
                  xori       t6, s11, 125
                  slti       s0, s7, -998
                  sub        a2, s1, a4
                  srl        s6, s4, tp
                  andi       zero, s8, -554
                  slti       t2, gp, -402
                  and        s5, t5, t6
                  sll        t3, s8, a7
                  addi       tp, t0, 288
                  slti       s3, s8, 396
                  sub        t1, a3, a6
                  sub        sp, s1, t6
                  addi       t5, s4, 622
                  auipc      s2, 930609
                  sltu       a3, s8, a2
                  addi       ra, s11, 771
                  xori       a7, s10, -511
                  or         t3, tp, s4
                  add        a7, s7, s4
                  sltiu      s7, a1, 809
                  add        a4, t5, gp
                  addi       s3, t5, -489
                  xori       s5, a7, 617
                  andi       a6, s11, 878
                  sub        s8, sp, t2
                  sub        s9, zero, tp
                  xori       s8, a4, 246
                  auipc      s0, 381494
                  lui        ra, 362717
                  slli       tp, zero, 26
                  srli       tp, a0, 2
                  nop
                  slti       t3, s5, 162
                  sll        gp, gp, s0
                  lui        a2, 130497
                  ori        t4, a6, 336
                  slli       s6, sp, 24
                  slt        a4, a6, a1
                  ori        t5, s6, -674
                  slli       s11, s1, 23
                  slli       t4, t5, 22
                  or         t5, a7, t2
                  slli       sp, s8, 24
                  addi       s11, gp, -867
                  slli       a5, t5, 20
                  ori        a4, t4, 377
                  srl        t1, sp, s2
                  sltiu      a1, a4, -852
                  andi       t6, s11, 920
                  slli       t6, a4, 28
                  and        t0, s5, t4
                  srai       t2, t2, 9
                  auipc      a4, 966267
                  srl        s11, t4, t5
                  srai       s5, a5, 27
                  srli       s2, t6, 6
                  addi       a4, s1, -1014
                  nop
                  auipc      t3, 653604
                  auipc      a6, 707647
                  addi       t6, s3, 979
                  sll        s0, t0, t4
                  and        a3, a1, a5
                  slti       a3, s11, -874
                  srli       t5, s1, 21
                  xori       a7, gp, 26
                  slli       s0, sp, 11
                  srai       t6, tp, 0
                  xori       t3, a0, 202
                  lui        t6, 744221
                  ori        a6, s9, -298
                  and        s6, a1, s4
                  andi       t3, a4, -800
                  sltiu      s8, s10, 978
                  slti       ra, s3, -92
                  addi       t2, s0, 712
                  addi       a0, a1, 848
                  and        s2, a3, s4
                  xor        s6, s5, s6
                  and        s5, s10, s4
                  or         t6, a5, s6
                  or         ra, s2, t6
                  slti       s7, zero, 557
                  or         s6, s8, a4
                  sll        s8, a6, sp
                  li         a6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li         s2, 0xffffffff
                  li         a1, 0x80000000
                  li         a4, 0x8588a029
                  li         t1, 0x0
                  li         s8, 0xd72c0b1e
                  li         s3, 0xc0b546dd
                  li         t4, 0x0
                  li         t0, 0xffffffff
                  li         tp, 0xf02144db
                  sub        tp, s3, t4
                  lui        a6, 582328
                  addi       t4, s2, 139
                  add        a6, s8, t1
                  add        tp, a1, tp
                  lui        a6, 940437
                  nop
                  sub        a1, s3, tp
                  add        t1, a4, a6
                  add        a6, s8, t1
                  auipc      t1, 612592
                  add        a6, t1, t0
                  nop
                  auipc      a4, 219715
                  sub        a6, a1, tp #end riscv_int_numeric_corner_stream_1
                  srl        a7, t1, t4
                  sltu       s2, s2, s5
                  srl        zero, t5, t1
                  slli       s7, a1, 24
                  srai       s11, s8, 21
                  sll        s2, s2, s8
                  slli       s9, t6, 7
                  or         a5, t5, a5
                  lui        s3, 328529
                  add        a0, s2, a0
                  xor        s6, a7, s7
                  slli       sp, a3, 9
                  srli       a1, s0, 26
                  auipc      s0, 297171
                  andi       a3, s7, 503
                  or         s7, sp, a6
                  lui        s2, 1041575
                  nop
                  auipc      a5, 728406
                  sll        a6, s8, a2
                  slli       a0, zero, 1
                  srl        t6, s6, ra
                  auipc      s6, 405020
                  slli       t5, s4, 12
                  sra        s2, s6, sp
                  sub        t0, s8, a3
                  or         t4, ra, tp
                  addi       s7, t0, -855
                  slti       s0, s0, -821
                  sra        a1, zero, t3
                  ori        a4, s1, -118
                  auipc      s3, 879395
                  or         s6, s9, s4
                  xor        t5, tp, t2
                  sll        s0, s5, s6
                  srai       t3, t0, 18
                  sll        zero, s4, sp
                  sltu       t5, s2, t5
                  or         s2, t1, s5
                  srli       s7, gp, 1
                  sub        s8, gp, a6
                  addi       t2, a6, -156
                  slli       t0, ra, 29
                  slti       s11, t1, 132
                  sub        t6, s5, s11
                  andi       s5, t0, -821
                  andi       s6, gp, -348
                  xori       ra, a3, -701
                  addi       a3, t5, 214
                  srl        s5, a2, s2
                  sltiu      t6, t3, 934
                  srai       s7, s7, 17
                  sra        tp, t6, s4
                  sll        a6, a2, ra
                  sltiu      a4, s2, -944
                  sltiu      gp, s2, 181
                  xor        zero, a4, a3
                  lui        s3, 281123
                  srl        a0, s6, a1
                  sra        t0, t4, t0
                  andi       ra, s1, -815
                  sub        t2, t3, s11
                  addi       a7, a4, 455
                  ori        t2, a0, -798
                  slt        ra, tp, s9
                  sltiu      ra, sp, -863
                  auipc      s9, 730486
                  andi       a2, t1, -172
                  slt        gp, s2, s10
                  addi       t2, a0, 731
                  andi       s6, t5, -307
                  andi       a1, t5, 653
                  or         s2, a1, s10
                  xori       t6, a5, 758
                  ori        t5, t0, -820
                  auipc      sp, 380259
                  slli       tp, a2, 23
                  addi       s11, a4, 361
                  or         t6, s1, a1
                  sub        a7, s4, a2
                  sra        a3, t5, s0
                  andi       a5, s5, -1011
                  andi       a0, s9, 560
                  xori       s0, t4, -94
                  lui        s5, 695745
                  sll        s3, s11, s6
                  ori        a3, a2, -855
                  sra        t6, ra, s6
                  sltiu      a5, s5, 75
                  sll        a2, s1, t5
                  slt        sp, a4, s10
                  auipc      a1, 566423
                  addi       s2, s7, -1
                  ori        t4, a6, 161
                  xori       t6, s3, 783
                  nop
                  ori        a7, s5, 332
                  srli       s8, a6, 9
                  andi       s6, t6, 370
                  nop
                  srli       t0, a0, 29
                  lui        s11, 602872
                  slt        zero, t5, a7
                  slt        s9, tp, a4
                  lui        a0, 128991
                  sll        t2, t2, t1
                  slli       s11, s11, 29
                  add        s9, gp, t3
                  srli       tp, t2, 2
                  and        gp, s0, s4
                  andi       s5, s2, 778
                  sltu       ra, a1, s0
                  andi       gp, t6, -147
                  and        a7, s9, t3
                  ori        sp, s7, 661
                  sltu       t2, s0, ra
                  srl        a0, s4, gp
                  slli       s0, a6, 12
                  or         t3, s7, s9
                  sltiu      tp, s11, 793
                  sll        s6, a1, s1
                  sra        ra, s9, t4
                  srai       s11, s10, 14
                  or         a0, ra, s8
                  slli       s0, s5, 17
                  lui        sp, 848426
                  slli       s6, ra, 21
                  andi       sp, a7, 970
                  sll        s6, s4, s7
                  lui        a0, 157378
                  sltiu      t6, s9, -289
                  ori        sp, a2, 780
                  sra        s9, t5, s10
                  slt        s5, a6, ra
                  ori        a0, s4, 228
                  xori       s5, ra, 892
                  and        s0, t0, a1
                  srai       s3, t2, 9
                  ori        a6, a3, 384
                  xori       t3, gp, 975
                  auipc      s8, 472833
                  auipc      sp, 79874
                  slli       s7, s10, 10
                  add        a4, sp, a1
                  srai       t1, s4, 26
                  ori        t3, s0, 532
                  sltiu      a2, t2, 100
                  sltiu      s9, gp, 903
                  xori       a3, t3, -46
                  xor        s3, a7, t2
                  slti       sp, s8, 797
                  and        a1, s7, s0
                  addi       a2, a1, -491
                  srli       s11, s3, 7
                  slti       s0, s9, 588
                  sltiu      t6, t4, -778
                  sltiu      t0, t6, 904
                  sltu       a6, s9, s6
                  xor        a3, a1, s8
                  or         t2, s1, t3
                  andi       a6, t1, 177
                  slti       s3, s10, 793
                  or         a0, a7, s6
                  sltu       gp, a4, ra
                  slti       gp, zero, -562
                  nop
                  slti       s6, ra, -297
                  addi       a7, ra, 232
                  nop
                  srai       s7, t6, 20
                  and        s5, zero, a2
                  sltiu      t0, s11, 321
                  sub        a7, s9, s8
                  xor        a1, s6, t1
                  sltiu      ra, tp, 957
                  lui        gp, 859935
                  andi       s11, s10, 474
                  auipc      ra, 103614
                  slt        t3, a3, s10
                  sll        a0, a1, gp
                  srli       ra, s11, 20
                  srl        a3, s4, s11
                  srli       a3, t1, 22
                  lui        t3, 890305
                  sub        s5, a4, s8
                  sltiu      a2, a2, 709
                  ori        t3, t1, 456
                  sltiu      a2, a0, -191
                  and        t1, a6, s8
                  sub        gp, s10, t2
                  addi       gp, t3, 634
                  and        sp, a6, s10
                  xor        t5, gp, t2
                  sll        s8, s1, s4
                  auipc      t3, 741057
                  sll        t5, a4, a7
                  or         a3, a3, s5
                  andi       s3, zero, 345
                  sra        zero, a1, a2
                  srai       sp, t3, 20
                  sltiu      a6, a7, 941
                  ori        a6, t2, 752
                  or         a5, a0, t2
                  sltu       s2, s10, zero
                  auipc      a6, 944709
                  andi       gp, a4, -61
                  or         s7, s3, tp
                  srli       a7, a1, 18
                  xor        gp, t2, s8
                  add        t5, t3, s10
                  addi       a0, s10, 920
                  or         t6, s1, t3
                  slti       a1, a6, 706
                  srli       a4, s5, 1
                  sltu       t1, t6, s6
                  slti       t3, s3, -847
                  auipc      s5, 878488
                  slti       s2, s2, 75
                  lui        a5, 359748
                  andi       s11, gp, -481
                  ori        a0, t4, 1014
                  ori        s8, gp, -178
                  sltu       t1, a1, sp
                  sltiu      s6, s7, 412
                  lui        s11, 331451
                  and        a6, t5, s6
                  ori        a2, a3, 301
                  sltu       t3, s1, sp
                  or         sp, s11, tp
                  srli       s5, a7, 17
                  slli       a0, a2, 12
                  lui        a2, 92464
                  auipc      a6, 554763
                  xori       t4, a0, 418
                  auipc      t1, 1035916
                  ori        a7, t0, -469
                  slt        t6, s1, t0
                  li         s6, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li         a3, 0x7669cdc
                  li         a5, 0x0
                  li         s5, 0x80000000
                  li         s0, 0x80000000
                  li         t0, 0x80000000
                  li         s3, 0x80000000
                  li         tp, 0xffffffff
                  li         a1, 0x80000000
                  li         a0, 0xe604c341
                  sub        s5, t0, a5
                  nop
                  lui        t0, 545293
                  auipc      a5, 524490
                  lui        s6, 5614
                  add        a5, s3, a5
                  addi       a0, a5, 503
                  addi       tp, a5, 971
                  addi       a1, a3, 956
                  auipc      a0, 1003705
                  lui        a5, 31612
                  nop
                  auipc      a3, 1038964
                  nop
                  lui        s0, 456811
                  addi       a1, a3, 756
                  auipc      a5, 588428
                  nop
                  add        tp, a5, s6
                  sub        s6, a5, a1 #end riscv_int_numeric_corner_stream_10
                  and        t4, s10, s2
                  lui        gp, 973936
                  xori       t1, a1, -840
                  nop
                  slli       zero, t2, 13
                  xori       s2, t2, -601
                  slli       s2, s2, 7
                  and        s0, a3, sp
                  xor        ra, s3, gp
                  nop
                  sltiu      t5, s6, -808
                  lui        zero, 480521
                  slti       t2, s6, 780
                  sltiu      s6, s0, -708
                  xor        s6, s6, a2
                  srai       t3, s4, 7
                  or         a0, a1, t0
                  slt        s0, s2, t2
                  and        a4, a0, a6
                  auipc      t2, 10433
                  sltiu      tp, zero, 938
                  auipc      a3, 750756
                  add        t0, a6, t4
                  add        s5, t0, tp
                  sltiu      s6, a4, -764
                  or         s0, s8, s0
                  slli       t5, a4, 16
                  sra        t2, s5, a0
                  slti       a2, a1, -821
                  andi       t0, sp, -999
                  or         a2, s0, a5
                  add        a7, tp, sp
                  xori       a6, a4, 677
                  sltiu      a6, zero, -686
                  srl        a5, t4, a7
                  slt        tp, s11, a7
                  slli       sp, s3, 31
                  srai       a1, t1, 26
                  addi       t4, a7, -114
                  auipc      t5, 467022
                  sltu       s0, zero, s10
                  xor        zero, s8, a0
                  sll        s9, t5, a6
                  and        tp, zero, s3
                  xor        t3, gp, sp
                  or         a6, a1, s2
                  or         t1, zero, a4
                  slli       a5, s5, 29
                  srl        s3, gp, a1
                  slti       a0, s10, 817
                  srl        sp, s5, s8
                  slti       t2, a2, 730
                  slt        s9, s0, a6
                  sll        ra, t1, gp
                  sll        t2, s0, a1
                  addi       s6, s2, -827
                  sub        ra, ra, s10
                  srli       t6, a3, 29
                  slt        a1, a4, s7
                  srli       ra, s8, 3
                  addi       gp, gp, 875
                  or         t3, a7, t4
                  srai       a6, a7, 14
                  sra        s0, s9, a0
                  lui        a3, 571612
                  sub        s3, t1, s4
                  sra        a3, ra, t6
                  slli       t5, t1, 19
                  xori       ra, t6, 329
                  or         s2, t5, gp
                  srl        s0, sp, s4
                  add        s3, ra, s1
                  sub        a4, s3, s8
                  addi       gp, s4, 909
                  srai       gp, zero, 16
                  slt        s7, s8, a2
                  sub        s5, s0, zero
                  auipc      t4, 656768
                  srl        t0, a5, a0
                  andi       a3, a2, 63
                  srli       a3, s5, 6
                  slt        s2, t6, a2
                  nop
                  or         s9, t3, a4
                  xor        s11, a7, s0
                  add        s5, a2, zero
                  sltu       t3, s9, a7
                  slli       a7, ra, 27
                  sra        a5, a2, a2
                  sub        a0, s7, s6
                  xori       zero, a7, 559
                  lui        t1, 67349
                  addi       a2, zero, 88
                  nop
                  and        a5, s5, s2
                  sltiu      t4, a3, -197
                  auipc      s7, 901326
                  ori        zero, s6, 860
                  auipc      s7, 476193
                  xori       s2, s7, -86
                  xor        s2, gp, s7
                  sub        t5, t1, t5
                  sll        t6, a7, t3
                  add        a5, s1, t6
                  slti       a1, a4, -654
                  auipc      t0, 972852
                  sub        t4, a6, sp
                  add        t2, t0, s2
                  slli       sp, s11, 8
                  and        t0, a2, a2
                  sltu       s3, zero, t6
                  add        s0, s2, t5
                  nop
                  sltu       s6, s0, a5
                  andi       zero, a7, -91
                  slli       a3, ra, 23
                  nop
                  add        t4, t2, s9
                  sltiu      t0, ra, 22
                  srli       a4, zero, 31
                  sltu       zero, s7, s3
                  add        s0, t2, s3
                  xori       t5, t1, 619
                  or         t0, sp, a2
                  slt        t5, s10, t6
                  slti       s3, s3, -356
                  srai       s0, t2, 30
                  lui        a7, 122935
                  sll        a7, s1, t3
                  slli       t6, ra, 6
                  addi       t1, t1, -605
                  and        s6, t1, s8
                  and        s0, ra, t0
                  slti       a6, s1, -286
                  lui        s3, 441057
                  sub        s11, gp, s11
                  lui        zero, 662762
                  or         t6, a4, s2
                  srli       s2, t0, 13
                  sltiu      s3, s2, 852
                  xori       a1, s10, 345
                  slti       s6, ra, 918
                  lui        sp, 718464
                  sub        t6, a4, a6
                  srl        a2, t4, s11
                  and        gp, t6, s2
                  sltu       a4, s4, s0
                  ori        s6, a0, -456
                  srli       a2, s3, 26
                  slti       t1, t2, 702
                  slli       a4, s5, 6
                  andi       s0, t1, -724
                  ori        gp, s9, 236
                  slli       s9, s4, 28
                  addi       t2, t2, 539
                  li         ra, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li         s3, 0xe8cda201
                  li         a0, 0xffffffff
                  li         a7, 0x80000000
                  li         a2, 0xe0b679b8
                  li         a6, 0xffffffff
                  li         t2, 0x0
                  li         t5, 0xbf5842f3
                  li         t4, 0x80000000
                  li         t0, 0x455ec8e1
                  sub        t2, t5, a2
                  addi       a6, a0, -217
                  lui        a6, 742815
                  add        a2, a0, a0
                  nop
                  nop
                  nop
                  lui        s3, 102258
                  auipc      s3, 699705
                  add        t5, a6, a7
                  lui        t0, 732313
                  auipc      a2, 582959
                  add        t4, a7, t2
                  add        t2, ra, s3
                  sub        a0, ra, a7
                  addi       a7, t2, 220
                  add        a0, t2, t0
                  lui        ra, 705326
                  lui        a2, 554287
                  auipc      a6, 770811
                  sub        a7, a6, ra
                  addi       t2, a7, -771
                  auipc      t0, 457652 #end riscv_int_numeric_corner_stream_15
                  sll        a5, a5, t0
                  xor        a5, a2, t5
                  slli       gp, s6, 4
                  lui        a7, 673990
                  ori        t6, a5, -260
                  add        s9, s10, a4
                  srai       a5, a0, 19
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_22
                  li         a6, 0x0
                  li         ra, 0x0
                  li         sp, 0xdd41b116
                  li         t0, 0x0
                  li         a0, 0x80000000
                  li         tp, 0xffffffff
                  li         t4, 0x2d3d3729
                  li         a5, 0x0
                  li         t2, 0xffffffff
                  auipc      sp, 843533
                  lui        s7, 391091
                  lui        a6, 962018
                  sub        t2, ra, a5
                  sub        t0, tp, a6
                  sub        a0, a5, ra
                  nop
                  addi       ra, a0, 816
                  sub        t2, t0, s7
                  auipc      sp, 800559
                  sub        t0, a5, t0
                  add        a6, a5, s7
                  nop
                  addi       a0, a6, 58
                  addi       tp, a6, 655
                  lui        t2, 664599
                  sub        s7, a6, t4
                  add        a5, a5, s7
                  nop
                  nop
                  addi       sp, s7, 996
                  sub        a0, t4, tp
                  lui        tp, 493525
                  add        a5, a0, a5
                  lui        t2, 630080 #end riscv_int_numeric_corner_stream_22
                  sll        s8, a3, s11
                  or         t3, s10, gp
                  srl        a1, t3, s10
                  srli       t6, s9, 29
                  slti       a7, a5, 303
                  xor        t6, a0, s10
                  nop
                  sltiu      ra, gp, 674
                  addi       ra, sp, 593
                  or         s11, a0, s8
                  xori       t0, sp, 837
                  slti       t0, a0, 294
                  slt        s5, t2, s1
                  sub        t5, s7, s2
                  slli       t0, tp, 19
                  and        sp, ra, zero
                  lui        ra, 58647
                  and        s0, t0, sp
                  add        zero, s6, a2
                  xori       a1, gp, 860
                  nop
                  slti       a3, t0, 596
                  auipc      gp, 1024523
                  auipc      a0, 367761
                  add        a5, t2, s5
                  or         a7, s10, s11
                  slti       t4, tp, -472
                  sltiu      zero, s0, -920
                  nop
                  auipc      a5, 173299
                  addi       s6, s3, 56
                  srli       s5, ra, 13
                  sltu       a1, a3, a0
                  xor        ra, ra, t1
                  sltu       sp, s0, s2
                  slli       s0, s0, 29
                  slti       a3, gp, -983
                  ori        a3, a2, 222
                  or         tp, t0, s2
                  sub        s8, a1, tp
                  addi       a4, s10, 719
                  nop
                  srl        zero, t5, s2
                  slli       t5, ra, 21
                  xori       t3, s4, -310
                  or         s9, t4, tp
                  slti       t4, a6, 786
                  slli       sp, t5, 6
                  add        gp, s0, s10
                  xori       s7, s8, 489
                  srai       sp, t4, 1
                  sltiu      t1, sp, 431
                  srai       t5, a4, 23
                  srai       s5, s11, 1
                  add        a5, s6, zero
                  lui        a2, 153259
                  lui        gp, 197738
                  sll        s7, s7, a6
                  srai       s11, s6, 30
                  srli       t4, s10, 8
                  and        t0, a5, s8
                  add        zero, t4, ra
                  lui        a7, 151247
                  srli       s9, sp, 3
                  and        t6, s6, tp
                  slli       t0, tp, 30
                  sub        s3, gp, s8
                  or         t0, t6, a4
                  nop
                  ori        t1, s11, 614
                  slli       s6, s2, 18
                  xor        a4, s10, t1
                  sltiu      a0, a6, -97
                  sub        s2, ra, s0
                  and        a0, s6, sp
                  ori        t4, t4, 222
                  nop
                  slt        s5, t5, t1
                  slti       t6, a4, 308
                  sra        t2, gp, ra
                  sltu       t1, a7, a6
                  xor        a3, s7, sp
                  add        s11, t1, gp
                  auipc      a5, 116078
                  sub        s7, a2, a4
                  sra        s11, s3, t2
                  srli       s11, ra, 25
                  srl        s2, s1, a5
                  add        tp, a7, s6
                  sltiu      s11, t2, 989
                  srli       sp, s2, 25
                  addi       a2, s6, 286
                  nop
                  sra        s0, t2, s11
                  lui        s0, 856045
                  sll        s3, s7, s10
                  srai       t5, t4, 4
                  sltu       s6, t6, a1
                  auipc      a6, 230795
                  add        t3, t4, gp
                  and        t2, t6, t3
                  sra        t4, a0, s1
                  slli       s3, s3, 20
                  sra        s9, t5, s1
                  add        t5, a2, t6
                  sub        a1, s3, s5
                  andi       s2, a5, -198
                  add        sp, t0, t3
                  slti       a1, a6, 161
                  addi       a4, s10, 301
                  sltu       zero, a3, tp
                  slti       a7, s5, 443
                  sra        s11, s2, s0
                  lui        t6, 481593
                  xori       a3, sp, -448
                  sll        s8, a3, zero
                  andi       s7, a5, 847
                  slli       zero, s0, 18
                  srai       a3, t5, 28
                  add        ra, t1, t1
                  srl        a2, a2, s11
                  sltiu      t4, s4, 278
                  nop
                  srai       gp, t6, 14
                  auipc      a4, 686765
                  srl        a2, s5, s0
                  lui        t6, 285575
                  auipc      s8, 45076
                  sub        t1, s7, t1
                  srl        gp, t1, a7
                  and        gp, gp, gp
                  slli       s0, t1, 6
                  sll        s3, s10, s7
                  ori        s0, a6, -364
                  srli       s11, t0, 14
                  srli       s7, t1, 25
                  xor        t6, a0, gp
                  sub        a2, s7, a6
                  sra        a2, s7, t5
                  lui        s2, 779415
                  auipc      s5, 343934
                  lui        ra, 997843
                  sltu       s11, sp, s7
                  xori       s6, a2, -1006
                  andi       s11, s3, -716
                  nop
                  srai       s5, s3, 18
                  slti       gp, zero, -338
                  or         a0, a7, a0
                  srai       s7, a2, 4
                  sll        a6, a3, gp
                  andi       s6, a6, 81
                  srli       s6, s11, 3
                  sltu       t4, a3, a6
                  ori        a2, a0, -141
                  andi       t4, t1, 283
                  sll        s0, t0, a6
                  or         a4, s11, a1
                  srli       s3, s7, 23
                  xor        s11, s8, s0
                  auipc      t1, 227398
                  xor        a0, s7, s4
                  andi       tp, a5, -621
                  slt        sp, a5, s10
                  sltu       s5, t3, s5
                  sll        t4, s8, s9
                  sra        s8, t1, s6
                  sltiu      a1, a3, 892
                  xor        sp, t4, t1
                  or         s9, a4, s11
                  sub        a0, a0, a4
                  sra        tp, s2, t3
                  sra        s9, a5, a2
                  auipc      s7, 273776
                  srli       a6, a0, 11
                  add        gp, t0, a4
                  or         a4, s1, s0
                  add        s5, t3, t5
                  add        a4, s11, a2
                  srli       s8, a6, 26
                  sub        t2, s10, t4
                  srai       s3, a5, 31
                  sub        s9, t0, s7
                  srai       a7, t0, 14
                  sltu       a3, s8, sp
                  sub        a0, s1, a7
                  xori       s8, s2, -47
                  sltu       ra, a6, s2
                  and        a4, a6, t0
                  nop
                  sra        gp, s7, s6
                  addi       s7, s4, -329
                  xori       a7, a3, 492
                  lui        s7, 402678
                  addi       s0, a0, -302
                  addi       t3, s10, 759
                  ori        s9, s10, 810
                  ori        zero, a5, 237
                  and        sp, t0, s3
                  sll        a5, s7, s5
                  sltiu      a5, a5, 157
                  xori       a4, t6, -192
                  ori        t3, s10, -18
                  ori        a2, t5, 594
                  xori       t0, s6, 579
                  add        s9, ra, s6
                  sub        a4, s10, a2
                  or         t3, t1, a2
                  and        s8, t4, t6
                  ori        zero, s5, -472
                  sltu       s5, s1, t0
                  slli       a3, a3, 9
                  nop
                  lui        a0, 1036719
                  or         a2, a2, t2
                  sub        s9, s11, sp
                  nop
                  sra        a7, a0, s5
                  lui        t3, 574058
                  ori        a1, a5, 978
                  slli       s0, tp, 12
                  slt        a3, a6, a6
                  add        t5, zero, s6
                  sll        a7, a5, a3
                  nop
                  srai       t6, t4, 3
                  add        t6, tp, s5
                  slt        sp, a0, a6
                  sra        s3, a1, s7
                  add        s0, a0, sp
                  or         s6, a2, gp
                  xori       a7, s11, 243
                  lui        zero, 484746
                  xori       s8, s9, -166
                  and        s3, t1, t5
                  srl        a5, ra, s0
                  addi       gp, t3, 1006
                  sra        s5, ra, a0
                  or         a6, a6, s2
                  xori       gp, t3, -350
                  xor        s7, s8, t6
                  sub        t6, a4, s6
                  srl        a4, sp, s7
                  nop
                  sra        s9, a4, s5
                  srl        t1, t4, a5
                  andi       s9, s11, -702
                  slti       s6, s7, -371
                  auipc      t1, 461863
                  srli       s8, zero, 25
                  auipc      sp, 861055
                  slt        t1, t2, a2
                  slti       s11, t4, 754
                  sra        ra, t2, a4
                  ori        a7, tp, 1021
                  sltu       s8, t5, sp
                  add        a6, s5, s0
                  lui        zero, 665311
                  sltu       t6, t5, t2
                  sltu       s0, t3, t2
                  ori        zero, s10, -291
                  lui        zero, 330434
                  slt        gp, a2, s10
                  slt        s9, s10, s7
                  sub        sp, tp, s10
                  sltiu      a4, sp, 567
                  sra        a4, t6, s11
                  sll        sp, t3, t4
                  and        gp, a3, t3
                  sltiu      a2, s2, 381
                  add        a0, a1, t2
                  and        s3, a3, s10
                  sll        tp, s3, s5
                  sltu       s3, s10, s0
                  ori        a5, gp, 287
                  srai       t1, a6, 8
                  srli       t6, s5, 21
                  xori       s9, s11, 1015
                  slti       a3, s3, 15
                  slt        s5, s9, s11
                  andi       s8, s7, -809
                  sltiu      s11, s3, 640
                  nop
                  andi       t4, a7, -43
                  slli       a5, s9, 1
                  slt        tp, s8, t5
                  andi       s0, s10, -93
                  addi       s9, a5, -30
                  xori       t3, a4, 682
                  srli       a7, t3, 19
                  sub        a7, s6, s3
                  ori        t5, a5, 93
                  and        s8, t3, a0
                  nop
                  lui        gp, 324180
                  nop
                  slli       a7, sp, 4
                  slti       s9, t6, 897
                  sra        a7, sp, t3
                  slt        t3, s2, a6
                  xori       s9, a4, 584
                  slti       a5, a7, -680
                  srl        zero, s7, s8
                  lui        a4, 164536
                  and        ra, s5, gp
                  andi       t3, a0, 543
                  xori       gp, s9, 663
                  andi       t0, s9, -179
                  or         a5, gp, a4
                  xori       gp, a2, -485
                  sub        a6, tp, tp
                  sub        a0, t2, gp
                  srl        s11, t1, gp
                  andi       a4, t6, 518
                  and        s7, a0, t2
                  xori       t6, s0, -882
                  sra        a5, s7, tp
                  addi       a6, a6, -232
                  sltiu      a2, s1, -469
                  srai       s8, s5, 6
                  lui        s5, 160147
                  or         s6, a0, s7
                  lui        a0, 903865
                  nop
                  andi       sp, t1, 337
                  sltu       tp, s5, s2
                  and        t6, s3, t0
                  add        s11, s3, s8
                  sltiu      a3, a5, -163
                  sltiu      zero, s3, 145
                  slti       a3, zero, -43
                  and        t3, s3, s0
                  or         a0, sp, a1
                  auipc      a6, 204826
                  sltiu      s5, s11, 404
                  sltu       t0, t2, s2
                  sub        a3, s7, s6
                  nop
                  sub        t0, t4, s3
                  add        a1, a0, s3
                  sll        a6, t0, s1
                  xor        a5, a0, t4
                  and        a2, a4, a2
                  srl        sp, a7, s10
                  sll        t4, a3, s10
                  srai       a6, s0, 7
                  sll        t2, s5, a1
                  nop
                  ori        tp, tp, -68
                  slt        t3, s6, t2
                  xori       s6, s2, 783
                  sltu       s5, a3, s5
                  slti       t5, s6, 637
                  sll        s5, s7, s4
                  sltiu      ra, t4, 743
                  sra        s0, t6, s9
                  xor        s8, s3, a3
                  slli       a7, s9, 29
                  sll        zero, a7, s10
                  ori        s3, s3, -121
                  or         t0, a5, a6
                  or         a1, s8, s10
                  ori        a1, s2, -653
                  sra        gp, gp, s8
                  or         ra, s6, a2
                  sll        a6, s7, t5
                  srl        t1, a2, a5
                  ori        t1, a7, 457
                  slti       zero, sp, -70
                  add        a4, s8, t6
                  or         a5, ra, t1
                  srl        s11, a6, ra
                  sub        a0, s3, s3
                  lui        t0, 757104
                  nop
                  sub        tp, s5, s0
                  srai       s3, t2, 27
                  slli       a2, t5, 8
                  srl        a7, s8, s6
                  sltu       t5, t0, sp
                  sra        a3, sp, t1
                  srai       s0, a3, 22
                  sltiu      ra, a5, 530
                  sll        ra, t2, s5
                  slli       t4, s6, 19
                  slli       s2, s1, 1
                  slti       ra, t2, 317
                  srai       t4, t1, 1
                  sltiu      zero, a5, 312
                  sltiu      t3, a1, 80
                  sub        gp, tp, a2
                  xor        s8, t6, sp
                  or         a7, a3, s10
                  srl        a4, s0, s11
                  lui        s5, 884516
                  slt        a0, a3, s11
                  andi       s5, a4, -406
                  sra        t3, s11, s1
                  srai       t0, t0, 29
                  slli       a3, t3, 27
                  sll        t5, zero, a0
                  srli       s0, a5, 24
                  xori       t5, tp, 215
                  or         gp, a4, a0
                  srai       a7, t0, 15
                  lui        gp, 252455
                  nop
                  slt        a3, t1, zero
                  add        t2, a7, gp
                  sub        a0, a7, t5
                  xori       a1, gp, 100
                  slli       s7, s6, 4
                  slt        a5, t5, a3
                  or         tp, a1, t6
                  sltiu      gp, s11, -104
                  sll        ra, t1, tp
                  slti       s5, s6, 323
                  srli       a0, s0, 25
                  xori       a5, sp, -878
                  sra        a6, s9, s3
                  sra        ra, zero, t1
                  ori        t6, zero, 34
                  lui        a6, 1002374
                  add        a0, s11, s2
                  sll        a2, t5, s1
                  and        s6, s7, s4
                  sltu       t5, a6, s6
                  li         a4, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li         a0, 0x80000000
                  li         a1, 0xb62ea16
                  li         t0, 0x0
                  li         t6, 0x84253dbd
                  li         a5, 0x0
                  li         s11, 0x3e9bb021
                  li         s3, 0xe5361688
                  li         s0, 0x0
                  li         a7, 0x0
                  add        t0, a4, s0
                  addi       a7, a0, 207
                  auipc      a5, 60264
                  sub        t6, s3, s11
                  nop
                  add        a4, t6, t6
                  add        a5, a5, a4
                  auipc      t0, 343142
                  add        a1, a4, s3
                  add        s0, s0, s0
                  addi       s0, s11, -126
                  sub        a1, a5, s3
                  sub        t6, a4, s3
                  auipc      s0, 252371
                  lui        a0, 407510
                  addi       s11, s11, -523
                  nop
                  sub        a0, s0, s3
                  add        a0, t6, a4
                  auipc      t6, 689070
                  auipc      t6, 591687
                  addi       t6, s11, 681
                  sub        a5, a0, t6
                  lui        t0, 925244
                  sub        s11, s3, s0
                  addi       s11, a4, -1009
                  addi       a5, a7, -108
                  auipc      s0, 158287
                  lui        a4, 416323
                  lui        t6, 789365 #end riscv_int_numeric_corner_stream_30
                  lui        t4, 625540
                  srl        a3, a6, s2
                  and        gp, s10, s6
                  sra        a7, t5, tp
                  sub        t2, a4, a7
                  slt        sp, a6, a7
                  srli       t3, a7, 12
                  sll        a1, s1, t2
                  ori        a1, s0, 403
                  add        s7, ra, t3
                  xori       t2, t6, -344
                  auipc      a4, 825186
                  add        s3, s11, t6
                  auipc      s11, 403221
                  srl        gp, a2, a7
                  lui        t1, 971105
                  addi       t3, a0, 777
                  sra        sp, t0, s1
                  sub        a3, s11, t4
                  or         ra, a4, t0
                  or         s2, t5, sp
                  srli       t1, s2, 23
                  or         s11, a3, sp
                  addi       t2, a3, -522
                  srli       a0, s4, 25
                  ori        a3, t1, 821
                  sll        a7, t2, s4
                  slli       s6, a3, 18
                  and        s3, tp, t6
                  sll        s11, t0, s8
                  sub        s3, s3, s3
                  slli       ra, s11, 30
                  slti       s3, gp, -311
                  slli       a6, t0, 12
                  sltu       t6, s5, s10
                  srl        s7, t6, t1
                  sltu       s2, t4, s7
                  and        tp, s0, tp
                  sltiu      a6, s1, -265
                  andi       ra, t4, -569
                  slt        s6, a5, sp
                  srl        s3, a3, t2
                  andi       t2, t4, -874
                  add        s11, t4, a1
                  ori        a0, s5, 983
                  srai       t6, s10, 26
                  srli       t5, a6, 5
                  nop
                  add        s5, a0, a1
                  auipc      s6, 301871
                  slt        s6, t5, a2
                  add        s7, t2, sp
                  sltu       tp, a3, a5
                  or         a0, gp, a7
                  or         t4, t2, a6
                  sll        s9, s7, zero
                  add        s11, a1, zero
                  srai       gp, s11, 14
                  and        s6, sp, t4
                  slli       t4, s3, 24
                  sub        s5, t6, s2
                  auipc      s8, 582494
                  add        s8, s6, tp
                  xor        a0, s2, tp
                  andi       a3, s4, 531
                  andi       zero, a1, 28
                  srl        s3, s4, t2
                  xor        ra, t1, s3
                  srl        t5, s11, s6
                  sltu       sp, tp, t5
                  sltu       t5, s8, s10
                  slti       t1, s1, -940
                  add        s3, zero, a1
                  sub        s8, a4, s4
                  xor        a1, gp, t6
                  auipc      t1, 855299
                  lui        gp, 245704
                  slti       s2, s7, 588
                  slti       a7, t4, -199
                  srli       a0, t0, 25
                  sub        s7, s6, a2
                  andi       t4, s11, 972
                  slt        t1, s11, sp
                  slli       s11, tp, 18
                  sub        t1, zero, s0
                  or         s6, s10, a0
                  xor        t4, a5, s8
                  xor        gp, s1, t3
                  add        s6, t5, s8
                  xor        a4, a0, a6
                  and        a7, t0, a4
                  addi       a6, s2, 369
                  slli       s8, a1, 9
                  nop
                  slti       t3, tp, -344
                  sll        ra, s11, t1
                  or         a2, s0, t1
                  slli       t0, s6, 30
                  srl        tp, s8, t1
                  sltu       a4, sp, a6
                  sltiu      s11, s2, 920
                  sltu       t2, a1, a4
                  srl        t3, a7, s0
                  sll        s6, sp, a1
                  add        s6, s7, a5
                  add        s6, s3, t1
                  sltu       t2, a5, s5
                  srl        t5, a1, a1
                  xor        s7, s4, a7
                  sub        s2, t1, a7
                  add        a2, sp, t0
                  slt        s9, zero, ra
                  srai       t2, t6, 29
                  srai       s2, a4, 10
                  sub        t1, sp, a0
                  sltu       s11, a3, t0
                  sra        a1, ra, s3
                  lui        s0, 306154
                  srai       sp, s11, 22
                  slti       s6, a4, -463
                  nop
                  or         zero, s1, t0
                  slt        ra, a1, a5
                  andi       ra, a3, -615
                  srai       s5, a2, 8
                  andi       sp, a3, 874
                  addi       s0, sp, 270
                  sra        s7, s6, s5
                  or         s0, t2, s5
                  nop
                  xor        a6, t3, s9
                  and        a0, t0, s6
                  slt        a6, sp, s5
                  sra        a2, t4, a6
                  sra        zero, t2, a5
                  and        t6, sp, a1
                  auipc      a6, 376625
                  and        t3, s3, s4
                  sra        a4, t2, zero
                  slli       a6, s2, 20
                  sltiu      s0, s3, -11
                  sra        s9, t0, t0
                  sltiu      s9, gp, 917
                  sll        s8, tp, s11
                  sra        t5, a3, a2
                  slti       a4, a7, -375
                  slti       a4, s5, 229
                  or         s11, a0, t2
                  sll        a1, ra, a5
                  andi       a7, s11, -854
                  lui        zero, 813685
                  sra        sp, sp, a4
                  and        t0, t3, s5
                  ori        s5, s7, 139
                  srl        a2, sp, a2
                  addi       s8, s0, -717
                  srli       s7, s11, 9
                  xor        s0, t6, t6
                  nop
                  auipc      t1, 846589
                  ori        a0, s5, -148
                  slli       t1, s9, 20
                  andi       t5, tp, -506
                  sll        t6, s9, t4
                  slti       s3, s10, 34
                  sra        a1, a4, t0
                  or         zero, a2, s9
                  srai       s6, s10, 15
                  or         a5, s7, t0
                  slti       s6, a4, -977
                  andi       a3, t2, 433
                  andi       s8, s10, 123
                  andi       gp, s7, -637
                  sltiu      a7, sp, -688
                  xor        t1, s2, a2
                  lui        t5, 254380
                  andi       a0, s2, -255
                  lui        sp, 482802
                  add        s6, a2, t1
                  or         s7, s8, a6
                  srai       a2, t0, 22
                  nop
                  or         s7, gp, s10
                  auipc      a6, 602158
                  sub        sp, s6, s5
                  xori       a6, t6, -200
                  addi       t4, s2, -6
                  andi       t0, a2, -685
                  slti       tp, t2, 423
                  xor        s11, s5, s6
                  auipc      s0, 84268
                  andi       t3, a3, 874
                  srli       a2, s4, 28
                  slti       sp, zero, -207
                  add        t0, a6, a7
                  srli       a2, a0, 25
                  srli       t6, a2, 30
                  andi       t1, s2, 1012
                  and        s0, s9, s6
                  addi       t0, s6, 209
                  sra        t6, a1, s8
                  addi       ra, s5, -202
                  slli       t5, t0, 16
                  andi       s6, s10, 902
                  lui        t3, 866508
                  addi       s7, a1, 261
                  slti       s11, s2, 218
                  addi       t6, a2, -254
                  add        zero, tp, a1
                  add        t4, t2, s10
                  sltiu      a3, t1, -658
                  sub        t3, a6, s3
                  nop
                  sra        a0, t2, t2
                  slli       s7, tp, 23
                  and        t4, t1, t5
                  ori        zero, s2, -31
                  srli       a1, t5, 29
                  sra        t3, a5, s3
                  xor        s3, a4, gp
                  xori       tp, tp, -1007
                  sltu       s3, a5, a2
                  lui        a7, 601035
                  andi       t6, s6, 203
                  lui        ra, 743205
                  srli       zero, s10, 27
                  lui        t0, 973479
                  andi       a4, a1, -225
                  xor        ra, t4, a6
                  srli       a0, s3, 15
                  sra        a0, t3, sp
                  sra        a2, s9, a3
                  and        gp, t2, t5
                  slli       t3, a0, 1
                  addi       s5, s10, -124
                  slti       t3, a0, 655
                  andi       t5, s6, -992
                  srl        ra, t1, a3
                  slli       a0, t6, 2
                  lui        s6, 388150
                  and        gp, s4, t0
                  addi       a0, a4, 743
                  andi       t1, gp, -806
                  sra        a1, s0, s1
                  sra        s2, t4, s4
                  slt        s7, tp, sp
                  addi       a7, a3, 627
                  xor        a6, s7, s1
                  add        t3, t4, t3
                  srai       s6, a1, 14
                  slti       t0, s10, 417
                  andi       tp, t4, -979
                  sra        ra, tp, s10
                  nop
                  srli       s9, s0, 14
                  slli       t4, t1, 11
                  lui        s8, 87353
                  andi       s5, s2, 928
                  sltiu      a6, s11, -869
                  xor        a5, zero, s2
                  sll        t3, zero, tp
                  add        a6, gp, a3
                  or         ra, s9, a5
                  nop
                  addi       t3, s3, -147
                  sltu       t2, ra, a6
                  slt        t5, s3, t6
                  sra        a7, t1, a3
                  add        t0, gp, a2
                  auipc      s8, 243850
                  nop
                  auipc      a3, 435577
                  auipc      t6, 704008
                  nop
                  addi       a7, a7, -615
                  slli       s8, a6, 16
                  slli       s7, s6, 31
                  nop
                  nop
                  slli       ra, sp, 11
                  slt        sp, zero, t6
                  and        sp, a4, t4
                  sltu       t2, t3, a6
                  sltu       s7, s2, zero
                  sll        a0, t0, zero
                  sltiu      a4, a0, -998
                  auipc      s5, 446601
                  andi       s3, t5, -749
                  slli       s11, t0, 29
                  xori       a1, s6, -351
                  and        gp, t5, tp
                  slli       t4, t4, 13
                  slli       s0, t5, 26
                  xor        s0, s9, s11
                  srl        a0, s6, a0
                  srl        a1, gp, s5
                  srl        s6, a5, t4
                  srl        t3, tp, zero
                  ori        a4, a4, 931
                  add        a4, t0, s1
                  sltu       a1, t4, a0
                  xor        s7, s8, gp
                  srl        a5, ra, s4
                  xor        a4, s7, s3
                  srl        s6, s1, s7
                  auipc      a3, 296680
                  nop
                  slli       t5, a2, 17
                  and        s6, a0, t5
                  addi       a3, s2, 209
                  slti       a4, s11, 594
                  slli       s0, s5, 24
                  sltu       t1, t6, t1
                  sub        a2, s4, s7
                  sll        s5, s8, a2
                  slli       a2, sp, 2
                  addi       a2, sp, -276
                  sll        s0, a5, s7
                  srl        t4, a3, s9
                  addi       t3, s8, -630
                  lui        t6, 411784
                  andi       t6, a7, -450
                  andi       t0, a5, -710
                  auipc      t5, 807176
                  slti       s2, t4, 801
                  slt        s3, s5, s10
                  sltiu      s2, s5, 280
                  or         t3, s1, s4
                  andi       a3, s9, 545
                  lui        sp, 1048309
                  slti       sp, s9, 767
                  xor        a4, t6, s10
                  slli       a5, tp, 13
                  srai       s8, s7, 16
                  auipc      a6, 107347
                  srl        a1, tp, a7
                  nop
                  lui        tp, 943241
                  sltiu      t1, s7, 575
                  srl        t3, t5, s4
                  sltiu      t2, s3, -303
                  ori        a0, t2, 415
                  lui        a1, 554914
                  addi       t2, s11, -689
                  srai       a1, a1, 6
                  sltu       s0, a2, s6
                  srli       a2, ra, 5
                  addi       gp, a6, 254
                  or         s0, zero, zero
                  nop
                  srl        a4, a1, s7
                  add        t3, s8, t5
                  slli       tp, a4, 6
                  srl        t5, a5, s9
                  srli       s6, s1, 30
                  srli       gp, a6, 13
                  addi       s7, t2, -479
                  xor        t5, s6, t5
                  xori       a6, a3, -44
                  sll        tp, t6, s2
                  srai       a4, s10, 23
                  slti       tp, s5, 953
                  ori        gp, s2, 981
                  lui        a4, 221491
                  sra        a1, a1, s8
                  sll        t6, s4, s11
                  xori       a5, s2, -984
                  srai       t3, ra, 20
                  sra        t5, s9, s9
                  sltu       s7, s11, t5
                  andi       t3, s9, 591
                  srli       s6, zero, 7
                  srai       s5, sp, 20
                  sll        a5, t4, s1
                  add        t0, s7, t1
                  or         a0, s11, a1
                  xori       s8, a6, 244
                  add        a4, a6, s3
                  add        s11, a2, a2
                  sltu       s2, t2, s2
                  nop
                  add        tp, s5, t0
                  or         t6, s10, t1
                  srl        a5, t5, t2
                  andi       a0, a0, -292
                  sltu       ra, s6, a6
                  srl        t1, a5, a2
                  sra        sp, s2, t5
                  sll        a1, s7, t0
                  sra        t6, zero, gp
                  nop
                  sltu       ra, a5, t5
                  srli       a4, t6, 19
                  ori        s2, t1, -850
                  srai       a6, s8, 28
                  lui        a7, 221607
                  andi       sp, s3, 332
                  sub        s3, a7, zero
                  lui        s2, 1015878
                  sltiu      zero, t1, -741
                  add        t3, a1, ra
                  sra        a2, a4, s5
                  xor        s6, s9, s2
                  addi       t0, a0, -987
                  ori        s3, s4, -363
                  or         gp, t3, t3
                  srl        a2, gp, zero
                  sll        s8, s6, t3
                  srli       s9, a2, 25
                  addi       s0, t4, 423
                  sll        s7, a5, a5
                  add        a0, s3, t2
                  and        a2, t4, s8
                  srai       a2, gp, 6
                  sltu       t6, a1, a6
                  sltiu      a3, a4, 862
                  auipc      sp, 963739
                  xor        s8, tp, s9
                  slt        s11, s4, s9
                  andi       a0, s9, 151
                  or         sp, a2, gp
                  nop
                  lui        gp, 848249
                  slti       s8, t3, 842
                  ori        s2, a4, 27
                  nop
                  slt        gp, s2, s3
                  xor        sp, a0, a7
                  addi       a0, a5, -413
                  xori       gp, s10, 460
                  srli       t0, a6, 10
                  xori       a4, sp, -706
                  slt        s7, s5, sp
                  ori        s7, a0, -825
                  sltiu      s2, t3, 340
                  srl        s5, s8, s10
                  srli       s9, s10, 15
                  sltiu      s8, a2, -933
                  lui        gp, 621827
                  srli       gp, s0, 24
                  srli       tp, s7, 29
                  andi       s5, a6, 985
                  srl        t2, s9, s3
                  or         s9, s9, zero
                  slti       t6, ra, -90
                  addi       t1, s5, 674
                  xori       s11, s5, 49
                  srai       a5, t5, 19
                  sra        a1, t1, s7
                  ori        t5, a6, -429
                  and        a0, s10, s11
                  xor        a5, s5, s5
                  nop
                  andi       s3, s11, 57
                  srai       s11, t5, 6
                  xor        s3, a3, a5
                  sll        s2, t0, t5
                  sll        s8, a0, a6
                  sub        t4, s6, a1
                  srl        a5, s7, tp
                  ori        ra, s5, 887
                  sltu       s0, t1, s9
                  and        t1, t2, ra
                  xor        a0, t4, t1
                  andi       s2, a3, -603
                  sltu       t1, s0, s0
                  sltiu      t3, a2, 849
                  andi       a4, a0, 340
                  srai       s0, s3, 25
                  xori       a3, t2, -346
                  srai       sp, a6, 23
                  ori        s2, s10, 600
                  sub        s0, s1, a1
                  srli       s9, s1, 24
                  sltu       sp, t2, a0
                  lui        a5, 54421
                  ori        a3, t1, -4
                  slli       gp, t2, 12
                  sll        t5, t2, s0
                  sra        t2, a6, t4
                  lui        gp, 72253
                  xori       t0, s7, 577
                  sra        t1, s3, a1
                  ori        t3, a2, 930
                  srl        tp, a3, t0
                  slti       a1, zero, 263
                  srli       t5, a5, 28
                  ori        s7, s2, 252
                  xor        a4, s11, a2
                  add        t6, s6, s3
                  ori        s2, s4, 221
                  slt        a7, s7, sp
                  auipc      s11, 814197
                  or         t5, a2, s5
                  sltu       t3, t2, t1
                  or         a2, s4, s2
                  sra        a7, a3, zero
                  xori       a3, t3, 221
                  slt        a4, s5, sp
                  slt        s2, a0, zero
                  srli       a7, a2, 22
                  srai       s0, s5, 9
                  sll        s0, a6, sp
                  sra        ra, a6, s10
                  auipc      a0, 618169
                  xor        a1, t2, t3
                  slli       t6, s4, 29
                  lui        a2, 648800
                  addi       ra, zero, -774
                  srai       t4, s3, 10
                  andi       sp, sp, 745
                  ori        s11, s3, 357
                  and        tp, s2, a0
                  nop
                  srl        a0, s6, t3
                  auipc      t5, 412787
                  slti       t4, s4, -390
                  srai       a0, a0, 19
                  lui        s0, 562515
                  xori       s8, a6, 578
                  srl        a1, s1, s10
                  addi       t5, t0, -853
                  auipc      s6, 232713
                  sub        a6, t3, a0
                  xori       t1, ra, -468
                  srl        a5, a6, s0
                  slt        s11, s8, t2
                  addi       s2, s10, -622
                  srai       s9, gp, 10
                  srai       t5, a2, 7
                  srli       zero, a2, 22
                  slti       s7, t5, -722
                  sltu       a6, t6, s6
                  auipc      a1, 477387
                  srai       a4, t6, 13
                  addi       s3, ra, -942
                  auipc      t2, 365431
                  sltiu      s7, s0, 511
                  slti       s11, s10, -670
                  sra        zero, gp, t0
                  srai       s7, zero, 28
                  sub        s3, a0, t3
                  sub        s7, s3, t3
                  xori       a5, gp, -243
                  addi       t2, s11, -445
                  sra        s6, s2, a4
                  srli       s2, s5, 9
                  nop
                  slti       t4, s11, -867
                  sltu       zero, gp, t0
                  or         t3, a5, a0
                  ori        t4, a2, 706
                  srl        a2, tp, s4
                  sra        a3, t3, a5
                  lui        a7, 930955
                  sltu       s7, a5, s7
                  and        gp, t0, t5
                  slti       a0, a0, -241
                  auipc      s8, 114958
                  lui        a0, 637070
                  sra        t1, a4, s2
                  slti       s9, s8, 276
                  sra        s8, a4, s7
                  andi       t6, t0, -957
                  sub        s0, s11, t0
                  add        a6, s5, s10
                  slt        a1, gp, a3
                  sltiu      a7, a0, 924
                  lui        a0, 253892
                  or         t3, t5, t4
                  sltiu      a1, a2, 932
                  srl        s9, t2, tp
                  and        zero, s6, t3
                  slt        s3, t3, a0
                  and        a4, a5, a3
                  or         a1, zero, t0
                  srai       ra, t1, 18
                  ori        t4, a0, 25
                  or         s5, a4, t6
                  srli       t1, a7, 27
                  addi       a7, zero, 46
                  srai       ra, s6, 29
                  slti       s7, s7, -539
                  and        t1, t6, ra
                  auipc      s8, 246109
                  or         s2, a1, s8
                  xori       a7, a1, -647
                  sra        a1, gp, gp
                  and        t1, s5, s0
                  add        a2, s0, sp
                  srai       t3, s0, 8
                  or         t5, s6, t1
                  xor        a0, t5, gp
                  srai       s9, s2, 9
                  sll        s11, ra, t6
                  auipc      tp, 488227
                  nop
                  auipc      s8, 69862
                  slli       s7, t6, 26
                  sub        a5, ra, t3
                  slli       t4, a7, 31
                  and        t2, s6, gp
                  or         a6, tp, s3
                  sra        t6, a7, t2
                  ori        tp, s2, 542
                  xor        t5, t1, t4
                  slt        t2, s0, zero
                  sra        s8, s11, s3
                  srl        s2, zero, s7
                  slt        s3, t4, t5
                  sltiu      zero, a2, 661
                  nop
                  sra        s2, gp, gp
                  add        a2, s3, s1
                  add        a5, s6, s2
                  xor        a2, s1, t3
                  slti       a6, s2, 91
                  slli       a6, zero, 5
                  srai       a7, t1, 18
                  slli       t6, a2, 18
                  sub        s9, s7, a5
                  sltiu      t6, s1, 890
                  sll        a6, a1, a5
                  srli       a3, s8, 10
                  auipc      t2, 350801
                  sra        a0, t1, t0
                  xori       s3, t4, 247
                  srl        s11, s9, a0
                  slli       s7, s11, 11
                  sltiu      s11, a7, 827
                  or         s3, s5, s6
                  sub        s8, s10, zero
                  slti       tp, a0, -19
                  add        t2, s0, t4
                  sltu       s9, a6, a5
                  slli       a4, a5, 24
                  lui        t5, 667746
                  slt        s11, ra, tp
                  and        gp, t0, t4
                  slti       t1, t0, 127
                  nop
                  xor        s6, s6, tp
                  srli       t6, s2, 23
                  sltu       t5, a1, t2
                  slli       s0, s9, 1
                  addi       a1, s5, -954
                  slti       a2, a0, 46
                  slli       s6, t0, 30
                  auipc      s6, 132988
                  slt        t6, a6, a4
                  and        t2, a4, t1
                  srli       t5, a2, 22
                  slti       a4, t3, 1006
                  srai       t1, t6, 11
                  slti       t1, s4, -171
                  auipc      a4, 296194
                  xori       t2, s9, -199
                  or         t0, a0, t6
                  srl        a4, a0, t3
                  and        t5, a7, tp
                  sltu       a3, a5, a1
                  or         t0, a2, s6
                  lui        s9, 725727
                  auipc      s6, 133950
                  srl        s9, a4, a5
                  sub        a2, a0, a5
                  xori       a3, s2, 267
                  srli       s6, s9, 30
                  ori        ra, s6, 1
                  add        s9, s1, s8
                  sll        t2, s9, zero
                  slli       s6, t2, 10
                  add        t2, s6, a5
                  xor        t4, a6, s8
                  addi       t3, s0, 216
                  and        t2, s0, gp
                  sltiu      t0, s1, -215
                  and        t6, s8, t6
                  slli       zero, s4, 14
                  and        s0, a3, a5
                  sltu       t4, t5, t5
                  sub        tp, t0, s3
                  auipc      t5, 597197
                  srl        ra, a4, s11
                  sub        s7, s2, a5
                  auipc      t3, 434618
                  slt        s2, t2, a6
                  sra        s11, s5, s2
                  xori       s7, a5, 823
                  sltu       t5, t6, a7
                  ori        a0, s8, -271
                  and        ra, a1, s5
                  sub        s11, gp, a5
                  sll        zero, s5, s5
                  srl        a7, s1, zero
                  srai       t4, s2, 30
                  addi       a7, ra, -68
                  or         t1, s9, a4
                  auipc      a6, 592710
                  sltiu      gp, s6, -452
                  or         t2, s3, t1
                  slt        a5, a3, a1
                  slli       a0, t2, 7
                  ori        s11, a2, 304
                  xori       sp, s2, -953
                  slt        ra, t1, s3
                  sub        s2, s5, s9
                  addi       s5, ra, -981
                  sll        s8, ra, a3
                  xor        t0, a7, t1
                  lui        zero, 808630
                  srli       s9, s5, 0
                  ori        a6, s1, 318
                  andi       a5, a0, -502
                  addi       s7, s7, 335
                  srai       t4, s3, 12
                  xor        t2, tp, s1
                  srai       s5, s4, 25
                  or         t5, ra, a6
                  sub        s8, a2, s11
                  sltu       s2, a7, t5
                  slli       s11, s11, 3
                  sll        a3, t2, s4
                  sll        s0, s4, s1
                  srl        a3, s8, s10
                  slli       zero, sp, 23
                  addi       a7, t4, -236
                  slli       t4, zero, 15
                  andi       t6, t3, 135
                  sll        s9, gp, s11
                  or         tp, s6, t3
                  sltu       a2, zero, s10
                  xori       a3, s10, -354
                  slti       t0, a7, -13
                  srl        s11, s10, s8
                  sltu       s9, a5, t1
                  and        t3, sp, a2
                  slti       gp, a1, 189
                  andi       s2, s0, -547
                  sub        t4, t4, zero
                  auipc      a2, 611085
                  xori       a3, s3, -642
                  nop
                  sub        a6, s11, sp
                  sub        s8, a4, a3
                  srl        t3, s2, t5
                  xor        t0, a1, s1
                  xori       s0, t0, -479
                  srl        a5, ra, zero
                  sra        a6, a3, a7
                  auipc      s0, 83935
                  and        gp, gp, s7
                  sra        a7, a4, tp
                  sltu       a4, t2, s0
                  lui        s9, 774450
                  sll        a6, s2, a2
                  sll        s0, s11, t6
                  slli       a6, s6, 31
                  addi       a2, s11, 874
                  xor        a3, t0, s9
                  add        s11, a7, s8
                  andi       s11, t1, 573
                  slti       t1, s0, 381
                  nop
                  lui        a1, 840110
                  slli       t5, s1, 2
                  srai       sp, s0, 24
                  slt        s9, s0, t5
                  andi       t6, t4, 112
                  sltiu      a4, a0, 478
                  srli       t5, s5, 30
                  sub        a6, s1, a1
                  andi       a7, a0, 28
                  sll        a7, s6, s2
                  add        tp, s10, t6
                  srai       s6, s8, 15
                  ori        s11, s7, 333
                  addi       zero, t1, -227
                  slti       s5, s6, 88
                  ori        s11, a5, 1018
                  slt        s9, s4, s10
                  srl        t1, t3, zero
                  sub        a0, t3, a7
                  slt        s9, s4, s3
                  sll        sp, s11, t3
                  add        a2, a2, s1
                  sra        s2, s1, s0
                  and        t5, a2, t2
                  sub        t5, a1, s8
                  addi       zero, a1, 766
                  xor        s2, s10, a1
                  srli       a7, s1, 22
                  srai       a4, s9, 24
                  andi       a4, s4, -341
                  xor        t4, a5, a4
                  or         ra, s0, a5
                  andi       a0, s4, 961
                  srl        a4, s2, t6
                  srli       s6, ra, 2
                  sltiu      a1, a4, 427
                  xori       a3, a0, -156
                  and        a7, s1, s7
                  add        a5, sp, s11
                  srl        ra, t5, t0
                  slli       t4, a1, 10
                  srli       s5, t1, 24
                  xor        s3, sp, tp
                  xori       a6, t4, 666
                  ori        s2, s1, 702
                  sll        a0, a3, a1
                  or         s5, t1, a2
                  addi       t4, gp, -472
                  srli       t0, s5, 13
                  sub        zero, t5, gp
                  andi       s0, s3, 280
                  lui        ra, 61190
                  slli       a5, t1, 31
                  xori       a2, s11, -784
                  ori        a4, a1, 772
                  nop
                  sra        s6, sp, t3
                  srai       t0, s1, 25
                  slli       s3, a5, 28
                  xori       a1, a0, -436
                  sll        sp, a5, s11
                  add        s9, s10, t2
                  srl        s9, a6, a7
                  nop
                  slt        t4, a2, a4
                  nop
                  and        a5, t4, a2
                  or         s5, s0, a1
                  srl        s6, a0, a1
                  sltu       ra, sp, a0
                  nop
                  slli       t5, s4, 6
                  auipc      t2, 796618
                  and        a2, a2, gp
                  slti       a6, sp, -325
                  or         t6, s8, a2
                  srli       s6, a1, 31
                  sub        ra, gp, a2
                  addi       a5, t4, 281
                  and        sp, t1, s1
                  add        t3, a3, s8
                  slti       t5, a4, 238
                  xori       s8, a2, 945
                  add        t2, a5, s2
                  slli       t3, a1, 25
                  sra        s6, a4, a1
                  sub        a1, t4, s2
                  add        s3, s6, t6
                  slti       a0, gp, -608
                  slti       s11, tp, 1005
                  sll        s2, s0, t1
                  slti       a7, s2, 161
                  slti       a5, t3, -653
                  slti       s6, s6, 357
                  nop
                  lui        a7, 391472
                  slti       t2, s10, -427
                  slti       s9, t2, 322
                  sra        t3, s8, a0
                  sltiu      a3, a7, -652
                  add        s3, s9, s0
                  auipc      t5, 816653
                  lui        sp, 495494
                  andi       t0, t3, 438
                  srai       s2, s10, 12
                  xor        a6, a3, a7
                  and        ra, ra, s2
                  slti       t0, t5, -250
                  add        a0, tp, t6
                  ori        a1, gp, -264
                  slli       a2, a4, 9
                  lui        s2, 629414
                  and        sp, a0, ra
                  ori        sp, s7, -1004
                  slti       tp, s5, 521
                  nop
                  auipc      s3, 311320
                  xor        a0, t1, s11
                  slt        t4, gp, s1
                  or         s2, a4, a2
                  srai       a2, s6, 4
                  sll        t6, a2, a7
                  srl        a6, t5, s8
                  xori       a6, a0, 622
                  slli       sp, a5, 23
                  xori       a4, t4, -98
                  srai       s7, t6, 23
                  auipc      ra, 419760
                  and        t1, t3, a6
                  sub        s8, t3, s1
                  lui        t4, 825524
                  xori       s7, s10, 757
                  and        s0, t5, t3
                  nop
                  srai       zero, zero, 29
                  slti       s11, a5, 238
                  sra        gp, a7, ra
                  sltiu      ra, t4, 795
                  sra        t3, s9, gp
                  lui        t0, 333583
                  andi       t4, s10, 645
                  auipc      s2, 390865
                  srl        s0, s7, s11
                  srli       t4, t1, 5
                  sltiu      gp, s1, 993
                  and        s11, ra, zero
                  sltu       a5, s1, a0
                  xor        a2, s8, s0
                  nop
                  slt        a1, zero, s11
                  sll        a5, t4, s7
                  add        t2, zero, s2
                  srai       s7, s5, 3
                  sltu       s3, s8, a7
                  lui        s3, 342506
                  xori       t0, zero, -275
                  sltu       a6, tp, a1
                  xori       s3, sp, 653
                  sltu       a5, a7, t5
                  and        a7, t0, a1
                  slli       a2, a4, 22
                  srai       t3, t6, 26
                  slti       a7, s10, 100
                  slli       s6, s6, 30
                  sltu       s2, s8, tp
                  xori       t2, ra, 18
                  xori       a0, t6, -331
                  srl        t3, s2, s1
                  sub        t1, s10, a6
                  ori        s2, a2, 326
                  sll        a2, s2, s2
                  nop
                  and        s0, s4, s6
                  ori        t4, s4, -371
                  addi       t1, t1, 52
                  lui        t4, 398234
                  srl        t6, t1, a7
                  xori       a5, a3, 5
                  or         ra, s7, a7
                  srli       t0, gp, 31
                  sll        s9, a3, t1
                  addi       s8, a2, 780
                  sub        t0, t4, s11
                  andi       t1, s7, 144
                  auipc      a4, 562608
                  slli       s6, a4, 16
                  addi       a2, sp, 72
                  sltiu      t5, s5, 729
                  slli       t3, s3, 28
                  add        s6, s7, a4
                  or         a0, s8, s6
                  sub        s9, a0, s8
                  nop
                  andi       tp, s1, -692
                  sub        t3, a6, s3
                  sltu       tp, zero, s1
                  addi       a7, a2, 287
                  addi       tp, a7, -336
                  andi       t1, t1, -393
                  addi       s2, s2, 743
                  ori        s8, t3, -217
                  addi       s0, t3, 807
                  srl        s3, s9, s11
                  srai       a1, a2, 7
                  slli       s7, s5, 18
                  slti       sp, s8, 932
                  srli       s8, s5, 8
                  sra        t5, a2, a7
                  slt        s11, s1, t2
                  sra        a6, t5, ra
                  srai       t3, s11, 22
                  auipc      s3, 840225
                  srl        t1, t0, a5
                  sra        s9, zero, s1
                  sra        s0, gp, s7
                  or         s7, s9, s7
                  nop
                  addi       a5, t3, 485
                  srl        a7, s8, s8
                  andi       ra, sp, 819
                  xori       ra, t0, 445
                  ori        s9, t1, -333
                  andi       t3, s0, 89
                  sltiu      t5, gp, 991
                  sub        s11, s6, t2
                  sltu       tp, a2, s8
                  auipc      a4, 729515
                  ori        sp, s6, -769
                  andi       t1, s5, 82
                  auipc      a7, 599712
                  sll        s7, s11, tp
                  sltiu      sp, a2, -899
                  auipc      s0, 809727
                  srli       s8, a4, 30
                  add        s3, tp, s9
                  sltiu      a3, ra, -691
                  srai       s3, s0, 29
                  ori        t3, gp, 220
                  sltiu      a2, a6, 485
                  xori       t1, sp, 157
                  sltu       s8, s10, a6
                  slli       sp, s0, 14
                  sra        s5, tp, t6
                  lui        s8, 743806
                  sltu       t2, tp, a1
                  ori        t3, sp, -8
                  srai       t3, a5, 21
                  sltiu      a4, t1, -976
                  or         s3, t6, s2
                  nop
                  and        s7, s4, t5
                  addi       s7, t4, 904
                  nop
                  sra        a6, tp, s0
                  addi       ra, s7, 706
                  and        sp, sp, a4
                  add        t6, t6, s9
                  sltiu      sp, s1, -271
                  and        t1, a6, s10
                  and        t2, t6, a4
                  add        s3, gp, a6
                  lui        s0, 407566
                  srl        t4, t4, s1
                  sra        a7, s5, t4
                  addi       s11, s3, 193
                  ori        a0, s3, 45
                  add        a1, s10, gp
                  slli       s7, t1, 14
                  srli       a6, s1, 15
                  srli       t6, ra, 22
                  addi       t2, s3, -382
                  addi       s5, a7, -313
                  andi       t0, a3, 685
                  sra        t4, s8, s9
                  ori        s2, a0, -230
                  slli       t1, t2, 11
                  nop
                  lui        a6, 992595
                  or         a4, t3, t0
                  xor        a6, t6, zero
                  add        tp, t3, a2
                  sll        s9, a5, a2
                  sltiu      a3, s0, -533
                  slti       s9, t3, -832
                  add        a2, s11, s8
                  nop
                  srli       t2, t5, 0
                  srai       t0, s4, 29
                  slli       s9, s1, 24
                  sll        s3, zero, a6
                  srl        t6, tp, sp
                  add        ra, t0, t6
                  sltiu      s11, t2, 976
                  srl        a0, s9, a6
                  srl        t0, s10, s1
                  ori        s8, t1, -900
                  slt        a1, s0, t5
                  lui        a1, 610846
                  slt        s6, s10, s5
                  lui        s5, 754279
                  slt        t2, s0, ra
                  xor        a7, a2, s10
                  xor        s6, a2, a0
                  sub        s11, a0, t3
                  or         a2, zero, a7
                  andi       t0, s6, -623
                  sra        s0, s9, t3
                  sra        s9, s1, ra
                  or         s0, t1, s9
                  sra        sp, a3, t4
                  auipc      a1, 969923
                  ori        s2, s1, 604
                  lui        t3, 658413
                  ori        t0, s1, 589
                  lui        a1, 213667
                  addi       tp, tp, 947
                  sra        t6, s9, a5
                  sltiu      t6, s3, -552
                  xor        a6, s3, s2
                  auipc      a7, 699813
                  ori        t4, s10, -351
                  nop
                  slt        s8, t5, a6
                  sub        a3, a5, s5
                  and        a2, a2, s1
                  sltu       a2, s3, zero
                  add        t1, a3, gp
                  sltu       a2, t2, a4
                  add        a2, gp, s7
                  xori       s5, t2, 850
                  add        s7, sp, s7
                  sll        t6, s7, s7
                  xor        a3, a3, a4
                  lui        t2, 578465
                  auipc      t3, 24739
                  xor        t4, a6, a7
                  slti       t1, a0, 18
                  andi       t6, a3, 139
                  sra        s7, s11, tp
                  slli       t4, s8, 22
                  slti       s2, s3, -326
                  sra        sp, s1, sp
                  add        zero, s8, gp
                  srli       t0, sp, 22
                  nop
                  and        sp, a0, t6
                  slli       a4, t3, 7
                  srl        s8, t2, t6
                  lui        s6, 539819
                  sra        a4, s8, t1
                  and        a3, s2, gp
                  sll        sp, t6, a4
                  srl        a7, s3, a6
                  auipc      tp, 20826
                  slli       a5, s6, 20
                  slti       t0, s9, 326
                  andi       t3, t2, -317
                  xori       s6, s5, 295
                  slt        s3, s6, t5
                  ori        a1, s5, 55
                  nop
                  ori        s3, t2, 597
                  and        t2, s3, s11
                  slli       a5, t2, 13
                  auipc      ra, 19636
                  xor        a7, s7, t0
                  add        s5, a7, a6
                  nop
                  ori        s2, t0, 1019
                  srl        a0, s5, a5
                  srai       ra, tp, 15
                  sltu       t6, s6, s5
                  srl        s5, a3, tp
                  srli       sp, a1, 24
                  slti       a3, a4, -878
                  and        a2, a4, t4
                  andi       s7, t3, -498
                  sra        s9, s10, s11
                  add        s0, t6, zero
                  xori       t6, t6, -52
                  slli       t0, ra, 19
                  add        t4, s2, gp
                  sra        sp, t4, s10
                  add        a3, s5, s1
                  nop
                  sltu       t3, gp, ra
                  srl        a6, s4, a1
                  slli       t1, t2, 22
                  sltu       ra, ra, t4
                  srl        s11, t0, t4
                  slti       a7, a7, -329
                  xori       a3, a3, 917
                  sll        s8, s5, a0
                  srai       a1, s10, 16
                  sra        t4, a1, t6
                  srl        s7, a5, t1
                  slti       ra, t3, 225
                  and        zero, a7, a7
                  slli       s3, sp, 11
                  slti       s6, zero, 74
                  and        s5, zero, a4
                  slli       t6, t6, 11
                  slt        s2, s4, s4
                  add        s11, s4, s1
                  srai       a5, a6, 29
                  srli       a6, sp, 31
                  add        s6, a6, a5
                  slt        a5, a0, a3
                  slti       tp, gp, 692
                  srli       a4, s6, 17
                  sub        sp, s11, s7
                  sltiu      t2, ra, -670
                  auipc      s9, 97925
                  andi       s8, ra, 390
                  and        s5, s3, a3
                  sltu       s11, ra, a6
                  andi       s11, a2, 968
                  xor        s8, t5, ra
                  srli       a6, s3, 10
                  slli       s2, gp, 26
                  lui        a7, 332609
                  sra        s8, s10, a0
                  or         s6, s6, a5
                  addi       s0, s5, 774
                  srl        s0, s0, t0
                  or         zero, s11, t0
                  srai       a1, s9, 19
                  sra        s9, s10, s7
                  slt        t5, t4, a1
                  sltiu      a4, a3, 985
                  sub        s3, s9, t1
                  or         s3, s0, s2
                  ori        s8, t4, -267
                  xori       t1, s5, 979
                  srl        s9, s9, s0
                  xor        s0, zero, t2
                  sra        s9, a5, s3
                  sll        s3, s6, gp
                  sltu       a0, s4, a6
                  srli       a7, a3, 25
                  sltiu      a1, s0, -799
                  add        s9, sp, s1
                  auipc      t0, 726079
                  addi       tp, tp, -531
                  sub        s2, a7, s5
                  slli       s6, t5, 13
                  or         t3, t5, a0
                  xor        s11, a2, ra
                  ori        t2, t6, 55
                  slti       gp, t2, -426
                  andi       t3, s1, -871
                  sltiu      a3, t3, -654
                  slti       a4, s9, -1015
                  nop
                  ori        t3, s5, -475
                  nop
                  nop
                  srai       gp, a2, 6
                  xori       a0, t3, 346
                  sra        a2, sp, t4
                  sltu       s3, s8, a5
                  srai       t2, t4, 1
                  sra        s3, sp, t6
                  nop
                  xor        s11, a1, sp
                  sra        s8, a1, s6
                  slli       ra, a1, 0
                  xor        s5, gp, s9
                  ori        zero, s2, 829
                  sltiu      a7, tp, -821
                  sltiu      sp, s2, -122
                  andi       t0, s8, 791
                  nop
                  xor        s8, s2, s5
                  srai       s2, a2, 1
                  addi       t1, s3, 432
                  slli       s2, t3, 24
                  or         a4, a0, a0
                  sltiu      t4, a5, -683
                  ori        s11, a2, 390
                  add        s2, s4, t5
                  and        s8, s3, s0
                  add        a1, a5, t4
                  lui        s8, 325231
                  slli       s2, s3, 26
                  sll        s2, s6, a2
                  sub        s5, t1, a2
                  andi       t1, t2, 73
                  srl        a2, s1, s9
                  ori        a4, s0, 757
                  sub        t0, tp, s4
                  lui        t0, 72084
                  addi       a6, s6, -434
                  xori       s7, s4, -537
                  ori        a5, ra, 910
                  andi       tp, s7, 112
                  addi       s0, s6, -470
                  srli       gp, zero, 21
                  sra        a6, zero, s3
                  slli       t0, t4, 30
                  auipc      a7, 96600
                  xori       zero, s11, -341
                  lui        s9, 310950
                  sll        t3, s3, t4
                  srli       s5, t1, 20
                  sltiu      s11, s7, -607
                  sltiu      gp, s6, 604
                  lui        s9, 753576
                  or         a6, s3, t6
                  or         s8, s7, s10
                  slli       a0, s4, 26
                  slli       t0, tp, 18
                  srl        a0, s7, s7
                  sll        zero, s6, s3
                  lui        t1, 170154
                  auipc      t5, 364861
                  srli       a6, tp, 4
                  add        a5, t0, s0
                  add        ra, t1, a7
                  sra        s11, a1, s2
                  srli       t3, tp, 26
                  sub        s5, a2, zero
                  nop
                  and        tp, ra, s6
                  srl        a1, s7, s9
                  srai       t0, t0, 1
                  add        s6, t2, zero
                  add        s7, sp, t0
                  and        gp, t0, s4
                  sll        t5, s6, t4
                  ori        sp, a2, -629
                  srai       zero, a7, 27
                  sub        s7, s5, s2
                  and        a0, s9, s1
                  lui        s3, 335308
                  andi       a5, gp, 769
                  ori        a0, ra, -324
                  slli       t6, a0, 12
                  and        t2, ra, s5
                  lui        t2, 853310
                  srl        s6, gp, s5
                  ori        a1, a6, 251
                  or         t3, s6, ra
                  addi       a2, s11, 451
                  addi       s2, a4, -762
                  lui        gp, 338702
                  sub        s6, zero, s11
                  sltiu      t2, s4, -256
                  slli       a0, ra, 28
                  lui        t0, 866382
                  add        s11, s11, t5
                  slli       s6, sp, 17
                  srli       a4, s9, 15
                  andi       a4, t2, 518
                  ori        t5, t1, -474
                  slt        s7, s3, a0
                  sub        s5, a0, gp
                  nop
                  xor        t1, a6, t3
                  and        t2, s9, s3
                  sll        s2, tp, s2
                  xori       t6, a3, -756
                  sltiu      t6, t2, 106
                  srl        a5, t2, t2
                  auipc      t0, 34325
                  xor        a5, t4, s11
                  sll        t5, s4, s0
                  srai       t5, t4, 18
                  andi       t3, t6, -419
                  li         a6, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li         s0, 0x80000000
                  li         s6, 0x0
                  li         tp, 0x1176999c
                  li         s5, 0xffffffff
                  li         s3, 0x80000000
                  li         a3, 0x80000000
                  li         gp, 0x0
                  li         t1, 0x0
                  li         a2, 0xffffffff
                  lui        s3, 215660
                  sub        s6, tp, gp
                  auipc      a3, 508346
                  lui        s0, 298002
                  add        s3, tp, t1
                  add        s5, s0, s6
                  lui        s0, 686343
                  addi       s5, a6, 492
                  lui        s5, 943264
                  lui        a6, 733442
                  lui        t1, 706615
                  addi       s0, s0, 931
                  addi       s6, tp, -856
                  auipc      a3, 291496
                  sub        s5, s3, tp
                  auipc      s5, 63084
                  auipc      t1, 179808
                  auipc      tp, 1007100
                  auipc      a2, 996279 #end riscv_int_numeric_corner_stream_17
                  sub        t2, s6, s4
                  srli       t6, t2, 12
                  ori        a4, s5, 481
                  sltu       t1, t6, s2
                  auipc      s9, 76434
                  and        s6, tp, s1
                  slli       a7, t0, 17
                  ori        t5, gp, -663
                  auipc      a6, 350349
                  sub        s11, t0, t3
                  ori        a6, t6, 108
                  sltiu      t2, a1, 828
                  srl        s7, a2, s9
                  sll        t4, s3, s7
                  sub        t0, a0, a5
                  slt        zero, s11, s11
                  lui        s2, 855238
                  sltu       a4, t2, tp
                  andi       t1, ra, 500
                  addi       a1, t2, -1020
                  slti       s3, a6, -792
                  or         t1, t6, a0
                  sra        s7, s9, t4
                  sra        tp, sp, t1
                  lui        a4, 656899
                  srl        sp, a2, sp
                  srl        a1, s2, ra
                  slti       zero, s11, -529
                  xori       a7, t6, -39
                  sra        a0, s1, t0
                  slli       a7, s5, 31
                  lui        a7, 286627
                  add        tp, s9, s7
                  srai       s0, tp, 4
                  slt        tp, t6, t3
                  or         t6, a7, a5
                  sub        s5, s5, a4
                  ori        a4, s2, -924
                  srai       gp, a4, 0
                  andi       a6, s8, -63
                  addi       zero, t5, -974
                  add        t6, sp, t1
                  sub        ra, s6, s4
                  sra        t3, a5, t5
                  or         zero, s9, t5
                  add        s0, a3, s5
                  sltiu      a6, s6, -639
                  sra        t5, a4, a7
                  sll        a1, t0, s9
                  sub        a4, a4, a3
                  xor        a3, a1, a7
                  srli       t1, gp, 10
                  srli       t3, s4, 17
                  sltu       a1, ra, a3
                  sub        zero, s1, a0
                  sra        tp, gp, t2
                  add        t2, t6, a7
                  sub        a7, sp, a3
                  srai       s11, s4, 22
                  ori        a7, s9, 430
                  srai       a5, s3, 22
                  sub        s11, a4, sp
                  nop
                  sll        gp, s1, a2
                  srl        zero, s4, t3
                  slt        a5, t5, a2
                  or         t6, a3, t5
                  slti       a2, s5, -170
                  lui        s11, 485564
                  xori       s7, t3, 726
                  lui        gp, 227810
                  ori        a2, s7, -71
                  nop
                  xori       a4, s11, -8
                  srai       t1, t6, 10
                  nop
                  lui        t1, 586934
                  addi       a5, s10, 829
                  xori       t0, s11, 78
                  xori       s2, s2, -431
                  sltu       gp, t1, a7
                  xor        a3, a0, s10
                  sub        sp, s6, t6
                  xor        a6, a3, s5
                  auipc      sp, 838762
                  slti       s9, t6, 88
                  xor        tp, ra, s5
                  addi       gp, a2, -672
                  xori       tp, a6, 664
                  nop
                  slli       t4, tp, 18
                  sll        ra, a5, s3
                  sltu       a3, t2, gp
                  slti       a4, s6, -712
                  sra        t1, s8, ra
                  lui        s7, 857028
                  nop
                  or         s2, s8, t1
                  sll        s3, gp, t4
                  srl        t4, t0, t1
                  sll        t3, t2, a7
                  xor        a0, a1, t4
                  slt        tp, tp, s11
                  auipc      a5, 803335
                  nop
                  andi       s3, s9, -686
                  xori       s5, t0, -642
                  xor        a5, s0, tp
                  sub        t4, t4, s7
                  sll        tp, s4, ra
                  andi       sp, a4, -150
                  sub        a2, s3, t3
                  slt        s2, s3, ra
                  sll        a6, sp, a0
                  sltiu      a7, a2, 15
                  slli       a5, a7, 12
                  sll        s11, t1, a3
                  ori        t0, t4, -498
                  sll        sp, s4, t5
                  lui        t3, 916994
                  slli       t2, t2, 16
                  sub        t1, t2, t4
                  srai       s8, zero, 30
                  ori        s8, t3, -85
                  sltu       s0, t3, s0
                  slli       tp, zero, 13
                  nop
                  xori       zero, s2, 302
                  xor        s0, s11, ra
                  xor        t4, t4, t2
                  add        a6, sp, a3
                  auipc      t5, 815767
                  andi       a5, t5, -888
                  add        s5, s3, zero
                  nop
                  slli       s2, zero, 19
                  srai       a7, s8, 5
                  slti       s7, s10, 635
                  srai       t4, s8, 13
                  slli       zero, s4, 30
                  andi       ra, t3, -13
                  xor        a4, a6, s9
                  slt        s0, a0, zero
                  or         s9, s7, a5
                  sra        gp, s3, a3
                  or         t5, a7, s8
                  andi       s2, s6, -929
                  sltiu      t2, sp, -559
                  xor        a3, ra, a1
                  addi       a3, a3, 158
                  sll        a6, t1, a3
                  slt        t2, s5, t4
                  auipc      ra, 24063
                  andi       t6, s11, 987
                  addi       s5, s3, 243
                  srli       s2, t1, 11
                  srl        s2, s9, s7
                  sltu       zero, s11, sp
                  sltiu      a5, gp, 604
                  slt        a3, s10, s2
                  srai       ra, tp, 3
                  sra        s8, t1, t1
                  sltu       a3, s10, t0
                  auipc      a4, 710463
                  sll        a7, t4, a7
                  andi       t0, a0, 50
                  slli       tp, ra, 29
                  sra        s5, gp, s2
                  sub        a2, ra, s3
                  srl        s7, a6, s7
                  srl        t2, a0, s11
                  and        t1, s11, t6
                  add        s8, s10, zero
                  sra        s8, s2, s3
                  nop
                  andi       s11, s11, -516
                  add        s3, zero, ra
                  andi       a1, s7, -456
                  slli       tp, s2, 7
                  andi       a0, s0, -830
                  sra        s3, a5, t3
                  srai       s3, a3, 12
                  srli       a7, s4, 8
                  auipc      a7, 878191
                  slti       a7, tp, -888
                  ori        a5, gp, -227
                  add        a7, t3, s3
                  lui        s7, 1004086
                  and        gp, a7, s1
                  srli       s2, s6, 20
                  srai       a1, t4, 6
                  ori        a6, t2, -824
                  srai       s6, s3, 26
                  sra        s8, s2, s8
                  sltiu      ra, s2, 732
                  slli       a7, zero, 1
                  sltiu      t1, t3, 411
                  add        s5, a3, a5
                  sltiu      sp, t3, 728
                  xori       t5, gp, -498
                  sub        a0, t1, s5
                  nop
                  sll        t3, s10, a6
                  sra        t1, a7, t4
                  and        sp, s2, t0
                  slt        gp, s11, tp
                  or         a7, s11, sp
                  srli       s5, s11, 17
                  sll        a3, s6, a7
                  sltu       t4, s5, t3
                  sltu       s11, s11, a0
                  sltu       s8, a2, t5
                  lui        t6, 738102
                  addi       s7, ra, 174
                  addi       s5, gp, -695
                  nop
                  addi       t4, ra, -10
                  slti       t1, s11, 469
                  xori       t0, a5, 789
                  auipc      s11, 540486
                  ori        s11, t2, -91
                  auipc      s11, 821193
                  sll        t2, tp, s3
                  lui        t4, 688572
                  slt        s5, t6, s8
                  sra        gp, s7, s9
                  slti       tp, t6, 645
                  sll        s3, t3, sp
                  xori       a7, s2, -966
                  nop
                  xori       a5, s9, 498
                  slli       t1, a7, 19
                  sltu       t1, s3, s7
                  sll        ra, s4, s1
                  addi       a7, t2, -988
                  xor        t5, t0, s10
                  or         t1, t2, tp
                  and        tp, tp, zero
                  slti       a4, a2, 940
                  sra        s2, t5, a4
                  lui        t4, 306731
                  sltiu      s3, gp, -345
                  sll        s11, a1, s1
                  xori       t0, s8, -640
                  or         ra, s3, a1
                  xor        s7, a2, s2
                  andi       tp, s0, -130
                  srl        a2, t0, tp
                  andi       t2, ra, 75
                  auipc      s0, 585187
                  srai       a1, a1, 3
                  addi       a1, s9, 674
                  sltu       s9, a3, t2
                  nop
                  and        s9, a7, s1
                  and        t3, ra, zero
                  srl        t1, s1, a3
                  sra        t2, s8, s1
                  xor        t5, t1, s8
                  lui        t2, 96587
                  ori        gp, ra, 961
                  xori       s0, a5, 809
                  xori       a0, a3, -924
                  xori       t1, s3, 1014
                  addi       a3, s11, 422
                  andi       t0, s2, 146
                  and        a1, s7, t5
                  or         t5, s9, gp
                  srai       sp, a5, 25
                  sltiu      a3, t3, 338
                  srli       s8, gp, 16
                  sra        t6, s2, s5
                  slli       s5, t6, 18
                  nop
                  sra        a4, s4, t2
                  sub        t6, s9, a5
                  lui        a7, 323783
                  lui        zero, 549657
                  xori       s9, zero, -337
                  add        zero, s8, a1
                  xori       sp, s8, 412
                  sltiu      s8, t2, 773
                  slt        a1, a6, s10
                  slti       s2, a4, -572
                  slli       s6, t6, 3
                  xor        tp, s6, s7
                  nop
                  sra        s6, ra, zero
                  slt        s5, a5, s3
                  srli       a1, a0, 30
                  slli       a5, s11, 23
                  srli       s7, a7, 19
                  add        gp, s0, a5
                  add        s2, a2, t6
                  andi       t0, a1, -727
                  sub        s8, a6, a0
                  srl        s8, s7, s3
                  lui        a0, 479555
                  slli       tp, s4, 8
                  slli       t2, t0, 13
                  ori        s11, sp, -312
                  ori        s11, a5, 546
                  and        zero, a6, s8
                  srli       a7, s5, 11
                  slli       t4, s6, 19
                  auipc      s6, 174648
                  add        a6, s1, s3
                  sub        a7, sp, ra
                  sltiu      tp, s1, 631
                  xor        t5, s5, s7
                  sltu       s8, t1, a1
                  auipc      a3, 1001731
                  sra        a0, a2, ra
                  sub        t4, t3, a3
                  xor        s3, a0, s6
                  slti       a1, s1, 590
                  slt        a7, t4, s4
                  li         s3, 0x0 #start riscv_int_numeric_corner_stream_38
                  li         a0, 0x80000000
                  li         t5, 0x80000000
                  li         a6, 0x80000000
                  li         s11, 0x75d782fe
                  li         a3, 0x3c42d4e1
                  li         t2, 0x0
                  li         a1, 0xffffffff
                  li         t6, 0x80000000
                  li         tp, 0x80000000
                  auipc      tp, 593627
                  sub        a3, a6, tp
                  sub        t5, tp, s11
                  nop
                  lui        t5, 516091
                  nop
                  auipc      t2, 79280
                  addi       t5, tp, -603
                  auipc      a3, 545479
                  sub        t2, s11, t6
                  add        a3, t5, s3
                  auipc      a6, 331517
                  nop
                  auipc      tp, 119667
                  lui        t5, 1043144
                  nop #end riscv_int_numeric_corner_stream_38
                  add        a4, s9, tp
                  andi       tp, a4, 791
                  slti       s8, a4, -716
                  ori        t6, sp, -195
                  slt        zero, a6, s9
                  ori        a5, a7, 677
                  xor        t4, t6, t2
                  slti       t4, s2, -797
                  lui        s0, 1017561
                  sub        t3, a5, a3
                  lui        t6, 908316
                  slli       a5, a6, 0
                  srli       t2, a1, 0
                  or         t2, s4, s2
                  nop
                  srai       sp, a6, 8
                  addi       t3, s7, 28
                  auipc      t5, 423089
                  ori        gp, a5, -284
                  and        s0, s6, a3
                  slti       s6, s2, -824
                  srai       s3, t4, 8
                  slli       s3, tp, 12
                  and        s0, s6, s11
                  srai       t4, a0, 7
                  and        t6, a0, a0
                  add        s3, s9, s10
                  addi       s11, t5, 489
                  addi       tp, gp, 699
                  slti       s11, a6, 29
                  addi       t4, t4, 899
                  and        s6, a3, a6
                  xori       t6, s2, 869
                  or         s6, s0, s11
                  and        a6, s8, a2
                  ori        a6, s5, 1012
                  sub        t3, s11, ra
                  slt        t1, t5, a4
                  lui        a3, 358148
                  auipc      s5, 712757
                  srli       a1, t1, 18
                  addi       t1, s4, 349
                  and        s2, s4, s6
                  ori        a5, s10, 218
                  andi       tp, a4, 665
                  or         tp, sp, a6
                  add        t2, t2, t1
                  xori       a6, s4, -472
                  or         a3, s3, a3
                  srl        a3, a0, a3
                  sltiu      s11, s8, -320
                  slti       t4, t6, -208
                  xor        t3, t5, a1
                  ori        a6, tp, 348
                  and        a7, s6, s6
                  auipc      a6, 866211
                  xori       a5, s1, 542
                  li         s8, 0x0 #start riscv_int_numeric_corner_stream_35
                  li         a0, 0x3af0059
                  li         ra, 0x80000000
                  li         s11, 0x38d1ecc9
                  li         a7, 0xffffffff
                  li         gp, 0x80000000
                  li         a6, 0x80000000
                  li         s9, 0x80000000
                  li         t5, 0xffffffff
                  li         t3, 0xffffffff
                  add        t5, a6, gp
                  sub        gp, a7, a0
                  nop
                  auipc      a6, 705013
                  auipc      s9, 316204
                  add        s11, gp, t3
                  nop
                  lui        s8, 302582
                  nop
                  addi       ra, a7, -974
                  lui        gp, 838739
                  lui        a7, 733309
                  addi       s11, gp, -605
                  auipc      t5, 686174
                  nop #end riscv_int_numeric_corner_stream_35
                  and        t1, s9, s0
                  sub        t3, s3, a4
                  andi       ra, s4, -224
                  lui        t0, 684206
                  srli       zero, t1, 29
                  srli       s8, s0, 2
                  srli       gp, t6, 7
                  auipc      t2, 371969
                  lui        t2, 416923
                  and        t3, s9, a0
                  or         t2, a0, s7
                  srai       t5, s5, 5
                  sra        tp, t0, a7
                  srai       a5, t3, 2
                  andi       a4, t3, -849
                  ori        s9, a2, 242
                  lui        s6, 538933
                  nop
                  sra        t6, tp, s5
                  srl        a6, t3, s4
                  andi       t3, t0, -589
                  ori        a3, s2, 852
                  and        a2, sp, t0
                  srl        s3, s10, s11
                  lui        s8, 1045723
                  xori       a5, t1, 136
                  and        s9, t1, a7
                  auipc      s8, 933016
                  sltiu      sp, a5, 218
                  sub        a5, s1, a2
                  lui        a7, 593833
                  addi       s11, t3, 246
                  sltiu      a0, s3, 591
                  sra        tp, s5, a1
                  auipc      s5, 57295
                  lui        a7, 1012692
                  slli       s5, tp, 24
                  lui        s7, 704467
                  sra        s3, zero, s3
                  add        a0, a2, a1
                  slt        t4, s11, t3
                  lui        t4, 1034839
                  sra        t3, t3, s5
                  sll        t0, s7, gp
                  sll        zero, s11, s1
                  auipc      ra, 466571
                  sltiu      t6, a7, -910
                  srl        s5, a0, s3
                  or         t3, a7, t1
                  and        s7, a6, s0
                  lui        t5, 1014092
                  slt        t4, a6, s1
                  srli       t4, t6, 3
                  sltiu      t3, t4, 148
                  or         zero, t6, sp
                  sltiu      a6, ra, 178
                  addi       t6, a1, 55
                  sltu       a5, a7, a3
                  lui        tp, 250525
                  srli       a1, s9, 9
                  slt        t6, t3, t6
                  xori       a5, s2, -490
                  srli       s0, t6, 8
                  srl        a7, a1, s7
                  andi       s11, sp, -876
                  sra        a7, zero, a1
                  ori        a4, a4, 683
                  lui        a2, 304111
                  srai       a4, a7, 6
                  andi       s9, a6, 870
                  ori        zero, t2, -229
                  sub        s2, gp, a1
                  slli       a5, tp, 14
                  auipc      gp, 95205
                  or         a3, s4, s4
                  andi       a1, a1, -982
                  xor        t4, s7, a5
                  or         a0, zero, a0
                  slt        t3, tp, s7
                  srli       s8, t4, 19
                  slt        a2, s4, t5
                  slti       t0, s8, -480
                  slt        t3, ra, gp
                  andi       t0, s8, -263
                  slli       t0, t3, 4
                  slti       a2, a2, -249
                  or         s5, t4, s10
                  sltu       t4, s6, a4
                  add        t2, s2, a3
                  ori        a4, s10, 165
                  nop
                  andi       ra, s3, 612
                  auipc      t5, 946045
                  sub        t6, s2, a6
                  xori       sp, t4, 884
                  li         gp, 0xb371a1d4 #start riscv_int_numeric_corner_stream_2
                  li         t6, 0xffffffff
                  li         ra, 0xffffffff
                  li         s9, 0x80000000
                  li         a0, 0xc0904eef
                  li         a1, 0xb27a6983
                  li         sp, 0x80000000
                  li         t2, 0x0
                  li         s2, 0xee10914b
                  li         s3, 0x23dc2f00
                  nop
                  sub        gp, s9, t6
                  add        sp, s2, t2
                  add        t2, s2, sp
                  auipc      s2, 672167
                  addi       s2, t6, -919
                  add        s2, s3, sp
                  sub        a1, sp, s2
                  add        s9, gp, s9
                  add        sp, ra, t2
                  auipc      t6, 67462
                  lui        s9, 606933
                  lui        s9, 139957
                  sub        s9, a1, ra
                  add        s9, sp, ra
                  addi       s9, a1, 71
                  lui        a1, 949137
                  auipc      s9, 182012
                  add        sp, t2, t2
                  auipc      sp, 409344
                  add        a1, t2, a0
                  add        a0, s3, sp
                  addi       t6, t6, -742
                  add        s2, a1, t2
                  addi       t2, a0, -768
                  auipc      t2, 98517
                  sub        sp, sp, gp
                  auipc      ra, 201248
                  lui        s3, 200687 #end riscv_int_numeric_corner_stream_2
                  andi       a0, s1, 437
                  addi       s7, a4, 296
                  srai       gp, a2, 30
                  xori       s0, s6, 1018
                  and        t5, t5, zero
                  slli       s9, s5, 9
                  slt        a1, t0, a1
                  ori        s3, s0, 520
                  srai       a7, gp, 9
                  srai       sp, s10, 5
                  lui        s11, 502753
                  sltiu      s5, tp, 691
                  sra        ra, s8, tp
                  slli       a1, s8, 25
                  srl        sp, a7, t0
                  srai       s11, s2, 28
                  auipc      zero, 561414
                  sra        a4, sp, s0
                  xor        tp, s4, t1
                  srl        s5, a4, t5
                  xor        a1, a3, a6
                  addi       a5, tp, 97
                  sub        s8, s8, s6
                  and        a7, sp, s2
                  and        a6, s3, s4
                  addi       ra, s6, -967
                  ori        s11, t6, 922
                  andi       t2, a6, -721
                  andi       a3, s8, -43
                  sltu       tp, s0, t6
                  slli       a4, gp, 11
                  xori       s11, a3, -56
                  add        s2, s7, a3
                  sltiu      s7, s4, -110
                  slti       s7, s4, 800
                  sltiu      s3, a4, -973
                  ori        t3, s5, 735
                  sll        s6, a5, s1
                  slti       s5, s8, -858
                  ori        a4, a5, -235
                  add        t4, a4, tp
                  xori       t1, a5, 873
                  srl        t3, a1, t2
                  xori       a0, s0, -356
                  sltiu      s0, t3, -874
                  lui        a4, 101874
                  and        s2, t0, t5
                  andi       t3, a7, -309
                  nop
                  slti       a7, ra, 655
                  srl        t4, a5, s2
                  or         s9, a5, ra
                  xor        s3, s0, s6
                  sltu       s7, a2, a3
                  andi       t0, s0, -431
                  srl        t4, s5, tp
                  sra        t0, s4, a3
                  ori        s0, t2, -489
                  addi       t5, a7, 171
                  sub        a6, t3, s5
                  addi       sp, zero, 925
                  auipc      s6, 337747
                  xor        s7, t6, s2
                  slli       s5, tp, 23
                  andi       s8, a0, 465
                  sltu       t5, s0, a7
                  srli       a0, s10, 2
                  slli       t1, s6, 1
                  and        t2, sp, a3
                  xor        t2, s4, gp
                  addi       t1, t4, -288
                  nop
                  addi       a5, a4, -386
                  sll        a0, a1, s6
                  nop
                  srai       s6, s4, 5
                  slt        s6, s2, s5
                  auipc      gp, 233133
                  ori        t0, t2, 182
                  slti       tp, ra, -1019
                  slti       s11, s1, -580
                  add        s5, a0, s7
                  xori       t0, a4, 537
                  or         t0, s0, a7
                  srl        s2, t0, a5
                  andi       a7, a2, 670
                  sltu       s8, a7, a6
                  auipc      t6, 589948
                  sll        t0, sp, t2
                  sub        s11, s10, t4
                  addi       a6, t2, -759
                  slli       s3, tp, 21
                  lui        ra, 480691
                  lui        s7, 37095
                  sltu       s11, s10, s0
                  srli       ra, ra, 23
                  sub        sp, a3, t0
                  srli       t4, a0, 6
                  auipc      ra, 767074
                  addi       s6, t6, 351
                  nop
                  xori       tp, t6, -423
                  srl        t3, s6, s3
                  addi       tp, a1, 584
                  sub        s11, t2, a4
                  xori       tp, s6, 377
                  add        t4, t5, a0
                  and        a7, a7, a4
                  srli       s0, gp, 5
                  slt        s5, a1, a6
                  srai       s8, s0, 12
                  sra        t4, s1, t1
                  slli       t6, t4, 12
                  srli       t0, t1, 20
                  slti       a0, s9, -932
                  lui        tp, 390529
                  lui        s5, 681479
                  and        gp, t0, a7
                  addi       ra, s4, -824
                  xori       a5, s9, 926
                  sltu       s9, t0, t2
                  sltu       s5, s0, s5
                  nop
                  sra        gp, gp, s9
                  add        t3, tp, a2
                  add        s8, tp, s10
                  slli       t3, a1, 11
                  sltu       s9, s10, s8
                  lui        s11, 730019
                  lui        s8, 1020308
                  srai       s2, s6, 18
                  ori        s7, t6, 293
                  auipc      zero, 14380
                  srli       zero, ra, 25
                  xor        s7, a2, s8
                  srl        a6, a5, s7
                  lui        a6, 102641
                  auipc      s2, 1026992
                  sltiu      s8, a6, -874
                  ori        a0, a7, 373
                  addi       s2, s6, 951
                  lui        s8, 1005126
                  srl        zero, gp, t1
                  sra        s2, s4, s8
                  auipc      s5, 96451
                  xor        ra, s8, s6
                  sub        a0, a7, t4
                  nop
                  sub        gp, a2, s2
                  add        a7, t6, a1
                  sltiu      gp, tp, -36
                  slti       s2, a5, 967
                  slti       a6, t3, 167
                  sltu       t4, s11, a5
                  lui        a6, 242847
                  auipc      t1, 204916
                  slti       s3, tp, -387
                  sltiu      t3, gp, 662
                  ori        tp, s1, -808
                  slti       t1, s3, -561
                  sll        s5, t0, a5
                  andi       t3, ra, 219
                  sub        t3, t5, s1
                  sub        t1, t5, s7
                  srl        s7, s4, s4
                  sltiu      s6, s6, -712
                  srl        tp, s3, s11
                  srl        t6, s7, t1
                  lui        tp, 473784
                  ori        s3, s5, -594
                  sltu       a3, s0, zero
                  addi       s9, s4, 919
                  auipc      a7, 453187
                  slti       a0, s10, -506
                  xori       t1, a3, -677
                  lui        a3, 273813
                  srai       s8, t6, 19
                  xori       s0, t6, 447
                  addi       s5, s6, 74
                  xor        t4, s7, s7
                  sll        s2, s0, s9
                  addi       t4, s0, -458
                  auipc      s3, 858668
                  srai       s8, a6, 3
                  slli       zero, ra, 16
                  slt        zero, a3, a2
                  xor        ra, t0, t0
                  nop
                  slti       s7, a4, 739
                  srl        a5, s3, sp
                  or         s7, s11, s11
                  sll        a5, a7, s4
                  sltiu      a6, s5, 338
                  auipc      t1, 404221
                  slti       a3, s6, -100
                  slt        s0, a4, zero
                  add        a4, s7, s11
                  slti       t4, a3, -461
                  sub        t5, zero, s10
                  sll        a0, s5, s1
                  add        t4, a3, a4
                  and        s3, t5, ra
                  slt        s2, t0, s10
                  srl        s3, s7, t1
                  lui        sp, 566774
                  slli       t2, s10, 7
                  sltiu      s7, ra, 938
                  xori       s11, s0, -691
                  or         t0, s9, t0
                  slt        t6, s8, a3
                  slli       t4, s3, 25
                  sltu       s7, a4, t5
                  slli       tp, s1, 9
                  auipc      t0, 468114
                  slli       ra, s6, 25
                  andi       t4, sp, -748
                  srai       a6, a1, 31
                  nop
                  slti       t0, s0, -678
                  sra        t5, ra, t4
                  xor        a1, a7, gp
                  slt        tp, t6, zero
                  auipc      t0, 800418
                  ori        a5, s6, 170
                  or         s6, a1, s10
                  add        s6, a2, t1
                  and        s9, s11, s4
                  sll        s3, tp, t0
                  sra        t6, gp, s8
                  slti       s2, sp, 929
                  addi       t4, s1, -903
                  addi       a7, t2, -596
                  add        a2, a0, s8
                  andi       a3, s6, -943
                  sltiu      s3, t5, -459
                  sub        t3, t2, a0
                  sra        a7, s7, s5
                  xori       t3, t6, -674
                  sll        s9, zero, s1
                  slli       s2, s10, 8
                  xor        a0, zero, a2
                  andi       zero, a0, -114
                  sll        a5, sp, a6
                  srai       s8, tp, 19
                  ori        t6, t1, 562
                  ori        a6, zero, -840
                  slti       s2, s9, -882
                  xor        t4, s4, t1
                  add        t6, s10, zero
                  sub        s0, s5, s1
                  srli       zero, a1, 10
                  or         s5, sp, s9
                  and        t0, a3, t2
                  ori        t6, zero, -808
                  ori        s7, s5, -87
                  srl        sp, tp, t0
                  slt        t0, t2, s2
                  srl        a1, a3, s10
                  xori       s11, t2, 57
                  sll        t6, t4, s2
                  slt        tp, t0, zero
                  nop
                  ori        s11, s8, 441
                  andi       gp, tp, 230
                  srl        t1, s11, s6
                  sra        a3, a6, tp
                  lui        s11, 976304
                  or         s11, t5, a2
                  addi       a1, s9, -839
                  nop
                  srai       s0, s0, 27
                  nop
                  sub        a6, a5, s8
                  add        s0, s8, s7
                  sll        t5, a3, a2
                  lui        a3, 518594
                  slti       a2, a4, -601
                  or         s8, tp, a7
                  sltu       gp, zero, gp
                  addi       t3, ra, 31
                  add        t2, s5, t5
                  andi       t3, tp, 725
                  xori       t2, a0, 357
                  sra        s0, s0, s10
                  ori        t2, a7, 1007
                  slt        a7, ra, a0
                  lui        zero, 925579
                  srai       t5, a2, 28
                  addi       a1, t6, 461
                  srli       s3, t2, 1
                  sltiu      gp, a0, 458
                  slt        a3, a4, sp
                  or         a7, s0, zero
                  xori       s5, s8, -827
                  sub        a7, tp, gp
                  sra        a6, t4, ra
                  addi       zero, tp, -455
                  add        t6, s11, zero
                  nop
                  add        a2, s4, t3
                  sra        a1, a0, s4
                  slli       a6, t2, 13
                  slli       s8, s3, 17
                  xori       a3, a6, -719
                  auipc      a0, 1007402
                  and        gp, s9, a0
                  slt        a6, t4, a3
                  sltu       s9, t1, t5
                  sltu       t4, s3, sp
                  andi       s7, s4, -322
                  add        a2, s4, a6
                  or         tp, t0, a4
                  srl        ra, t0, s8
                  or         t4, s0, a4
                  sltu       t4, s6, t6
                  or         s7, s9, zero
                  addi       sp, s2, 286
                  srai       t5, s2, 5
                  sll        t2, s8, t6
                  ori        a5, t1, 757
                  sltiu      t1, sp, 203
                  auipc      zero, 59743
                  sra        a5, t0, s3
                  auipc      s0, 661251
                  srli       a6, gp, 13
                  ori        ra, s6, 12
                  nop
                  xori       s5, s2, 577
                  andi       s2, s9, -860
                  andi       s11, s11, -46
                  auipc      a1, 523582
                  add        s6, t2, s8
                  and        sp, s1, s11
                  sra        a6, s6, a5
                  addi       ra, a5, 773
                  or         t6, a6, a2
                  nop
                  sra        s8, s7, ra
                  sub        s9, a1, s3
                  ori        a5, t5, 896
                  sub        a1, t4, gp
                  lui        t3, 208895
                  sltiu      t6, s0, -433
                  srai       t6, a4, 24
                  sll        t4, s5, s5
                  ori        t0, a7, -744
                  addi       t5, s11, -562
                  auipc      t3, 121229
                  sltiu      t3, s7, -801
                  sltu       s8, tp, s8
                  auipc      s11, 844791
                  ori        t5, a3, -273
                  or         s11, a4, s3
                  or         a2, s10, a0
                  add        s3, t4, a7
                  auipc      t2, 466230
                  lui        a3, 526017
                  addi       t3, sp, 373
                  xor        s2, s4, a0
                  ori        t0, t1, 360
                  xori       a3, t0, -944
                  lui        s6, 1046581
                  srl        s0, s4, t0
                  andi       s11, a6, -663
                  slti       zero, t4, 203
                  ori        s9, s3, -789
                  sub        a6, t3, a5
                  srai       a1, t4, 10
                  slti       a6, s6, 915
                  nop
                  xori       a0, gp, -12
                  addi       a0, s2, 566
                  srai       t4, gp, 7
                  sltu       t0, t5, t6
                  xor        zero, s4, s1
                  sll        a1, s2, t3
                  sub        t2, a7, s5
                  sll        a6, t0, a5
                  sltiu      t6, s0, -747
                  and        s7, a3, s8
                  sub        a6, tp, s3
                  slt        t2, s8, a4
                  srai       a3, s5, 10
                  add        tp, s2, a5
                  ori        t1, a0, 202
                  nop
                  addi       a1, s5, 895
                  slli       a7, a7, 19
                  sltiu      a1, s10, 554
                  or         a2, t2, t2
                  or         s0, a0, s3
                  auipc      s5, 39596
                  addi       gp, t5, 880
                  sltiu      a1, s5, 612
                  ori        a1, a2, -332
                  slt        s9, s3, t1
                  or         s9, a5, t3
                  addi       zero, a2, -994
                  or         a7, ra, s5
                  or         s5, t3, s7
                  ori        s6, t3, -746
                  andi       t0, a4, 80
                  xori       a1, tp, -873
                  sltu       a6, s3, gp
                  sltiu      s0, s6, -143
                  slt        ra, s11, s9
                  xori       a4, s4, 303
                  add        a7, s7, tp
                  slt        t2, s3, t3
                  slt        s2, t4, a6
                  addi       a3, zero, 419
                  slti       s9, s0, -158
                  xor        s3, a5, s10
                  srai       s11, tp, 17
                  andi       a4, t2, -122
                  sltu       a2, a2, t0
                  slt        s5, s3, s4
                  andi       ra, t6, -639
                  auipc      s9, 302525
                  lui        s5, 638845
                  nop
                  srai       t3, s3, 9
                  auipc      t6, 677615
                  lui        zero, 809441
                  xori       zero, gp, -717
                  srai       a6, s10, 3
                  sltiu      t5, t2, 523
                  xor        s11, tp, s4
                  nop
                  auipc      zero, 172946
                  sltiu      ra, s7, -157
                  nop
                  sra        tp, t5, t3
                  lui        s5, 470714
                  add        a4, a5, s5
                  addi       t1, a1, 126
                  slt        a1, a6, t4
                  lui        tp, 816573
                  srl        a0, t1, s9
                  andi       s2, a0, -232
                  slt        a5, s5, s3
                  sra        s3, s2, zero
                  srli       t0, s1, 13
                  sltu       s7, s11, a2
                  and        sp, s9, a7
                  and        s5, s5, s2
                  srl        s8, s7, a5
                  srai       s3, s4, 5
                  xor        a3, s7, tp
                  add        ra, t3, s2
                  srl        s7, s10, zero
                  sll        a6, sp, a6
                  sll        t1, a2, sp
                  nop
                  xor        t6, s1, s7
                  xori       gp, a4, 698
                  srl        s6, s11, s10
                  or         sp, s1, s8
                  slt        a7, a0, s10
                  sltiu      t3, t6, 572
                  auipc      sp, 512777
                  slli       a0, a6, 25
                  and        a2, s2, s5
                  andi       a2, t2, -285
                  sub        s7, t3, s2
                  auipc      s7, 715552
                  ori        s5, s6, -293
                  nop
                  srl        a3, s3, a5
                  sll        s0, s7, sp
                  or         a0, a3, zero
                  auipc      a4, 991312
                  srl        a6, a6, s4
                  srli       s6, zero, 31
                  sltu       s3, tp, t2
                  srli       gp, s0, 23
                  sll        a2, s11, a4
                  sltu       t2, a1, s4
                  xori       gp, s0, 183
                  srli       a0, zero, 6
                  srli       t3, ra, 29
                  sll        ra, s9, tp
                  srl        t4, t2, sp
                  sra        a3, t6, a6
                  slti       a5, s0, -226
                  andi       t2, s6, 1022
                  andi       s3, a4, 603
                  sub        t1, ra, a5
                  sll        ra, tp, a0
                  sll        a1, s3, t0
                  addi       s2, s2, 387
                  srl        a7, s7, t5
                  slti       s7, t2, 981
                  sra        s6, s2, a0
                  slli       s2, a1, 9
                  sltu       s7, s10, s1
                  addi       a5, ra, -76
                  nop
                  ori        sp, s7, -29
                  slti       t1, a5, 342
                  xor        s2, t2, gp
                  slli       a1, s11, 1
                  slti       t1, t4, -238
                  or         tp, ra, s1
                  nop
                  sub        a1, t2, t2
                  nop
                  auipc      s3, 621779
                  sll        a6, t0, a2
                  slt        s9, s8, a1
                  slt        s5, s7, t1
                  srl        sp, s1, s2
                  lui        t0, 244071
                  and        s5, tp, t0
                  xor        t4, s1, a4
                  sltu       sp, t6, t4
                  sra        t1, a4, a0
                  slti       s0, t0, 737
                  or         s8, a7, gp
                  nop
                  xor        zero, a3, t2
                  sll        s6, a4, sp
                  sub        sp, a5, a5
                  ori        a4, s2, -111
                  lui        t0, 852971
                  srli       t4, t3, 23
                  sltu       a3, s0, s6
                  srai       t4, s5, 5
                  sltu       a7, t0, s0
                  addi       t2, t6, 982
                  slt        gp, a7, s2
                  addi       t5, a1, 881
                  slti       a5, s4, -62
                  lui        a7, 730030
                  slti       s11, tp, -168
                  auipc      t1, 110894
                  slli       t6, sp, 28
                  auipc      a1, 459834
                  and        s5, zero, s7
                  slti       t3, a3, 308
                  add        s11, a3, s4
                  lui        ra, 738051
                  xor        s6, sp, t1
                  andi       gp, s3, 748
                  ori        s9, s1, 895
                  sub        s5, t1, s3
                  srli       t4, s9, 21
                  sra        a2, a3, s9
                  srl        a5, t6, a4
                  add        t3, t5, a5
                  srl        a2, a4, sp
                  or         a4, s8, s3
                  srli       a7, a1, 7
                  add        s2, t4, a5
                  xor        t3, s10, s3
                  lui        zero, 761625
                  sltiu      a4, s0, 621
                  andi       gp, t5, -183
                  sll        a0, tp, gp
                  and        t5, s6, zero
                  slti       a1, a3, 702
                  and        ra, tp, ra
                  auipc      s3, 651859
                  add        a4, t3, s5
                  srli       t5, t1, 11
                  srl        t2, s6, a6
                  auipc      s9, 922733
                  auipc      t3, 42149
                  add        t3, s4, s7
                  sra        a7, gp, gp
                  sra        t4, a0, s0
                  or         s0, s11, gp
                  lui        a5, 726474
                  xor        gp, t6, a1
                  andi       t2, a1, -437
                  sll        s8, gp, s4
                  srai       t0, a3, 23
                  auipc      s11, 539879
                  slt        a4, sp, sp
                  slti       t3, s3, -644
                  sub        s7, a5, a2
                  xor        t3, t1, t2
                  ori        t5, s7, 893
                  sra        a2, t1, a6
                  slti       a7, sp, -83
                  srai       s6, s10, 24
                  slti       t2, s8, 665
                  xor        a1, t6, s9
                  lui        t6, 13603
                  slti       t1, gp, -426
                  xor        t0, s4, t3
                  auipc      s2, 860168
                  addi       s2, tp, 747
                  andi       t2, s3, -674
                  slli       s2, s3, 21
                  and        tp, s7, a6
                  auipc      a0, 525237
                  add        a7, s7, t2
                  sra        a6, t1, s3
                  sltu       a6, s11, s0
                  sll        a6, s2, a1
                  sra        a5, a2, a3
                  lui        t1, 3436
                  and        zero, s0, sp
                  xor        sp, s6, s5
                  and        s7, gp, gp
                  ori        t5, s0, -137
                  ori        s7, a5, -425
                  lui        a2, 187451
                  sltiu      s6, s10, -399
                  slt        sp, gp, s8
                  sll        zero, s4, gp
                  andi       t6, tp, 87
                  auipc      a4, 713259
                  srli       s8, t4, 31
                  xor        tp, t6, a1
                  and        a1, ra, ra
                  auipc      t5, 51481
                  add        t1, s9, s2
                  or         a3, ra, a7
                  ori        s7, a4, 50
                  slli       t0, s3, 28
                  sub        a3, t0, t5
                  srli       t6, t0, 18
                  auipc      t5, 90083
                  xor        a4, gp, a1
                  xori       t1, s5, 192
                  andi       s5, zero, 711
                  slli       s5, a1, 21
                  auipc      s9, 338098
                  slti       a1, zero, -317
                  srai       tp, s10, 7
                  xor        a3, t3, a7
                  sll        s8, s8, s5
                  sra        s6, t1, s2
                  andi       s7, a5, 814
                  slt        s5, gp, s9
                  nop
                  srai       a0, t6, 3
                  slli       t1, t5, 26
                  xor        a5, s0, t4
                  lui        s3, 214877
                  srli       a3, t4, 0
                  srli       s9, s6, 21
                  and        t3, s0, s5
                  or         tp, tp, s0
                  sub        a1, ra, s8
                  slti       a4, s9, -313
                  slt        a5, s11, s7
                  xori       a3, s3, -709
                  slt        t6, a7, s7
                  addi       a0, s10, 839
                  sra        a1, s2, a7
                  auipc      t0, 972787
                  slt        gp, ra, a1
                  nop
                  srli       s5, a7, 3
                  auipc      t3, 1033462
                  or         s0, a6, s6
                  sub        s7, t2, a2
                  slti       t1, s10, -460
                  xor        a7, t5, a0
                  addi       a7, a4, 70
                  xor        t3, t4, s6
                  sltu       a5, s7, t5
                  auipc      tp, 910831
                  ori        zero, s0, -96
                  slli       t5, a3, 21
                  slli       s5, s11, 20
                  srl        a2, s6, a7
                  xori       ra, s10, 328
                  sltu       a4, tp, s0
                  srl        tp, s5, s6
                  sltu       tp, t5, t4
                  srai       t2, s5, 19
                  addi       t3, a7, 187
                  sltu       zero, a4, zero
                  add        s5, a3, s9
                  or         a7, ra, s11
                  add        a5, a1, zero
                  slli       a0, t2, 21
                  slli       a5, a2, 24
                  ori        a2, a1, 702
                  addi       s7, s7, 487
                  sra        t3, tp, t5
                  andi       t6, zero, 751
                  slli       s2, s3, 30
                  sra        sp, zero, t4
                  or         zero, a7, s1
                  sll        tp, sp, t6
                  lui        a6, 931077
                  sra        s3, s9, s11
                  lui        tp, 345504
                  slli       a4, s10, 7
                  nop
                  and        a3, a2, a0
                  slli       a5, s9, 10
                  srli       s11, t3, 10
                  add        gp, s8, sp
                  slli       a4, s1, 10
                  srli       t5, t6, 6
                  sub        a3, s4, t1
                  andi       t1, zero, -122
                  sra        a6, a7, t3
                  andi       ra, s4, -53
                  sll        t2, s3, s8
                  or         sp, s10, tp
                  slti       a5, t0, 136
                  lui        s0, 291404
                  add        s11, s0, s10
                  auipc      a4, 383110
                  sltu       zero, t2, zero
                  add        zero, s10, a5
                  sltu       a4, a7, s9
                  sltiu      a0, t5, -860
                  lui        zero, 486092
                  sltiu      s5, s7, -1
                  slli       a4, t4, 22
                  sra        t6, ra, s10
                  sra        t1, a2, a2
                  slti       s11, a4, 584
                  addi       t6, s6, 667
                  srai       a1, s4, 30
                  slli       a5, s7, 12
                  xor        gp, t5, a3
                  xori       tp, s0, -288
                  sub        a6, a5, s7
                  andi       a0, tp, 751
                  sltu       s6, t0, s4
                  sra        t3, t4, ra
                  add        s8, s8, s4
                  xor        s6, s3, s0
                  addi       a1, s4, -379
                  xor        a3, t1, a6
                  andi       gp, a0, 272
                  srai       t0, s6, 14
                  andi       s3, s7, 571
                  nop
                  sra        s5, s4, ra
                  ori        s0, t3, -621
                  xori       s6, a2, 514
                  sltu       a1, s3, a6
                  add        t5, a1, a5
                  sll        a4, s10, s7
                  slli       a0, s7, 28
                  addi       t3, s10, -250
                  slli       sp, a4, 10
                  sub        a7, s0, a4
                  sra        s8, s2, s3
                  sra        s8, ra, a6
                  sub        s2, a5, sp
                  auipc      tp, 729857
                  lui        s0, 992210
                  xori       a2, zero, 386
                  slli       sp, a2, 1
                  srl        s9, t6, t2
                  ori        tp, s11, 829
                  slti       t6, a4, -191
                  srl        a2, t4, sp
                  xori       a3, tp, -284
                  slt        a4, t3, sp
                  auipc      a4, 984717
                  sub        s0, a1, a2
                  addi       s8, s10, -238
                  andi       t5, sp, -324
                  and        t5, s2, s4
                  slli       s8, a0, 23
                  srai       s6, gp, 12
                  nop
                  andi       gp, s9, 350
                  slli       s8, a3, 30
                  auipc      tp, 729709
                  xor        a7, s2, t0
                  add        a7, a0, t5
                  or         a4, s3, ra
                  slli       s6, s11, 16
                  xori       zero, s8, -643
                  sll        a4, a4, a5
                  sra        s8, a4, a4
                  srl        a3, s5, a3
                  sra        t5, t5, t6
                  slt        s2, t1, t4
                  nop
                  xori       gp, t1, -406
                  srai       s11, t2, 0
                  xor        a5, t3, a6
                  sub        s3, a0, s11
                  or         a7, t4, a1
                  srai       t5, t0, 7
                  slti       s11, a6, -694
                  slli       tp, s10, 7
                  add        s5, t4, t6
                  nop
                  srli       t2, a2, 5
                  xori       sp, a5, 956
                  sltiu      s2, a2, 342
                  slli       t6, s7, 1
                  add        a1, t3, a4
                  sltiu      ra, a1, 1015
                  srl        sp, sp, s3
                  slli       s6, t5, 23
                  sltiu      a2, s9, 879
                  or         a2, a7, a7
                  auipc      t5, 867787
                  and        sp, s2, a6
                  sll        a2, s7, ra
                  xori       a5, t3, 310
                  xor        tp, s5, s10
                  srl        gp, a7, s8
                  sra        s7, gp, s9
                  addi       a3, s8, 907
                  auipc      s5, 879584
                  slli       t1, ra, 7
                  slli       gp, s11, 5
                  sra        a4, s1, s11
                  sltiu      s2, s11, -337
                  nop
                  add        t5, gp, s9
                  slti       tp, a6, -270
                  slli       a3, ra, 26
                  xor        a3, gp, s10
                  xori       s0, a0, -989
                  srl        a0, t2, a2
                  sltu       t2, a2, sp
                  sll        s0, t3, s11
                  slt        t0, a7, a4
                  sub        zero, sp, s9
                  slti       s8, t6, 965
                  or         a6, s4, s5
                  srl        tp, t3, a5
                  andi       t5, s9, -942
                  slt        t1, s5, a5
                  add        t2, t1, a4
                  sltu       s11, t2, t3
                  sub        s6, s3, t1
                  sltiu      a4, t1, -670
                  sltiu      t2, a7, 408
                  xori       ra, tp, 811
                  or         s6, s4, a7
                  sltiu      t6, s4, 926
                  xor        t3, t1, s0
                  auipc      sp, 449785
                  addi       s0, s2, 155
                  srl        s0, s6, a4
                  sltu       zero, t2, a2
                  and        s8, s3, a3
                  and        s7, zero, s4
                  nop
                  and        t0, s9, s11
                  xor        s2, s1, s3
                  srli       t5, a2, 19
                  slti       a6, s7, -62
                  slti       s5, s0, 609
                  lui        t4, 829889
                  ori        a3, gp, -150
                  xor        t2, a7, s5
                  sltu       a0, t4, t5
                  slt        ra, t3, a6
                  xori       a3, s6, -610
                  xori       t3, t0, -969
                  and        s6, t4, s0
                  nop
                  nop
                  slti       tp, s7, 957
                  or         ra, a6, s0
                  nop
                  xori       s3, a4, 969
                  and        a1, a4, a1
                  xor        a1, t4, gp
                  addi       zero, a1, -41
                  add        a2, tp, t2
                  and        a2, zero, s4
                  sra        s0, a0, s9
                  or         t5, s5, zero
                  lui        t1, 225278
                  sltiu      t5, tp, 325
                  nop
                  sub        s8, t6, s1
                  addi       s9, s6, 270
                  slti       gp, s0, -938
                  sub        t1, a1, a1
                  sll        ra, t4, s10
                  sra        s8, s1, s3
                  and        s2, t1, tp
                  srl        gp, a5, t4
                  slti       a2, s11, 786
                  xori       a1, zero, -425
                  srai       a0, a5, 17
                  or         t2, s6, t5
                  sltiu      t6, s7, 633
                  xor        a4, t6, tp
                  slli       a3, t4, 15
                  addi       sp, s0, 694
                  sll        s3, s11, a7
                  sltiu      t1, s6, -696
                  addi       a5, s8, -653
                  auipc      s6, 329164
                  and        s3, t4, sp
                  or         t3, zero, s0
                  sll        s3, t2, zero
                  sltiu      t0, s7, -116
                  lui        s7, 987655
                  sltu       s3, s0, t5
                  ori        a2, a3, -79
                  and        s9, t2, s9
                  srl        t5, t6, s7
                  xor        a2, a7, a0
                  sra        ra, s9, a2
                  slti       a3, t0, -198
                  add        t2, s5, ra
                  and        a3, ra, s6
                  sltu       t6, s3, a6
                  xor        tp, t6, s1
                  sltiu      gp, a5, -403
                  sub        s2, s1, a1
                  and        s3, t2, t6
                  andi       t4, s3, 920
                  srl        a5, a7, sp
                  slli       a5, s7, 24
                  andi       a1, t2, -425
                  slt        s0, s7, s6
                  lui        a2, 393858
                  lui        s8, 293214
                  xori       zero, zero, -251
                  sra        a7, s1, s3
                  add        t5, tp, a1
                  sra        s11, s7, gp
                  andi       s0, s0, 747
                  srli       t3, t6, 15
                  sll        s3, s5, t6
                  nop
                  slt        a6, a6, s11
                  ori        t0, s1, -532
                  xor        s3, t6, a3
                  slli       t0, s0, 31
                  srli       a1, t1, 22
                  srli       t4, t1, 23
                  srl        a3, a1, s3
                  addi       tp, sp, 783
                  slli       a0, tp, 2
                  slli       s9, a1, 9
                  xor        a1, a5, a6
                  auipc      t6, 141841
                  sub        s2, gp, s8
                  sll        a6, s8, s2
                  xori       s6, t0, 540
                  slli       tp, s0, 23
                  sltiu      t6, t5, -268
                  slti       t2, s2, -983
                  xor        t1, zero, s3
                  lui        s8, 586813
                  xori       t4, s9, -359
                  sltiu      t0, s10, -405
                  xor        a2, a4, tp
                  add        tp, s2, t1
                  add        t2, t0, a6
                  auipc      s5, 629824
                  nop
                  or         s6, gp, s6
                  srai       a1, t2, 29
                  ori        tp, t4, 341
                  add        t2, a4, t1
                  srai       t5, a2, 20
                  or         t2, s7, a4
                  li         s9, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li         sp, 0x80000000
                  li         t4, 0xffffffff
                  li         a4, 0x0
                  li         s2, 0x80000000
                  li         t3, 0x80000000
                  li         t2, 0xffffffff
                  li         s11, 0x80000000
                  li         s7, 0x0
                  li         a7, 0xb1bd6d09
                  auipc      t4, 414533
                  nop
                  auipc      a7, 390246
                  lui        s2, 938704
                  nop
                  auipc      s9, 196340
                  lui        t2, 763811
                  sub        s9, a7, t3
                  nop
                  lui        a4, 553514
                  addi       sp, s11, 478
                  lui        a7, 366105
                  sub        t3, t2, t4
                  add        t3, t3, t2
                  addi       s2, a7, -480
                  nop
                  lui        t3, 655773
                  addi       s2, a7, 643
                  addi       s11, a4, -199
                  lui        a4, 648665
                  addi       a7, sp, -94
                  addi       a7, sp, -89
                  add        t2, s7, s11 #end riscv_int_numeric_corner_stream_33
                  sub        t2, t6, gp
                  nop
                  auipc      sp, 394716
                  slli       a4, s8, 29
                  slti       tp, t2, -273
                  sra        s2, s7, zero
                  auipc      sp, 435785
                  or         s7, a7, a2
                  addi       t2, zero, 758
                  srl        a6, s0, s7
                  srai       s6, sp, 13
                  sra        a7, s5, ra
                  addi       a5, a0, -5
                  auipc      sp, 100168
                  srl        s2, a3, s6
                  slt        s7, tp, t3
                  or         s0, t6, a1
                  xori       a0, zero, -152
                  nop
                  sra        s9, a3, zero
                  sltiu      a1, t4, -980
                  sltiu      s3, a4, -1024
                  and        t1, a2, sp
                  add        t5, t5, s2
                  sll        s8, s3, a1
                  nop
                  add        a3, a4, t0
                  sra        tp, s8, t2
                  addi       zero, t5, 950
                  sltu       s11, ra, gp
                  xori       s0, sp, -849
                  nop
                  andi       s3, s5, -997
                  or         a4, s8, tp
                  and        zero, t4, a3
                  nop
                  sra        t2, s10, sp
                  sub        a0, s8, a6
                  auipc      tp, 681995
                  auipc      tp, 894864
                  nop
                  lui        s2, 118925
                  sltu       s3, s10, t6
                  sub        s5, t4, s2
                  sll        a7, s8, a1
                  ori        gp, a6, 721
                  slti       zero, t4, -351
                  addi       tp, s11, 1003
                  and        zero, s6, t4
                  slti       a1, a1, 643
                  auipc      t4, 808900
                  addi       s6, ra, 474
                  addi       s6, s0, 996
                  srl        t1, s4, t4
                  sltu       s7, s3, zero
                  xor        s7, t4, s10
                  slt        s2, a0, s6
                  slt        a1, ra, s0
                  sll        t0, s8, s6
                  nop
                  sltu       a0, a4, s5
                  addi       ra, a0, 179
                  auipc      s7, 988593
                  auipc      a4, 1038006
                  addi       s9, t6, -453
                  sub        s3, s8, s3
                  or         s5, a4, a5
                  sltiu      s3, a1, -533
                  and        s6, t0, a5
                  auipc      a2, 545101
                  auipc      s5, 661024
                  ori        a6, s4, -181
                  slli       tp, t3, 26
                  slt        s2, s8, s1
                  andi       s2, s3, -503
                  slti       s7, s9, 647
                  andi       s11, zero, -696
                  xor        s0, s6, s7
                  xori       t4, s11, 683
                  xori       t3, t4, 1018
                  lui        a2, 628404
                  auipc      s9, 109152
                  nop
                  sra        s2, s10, tp
                  addi       t2, s6, 583
                  lui        s8, 924388
                  srl        gp, tp, s4
                  sra        t4, s0, ra
                  xori       a1, a4, 34
                  srli       t3, s2, 15
                  andi       s3, a1, 3
                  srl        s3, sp, s9
                  srl        t2, s7, s7
                  slt        t0, t2, a6
                  xori       a4, a6, 226
                  nop
                  and        t0, s3, t2
                  slti       a3, a2, 677
                  sll        s9, t4, s1
                  sra        s11, s3, gp
                  sll        a5, a1, s0
                  srli       a3, a7, 2
                  addi       a1, t6, -592
                  ori        s6, a5, 529
                  slti       s7, s6, -1014
                  add        t1, s0, a6
                  sltu       s9, t1, s10
                  addi       s7, a3, 886
                  xor        s11, s5, a7
                  xor        a3, t4, s6
                  or         t5, t4, zero
                  sub        s8, t0, s11
                  xor        a6, t1, a1
                  andi       t1, ra, 996
                  sra        t2, t2, s7
                  xor        s11, s3, s10
                  nop
                  srai       a5, t5, 1
                  and        t6, gp, s2
                  slli       a5, t2, 17
                  sltiu      tp, s2, -639
                  srl        a4, tp, s9
                  sra        t6, a3, a5
                  sltiu      a4, s0, 660
                  or         s6, s11, zero
                  sll        s3, zero, sp
                  sra        a0, s10, s1
                  nop
                  sra        s11, t2, s11
                  srl        gp, t3, ra
                  add        t5, t6, s9
                  slti       a4, t3, -442
                  xor        s11, s7, a4
                  slt        t2, t1, a0
                  and        s3, t5, a7
                  auipc      zero, 825027
                  nop
                  srai       t3, s0, 2
                  sll        gp, s1, a1
                  slli       a5, s1, 14
                  xor        t6, sp, a3
                  xori       a6, s1, 467
                  slt        a7, a0, t5
                  srai       a0, tp, 24
                  srl        s7, a6, a5
                  xor        a7, a2, t0
                  andi       a0, a2, 446
                  srai       s8, s10, 20
                  add        sp, s0, s5
                  nop
                  xor        a6, a1, tp
                  sltu       s5, a4, s8
                  addi       t4, ra, -381
                  add        t5, ra, s2
                  sub        s11, s10, t2
                  auipc      tp, 675268
                  srl        t6, a0, s3
                  nop
                  lui        sp, 180393
                  srl        t0, s10, s7
                  xor        zero, a2, a7
                  auipc      tp, 233735
                  srai       s2, s11, 5
                  sll        s3, t6, a2
                  srai       tp, s11, 28
                  srai       zero, a6, 28
                  slti       t4, t5, -878
                  and        gp, s4, s0
                  slti       s9, a0, 975
                  srli       a3, a3, 17
                  sub        sp, a5, t5
                  sub        tp, t2, s4
                  ori        s5, t6, 437
                  auipc      tp, 220723
                  auipc      ra, 862637
                  auipc      t3, 310139
                  or         a4, s3, s9
                  slt        a6, zero, gp
                  slli       tp, s6, 8
                  xor        a7, s5, s9
                  ori        t2, s3, 542
                  xori       s0, t4, 997
                  addi       s5, a6, -391
                  andi       t5, a0, 54
                  sltiu      s7, t5, 582
                  andi       t6, ra, 871
                  or         t1, s11, t4
                  addi       a5, a5, -92
                  lui        s11, 982624
                  xor        a3, a2, t0
                  and        zero, t6, tp
                  srl        zero, a3, s0
                  slti       a0, s8, -764
                  add        t2, t6, tp
                  auipc      s9, 685921
                  or         a5, zero, a1
                  ori        s3, a2, 752
                  addi       s11, s8, 660
                  sltiu      t6, s5, 137
                  andi       s9, s11, -479
                  sltiu      a1, a6, -254
                  andi       t1, s10, -400
                  nop
                  nop
                  and        zero, s1, t5
                  slti       s3, a2, -108
                  auipc      a2, 941330
                  srli       s11, a6, 28
                  slli       a3, gp, 3
                  auipc      s7, 924869
                  srai       a1, ra, 22
                  xor        a6, zero, sp
                  slt        t5, s4, s3
                  sll        gp, t5, s3
                  add        s5, s2, s4
                  addi       ra, s9, -1002
                  and        a7, a4, t1
                  auipc      s6, 224933
                  srli       s11, ra, 25
                  addi       a0, a5, 304
                  srai       t3, t5, 9
                  ori        t6, a2, 446
                  or         sp, gp, gp
                  slt        s11, sp, a7
                  srl        s3, s2, t5
                  slt        t1, a1, s2
                  lui        gp, 845427
                  andi       s0, tp, 476
                  and        s6, t2, sp
                  slt        s3, s8, zero
                  ori        gp, s9, 957
                  ori        s3, a7, -213
                  ori        a2, t3, 530
                  xor        t0, t1, s0
                  add        s3, gp, a5
                  xori       t6, a3, 563
                  or         s11, gp, a5
                  lui        s3, 463440
                  or         a5, s0, zero
                  slli       ra, t4, 8
                  xori       t4, s1, 700
                  sll        t0, a0, s3
                  slli       a3, s8, 30
                  andi       t4, a1, -630
                  srli       s3, ra, 10
                  sub        a3, t1, a0
                  slli       zero, s7, 31
                  slli       tp, a6, 26
                  sll        t6, t1, ra
                  or         t5, ra, gp
                  srai       sp, a5, 13
                  add        a7, a4, zero
                  ori        a4, s9, 413
                  xor        a6, ra, t2
                  addi       a6, t1, 228
                  slt        a3, t0, a7
                  slti       s0, a2, 999
                  ori        s5, gp, -708
                  sltiu      s8, s4, -774
                  sra        t2, s3, a2
                  addi       s0, s4, 297
                  andi       t4, t2, -190
                  xor        sp, sp, ra
                  sll        s0, s9, a6
                  sltu       t5, t3, zero
                  or         t5, s11, a1
                  sltiu      a2, sp, 160
                  lui        a6, 825971
                  sltu       s5, sp, s8
                  xor        t3, t2, a1
                  srai       a0, a0, 9
                  srl        s0, gp, a3
                  auipc      t2, 545927
                  srli       s5, t0, 20
                  add        s11, a3, gp
                  srl        a2, t4, t2
                  ori        s6, a1, 292
                  lui        a5, 560997
                  sra        tp, sp, t2
                  slli       s0, gp, 30
                  lui        s11, 233408
                  andi       t2, s5, 295
                  srai       tp, t6, 12
                  srl        a7, s10, gp
                  sll        a1, t5, a3
                  or         a7, t5, s7
                  srl        a2, s10, tp
                  or         t0, a4, s2
                  xor        t6, a1, gp
                  ori        gp, s2, 271
                  or         s7, t6, t0
                  srli       s6, s5, 5
                  nop
                  add        t0, t4, a0
                  addi       t3, ra, -683
                  add        s3, s1, s3
                  xori       s5, s8, 817
                  slli       s6, t2, 18
                  sub        a4, a2, t2
                  sll        s8, a3, zero
                  xori       s2, t5, 273
                  slli       t3, s0, 29
                  sra        a5, s6, a1
                  andi       a0, tp, 325
                  nop
                  ori        t2, t1, -895
                  nop
                  slt        s0, t3, a7
                  xori       a1, s5, 555
                  ori        t5, s0, 108
                  xori       a6, t6, -768
                  sll        s0, s7, a6
                  addi       gp, s11, 523
                  sub        s2, t4, s2
                  addi       t3, a5, -280
                  srli       a0, t4, 27
                  srl        ra, a1, t3
                  lui        sp, 787768
                  andi       t3, s2, 562
                  srai       s6, a5, 1
                  slli       t5, t1, 31
                  sub        a3, t1, t2
                  or         t2, s9, s11
                  lui        s9, 155555
                  nop
                  add        zero, t2, s4
                  sltiu      t4, a3, 623
                  xori       sp, t6, -1011
                  slt        s11, t4, t4
                  srli       ra, s11, 25
                  xor        tp, s3, a1
                  lui        s0, 47557
                  srli       a7, s2, 31
                  sub        s11, t0, t4
                  andi       a6, s7, 699
                  srl        t4, s6, s8
                  lui        tp, 513623
                  slli       s8, t2, 18
                  andi       a0, s0, -509
                  addi       a0, a0, -137
                  ori        t6, a0, -326
                  slti       t2, s10, 449
                  and        a1, s7, a4
                  sltu       s6, a6, s9
                  lui        a6, 564668
                  or         s5, a7, s8
                  srl        s7, s8, a4
                  or         a1, s8, t3
                  nop
                  sub        a4, t5, ra
                  nop
                  add        a4, t6, s11
                  sltiu      a4, a0, 38
                  and        t3, s4, a4
                  sll        t6, a4, tp
                  srai       t3, a7, 31
                  xori       t6, t1, -41
                  ori        a6, s2, 357
                  or         zero, s5, t4
                  ori        t4, tp, 579
                  auipc      a7, 843070
                  sltu       t4, t1, a0
                  sub        t5, zero, a5
                  sra        a5, t5, a5
                  addi       zero, sp, -188
                  lui        zero, 285841
                  slti       s7, a2, -904
                  ori        a2, a0, -828
                  add        t0, sp, sp
                  add        a4, s5, s6
                  srl        s2, sp, a6
                  srl        a2, t6, s8
                  srai       gp, s2, 31
                  nop
                  ori        a7, s11, 388
                  xor        s11, s1, a4
                  slli       s7, gp, 4
                  srli       s7, zero, 1
                  and        t2, a4, t6
                  sll        a4, t3, a3
                  and        t6, t0, a0
                  addi       gp, s10, 375
                  slti       a7, s9, -160
                  sub        a5, gp, gp
                  xor        t0, t6, t5
                  lui        a0, 774945
                  sub        zero, ra, zero
                  sra        a2, tp, s8
                  srl        ra, s5, t2
                  srai       s3, s1, 12
                  ori        s6, a6, 119
                  nop
                  or         s8, t6, s2
                  and        s0, a2, t1
                  sll        a4, t4, tp
                  ori        a4, a3, -204
                  sub        s5, s2, s6
                  srai       t5, s4, 15
                  sltu       a1, sp, t4
                  sub        s9, t2, a2
                  sll        ra, s2, t4
                  sltu       s0, t3, a2
                  sub        s2, a5, s2
                  srli       zero, a1, 30
                  sltu       tp, s4, sp
                  auipc      zero, 943376
                  nop
                  and        s8, s10, s4
                  sub        gp, a0, s10
                  lui        s0, 945238
                  andi       t6, sp, 915
                  addi       ra, s4, -19
                  sub        t1, s3, a7
                  sltiu      tp, t2, 556
                  lui        zero, 247266
                  slti       s6, t1, -562
                  sub        s11, t0, t3
                  andi       a1, t5, -273
                  sltu       a7, s0, tp
                  lui        t1, 991557
                  srli       s9, s4, 5
                  sub        a1, sp, s7
                  srai       s5, t2, 8
                  sub        s11, s7, a6
                  or         a6, t5, t4
                  srli       t5, s9, 17
                  slt        a6, a6, t1
                  slti       sp, a7, 135
                  srai       s5, a5, 11
                  and        s6, s11, t5
                  sra        a0, s6, s3
                  srli       s2, s9, 7
                  add        a7, s8, ra
                  nop
                  nop
                  add        s11, s0, t5
                  andi       s3, s1, -696
                  srl        a4, a2, zero
                  srai       t3, s3, 7
                  sub        sp, s6, a3
                  andi       s3, t1, 551
                  add        t5, s11, a0
                  sll        s9, s4, a4
                  or         s11, a2, ra
                  andi       gp, a1, -432
                  sub        t4, s5, s3
                  or         s5, a4, a5
                  sub        s11, s2, t3
                  xor        a4, t0, a7
                  srl        t1, gp, a2
                  xor        s11, t1, a4
                  srai       s9, t3, 19
                  srai       gp, s8, 0
                  xor        a2, t6, a6
                  srai       t1, t2, 31
                  xor        sp, t0, s2
                  sll        s7, a6, a2
                  xor        t2, t6, t5
                  srl        t6, a4, t0
                  nop
                  srai       s8, a0, 24
                  auipc      a7, 337158
                  srai       s11, s8, 15
                  sltiu      s5, a0, 963
                  sltiu      gp, zero, -506
                  sltu       t6, a6, s6
                  addi       s11, a6, 959
                  sub        a3, s2, s11
                  xori       t3, tp, 320
                  srl        t0, s7, s9
                  xor        tp, s3, t5
                  add        t4, a3, a0
                  ori        s5, s7, -522
                  andi       s2, t1, -616
                  addi       a7, s2, 269
                  slt        s9, s3, tp
                  xor        a7, t6, t2
                  sltiu      s7, s10, -936
                  andi       sp, s4, -551
                  slt        s11, a4, a6
                  or         sp, s1, tp
                  sll        t3, s10, zero
                  srl        ra, a2, t2
                  xor        s2, s8, s7
                  li         gp, 0x5106118a #start riscv_int_numeric_corner_stream_5
                  li         a6, 0xffffffff
                  li         t5, 0x80000000
                  li         s0, 0xffffffff
                  li         sp, 0x4e49ecb1
                  li         a0, 0xffffffff
                  li         t6, 0x80000000
                  li         t3, 0x80000000
                  li         a1, 0x80000000
                  li         s7, 0x0
                  addi       s0, s0, -924
                  nop
                  auipc      gp, 350748
                  nop
                  lui        gp, 747623
                  sub        a6, gp, s7
                  add        a0, a1, a1
                  lui        gp, 657874
                  nop
                  addi       a0, t6, 252
                  addi       t3, a0, 103
                  sub        gp, gp, a6
                  sub        t3, t6, sp
                  lui        a6, 633933
                  add        gp, a6, gp
                  nop
                  addi       a1, t6, -324
                  nop
                  lui        a6, 862305
                  auipc      t3, 341842
                  nop
                  lui        t3, 448153
                  lui        a0, 282946
                  add        s7, a1, t5 #end riscv_int_numeric_corner_stream_5
                  srl        t2, s0, t2
                  sub        a7, s11, a3
                  addi       a3, t0, 389
                  sra        s0, gp, t3
                  sltiu      t1, ra, 869
                  sltiu      a0, s7, -280
                  slli       s3, sp, 5
                  sra        s3, t4, s5
                  andi       s2, t3, -961
                  or         s5, s1, s0
                  sltiu      s0, t1, -827
                  nop
                  xori       a5, t0, 301
                  sltiu      a4, t3, -630
                  addi       t3, a7, -555
                  sltu       a5, t0, s5
                  sll        a1, s7, sp
                  sra        a0, t6, s0
                  sltiu      s8, s0, 517
                  slt        s9, t3, t2
                  auipc      t1, 190747
                  add        s3, sp, s0
                  xori       s2, a2, 531
                  ori        a4, tp, -858
                  auipc      t3, 377257
                  and        a0, ra, zero
                  sll        a0, t4, a5
                  nop
                  slli       a0, gp, 8
                  slt        sp, a3, gp
                  lui        zero, 582894
                  slt        t0, a2, a0
                  xor        s3, s6, t3
                  xor        tp, t0, s7
                  srli       s0, t5, 27
                  slti       a0, a5, 794
                  slli       t3, a4, 17
                  srl        a6, t1, s2
                  srli       a1, ra, 18
                  sub        s3, t6, s4
                  ori        a6, sp, 474
                  sub        zero, tp, t0
                  sll        a7, t5, s5
                  sra        t5, a4, tp
                  srli       sp, s10, 14
                  nop
                  srli       a0, sp, 6
                  sltu       a6, s5, a7
                  sltu       t2, s0, a3
                  sltiu      s5, a7, 382
                  xori       a5, s0, -140
                  srli       a3, a3, 26
                  xor        t3, s8, tp
                  slli       s7, t5, 16
                  and        a6, a4, a6
                  add        a4, a6, s1
                  srli       a3, a0, 12
                  slt        sp, a1, s9
                  lui        a5, 147945
                  sltu       gp, t3, s11
                  xor        t1, t2, s4
                  sltiu      gp, t0, -861
                  sub        s3, a1, a1
                  srl        tp, tp, zero
                  addi       sp, a2, -669
                  add        t3, s8, t6
                  auipc      zero, 547949
                  and        s5, s6, a3
                  auipc      s2, 976333
                  slt        t0, s0, s0
                  sll        a4, a2, s1
                  sll        t3, s10, t0
                  slt        a4, t2, tp
                  addi       s2, t0, 47
                  sub        s8, s6, s7
                  lui        s7, 404741
                  srl        zero, a3, a1
                  sltu       t3, a1, t2
                  srai       s7, t6, 13
                  srli       t3, a5, 5
                  add        a6, sp, a7
                  addi       s2, s8, -547
                  auipc      s5, 314910
                  sltu       s2, a2, a6
                  auipc      a0, 676479
                  sra        t6, a0, a5
                  sll        s2, s8, s3
                  addi       t1, s7, 552
                  and        t0, t5, a6
                  sll        a5, t2, gp
                  sub        s6, s11, zero
                  sra        gp, s10, t4
                  srl        s8, s2, tp
                  addi       a7, s8, 846
                  sltiu      t6, t2, -76
                  sll        t4, s1, t2
                  ori        ra, a0, -901
                  andi       t6, gp, -852
                  or         s2, s6, s6
                  srai       t2, a0, 21
                  auipc      a5, 155245
                  and        s11, t0, t2
                  sra        s8, t5, s0
                  auipc      a6, 23042
                  auipc      s7, 925485
                  addi       tp, t5, -442
                  sub        t3, s0, a5
                  srli       zero, t2, 24
                  lui        s7, 635677
                  and        t1, a0, t4
                  slti       a0, a2, 268
                  sltiu      ra, sp, 234
                  sll        s9, s6, t0
                  slli       a6, s9, 25
                  sll        t6, s5, t6
                  lui        a4, 298999
                  sll        s2, a0, t0
                  add        a0, a4, a7
                  ori        t4, s7, -414
                  srl        zero, a6, a1
                  andi       a7, a1, 817
                  sub        s8, a6, a1
                  and        t1, a3, s9
                  nop
                  andi       a6, s3, 960
                  ori        s11, a6, -481
                  andi       s11, a2, -261
                  sltiu      s6, s1, -13
                  or         ra, sp, zero
                  sltu       gp, t2, s3
                  srli       t5, s7, 13
                  srl        t4, s10, s0
                  sub        t5, a7, t5
                  auipc      a0, 975031
                  ori        t3, a2, 40
                  add        s6, a1, s7
                  srai       t1, t5, 6
                  and        a5, s0, zero
                  sltu       s9, s2, t4
                  add        a1, tp, a2
                  srli       a4, t4, 30
                  xor        a0, s1, s6
                  sltiu      a6, s6, 154
                  slli       a4, a5, 27
                  slli       t0, s9, 27
                  slt        a2, a5, a5
                  slli       a0, t4, 15
                  ori        a4, t0, -277
                  or         t6, s7, s1
                  slti       t1, s3, 272
                  xori       s11, s5, -277
                  or         t5, s7, a2
                  and        t0, t5, s7
                  ori        s3, s7, 847
                  xori       s3, a0, 873
                  srl        tp, a4, t4
                  andi       s0, a7, -746
                  sra        tp, a6, t1
                  or         s8, a5, t2
                  srl        s11, tp, a7
                  andi       s11, t0, -55
                  sub        a4, a3, zero
                  add        t5, s5, t4
                  sub        t2, s3, a2
                  xor        a7, t1, t5
                  sra        s8, t4, s6
                  slli       s11, ra, 0
                  andi       s3, sp, -85
                  auipc      ra, 85271
                  sra        s11, s8, sp
                  slli       s2, a3, 12
                  slt        s6, a1, a5
                  andi       tp, zero, -446
                  sub        tp, zero, s9
                  xori       t3, a6, -112
                  sub        a5, a6, tp
                  srai       tp, t3, 0
                  slti       a1, gp, 1016
                  ori        s6, t0, 929
                  srli       a4, t0, 27
                  slt        a4, t6, tp
                  slt        t3, t1, a6
                  srli       a3, zero, 21
                  sra        s9, s6, s7
                  addi       t1, s8, -620
                  srl        t6, s1, s7
                  and        s7, s5, s6
                  srli       s2, a4, 7
                  slti       t2, a5, -694
                  lui        gp, 519795
                  slt        t3, t4, s7
                  sltiu      zero, t4, 443
                  nop
                  or         t0, gp, t0
                  slti       t4, t4, -204
                  and        s11, s8, sp
                  add        a4, t1, a4
                  and        t5, s11, s2
                  slti       t3, a0, 867
                  ori        s6, t4, 551
                  sra        s2, t2, s1
                  addi       a5, ra, -500
                  slli       t4, a5, 18
                  slli       s7, t1, 12
                  sub        zero, t5, s8
                  srai       s5, t0, 21
                  sltu       a1, a0, t2
                  and        t1, t1, a1
                  xori       t6, s8, -800
                  and        a5, s1, tp
                  nop
                  srl        t2, s6, s10
                  srai       t6, t1, 8
                  sltu       a2, s5, zero
                  srai       t4, t5, 2
                  slli       a6, t2, 15
                  lui        s3, 634407
                  xori       a2, s1, -788
                  srai       t3, t2, 16
                  addi       ra, a6, 854
                  slt        s8, a5, zero
                  sltiu      a6, zero, 507
                  lui        s7, 932790
                  sltiu      s3, a2, -242
                  sll        s6, s0, t1
                  slli       t1, s5, 1
                  sub        s9, s11, ra
                  andi       a0, s3, 455
                  slt        s6, a3, s2
                  sra        s8, t0, t5
                  slt        sp, s1, sp
                  srai       a3, s2, 15
                  ori        s6, a1, -401
                  ori        s0, ra, -630
                  srli       zero, s0, 0
                  and        s8, t6, s10
                  srai       a0, s2, 4
                  sll        s0, a4, a4
                  sra        s8, t3, t3
                  sltu       a0, s9, zero
                  xori       s5, sp, -595
                  auipc      a3, 426396
                  xori       s0, a4, 939
                  nop
                  auipc      tp, 642674
                  nop
                  and        t6, s3, t3
                  srai       t0, a5, 12
                  slt        a0, ra, a5
                  srl        a4, s8, s3
                  addi       t6, s11, -560
                  ori        s7, a6, 866
                  srli       a5, s10, 20
                  andi       a4, a1, 114
                  add        gp, ra, t4
                  ori        tp, a6, -590
                  slli       a3, a2, 11
                  add        zero, s7, sp
                  lui        t1, 827854
                  slli       s8, s7, 26
                  add        s6, t3, s0
                  sltiu      ra, s0, -328
                  slti       t0, s1, 761
                  slti       s2, t3, -238
                  xori       a4, s6, -313
                  srli       t2, t3, 30
                  lui        a2, 352154
                  slti       s7, a5, -870
                  xori       s3, ra, 518
                  or         ra, ra, a5
                  or         s3, a5, s3
                  slt        s9, s8, t1
                  sltiu      a1, a2, 938
                  xor        a7, s4, t6
                  sra        a4, s4, t2
                  slti       t1, tp, 205
                  sltiu      a2, t5, -272
                  add        t4, t4, t4
                  sra        sp, s10, t0
                  slt        gp, s10, s9
                  xori       a6, gp, 342
                  sub        s0, s1, s11
                  sub        zero, a3, t4
                  and        s5, gp, ra
                  slt        t2, s11, a3
                  slli       t0, tp, 20
                  sltu       gp, t1, a0
                  xori       a5, s0, 382
                  sll        t3, s1, t0
                  li         s2, 0xec1697b0 #start riscv_int_numeric_corner_stream_7
                  li         s0, 0x80000000
                  li         a5, 0x0
                  li         t4, 0xffffffff
                  li         s5, 0xffffffff
                  li         a4, 0xffffffff
                  li         t1, 0x80000000
                  li         t3, 0x80000000
                  li         a1, 0x80000000
                  li         t5, 0x80000000
                  add        a5, s0, t3
                  nop
                  lui        s2, 81940
                  addi       s5, t1, 569
                  add        a1, a1, t3
                  add        s0, t5, a4
                  auipc      a1, 430318
                  add        a1, t1, s2
                  lui        s2, 321392
                  lui        s5, 525727
                  sub        a5, s0, a4
                  addi       s2, a5, -571
                  sub        a5, t5, s2
                  nop
                  add        t4, s0, t4
                  auipc      t3, 1034209
                  auipc      t5, 23930
                  addi       t1, t1, 295
                  lui        s0, 644531 #end riscv_int_numeric_corner_stream_7
                  add        ra, sp, a1
                  xori       s9, a6, -72
                  xor        a1, s4, s1
                  xori       a5, s1, -918
                  sltu       a6, ra, a6
                  sra        gp, a4, t6
                  or         t6, s1, t2
                  srli       s7, t5, 21
                  nop
                  andi       a4, s9, -700
                  slti       t2, s0, 161
                  sra        s7, t2, a1
                  andi       s5, s3, -341
                  nop
                  sltiu      t3, a6, -337
                  sll        a6, tp, s5
                  srl        t2, t2, s5
                  slti       s0, a3, 731
                  sub        a0, ra, a5
                  andi       a5, s9, 593
                  auipc      a7, 25635
                  srli       s0, t3, 5
                  srl        s3, s6, tp
                  xori       sp, s8, 941
                  sltu       a0, t1, s10
                  ori        s7, a5, -101
                  and        s5, ra, s7
                  sltiu      s3, t6, 189
                  srl        s7, s5, s5
                  srai       tp, t4, 25
                  addi       s0, a1, -355
                  auipc      gp, 390426
                  and        s9, s5, s0
                  slli       tp, s8, 4
                  slli       t3, a7, 21
                  xori       t2, s0, 367
                  sltu       t4, s2, t4
                  slt        s2, s5, s5
                  lui        a4, 837831
                  nop
                  auipc      t4, 112242
                  or         s9, s10, t3
                  xori       ra, t5, 846
                  sltu       gp, s5, s11
                  lui        t0, 368842
                  ori        a2, s3, 749
                  sra        s7, s6, t0
                  sra        s2, ra, t3
                  slli       a4, t3, 19
                  nop
                  andi       t6, a5, -1
                  srai       t6, a7, 26
                  or         s9, s10, s10
                  sra        s0, a3, s4
                  sltu       s9, s2, s1
                  add        t4, a5, s3
                  and        t1, zero, s3
                  xori       gp, sp, 384
                  add        s5, a5, t6
                  sltu       t1, s6, t2
                  sltiu      a2, a1, -104
                  lui        s0, 159282
                  and        t6, s3, s5
                  sltiu      t3, a1, 354
                  ori        t3, a1, -906
                  sll        sp, t3, a1
                  srli       zero, t4, 14
                  srai       s6, a3, 1
                  sra        s7, s7, s4
                  sltu       a3, a4, a2
                  sub        a3, t1, s4
                  nop
                  srai       s11, s10, 26
                  srli       t3, zero, 24
                  srl        a4, tp, a7
                  slti       s11, s11, 336
                  xori       a5, a3, -106
                  sltiu      s3, s4, 225
                  xor        t5, a3, t4
                  sra        t6, t4, s1
                  sll        t2, s5, s4
                  sll        s9, s11, sp
                  ori        gp, ra, -606
                  xori       a1, s3, -966
                  lui        s3, 23927
                  srl        t3, t1, ra
                  nop
                  xori       zero, t5, 570
                  sltu       s5, a6, a1
                  slti       t6, a0, 230
                  sltu       s6, t2, tp
                  sub        t1, s8, s6
                  andi       t6, s10, 41
                  addi       s7, a2, -977
                  and        t1, s5, s9
                  auipc      t0, 837752
                  sub        zero, t5, s2
                  sll        t5, t4, sp
                  xor        t2, s8, s10
                  xori       t4, s6, 598
                  xori       s7, s5, -565
                  slti       sp, s4, -91
                  nop
                  srli       t4, gp, 29
                  and        sp, s10, a1
                  sll        s0, t0, s7
                  slli       a5, gp, 10
                  ori        s0, t4, -892
                  sll        ra, a6, s1
                  sltiu      a3, s3, 922
                  xori       gp, s10, -862
                  sltu       a1, t4, a7
                  slt        tp, s3, t2
                  auipc      s11, 657011
                  sub        s5, s9, s5
                  xor        ra, t2, s10
                  or         s0, s2, s9
                  addi       s7, a0, -477
                  srli       s8, t1, 14
                  slli       sp, sp, 31
                  srli       sp, s7, 18
                  andi       s9, s3, 22
                  sltu       ra, a4, a6
                  andi       s8, a3, -92
                  or         zero, s4, t2
                  slti       a6, t2, -118
                  sub        t1, t0, tp
                  ori        s7, s9, 932
                  xori       t6, s0, -627
                  slti       t1, t5, -307
                  add        a2, s10, s10
                  sll        ra, a2, a5
                  srl        t1, t0, s2
                  slli       a7, s4, 3
                  nop
                  ori        zero, t2, -996
                  xori       a5, a1, 166
                  slti       a1, a5, -640
                  sltu       s9, t2, ra
                  addi       t5, s8, 268
                  slli       s7, a3, 21
                  and        s2, t6, s8
                  slt        s6, s1, t1
                  lui        t1, 412113
                  srli       t2, t1, 24
                  sub        s3, s0, s8
                  xori       ra, a3, 443
                  slti       t1, ra, -60
                  lui        a6, 266946
                  ori        t6, s1, -426
                  sra        s6, sp, tp
                  xori       s7, a4, 594
                  slli       a6, s9, 22
                  slt        ra, t6, s0
                  srl        t5, sp, s3
                  ori        s7, s10, 215
                  andi       t2, sp, 700
                  srli       s2, s1, 30
                  xori       s8, s5, 949
                  sll        t3, t2, t2
                  add        sp, t4, t5
                  xori       s6, a5, 908
                  srl        s0, s2, s11
                  srai       a3, a1, 9
                  auipc      a1, 71149
                  slli       a7, s11, 12
                  addi       t5, t3, -1004
                  lui        tp, 488320
                  srai       s7, s6, 15
                  and        a5, t6, t5
                  and        t6, s11, gp
                  sra        zero, a1, ra
                  andi       t3, gp, 633
                  ori        a3, t3, -825
                  add        a5, s10, t5
                  addi       a0, zero, -59
                  srai       s9, sp, 8
                  lui        s5, 476128
                  add        s7, s6, a2
                  and        t2, s0, a4
                  add        ra, s0, s10
                  srli       s11, ra, 5
                  sub        a1, s10, t1
                  srli       a3, a3, 12
                  and        gp, s10, t2
                  or         t5, t3, s7
                  slti       t3, s10, -315
                  add        s3, s3, a0
                  addi       a3, a4, -392
                  nop
                  slli       s5, s10, 10
                  addi       a2, a6, -1016
                  slti       t0, s3, 209
                  xori       tp, s3, 433
                  xori       a7, tp, 910
                  or         s8, a7, t4
                  lui        t4, 623793
                  sltiu      t5, s5, -809
                  xori       s0, zero, 830
                  srai       a2, s10, 15
                  add        a4, s10, t6
                  lui        a6, 530624
                  add        t4, a4, a1
                  xori       a2, s2, 965
                  srl        ra, s11, a2
                  sltu       gp, a3, a0
                  slli       a7, a3, 17
                  nop
                  and        t4, s2, a6
                  lui        s7, 62033
                  sll        a4, s1, t0
                  auipc      a6, 1027591
                  nop
                  sra        tp, s9, t0
                  sltiu      a4, tp, -718
                  xor        t1, t2, a3
                  xori       a1, s11, -416
                  andi       a1, s3, 82
                  srai       a2, gp, 31
                  nop
                  and        t3, s5, s10
                  or         a7, a7, t5
                  sll        a2, s0, tp
                  ori        s5, t3, -869
                  lui        s8, 878008
                  xor        a3, s0, s2
                  addi       s7, sp, 257
                  ori        s8, s10, 646
                  sltiu      a5, t4, 306
                  add        s7, a0, s4
                  srl        zero, s11, s9
                  lui        s0, 529260
                  srai       a6, a3, 29
                  srai       a2, t1, 21
                  sltu       s0, a4, ra
                  srai       s7, a7, 28
                  sltiu      a1, s11, 656
                  and        a3, s2, a5
                  and        t3, s0, a4
                  sltu       s11, a1, t3
                  sltu       s3, a6, a1
                  add        s6, a2, s6
                  add        t0, a0, t6
                  add        a2, zero, s7
                  and        s6, a6, ra
                  srai       a5, s1, 27
                  sltiu      t0, s7, 473
                  sra        t4, a4, t6
                  lui        t4, 258292
                  auipc      t1, 255398
                  slti       zero, sp, -461
                  slli       t6, a1, 19
                  srli       s6, s4, 28
                  andi       t6, s11, -447
                  lui        a1, 829043
                  slt        a0, a3, ra
                  sltu       a3, s10, zero
                  sltu       s7, sp, t3
                  xori       a3, a1, -1
                  lui        a4, 232961
                  xori       a3, t6, 663
                  sub        s9, a7, ra
                  sltiu      s11, gp, -688
                  and        t4, a3, s2
                  srli       a7, a4, 23
                  andi       s6, t0, 1010
                  srai       a3, s6, 6
                  slti       tp, s9, -486
                  andi       s5, ra, 680
                  ori        gp, t4, -650
                  and        s5, s4, t3
                  slt        tp, a4, t3
                  nop
                  auipc      s9, 463680
                  slt        a2, t5, s4
                  add        ra, t5, s3
                  sra        s7, s4, s8
                  andi       sp, s7, 24
                  and        t4, s7, s9
                  sra        t1, s6, gp
                  xor        a1, a1, s4
                  slli       a1, s1, 24
                  nop
                  xori       a2, s3, -932
                  sub        s2, sp, t2
                  and        s2, t0, a1
                  xor        t1, s3, t4
                  or         s2, s3, a2
                  or         s2, sp, s5
                  lui        a2, 931229
                  sll        t2, tp, s9
                  addi       a7, s0, -969
                  add        ra, t5, t2
                  and        t5, t6, s0
                  sll        gp, s11, a1
                  lui        t0, 256839
                  slli       a1, a2, 21
                  xori       t0, s4, -354
                  srli       t5, tp, 9
                  srl        sp, sp, s8
                  add        a0, a7, t5
                  add        s5, t1, s4
                  add        a3, a3, gp
                  auipc      t1, 180705
                  slt        a5, s6, s9
                  slli       s8, a4, 15
                  sltiu      a0, zero, -699
                  andi       s2, t0, -1
                  sra        s7, a0, t1
                  xori       a0, s6, -403
                  slti       t4, ra, -641
                  slt        s0, t5, sp
                  slli       a5, a2, 14
                  slt        a0, t2, t3
                  ori        t1, a2, -986
                  sra        ra, a4, s6
                  xor        s8, s5, a5
                  ori        s9, sp, -386
                  andi       zero, gp, -969
                  srl        t4, a5, s9
                  srli       a4, a6, 15
                  slt        a2, t3, sp
                  or         a1, s4, a5
                  and        a2, s1, s3
                  auipc      s9, 203581
                  sra        s3, t4, s4
                  xori       t2, a6, -233
                  slli       s8, a6, 2
                  add        a2, a7, t0
                  slli       s5, s11, 27
                  ori        a4, s5, 688
                  andi       zero, s7, 296
                  sub        a7, t0, s9
                  lui        s9, 328646
                  slti       t3, gp, -524
                  auipc      a0, 55950
                  nop
                  srai       a1, a1, 12
                  sltiu      s8, a5, -348
                  xor        t4, tp, t2
                  and        a7, s5, t2
                  sltiu      s5, s9, -782
                  srai       s5, t0, 5
                  xor        a5, a4, t5
                  slli       a2, s4, 12
                  sra        t6, s8, t5
                  andi       s6, a4, 228
                  sltu       ra, a7, s1
                  addi       t5, a4, -968
                  sll        a4, s8, t2
                  sll        a6, t3, s3
                  sub        a5, gp, a4
                  auipc      a2, 115908
                  srli       s9, a7, 13
                  xori       s3, t1, 584
                  xor        s7, gp, s11
                  auipc      t6, 426246
                  xori       s7, t5, -325
                  sltu       t5, s9, a5
                  ori        gp, zero, -761
                  xori       t5, zero, -429
                  and        t1, t6, a3
                  add        a5, t0, a0
                  lui        a3, 386369
                  sra        t1, a7, s7
                  slli       t4, tp, 19
                  sltiu      a0, s10, 424
                  xori       s8, a4, -46
                  or         a6, s7, s9
                  xor        zero, a1, t0
                  andi       a7, s8, 352
                  or         t0, a7, t5
                  sltu       s8, a2, s6
                  and        zero, sp, a3
                  srli       sp, a7, 15
                  sub        t6, ra, sp
                  sra        t3, a1, s10
                  slt        s8, gp, s1
                  slli       a6, ra, 4
                  xori       a6, s4, -810
                  sra        s2, s10, a6
                  add        a4, s10, a7
                  slli       a5, a4, 19
                  sltu       zero, s2, s0
                  andi       tp, s4, -704
                  slli       t2, a0, 27
                  ori        t0, a3, 394
                  srli       t5, tp, 12
                  slt        t6, a3, zero
                  sltiu      a5, s4, 389
                  srli       t5, a7, 13
                  sll        s5, a7, s5
                  sltiu      t5, a5, -137
                  sub        t3, ra, s6
                  sub        t1, t2, s5
                  sltiu      s3, s7, 532
                  ori        a5, t6, -76
                  sra        a5, zero, s4
                  srl        a1, a7, t6
                  xori       s0, t4, 484
                  slti       t1, s7, -541
                  sltu       s9, a0, s1
                  sll        ra, s11, s0
                  ori        a6, t3, -530
                  sra        s9, t3, t6
                  xori       t5, s0, -571
                  srl        a7, a7, sp
                  sub        t2, t6, a5
                  ori        s7, a5, -209
                  auipc      a5, 191183
                  addi       t0, s4, 526
                  and        s5, s10, t2
                  srl        a1, tp, a6
                  lui        s5, 1001
                  lui        t3, 642438
                  slti       ra, t1, 823
                  andi       a4, sp, 662
                  sltiu      a5, a1, 660
                  srli       a7, t2, 31
                  sltu       t2, a7, s6
                  xor        a2, a7, ra
                  auipc      s5, 581625
                  srai       a5, s6, 24
                  and        s5, t2, t3
                  sra        t4, zero, s5
                  addi       t1, a0, -690
                  sltu       a5, gp, t4
                  sll        t0, a4, s3
                  xori       s6, tp, -449
                  or         a1, a6, a4
                  andi       a0, s7, -258
                  sub        s7, t6, a3
                  srai       s3, t1, 20
                  lui        zero, 287195
                  xori       t5, s6, 105
                  srl        s6, t4, s1
                  srai       a1, s4, 1
                  add        s3, t1, s2
                  xori       a4, t1, 337
                  slt        ra, t4, s1
                  auipc      a2, 788463
                  lui        a1, 240965
                  srli       t2, s7, 14
                  addi       a1, sp, 238
                  xori       tp, t3, 483
                  sltiu      s9, a7, -598
                  slli       sp, s0, 23
                  srli       s8, t6, 7
                  sra        t3, tp, s9
                  slli       a6, a1, 25
                  sra        s8, t5, s11
                  andi       s9, sp, 910
                  lui        s11, 192495
                  lui        a1, 255143
                  auipc      t3, 723965
                  srai       t4, s3, 11
                  slti       t4, s1, 771
                  lui        a6, 249322
                  lui        s11, 624512
                  nop
                  auipc      t4, 722081
                  slli       a1, t4, 6
                  li         a1, 0x7e85508e #start riscv_int_numeric_corner_stream_3
                  li         a4, 0xffffffff
                  li         s5, 0xffffffff
                  li         t4, 0xffffffff
                  li         t6, 0x8f92b188
                  li         sp, 0xec95fb93
                  li         s0, 0x80000000
                  li         s8, 0x0
                  li         t5, 0x80000000
                  li         s7, 0x9e0dc21
                  add        s0, t6, t6
                  lui        s5, 177917
                  auipc      t4, 194864
                  sub        t5, sp, s8
                  sub        a4, t6, s7
                  nop
                  lui        t5, 717840
                  addi       sp, a1, -943
                  lui        t5, 7507
                  sub        s8, s8, s5
                  lui        t5, 930155
                  addi       a4, t4, -968
                  lui        s7, 203616
                  nop
                  add        sp, sp, s8
                  sub        a4, a1, sp
                  add        sp, t4, s5
                  auipc      a4, 108908
                  sub        s0, s0, a1
                  auipc      t5, 860267
                  lui        a1, 93357 #end riscv_int_numeric_corner_stream_3
                  srai       t6, s11, 12
                  xori       a4, a3, 173
                  xor        a1, t1, s9
                  sra        zero, s9, s1
                  xor        ra, tp, s7
                  srai       a0, t2, 21
                  ori        a3, s7, -658
                  auipc      t3, 736547
                  ori        s7, sp, -145
                  andi       s7, t3, 693
                  slt        a6, ra, s1
                  xori       t1, a3, 524
                  srli       t4, t3, 22
                  addi       t0, t1, 188
                  sra        t1, t2, t2
                  andi       a1, a5, -67
                  andi       a6, s2, 774
                  slt        ra, s10, a2
                  srl        sp, s2, t0
                  sub        s2, s6, s11
                  andi       zero, a0, -583
                  or         s8, s7, t6
                  sltiu      s5, t3, -415
                  sub        a4, s9, a2
                  slt        gp, sp, sp
                  sll        s3, s4, s11
                  sll        t4, s3, s3
                  add        a5, s0, a4
                  xori       t4, a0, 453
                  or         s5, s11, t2
                  andi       a1, s8, -54
                  add        t4, s6, s8
                  or         a5, s0, t2
                  xor        t2, a3, ra
                  auipc      sp, 453092
                  slli       zero, t1, 15
                  sll        t1, a4, t3
                  lui        s3, 240236
                  slli       t3, tp, 16
                  auipc      a7, 690737
                  sub        s3, s2, a1
                  addi       sp, ra, -68
                  auipc      sp, 113843
                  sra        s7, s1, gp
                  srai       t3, s6, 29
                  or         a1, ra, s3
                  sub        s9, t3, t3
                  auipc      zero, 892801
                  sub        a7, t4, s11
                  sltiu      t3, s0, 406
                  sltiu      s3, s6, -742
                  add        t3, t1, s2
                  addi       t1, s1, 881
                  srl        a2, s0, s6
                  or         a4, a7, s0
                  slli       ra, a3, 13
                  and        t6, t1, t3
                  sltiu      t2, a2, 827
                  slli       s3, s1, 25
                  add        a2, s6, s2
                  srli       t4, s2, 15
                  srl        a2, s3, t1
                  slti       a4, s1, 96
                  and        t3, a6, t4
                  sltu       t6, s0, s2
                  srai       zero, a3, 28
                  sub        t1, t0, s2
                  sltiu      t2, ra, -229
                  srl        t1, s1, t3
                  sltu       a2, a4, s3
                  addi       gp, s9, -794
                  xor        s6, t5, s10
                  slti       t5, s7, -312
                  andi       t5, s4, -588
                  srli       s8, a3, 22
                  srai       a6, s1, 24
                  sra        s6, a3, a5
                  or         gp, a4, sp
                  srli       t0, s10, 28
                  lui        s9, 194557
                  slli       t1, s5, 9
                  or         s3, s7, s11
                  addi       a1, gp, -522
                  or         s3, s6, s4
                  sll        a7, s0, s1
                  xor        a7, s0, s5
                  andi       a0, t5, -823
                  add        t0, a4, s3
                  sltiu      a1, s3, -811
                  lui        a7, 42395
                  lui        s2, 348080
                  sll        t1, ra, s1
                  auipc      s5, 958706
                  andi       a7, sp, 279
                  sub        t1, a7, zero
                  srai       t5, a4, 17
                  ori        s3, s4, 378
                  ori        s9, s7, 891
                  slli       s6, a4, 4
                  lui        s8, 354819
                  sltu       a4, a0, a6
                  xori       sp, tp, 62
                  srl        s2, s2, a7
                  sll        s3, a0, a3
                  andi       t3, t0, 397
                  ori        a5, s2, 16
                  xor        ra, t4, s6
                  and        zero, t3, t3
                  ori        a5, s10, 800
                  srai       a0, zero, 17
                  slti       t3, s4, -997
                  sub        t0, gp, s7
                  addi       s0, t0, 979
                  slt        t2, a7, s11
                  addi       s2, t0, -527
                  andi       t6, sp, 586
                  and        gp, a2, a7
                  nop
                  xori       t3, t1, 534
                  srl        a3, a7, a1
                  addi       s9, t0, -476
                  sll        s0, t5, s0
                  slt        s0, a0, gp
                  srli       sp, s7, 17
                  srl        a6, a1, s5
                  slt        s11, a6, s9
                  xor        gp, s7, s0
                  xori       t5, t4, -577
                  xori       a1, tp, 697
                  xori       gp, ra, -97
                  xor        a1, s7, s2
                  sltiu      s7, gp, 847
                  auipc      a0, 1009427
                  sltu       s0, a6, s8
                  srai       s3, t2, 9
                  sll        s3, a3, a4
                  or         a0, a6, zero
                  nop
                  lui        t1, 224607
                  lui        t0, 730253
                  sltu       s9, s11, s8
                  auipc      a6, 1006285
                  sub        s0, a0, s5
                  srai       a2, a5, 14
                  sltiu      t0, a7, -109
                  ori        a3, t0, 375
                  andi       a1, s1, 226
                  slt        s11, s0, ra
                  slt        t6, a3, a7
                  nop
                  sub        tp, s7, t6
                  add        t0, s2, t2
                  slli       a5, t0, 11
                  sltu       a7, sp, s7
                  srl        a0, s8, t4
                  or         a4, s8, t0
                  xori       ra, s6, -361
                  addi       t3, a1, -866
                  xori       a7, sp, -907
                  slli       t0, s8, 15
                  andi       s8, s5, -859
                  add        s6, a2, s3
                  sltu       t4, a4, s7
                  srai       t0, s5, 28
                  sra        s11, zero, s3
                  slt        s8, tp, t2
                  add        a7, a7, a2
                  add        gp, s9, a0
                  srai       a6, s2, 29
                  nop
                  auipc      s2, 180770
                  sltu       zero, t1, a6
                  and        a4, ra, s8
                  addi       a3, s9, 136
                  add        a1, t4, s0
                  sub        a5, s4, s4
                  lui        zero, 216305
                  srli       s6, t0, 12
                  nop
                  andi       s5, s0, 968
                  sltu       a3, s0, s9
                  nop
                  andi       a3, s7, -774
                  xor        a7, s8, s2
                  slti       s0, s11, 319
                  xor        a1, a3, s5
                  lui        s7, 544399
                  slti       a5, a6, 649
                  xor        t6, t4, gp
                  srai       a6, s10, 22
                  slt        a7, ra, s4
                  xori       s3, a1, -788
                  or         tp, s3, s10
                  xori       t1, sp, 80
                  ori        t1, a3, -376
                  xor        t4, t2, s5
                  slt        gp, tp, gp
                  xori       t2, sp, -550
                  nop
                  and        t6, t3, tp
                  ori        zero, t2, -880
                  ori        t4, t4, -552
                  or         s0, s11, a5
                  sra        s2, t2, t4
                  addi       s2, gp, -701
                  sra        t1, t0, t5
                  auipc      sp, 244037
                  addi       sp, a6, 174
                  andi       ra, a3, -124
                  xori       s3, gp, -395
                  sra        a3, s5, t5
                  slli       t1, tp, 18
                  addi       s3, s1, 294
                  srli       a4, gp, 10
                  srai       a2, t6, 28
                  slt        s0, t0, a5
                  nop
                  srl        a6, s11, s10
                  nop
                  and        tp, t6, t3
                  add        gp, gp, s11
                  addi       a5, a4, 808
                  slli       a4, a4, 4
                  add        a7, t4, s0
                  srai       gp, t1, 27
                  add        s8, a1, gp
                  addi       s7, t0, 97
                  add        t3, s11, ra
                  add        ra, t2, gp
                  sub        sp, s1, tp
                  and        t0, s0, s6
                  andi       a3, tp, -626
                  slli       t4, zero, 5
                  or         s11, s7, a4
                  add        a4, t1, s0
                  or         a0, t4, gp
                  andi       t5, a4, -301
                  sltu       tp, a7, s9
                  and        s11, s6, s6
                  addi       t0, s5, 16
                  and        t3, t6, t3
                  and        a0, a6, s7
                  or         ra, a0, a4
                  addi       t0, s7, 710
                  or         s7, s0, sp
                  addi       t5, a4, 208
                  andi       s3, t3, 247
                  auipc      s6, 347038
                  sltu       ra, s9, t0
                  sra        t0, s9, a7
                  or         t5, t4, ra
                  slti       a6, s2, -787
                  sra        s11, t6, zero
                  srai       tp, t6, 23
                  sltu       a4, s11, s6
                  lui        tp, 340199
                  srl        a2, s8, s10
                  auipc      t4, 90132
                  xori       a1, a7, -870
                  srli       a7, a2, 6
                  slt        s3, a3, t5
                  srl        t3, s0, s5
                  andi       t3, t3, 626
                  slt        s6, gp, s8
                  srli       s7, a4, 26
                  nop
                  srli       s11, a2, 29
                  andi       s2, s0, 158
                  ori        zero, a2, 22
                  and        s6, a0, gp
                  srli       t6, ra, 1
                  slti       t6, gp, 451
                  ori        a4, s6, -141
                  ori        a0, tp, -680
                  xori       s6, s5, 319
                  sra        a6, a4, s9
                  srli       s0, a1, 15
                  sra        s3, s3, t4
                  ori        s7, s1, -222
                  and        s6, tp, ra
                  ori        t3, s5, -263
                  addi       a5, a1, 976
                  lui        a2, 159653
                  slti       a0, gp, -502
                  nop
                  or         a0, zero, t0
                  nop
                  srai       a1, s10, 19
                  sltiu      ra, s5, -414
                  sltiu      s8, s3, -786
                  xor        tp, s0, s1
                  srli       t2, t3, 26
                  ori        s5, t5, 220
                  ori        a7, s6, 781
                  addi       s7, s7, -813
                  slt        s3, s6, s9
                  srl        t0, tp, s6
                  add        t3, a5, s3
                  slli       s5, t2, 7
                  sltu       a1, a2, tp
                  sll        a1, sp, t5
                  sub        zero, gp, t1
                  xori       s9, t3, 680
                  ori        t0, s4, 642
                  sltiu      t2, s8, 757
                  xori       zero, a5, -1017
                  slt        s6, a0, t1
                  slti       s2, s11, -187
                  and        a5, t0, sp
                  and        a3, zero, t1
                  srai       a2, t1, 18
                  nop
                  li         ra, 0x0 #start riscv_int_numeric_corner_stream_25
                  li         s7, 0x47203fae
                  li         t5, 0x80000000
                  li         t2, 0x27f054bf
                  li         gp, 0x80000000
                  li         s6, 0xeb9d77cb
                  li         sp, 0xffffffff
                  li         a6, 0x0
                  li         a1, 0xffffffff
                  li         a2, 0xffffffff
                  lui        t2, 993200
                  addi       s7, ra, -561
                  auipc      ra, 881745
                  add        ra, s7, gp
                  sub        t2, a6, sp
                  add        s6, sp, sp
                  nop
                  lui        t2, 737845
                  nop
                  add        s6, ra, a1
                  sub        sp, a6, t5
                  auipc      a2, 32824
                  addi       sp, s6, 245
                  auipc      a2, 842349
                  addi       t2, ra, -626
                  auipc      a6, 690939
                  sub        a2, t2, t2 #end riscv_int_numeric_corner_stream_25
                  srli       gp, a0, 20
                  xori       a5, s11, 144
                  sub        t4, t1, t2
                  sltu       s7, s10, zero
                  slt        s5, a0, ra
                  xori       s6, s1, -879
                  slt        t0, ra, s8
                  auipc      t1, 511323
                  srai       a2, s10, 4
                  andi       s0, s10, -1011
                  nop
                  sub        a3, s9, a6
                  sltu       s6, s11, sp
                  srai       s7, t4, 31
                  sub        a6, s2, t2
                  sltiu      a7, s5, 175
                  and        s9, a2, s1
                  or         s3, zero, t2
                  and        t0, s11, t5
                  slt        s11, t5, a2
                  sltiu      a2, s11, -1014
                  add        a3, s6, tp
                  srli       t2, s9, 16
                  andi       t4, a7, -789
                  srl        a2, a4, t6
                  sltu       s2, s3, t1
                  slt        a5, s9, t6
                  auipc      s5, 724286
                  or         t2, s1, a1
                  slt        a7, s9, t3
                  sub        t3, t2, a4
                  sltu       s2, a7, t2
                  srai       s5, gp, 5
                  xori       t5, a3, -379
                  slt        t5, gp, t5
                  or         t2, a6, a3
                  lui        s3, 546981
                  xori       a6, a2, 891
                  sltu       s6, s5, a7
                  lui        s9, 274994
                  slt        zero, s2, a3
                  srai       ra, a1, 14
                  slli       s9, a2, 16
                  sra        s11, a1, a7
                  slti       t5, s3, 764
                  sltu       a6, s5, s10
                  nop
                  ori        s7, s6, -715
                  slli       tp, s0, 12
                  slt        a7, a0, s11
                  nop
                  sltiu      s6, a7, 252
                  slt        s11, s2, s3
                  srl        s3, s0, a1
                  auipc      a4, 368692
                  srli       a0, t0, 17
                  auipc      a4, 326175
                  nop
                  sra        gp, s4, s8
                  srai       s9, zero, 21
                  xor        t1, a0, s4
                  sra        t1, t1, s11
                  sll        s3, a2, s11
                  srli       t4, t4, 12
                  slti       a0, s7, -96
                  sll        s0, s10, sp
                  or         sp, s4, s0
                  srli       s8, t2, 16
                  and        tp, s1, tp
                  sltu       t2, s7, s2
                  srl        t6, t1, s11
                  andi       s3, a3, -323
                  or         s8, t2, t0
                  srl        s3, t0, t4
                  addi       t0, ra, -594
                  or         s11, s2, a7
                  sra        s9, a4, a0
                  xor        s5, a5, s7
                  add        s2, a6, s5
                  add        a7, s11, s11
                  lui        s9, 961555
                  or         s6, s5, t0
                  sltu       a2, t0, s0
                  add        a7, s1, t4
                  sltiu      s7, a3, 601
                  xori       s9, tp, 120
                  slli       t3, s5, 1
                  sltu       a7, s3, s3
                  sltu       t1, a1, a3
                  xor        zero, tp, zero
                  sltiu      t3, s7, -696
                  ori        zero, t4, -484
                  sll        s0, s2, s7
                  srl        sp, s3, s10
                  li         ra, 0x0 #start riscv_int_numeric_corner_stream_21
                  li         s9, 0xffffffff
                  li         s0, 0x0
                  li         a3, 0xffffffff
                  li         s11, 0xffffffff
                  li         sp, 0xffffffff
                  li         tp, 0x0
                  li         s2, 0x80000000
                  li         a1, 0xffffffff
                  li         s5, 0x80000000
                  addi       a1, sp, 262
                  add        ra, a1, s0
                  auipc      sp, 776534
                  sub        ra, a1, a3
                  auipc      s11, 405290
                  add        sp, s11, a3
                  sub        s9, a3, a1
                  lui        a3, 253246
                  nop
                  auipc      s11, 824017
                  nop
                  add        a1, s2, a1
                  nop
                  nop
                  addi       a1, a1, -723
                  add        tp, tp, ra
                  lui        s0, 182956
                  auipc      tp, 605962
                  add        s2, ra, s2
                  addi       s11, s5, 859
                  sub        s5, s11, s5
                  lui        s0, 673466
                  add        ra, s2, s9
                  sub        ra, tp, a1
                  lui        s11, 54158
                  lui        tp, 1041864
                  add        tp, s11, s5
                  lui        a3, 666461 #end riscv_int_numeric_corner_stream_21
                  srai       s3, ra, 29
                  sll        s6, a6, a4
                  addi       s11, a7, 154
                  andi       a3, a1, -972
                  nop
                  srl        t0, s2, a3
                  ori        a7, s9, 89
                  li         a0, 0x7acac7eb #start riscv_int_numeric_corner_stream_23
                  li         a4, 0xffffffff
                  li         sp, 0x80000000
                  li         a6, 0x80000000
                  li         gp, 0xffffffff
                  li         t6, 0x43d169ce
                  li         s11, 0x0
                  li         a5, 0x80000000
                  li         t1, 0x0
                  li         t2, 0x80000000
                  lui        a6, 737403
                  add        a5, a4, a4
                  auipc      a6, 378672
                  sub        s11, a4, t6
                  addi       a4, a5, 993
                  addi       a0, t2, -95
                  nop
                  addi       t6, gp, 663
                  nop
                  add        t2, sp, a0
                  sub        gp, a4, t6
                  nop
                  lui        a4, 689015
                  auipc      t6, 469603
                  add        gp, a4, gp
                  sub        a6, t2, sp
                  nop
                  addi       t6, a5, 503
                  sub        t1, sp, a6
                  sub        sp, s11, a0
                  lui        t6, 938726
                  add        a0, t1, gp
                  auipc      a6, 363636
                  auipc      t2, 105331
                  sub        a0, a6, t1
                  addi       t1, s11, -82 #end riscv_int_numeric_corner_stream_23
                  sll        a6, s4, gp
                  sub        t0, s9, zero
                  or         s3, s5, t6
                  sub        zero, a0, s8
                  sll        t3, a6, a7
                  lui        s11, 686964
                  xor        s2, t0, a7
                  srl        s8, s2, s10
                  or         s3, a4, s3
                  auipc      a2, 65460
                  nop
                  sub        t2, a5, tp
                  xor        a6, s4, sp
                  xor        a2, s2, s7
                  srl        a0, a1, t5
                  lui        s9, 298705
                  nop
                  sub        t3, a5, s4
                  xori       t4, t2, -975
                  auipc      a1, 349215
                  nop
                  auipc      a4, 163535
                  ori        t4, sp, -280
                  ori        gp, ra, 790
                  sltiu      t3, s7, 126
                  slt        a6, a6, a0
                  or         a3, t6, t3
                  srai       t0, t0, 2
                  sra        t2, t1, gp
                  srai       a6, sp, 7
                  xor        s9, a0, a3
                  srl        a1, a5, s4
                  ori        a3, s1, 691
                  andi       t5, gp, 704
                  srai       t4, s4, 21
                  addi       a2, s6, -151
                  sltu       t4, s3, s6
                  xori       a3, a7, 244
                  srai       s7, a2, 0
                  and        t3, s0, a2
                  and        a4, s2, t1
                  ori        s11, gp, -387
                  sltiu      t2, t0, 617
                  and        zero, a6, a5
                  nop
                  slti       sp, t2, -303
                  sltiu      a0, zero, -967
                  xori       s3, t4, -264
                  nop
                  sltiu      s0, t2, -189
                  andi       a4, t4, 566
                  slti       s0, t6, 172
                  srl        s11, gp, t1
                  sll        gp, a4, s11
                  lui        tp, 866349
                  lui        s11, 635463
                  xor        a7, a6, a2
                  sll        s8, s10, a1
                  srli       s3, t5, 13
                  or         zero, tp, zero
                  addi       t3, gp, -383
                  sll        t1, sp, a1
                  sra        s3, s4, a6
                  andi       s9, a0, 289
                  srli       t6, gp, 6
                  sltu       s5, s7, a7
                  srai       a7, s9, 28
                  srli       s11, a1, 13
                  addi       zero, a1, -955
                  sltu       a0, s0, a7
                  sra        a7, t2, s4
                  ori        t4, s0, 604
                  sra        zero, s0, a5
                  sra        s3, s6, s2
                  nop
                  srai       s9, s2, 11
                  auipc      sp, 876512
                  sltu       zero, s5, zero
                  lui        s11, 1011380
                  sltiu      ra, s6, 903
                  add        t2, zero, a3
                  ori        a0, s1, -190
                  slti       gp, a1, -762
                  nop
                  sub        a1, a7, tp
                  lui        zero, 107554
                  addi       a2, s1, 438
                  add        a3, s8, a2
                  xori       a2, s10, -74
                  srl        a6, t1, sp
                  slli       a5, t5, 9
                  srli       t6, s5, 18
                  xor        t1, t2, s0
                  nop
                  sltiu      a7, a5, 446
                  sra        s6, a4, gp
                  xor        sp, s8, ra
                  sra        t4, a3, ra
                  andi       s9, t4, 539
                  and        a1, s3, t2
                  sltu       s11, a6, s4
                  ori        t0, a1, -127
                  nop
                  sra        t1, ra, s6
                  auipc      t2, 134638
                  add        t0, t2, gp
                  sltiu      s5, s6, -308
                  and        a1, t3, ra
                  srl        t1, a5, a4
                  or         ra, tp, t5
                  slli       ra, t2, 15
                  nop
                  add        t2, s11, t2
                  sra        a6, s8, s6
                  srl        s3, t2, s11
                  ori        s0, t0, -689
                  sltiu      t3, ra, -814
                  xori       tp, s5, 904
                  or         ra, s3, t0
                  nop
                  srli       a3, a5, 17
                  xori       s8, t1, -14
                  sltiu      t1, t0, 523
                  srli       tp, t2, 17
                  xor        zero, s6, a2
                  or         a5, a3, t0
                  addi       s6, a7, -924
                  sra        t5, s9, s6
                  add        a7, a7, s10
                  auipc      a2, 1007022
                  sltiu      a7, s9, 296
                  sll        t2, t3, s5
                  sub        tp, t4, zero
                  or         s9, s0, s9
                  lui        tp, 840002
                  andi       s2, s2, 883
                  xori       a5, s6, 793
                  slti       t6, a7, 715
                  xor        s2, s6, a1
                  nop
                  andi       tp, a3, -35
                  srai       t3, s7, 0
                  sltiu      a1, s3, -160
                  slli       a4, a5, 9
                  add        t1, s5, sp
                  addi       s5, t3, -622
                  auipc      s6, 372431
                  sltiu      ra, s3, 773
                  slti       t0, gp, 24
                  srli       gp, a7, 22
                  sra        s9, t5, s8
                  ori        sp, s2, 315
                  srl        zero, a0, s4
                  xori       s7, a5, 529
                  sra        s0, s7, s2
                  slt        t4, s11, s9
                  xor        sp, s4, a5
                  srai       a6, a7, 13
                  sra        s11, a6, a2
                  ori        s0, zero, -431
                  nop
                  srai       a0, tp, 21
                  ori        s7, a6, -309
                  sub        s3, a1, t0
                  nop
                  sra        s11, t4, a5
                  or         a7, s7, s11
                  ori        s5, ra, -550
                  sll        s6, t6, a0
                  sltiu      t3, t1, 852
                  and        t0, s8, t4
                  sub        a0, s6, s11
                  srli       a3, t6, 2
                  sra        ra, s1, t6
                  or         a7, a3, a6
                  sltu       s7, t1, s7
                  srli       a2, a3, 4
                  xori       s9, s1, 883
                  ori        s0, s7, 362
                  sll        s3, s5, s9
                  sltiu      a7, t6, 591
                  sltiu      t3, t0, 724
                  ori        s2, s8, 184
                  srai       sp, t2, 18
                  sra        t4, a2, s4
                  or         s8, s4, t3
                  sltu       s3, t3, t1
                  auipc      a5, 872714
                  slti       sp, sp, 571
                  andi       a5, sp, -619
                  lui        a6, 27598
                  slti       a0, a3, -618
                  add        a1, s4, gp
                  sra        zero, s6, t6
                  andi       tp, s7, 599
                  sltiu      a1, s3, 677
                  srli       s6, t2, 16
                  nop
                  srl        s7, gp, ra
                  sra        t5, s10, a0
                  add        t6, a0, s6
                  sub        s9, t1, s3
                  sra        gp, a1, ra
                  sltiu      s9, t2, -318
                  nop
                  addi       a7, s7, -58
                  sltiu      t5, t1, -329
                  sltiu      t2, s2, -878
                  slti       t5, s3, 985
                  sub        a6, a7, t1
                  andi       t2, s11, -691
                  srl        s2, a2, t2
                  xor        a2, a7, a7
                  xori       tp, sp, 1023
                  lui        tp, 945933
                  srl        s0, s9, t0
                  sltu       a1, s9, tp
                  xor        a7, a1, s8
                  srli       a0, a6, 18
                  slt        s7, a4, s0
                  srli       s9, t5, 24
                  sll        a1, a4, a5
                  sll        a2, a7, t6
                  or         t4, a2, t4
                  sltu       ra, a2, sp
                  andi       t0, s9, 769
                  xor        s7, s0, gp
                  xor        a0, s7, s1
                  sll        zero, a4, s8
                  lui        t2, 704871
                  srai       t4, a0, 0
                  addi       a3, t4, -45
                  lui        s0, 624696
                  slt        zero, s6, s3
                  sltu       a3, s6, s6
                  andi       t4, s9, -248
                  and        s7, t5, a4
                  ori        tp, s9, -792
                  sltiu      a6, s3, -60
                  nop
                  addi       a3, s3, -423
                  slt        a0, t5, a6
                  sltu       a0, s7, gp
                  sub        t4, t2, s4
                  sub        s9, a3, a3
                  srli       a6, s5, 19
                  slt        s6, s8, s5
                  sra        a4, t0, s1
                  nop
                  srli       s0, a1, 1
                  sltu       zero, t6, a6
                  and        s6, sp, a2
                  srai       s6, t6, 3
                  add        ra, s7, a7
                  or         t1, a1, s0
                  addi       s11, tp, -587
                  srai       a4, t4, 26
                  srli       t0, t0, 14
                  sll        sp, t6, t3
                  lui        t0, 497726
                  slti       s8, s1, -254
                  xori       a5, t2, 164
                  sltu       s11, s8, a0
                  sra        ra, a6, s1
                  slli       a7, s10, 9
                  xor        gp, t3, a1
                  srl        s5, zero, a6
                  auipc      s8, 947776
                  lui        s9, 529800
                  sra        s3, t3, a6
                  ori        t3, s0, 572
                  xor        gp, zero, a3
                  slti       a2, s4, -192
                  slt        s11, zero, t1
                  and        t0, s6, s3
                  slli       t1, s6, 7
                  auipc      a2, 220204
                  srli       a6, a7, 26
                  or         s0, s9, t1
                  slli       a4, s0, 17
                  xori       zero, gp, -11
                  srai       t3, a1, 10
                  sll        t4, a6, tp
                  nop
                  slli       a3, t3, 26
                  slti       a7, t2, -15
                  slt        s3, s4, a6
                  sll        ra, s9, sp
                  andi       s7, s1, -337
                  addi       s8, s11, -1001
                  xori       a5, zero, 847
                  ori        t5, a3, -954
                  sll        t4, a2, s8
                  nop
                  sra        s0, a4, t4
                  sll        a0, zero, s6
                  ori        s5, s1, -569
                  addi       t4, s3, -273
                  or         s2, a4, s5
                  sra        s5, s8, t0
                  sll        s2, a4, s8
                  nop
                  addi       t6, sp, -129
                  slt        t4, t4, t5
                  and        t3, zero, s3
                  or         sp, a0, t6
                  sltiu      s8, t2, -458
                  nop
                  slli       a7, t2, 12
                  and        a5, s2, tp
                  addi       gp, s9, 615
                  add        a5, a7, s8
                  xor        a1, t2, a4
                  srl        s11, t5, sp
                  andi       a0, s4, 234
                  sub        a7, a1, s1
                  and        t0, tp, t6
                  srl        a3, a4, sp
                  lui        a1, 492035
                  nop
                  xori       zero, t1, -652
                  ori        a2, gp, 884
                  add        s5, t4, sp
                  slti       t3, a6, -326
                  andi       t3, s7, -43
                  slti       t4, t1, 440
                  sll        zero, s11, t6
                  sub        s5, s1, s10
                  srl        a1, s3, s8
                  sltiu      t3, a3, -826
                  srl        t5, s6, a1
                  sub        t1, s0, s1
                  slt        a0, a1, s3
                  ori        zero, a7, -861
                  slt        s7, t0, a3
                  addi       t6, s10, 219
                  andi       a2, a3, 14
                  nop
                  sra        a7, s4, t3
                  srli       zero, a3, 20
                  sltu       s2, s7, s6
                  sltu       sp, s3, t1
                  sra        s0, s3, a0
                  slti       zero, t2, 108
                  srli       t2, s7, 30
                  and        s0, a3, a4
                  slli       s0, tp, 9
                  sll        a2, s11, s1
                  or         t4, s10, ra
                  srli       tp, t2, 23
                  add        a4, a3, a7
                  sra        s8, sp, t2
                  sltiu      s5, s0, 199
                  xor        s2, s0, s10
                  lui        t6, 25870
                  xor        s2, s0, s1
                  nop
                  auipc      s2, 354218
                  slt        a3, t3, ra
                  sll        s9, t5, a2
                  slt        a2, s5, gp
                  and        s5, s11, a0
                  addi       t5, sp, 884
                  ori        sp, t0, 333
                  sub        s2, s1, zero
                  or         t0, t2, s2
                  xor        zero, gp, s3
                  addi       s0, t2, 460
                  add        a1, a3, s1
                  sra        ra, s0, s5
                  srl        a1, s9, a5
                  sll        gp, s4, a4
                  sltiu      a3, s7, -376
                  or         s5, t2, t0
                  auipc      s3, 978260
                  xor        a3, s10, zero
                  slt        s11, gp, ra
                  slt        a3, s10, a0
                  sub        a4, t4, s4
                  and        zero, a2, a3
                  lui        s9, 670864
                  addi       ra, a7, 223
                  sub        a1, s10, s9
                  or         zero, s3, a7
                  auipc      zero, 1014346
                  srai       s6, s5, 12
                  slt        a2, a1, gp
                  ori        a4, t5, 520
                  ori        a0, t0, 944
                  and        t1, s6, zero
                  sltiu      tp, s9, -549
                  lui        a0, 469762
                  xori       a7, s7, 779
                  addi       s8, t5, 665
                  sra        s2, t5, s4
                  auipc      t3, 162446
                  sltu       t0, t5, s0
                  andi       a2, s4, 828
                  addi       a1, tp, -449
                  slli       s5, t5, 26
                  auipc      s8, 780326
                  srl        a4, s10, s4
                  sltu       t6, a2, t4
                  xori       a2, a7, -641
                  slti       sp, a4, -553
                  and        s5, a0, s0
                  srli       t3, s5, 8
                  andi       a5, a0, -892
                  srai       ra, a0, 3
                  slti       zero, a3, -667
                  and        sp, t0, zero
                  sra        s3, a3, tp
                  srl        t6, a7, a1
                  sub        a3, zero, a5
                  sll        a5, tp, t2
                  or         s2, gp, a0
                  srli       s7, zero, 16
                  nop
                  sub        a7, sp, s4
                  add        t5, a3, ra
                  slli       s8, s1, 3
                  addi       a5, a2, -325
                  sltu       t3, zero, s2
                  slti       s3, a2, -720
                  add        t6, t3, gp
                  srl        ra, a3, a2
                  add        s11, s5, s4
                  xori       t2, a2, -773
                  sub        s2, s0, a7
                  srl        s9, zero, t5
                  sll        s2, s11, s9
                  nop
                  sltiu      t3, gp, -607
                  sub        sp, t5, t0
                  sltiu      tp, s3, 241
                  andi       ra, s10, -514
                  slt        s5, a7, sp
                  srli       s11, t5, 27
                  sltiu      a1, a6, -493
                  andi       t0, s7, 8
                  addi       a0, s7, 301
                  srli       a7, a0, 9
                  add        t1, s4, sp
                  sll        t1, tp, t4
                  slt        s8, gp, s11
                  xor        ra, s11, s7
                  ori        a0, s0, 98
                  sltiu      s2, t6, -220
                  xor        s5, a5, s10
                  sub        s3, s9, s1
                  xor        a4, a5, ra
                  xori       t1, s6, -597
                  sltu       s11, sp, s10
                  addi       s11, a6, -952
                  xor        t2, s4, tp
                  auipc      a1, 842651
                  srl        a0, zero, s10
                  srai       s0, s5, 19
                  xori       a5, zero, 748
                  sub        s7, a4, s9
                  srai       s9, s4, 5
                  nop
                  add        t1, t6, sp
                  srl        a7, t3, t2
                  srli       sp, ra, 22
                  sltiu      zero, t3, -560
                  xor        s11, s2, s8
                  srl        zero, t4, a4
                  sltiu      a1, a4, 883
                  slti       t4, s6, 812
                  slt        t5, sp, t4
                  sub        a2, a1, a3
                  xori       a1, s3, -785
                  and        s0, t3, t2
                  sra        s5, a4, a6
                  add        t1, a2, ra
                  or         s2, s10, s4
                  sra        gp, t6, t0
                  auipc      zero, 553563
                  add        ra, s4, s10
                  add        t6, t6, a5
                  auipc      a5, 395789
                  sll        a4, t4, s6
                  xor        gp, s0, ra
                  sll        s3, t0, t0
                  slti       a4, sp, 517
                  add        s7, a3, s8
                  sra        a6, s10, a6
                  xori       ra, a6, -603
                  xori       s3, s11, 362
                  ori        s3, s10, -29
                  slt        gp, t3, a0
                  andi       s11, zero, -323
                  sltiu      s8, t0, 844
                  srli       zero, zero, 24
                  srai       a6, s5, 21
                  xori       s11, t3, 1008
                  lui        gp, 487595
                  srli       t6, s9, 18
                  andi       a7, s7, 20
                  sltiu      s7, a0, -319
                  sll        a3, s7, t3
                  sll        t3, a4, t4
                  srl        a6, s11, a0
                  sub        t0, s0, t5
                  slt        s9, s4, s2
                  sltu       t4, sp, a5
                  auipc      t1, 262211
                  sll        gp, t2, s3
                  slti       a5, s1, 173
                  srl        a4, s2, sp
                  or         a4, a2, t5
                  nop
                  andi       gp, a7, 737
                  sub        sp, ra, a3
                  xor        a2, s0, a2
                  and        s6, s5, a0
                  andi       s6, s11, -716
                  srai       a6, s3, 26
                  nop
                  add        a3, a4, s3
                  sltu       t1, ra, s10
                  xor        t3, s5, s0
                  slli       s6, a5, 19
                  lui        zero, 439203
                  andi       a3, gp, 58
                  sub        zero, s0, t5
                  sra        ra, s9, s2
                  srli       a0, a4, 30
                  xori       a4, a0, 1010
                  sltu       t1, t2, a7
                  sltiu      s6, t0, 560
                  add        t3, t3, t3
                  slt        s0, a1, s11
                  nop
                  nop
                  sll        t3, t2, s8
                  xori       t3, s0, -77
                  sltu       t2, t6, s9
                  lui        s11, 106674
                  slli       a6, a2, 8
                  andi       s0, s11, 1006
                  sll        a0, s3, sp
                  andi       zero, a7, 217
                  nop
                  sll        t2, a6, s4
                  andi       s8, t3, 581
                  lui        t0, 823808
                  and        a1, t0, ra
                  srli       t3, s2, 23
                  addi       tp, sp, -539
                  xori       a2, s1, -113
                  sra        t5, sp, ra
                  sltu       a2, s9, s6
                  lui        t2, 735764
                  ori        a1, s0, 672
                  slti       t1, a3, 969
                  andi       s9, ra, 765
                  xori       s0, t0, 453
                  srai       gp, s9, 7
                  and        a7, a5, s9
                  and        s11, s4, t2
                  sub        s3, a3, s6
                  lui        a6, 100029
                  srl        s11, s2, s11
                  addi       t1, ra, -854
                  slli       ra, s10, 6
                  srl        s3, s0, zero
                  sltu       s9, s3, s8
                  sra        t6, a0, a0
                  andi       s8, s11, 578
                  sll        s7, a2, s2
                  sltu       a4, t6, s9
                  sub        t3, t1, a5
                  xori       s7, tp, 554
                  add        s9, s7, s5
                  sltu       a3, t6, s5
                  slt        tp, t6, s9
                  srl        t0, t0, s10
                  slli       zero, a2, 3
                  sltiu      t4, s7, -682
                  add        zero, sp, a5
                  sll        s8, zero, gp
                  addi       a4, s0, -813
                  sltu       sp, s5, s3
                  sltiu      t6, a2, 76
                  srli       a1, t1, 0
                  slli       s7, t4, 15
                  xori       s8, a3, 666
                  and        t4, ra, t0
                  addi       s11, s8, -895
                  sub        t5, s3, t1
                  slti       a2, t1, 106
                  ori        a5, a1, 172
                  xor        a0, a0, s11
                  srai       t6, s2, 28
                  sltu       t3, t1, a6
                  ori        s0, s3, 510
                  srli       s5, s5, 10
                  sltiu      t2, s10, -115
                  lui        ra, 242930
                  addi       a1, a0, -375
                  slti       s5, t1, -129
                  and        a5, a5, s5
                  lui        ra, 659730
                  sltiu      a2, a1, 419
                  addi       zero, a1, -56
                  andi       t4, a7, 842
                  srli       t6, s4, 7
                  sltiu      t3, a6, -775
                  addi       t3, t6, 849
                  slti       a5, s8, -1001
                  add        a7, ra, t0
                  slt        zero, t0, s1
                  srli       s0, s0, 31
                  slt        t5, s10, tp
                  and        a2, a3, t4
                  slt        t3, s2, a1
                  sll        a3, gp, s1
                  lui        s9, 637661
                  sltiu      a2, a2, 915
                  auipc      s8, 107742
                  add        s7, tp, s8
                  andi       s7, s0, 405
                  ori        a3, s1, -373
                  sub        s7, a7, t2
                  slt        gp, sp, s1
                  ori        gp, ra, 62
                  and        t1, s6, sp
                  add        tp, t1, t0
                  xor        a6, s7, s1
                  sll        tp, sp, t6
                  slli       s0, s0, 30
                  lui        t4, 901315
                  sub        a7, gp, a2
                  sltu       a4, t6, t0
                  xori       s11, s10, 313
                  and        t5, t0, a5
                  xor        t1, s5, s10
                  nop
                  sra        a5, t5, s4
                  add        s0, a0, s1
                  sra        a1, a1, a0
                  nop
                  addi       s7, a1, 1014
                  xori       a3, gp, -978
                  slli       a1, s3, 25
                  sll        s5, a1, t1
                  or         t3, sp, tp
                  sll        s9, a3, s6
                  xori       a0, s6, -604
                  nop
                  slti       s2, a3, -327
                  and        s3, s10, s3
                  and        a2, s10, a4
                  srli       tp, a1, 0
                  ori        s8, a6, 987
                  srl        s11, t0, s1
                  or         s6, s7, t1
                  and        s11, a5, a4
                  slti       s7, a2, -290
                  sltiu      zero, t6, 898
                  lui        a6, 240745
                  srl        s2, s6, t2
                  srl        s6, a0, t0
                  auipc      zero, 18269
                  auipc      t2, 564548
                  ori        s6, a2, -828
                  sltiu      s0, a6, 659
                  and        s2, t1, s2
                  auipc      a1, 187867
                  auipc      s5, 314498
                  lui        s3, 98719
                  lui        s11, 529308
                  sub        t6, s11, gp
                  andi       t0, t2, -454
                  xor        sp, s3, t2
                  and        a0, s9, s3
                  xor        t3, t2, s7
                  and        ra, s5, zero
                  auipc      gp, 16556
                  nop
                  xor        a2, a6, s11
                  or         a1, tp, a4
                  auipc      a4, 511238
                  xori       t4, t0, -327
                  add        a1, tp, gp
                  sll        s6, t6, s10
                  or         sp, sp, s9
                  sub        a7, s9, s2
                  addi       t3, a1, -575
                  slti       s0, s10, 189
                  sub        a1, t4, sp
                  xor        gp, a3, s7
                  ori        s11, a7, -934
                  sub        s8, s7, s3
                  sra        tp, t1, s0
                  srai       s3, ra, 21
                  add        t1, s9, s11
                  or         s2, t0, t1
                  srai       s8, s1, 23
                  srai       a0, a7, 19
                  slti       t2, a4, -785
                  and        a7, t2, s0
                  add        s3, a5, s6
                  sltu       t2, s10, s0
                  slti       s7, t0, -981
                  nop
                  slt        a2, a4, a5
                  lui        tp, 233506
                  slt        s6, a4, s6
                  sra        a3, gp, a6
                  sltiu      s9, a4, 463
                  sltu       s2, s0, s11
                  add        s3, s11, a3
                  auipc      t6, 171777
                  slti       a6, s4, -679
                  slli       zero, a6, 4
                  sub        a4, t1, s1
                  srli       t2, t5, 24
                  lui        t3, 730153
                  xor        a2, a6, s8
                  slti       a3, t6, 160
                  slli       tp, a2, 10
                  or         t2, s10, s7
                  xori       sp, s7, -389
                  add        ra, a3, s9
                  sll        gp, gp, s2
                  nop
                  auipc      ra, 756542
                  srai       s2, a0, 24
                  srli       t2, a3, 24
                  slt        a7, a5, ra
                  sll        a7, sp, ra
                  srl        tp, s4, a2
                  srai       t2, zero, 10
                  lui        t4, 647231
                  sltu       s9, tp, a6
                  sltu       s8, a3, t2
                  slli       s3, s4, 5
                  add        s9, s0, a1
                  xori       a5, t1, -807
                  sll        t6, t3, t4
                  slti       s7, s11, 282
                  slli       t2, t3, 9
                  lui        a4, 272901
                  andi       a3, tp, -7
                  add        s6, gp, s10
                  sltu       t6, s8, a6
                  sub        t0, s1, t5
                  srl        t3, t2, tp
                  sub        zero, t6, tp
                  xori       s2, a0, 427
                  srai       a7, sp, 2
                  srl        s8, sp, s6
                  add        t2, sp, s5
                  sll        gp, tp, gp
                  sra        s7, s0, ra
                  auipc      t3, 783769
                  xor        sp, s7, t3
                  srl        s11, gp, s4
                  slli       gp, s6, 23
                  and        t2, tp, s9
                  srai       s7, s1, 9
                  nop
                  ori        s3, t0, 298
                  slt        s11, s5, s5
                  slt        s9, t5, sp
                  slt        s11, a1, a0
                  add        tp, a2, a2
                  sra        s6, t6, a6
                  sub        a0, a1, t5
                  sltu       t6, s1, sp
                  slli       a7, t5, 17
                  sra        s2, gp, a7
                  or         a4, s1, s4
                  lui        sp, 596499
                  add        s6, gp, t1
                  xori       t3, t2, -698
                  slt        ra, a2, s1
                  addi       s2, a6, 265
                  auipc      t5, 685223
                  xor        s9, s0, s9
                  slti       a7, ra, -224
                  or         t2, s1, s7
                  sltiu      a6, a0, 237
                  slt        t1, a0, ra
                  sra        s5, ra, t2
                  and        a2, gp, t1
                  sltu       s5, s3, t4
                  slli       s6, t4, 27
                  sra        sp, gp, s10
                  or         t3, s4, t4
                  sll        tp, t1, zero
                  sra        s3, s9, sp
                  slt        a2, a1, s3
                  slli       s8, t5, 10
                  addi       gp, s3, 79
                  lui        t4, 832871
                  xor        s6, t2, a5
                  sra        t5, s1, s4
                  sub        tp, t6, sp
                  xori       t4, ra, -715
                  xori       t2, s8, 502
                  slt        zero, s6, s7
                  slli       t1, a6, 15
                  andi       t4, a1, 909
                  sra        s6, s0, s11
                  addi       a1, s0, 108
                  addi       ra, a6, 499
                  slt        t1, a3, s6
                  andi       s5, s8, 562
                  srl        s5, s8, a5
                  nop
                  auipc      a1, 603606
                  add        t5, a5, a3
                  sra        gp, sp, s8
                  slt        s7, s5, ra
                  srai       s11, s5, 31
                  slti       a2, s1, 155
                  add        s6, a4, s4
                  andi       a7, s0, 435
                  or         t6, sp, s2
                  xori       s9, s2, 236
                  sra        s9, t2, a0
                  slt        s3, t4, s9
                  nop
                  and        a0, t5, s7
                  and        s2, a6, tp
                  xori       a7, s0, -783
                  add        a3, t0, s8
                  srai       s3, a4, 9
                  ori        t1, s1, -194
                  slt        a4, a2, a0
                  ori        s3, t5, 658
                  or         zero, gp, s7
                  sll        t4, s2, gp
                  lui        a1, 326394
                  sra        s7, t1, a5
                  xor        s7, s4, a0
                  sub        gp, zero, a7
                  sltiu      tp, s4, 808
                  add        a5, s5, s3
                  xor        ra, tp, s6
                  sll        gp, a7, t6
                  slli       a1, s0, 12
                  and        a0, t5, zero
                  sll        t1, s1, s8
                  slti       a4, s7, 336
                  slti       s7, t5, -255
                  addi       a2, a3, 155
                  lui        a5, 687593
                  ori        t3, s9, -720
                  xori       gp, t1, -511
                  srl        sp, a7, s1
                  addi       t6, s6, 816
                  srai       a0, s2, 12
                  slli       t2, s3, 28
                  nop
                  sltu       t2, s11, a0
                  xor        t0, gp, t6
                  sub        sp, a3, a1
                  sub        tp, s7, s6
                  auipc      ra, 288405
                  slli       s6, zero, 21
                  auipc      s8, 4516
                  xori       s8, t2, 961
                  addi       a1, s8, 484
                  and        a4, s3, t5
                  slli       ra, a7, 7
                  sra        t5, s7, t4
                  slt        a2, s7, s1
                  xori       a1, a5, 906
                  nop
                  slt        s8, t3, s5
                  srai       gp, s2, 7
                  srai       t4, s10, 12
                  srli       a1, s5, 0
                  lui        ra, 927906
                  slti       a6, t6, 991
                  add        a4, a5, t3
                  and        t6, t0, gp
                  or         s8, s8, tp
                  slt        a7, s11, t0
                  sub        s8, t4, s5
                  ori        t1, tp, -179
                  slli       s5, s6, 4
                  and        s5, s2, s11
                  and        s11, t1, ra
                  xor        s0, s10, sp
                  srli       s5, s8, 26
                  auipc      t2, 629930
                  andi       s5, t5, 377
                  ori        a7, s0, 774
                  sub        t6, s2, gp
                  addi       s0, t4, 859
                  sub        a0, a4, s11
                  addi       s6, t6, 118
                  slti       sp, t5, 24
                  and        a2, s3, t0
                  andi       a1, s10, 517
                  sltu       t1, t4, t4
                  slt        a0, sp, t0
                  sltiu      s5, a1, 230
                  xor        a6, t5, t6
                  sub        t1, a3, s7
                  sub        s11, s11, s10
                  sub        s7, a6, tp
                  and        t1, s5, s6
                  sub        s7, zero, t2
                  and        a6, a0, t2
                  sll        a7, a3, s5
                  lui        t0, 147537
                  ori        t1, a3, -196
                  sub        s7, a1, sp
                  lui        a0, 602198
                  lui        zero, 499842
                  andi       s7, s0, -677
                  sub        t1, sp, a5
                  add        t1, s4, t6
                  sltu       s8, a4, t1
                  slt        ra, t4, ra
                  or         s7, s10, t0
                  srli       s11, ra, 0
                  sra        ra, s5, a2
                  sub        s2, s4, a7
                  srli       t6, t2, 13
                  andi       s3, t1, 390
                  sltu       zero, s6, s4
                  add        s0, s0, ra
                  slti       ra, s5, -96
                  lui        t0, 882658
                  and        sp, s11, a7
                  andi       a1, s7, 31
                  srai       a4, s11, 2
                  add        t5, sp, a4
                  xor        gp, t1, a5
                  xori       s6, t3, -992
                  slti       t0, a7, 1003
                  sra        t3, s4, a5
                  xor        t1, a4, s1
                  xori       t4, a3, 1003
                  andi       a1, s1, -588
                  slt        t3, a6, a4
                  add        s6, s3, a5
                  xor        t0, s11, a4
                  srai       a5, t3, 31
                  andi       s7, a5, -757
                  slli       t0, s11, 6
                  xor        t3, a6, s3
                  sltiu      s0, s8, -683
                  andi       tp, s10, -1004
                  add        a2, a7, t0
                  sltu       s8, s2, a0
                  auipc      s8, 168616
                  lui        t6, 992224
                  addi       t4, t5, 485
                  lui        t3, 196475
                  sltu       tp, s5, t4
                  xori       t5, ra, -558
                  sra        a4, t0, s4
                  srai       a5, a3, 7
                  andi       t2, t1, 561
                  sub        s3, t6, a7
                  and        t3, s7, s11
                  sltu       t4, s2, t3
                  srl        a2, a7, ra
                  srli       a5, sp, 22
                  sra        a4, s6, a6
                  srl        t2, a6, a3
                  srl        t1, ra, s9
                  sll        t1, s4, s1
                  sltiu      a5, s6, 372
                  slt        t4, a2, t6
                  andi       sp, s10, -458
                  sll        s0, s11, t5
                  sltiu      a2, a2, 798
                  sltu       s2, s11, a4
                  nop
                  ori        t1, s7, 166
                  xor        t2, s3, s6
                  sltiu      t4, s6, 699
                  add        s8, sp, s11
                  xor        a0, t3, t4
                  srai       s0, s4, 7
                  sll        a1, a7, a7
                  sltu       t6, t6, t5
                  srl        a6, ra, s9
                  sltu       t1, zero, s0
                  auipc      s0, 445875
                  and        a6, a1, s10
                  nop
                  auipc      s6, 745325
                  lui        t2, 49929
                  srai       t1, a1, 7
                  or         s7, a3, s5
                  slt        a6, a3, zero
                  ori        a6, a0, 351
                  srl        a0, ra, t0
                  sub        t0, t4, s6
                  sra        s11, a5, sp
                  slti       sp, s5, 642
                  andi       a5, t2, -965
                  auipc      s6, 42182
                  sub        gp, sp, t4
                  slli       s6, zero, 3
                  sub        t6, t4, s3
                  xori       t4, a0, -531
                  slli       s5, s6, 13
                  sltu       a0, t4, zero
                  srai       a5, s9, 12
                  sltu       t3, s0, s4
                  lui        zero, 627072
                  srl        s11, ra, ra
                  nop
                  sra        s6, a1, s8
                  lui        a7, 97305
                  sub        t2, t5, s9
                  srli       s0, s4, 25
                  srli       a7, a5, 24
                  sub        s11, a5, t3
                  srai       t6, a3, 17
                  addi       a6, s9, 849
                  srli       t1, s0, 10
                  slti       a7, a1, 570
                  addi       s6, s0, 965
                  lui        s7, 778633
                  sub        s5, s9, s1
                  xori       s11, s6, 893
                  sll        t3, a6, s11
                  srli       s8, s2, 3
                  xor        zero, gp, tp
                  slli       zero, a5, 29
                  slt        gp, s11, t6
                  and        s9, a0, zero
                  addi       sp, s7, -248
                  add        s7, gp, a7
                  add        a7, t1, t3
                  addi       zero, sp, 924
                  andi       a4, s1, -93
                  andi       s5, s4, 673
                  slti       gp, s0, 882
                  or         a3, s1, a3
                  and        tp, t4, tp
                  auipc      t0, 183721
                  addi       s2, t3, 618
                  xor        ra, s4, s11
                  nop
                  andi       a2, a5, 391
                  sll        a3, s5, t2
                  ori        a5, s2, 866
                  andi       a6, t2, -534
                  xori       a6, a2, 292
                  auipc      s7, 619489
                  sll        ra, t0, t5
                  srl        s9, t2, a4
                  sltiu      s9, t1, 427
                  nop
                  srli       s2, s2, 30
                  sub        t1, a0, s0
                  slli       a4, s5, 17
                  sra        a0, s9, ra
                  lui        t2, 747827
                  sll        a1, gp, a2
                  lui        a6, 137765
                  xori       tp, a2, 663
                  or         a0, s11, s4
                  srli       s5, s0, 8
                  add        s6, t4, t5
                  xori       a0, t5, 772
                  sltiu      a5, s3, 460
                  xor        a7, t2, s9
                  or         s7, s7, a1
                  xor        a1, s10, t1
                  sra        a3, s10, tp
                  xori       a6, a5, 914
                  sub        t0, a0, t3
                  andi       tp, s4, -624
                  sltiu      s11, ra, 203
                  slti       t0, t2, -762
                  xori       gp, a4, -624
                  xori       t6, a6, -835
                  xor        t0, s8, a6
                  lui        tp, 743811
                  xor        zero, s8, s1
                  nop
                  srli       t1, s7, 2
                  addi       s9, a7, -1005
                  auipc      s5, 989572
                  addi       s6, a3, -886
                  add        t4, a1, zero
                  xori       t2, gp, -150
                  and        t4, a6, s1
                  slli       t3, a7, 15
                  addi       s3, t5, 384
                  ori        s11, s11, 301
                  sll        a5, s0, t6
                  slli       s8, t4, 7
                  addi       t2, a6, 28
                  sltu       zero, zero, t6
                  slti       sp, t0, -273
                  andi       t4, s6, 1020
                  slti       t0, s8, -934
                  xor        t6, a5, s9
                  or         s2, tp, a2
                  xor        gp, s8, s4
                  srai       a2, s3, 7
                  addi       t4, a5, -983
                  xor        s5, a4, a2
                  sltiu      s7, s8, -238
                  xor        gp, s9, a0
                  slt        s3, s7, a1
                  sub        s9, a4, s10
                  sll        s9, s10, a0
                  andi       s0, a1, 335
                  andi       s3, a6, -736
                  or         a7, s4, s5
                  srl        a7, t4, t3
                  sll        s7, a5, a1
                  xor        s0, s2, tp
                  srai       t5, s1, 23
                  slt        t0, a6, s7
                  or         s9, s4, s0
                  slt        s5, t4, s3
                  sll        ra, a5, s4
                  xor        s11, t4, a4
                  sll        s5, s3, t3
                  srli       s8, s4, 6
                  auipc      s8, 366363
                  ori        sp, s6, -339
                  add        s7, s5, t3
                  slli       a0, a4, 25
                  sltu       s5, s9, t4
                  srai       gp, t2, 7
                  sltu       s8, t2, a1
                  and        t4, gp, a1
                  srli       s8, a7, 5
                  sra        t0, s0, a2
                  sltu       t3, s8, s11
                  ori        a3, t4, -546
                  andi       t3, s7, 953
                  sll        t3, s5, s2
                  srai       tp, zero, 26
                  sll        s6, t0, s2
                  ori        s5, s8, -623
                  sub        a5, a1, a0
                  nop
                  sub        a4, s5, t4
                  sltu       t4, s0, a5
                  xor        t4, ra, s4
                  sra        s11, s2, a5
                  xori       t4, a5, -379
                  addi       t5, s1, -50
                  auipc      t1, 55083
                  sltiu      s7, t5, 296
                  slt        a4, a0, a0
                  srai       s7, s2, 17
                  slti       t4, s7, -519
                  and        s8, a5, s4
                  srli       sp, s3, 7
                  ori        t3, gp, 475
                  srai       t5, t4, 6
                  andi       sp, a3, -754
                  srai       s8, t6, 31
                  xori       t5, t3, 859
                  xori       a5, t2, 723
                  and        s6, t0, t1
                  add        tp, s7, s8
                  add        t2, a7, s2
                  add        a3, s1, a3
                  or         ra, s0, s11
                  srli       t0, zero, 8
                  slti       t0, a6, -7
                  xor        a6, s2, s11
                  slti       a1, s11, -585
                  andi       a0, t3, -226
                  addi       a4, a4, -11
                  add        t3, a3, a2
                  srl        a1, a5, a4
                  sltiu      a6, a1, 405
                  xor        s0, s4, s4
                  sll        t3, a1, t4
                  sub        s6, a1, s5
                  srli       s6, s11, 28
                  andi       sp, a6, 1016
                  sll        gp, t5, s9
                  srai       s3, tp, 1
                  add        s6, s2, sp
                  srai       s5, sp, 27
                  lui        sp, 24355
                  xori       s3, t2, -82
                  or         zero, a5, s7
                  srli       s9, s8, 22
                  andi       s5, a4, 920
                  slti       a3, a4, -397
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_9
                  li         sp, 0x80000000
                  li         s0, 0x74daf6e5
                  li         t5, 0x80000000
                  li         s7, 0x2882c660
                  li         t3, 0x0
                  li         tp, 0x80000000
                  li         s9, 0x80000000
                  li         s6, 0x0
                  li         gp, 0xffffffff
                  nop
                  nop
                  add        tp, s9, sp
                  lui        t3, 218363
                  auipc      t6, 113838
                  sub        s7, s7, sp
                  sub        s0, s9, sp
                  add        s7, gp, s6
                  addi       s0, t6, -144
                  lui        sp, 771319
                  add        t6, sp, s9
                  add        tp, s0, t3
                  add        sp, t5, t6
                  auipc      sp, 1032298
                  lui        t5, 43023
                  sub        gp, s7, t3
                  sub        gp, t3, s9
                  addi       s9, sp, -230
                  sub        s0, s7, s9
                  addi       s9, t5, -784
                  lui        tp, 937770
                  nop
                  auipc      t5, 686284
                  sub        gp, s6, tp
                  auipc      s9, 101379
                  addi       s6, t6, -65
                  nop
                  lui        sp, 875947 #end riscv_int_numeric_corner_stream_9
                  and        t4, a0, tp
                  sltiu      s9, tp, 735
                  or         a0, t3, t0
                  xor        a0, t0, a3
                  ori        a0, s7, -498
                  andi       zero, s5, -454
                  add        s2, s5, ra
                  sltiu      t0, gp, -539
                  slt        s11, a3, s1
                  addi       tp, t4, -580
                  auipc      tp, 880903
                  sra        t2, ra, t3
                  srai       s2, s2, 31
                  addi       a3, s4, 953
                  or         a3, gp, t1
                  or         t0, zero, a3
                  sub        s9, zero, s4
                  slti       a0, s11, -26
                  or         zero, s1, a5
                  auipc      a5, 546582
                  auipc      a7, 929874
                  sra        s5, s7, a5
                  or         s11, s2, tp
                  or         s0, s3, t3
                  xori       s2, s4, 170
                  srl        t0, s6, a4
                  andi       a1, t4, -580
                  ori        zero, s5, 1012
                  xor        t4, t6, a5
                  xori       t5, tp, 899
                  srai       ra, s1, 5
                  or         s5, a0, s0
                  lui        s6, 816197
                  slti       t4, s5, -413
                  srl        s3, t5, s4
                  sra        a1, a0, a1
                  sltu       s11, a2, gp
                  sltu       zero, t0, a0
                  and        zero, s3, s7
                  nop
                  xori       gp, s4, 713
                  addi       s3, s3, -465
                  xori       a3, t1, 745
                  nop
                  xor        s11, sp, s1
                  nop
                  xori       tp, s4, -244
                  slti       t0, s3, -581
                  add        s5, zero, s10
                  sub        s5, t6, t0
                  sltiu      a7, s11, 781
                  xor        t2, s6, s5
                  xor        s8, s0, s4
                  and        t4, s10, sp
                  sltiu      s6, s9, 150
                  and        s8, s10, t5
                  xori       s0, a7, -316
                  srai       s0, a3, 9
                  xor        s7, a0, a5
                  andi       t0, s6, 39
                  slt        a4, gp, ra
                  and        zero, s3, zero
                  addi       s7, t0, -954
                  nop
                  slti       s3, t6, -559
                  and        t5, s2, a3
                  or         ra, t3, s3
                  sll        a3, s3, s9
                  srl        s9, tp, t6
                  add        t4, a2, a3
                  or         sp, ra, sp
                  srli       a5, s1, 16
                  and        t6, s5, t2
                  addi       gp, t1, -185
                  and        a1, gp, a4
                  lui        sp, 952081
                  sltiu      s5, s1, 690
                  addi       a0, sp, -109
                  auipc      t2, 91432
                  sltiu      tp, t2, 877
                  ori        t6, a6, -314
                  andi       s2, s0, 62
                  auipc      gp, 958260
                  ori        t2, s10, -132
                  xor        a7, s4, s10
                  lui        s8, 1029159
                  add        a0, t5, s9
                  andi       s5, a4, 593
                  sll        sp, s0, zero
                  slti       s5, s11, 0
                  slti       ra, t5, -471
                  add        s9, a4, t2
                  slti       a6, a0, 1011
                  and        s8, s2, s8
                  srli       s11, s7, 21
                  and        zero, ra, a1
                  sltu       s0, s4, s9
                  ori        ra, t6, 663
                  slti       a5, t2, -592
                  sltu       gp, ra, s2
                  or         ra, s7, s1
                  sub        s8, a2, t0
                  xori       a5, t2, -934
                  srl        t1, s5, s0
                  sub        t2, zero, sp
                  sub        s8, s4, s1
                  add        s2, a7, zero
                  auipc      a6, 919206
                  srl        sp, s2, s5
                  or         s3, t2, zero
                  add        a2, s6, a1
                  srai       t0, sp, 16
                  sltiu      s9, s11, -464
                  or         tp, ra, t5
                  add        t1, a2, s2
                  auipc      t0, 404621
                  srai       t2, ra, 10
                  xor        s0, s0, a2
                  sub        tp, s0, t1
                  addi       t3, s7, 791
                  xor        tp, s6, s9
                  auipc      a5, 542104
                  add        a6, a2, t1
                  and        s9, s1, t3
                  sub        s9, a6, s0
                  auipc      s9, 781317
                  slli       tp, sp, 16
                  auipc      a6, 205915
                  lui        a1, 316073
                  sll        zero, gp, a0
                  nop
                  ori        t6, t3, -981
                  sll        a1, a3, a0
                  add        a1, sp, ra
                  add        t2, s11, a0
                  ori        t1, tp, 217
                  xori       s8, a6, 143
                  addi       t1, tp, -375
                  sub        t3, t0, sp
                  auipc      a6, 393054
                  sltiu      t4, ra, 337
                  slli       s0, ra, 14
                  xor        a4, a4, a5
                  ori        s0, s8, -1001
                  xori       a1, gp, 540
                  srl        s6, t5, s3
                  andi       t6, a4, 26
                  slti       t1, sp, -562
                  or         a1, a0, gp
                  and        gp, s3, t5
                  slt        a7, s2, a6
                  srl        t4, t2, t4
                  srl        s6, t1, s7
                  addi       s9, sp, -953
                  xor        s9, s8, s1
                  andi       t0, gp, -256
                  and        t4, sp, s9
                  ori        tp, s1, 826
                  xor        zero, t6, s0
                  addi       t4, t1, 252
                  andi       a3, s0, 635
                  slti       a2, a5, -676
                  or         s11, s9, sp
                  sub        sp, s10, sp
                  auipc      tp, 122832
                  srl        gp, a4, sp
                  ori        s9, s9, -64
                  srai       a0, t3, 28
                  sltiu      s9, s6, 104
                  or         s8, a4, a7
                  slt        sp, s6, a6
                  slt        t6, t6, t2
                  add        ra, t6, s8
                  sltu       t3, t1, t5
                  sltu       t3, a2, a3
                  xori       t4, a4, -362
                  xor        a7, t5, zero
                  ori        zero, s5, 659
                  nop
                  nop
                  sltiu      a7, ra, -279
                  andi       s6, s3, -350
                  slli       a7, t6, 15
                  srli       zero, t6, 6
                  srli       a5, ra, 15
                  sub        t5, s5, t2
                  or         a3, tp, s10
                  sra        s5, sp, s1
                  srl        t1, gp, t1
                  srai       t3, t6, 30
                  nop
                  sll        t4, t2, s2
                  lui        t4, 333976
                  ori        a2, t4, 945
                  sltiu      a1, s3, -389
                  andi       s0, gp, -423
                  slt        t6, a0, a6
                  addi       t5, sp, -347
                  srai       a7, tp, 27
                  xor        t0, t3, t5
                  ori        t6, s7, -847
                  sltu       t3, a1, a5
                  ori        s3, s11, -593
                  lui        a6, 629037
                  add        t4, s9, s3
                  and        t6, t4, t2
                  slt        a1, s4, t4
                  srli       t5, t5, 22
                  xor        s8, s7, sp
                  slli       a6, t3, 4
                  srli       t2, s2, 30
                  slt        a4, s6, s2
                  add        a0, s0, t1
                  sltu       a3, s9, t3
                  srli       s7, a6, 12
                  andi       s5, a2, 440
                  addi       a7, s5, -193
                  srai       a0, s3, 30
                  andi       a7, s7, 405
                  lui        a1, 872472
                  or         t2, s11, s0
                  addi       s7, s0, 394
                  srai       s5, s3, 0
                  srli       s6, a5, 29
                  sll        zero, a3, tp
                  auipc      s0, 664964
                  slli       a1, s2, 31
                  or         a3, s0, s6
                  srai       tp, s5, 31
                  srai       a7, s9, 27
                  slti       a0, s1, -1012
                  andi       a1, s4, 685
                  ori        a2, s8, 699
                  sra        s7, tp, s7
                  or         a6, s11, s8
                  ori        a2, t2, -639
                  slti       t4, a1, 117
                  andi       s3, zero, -900
                  sra        t6, s10, a4
                  sll        ra, a6, s2
                  xori       t1, t5, 263
                  and        a6, s7, s2
                  xori       t3, t2, 189
                  and        t5, a6, t3
                  srli       a1, a6, 25
                  slli       a2, s2, 18
                  srl        gp, t4, s2
                  srl        s2, s7, t1
                  srli       a4, s4, 10
                  xori       s6, t4, 691
                  sub        t6, s11, t0
                  and        t1, s5, ra
                  sll        t0, t1, a4
                  nop
                  sra        ra, a4, tp
                  sub        t0, t4, s0
                  srai       a6, ra, 31
                  sltiu      t2, t6, -512
                  sltu       a7, t3, a0
                  srli       s5, zero, 31
                  or         s6, s4, s8
                  slli       s6, s4, 24
                  auipc      s11, 602449
                  xori       a0, t2, -421
                  sub        a7, t6, zero
                  slli       s7, s5, 27
                  lui        a5, 875893
                  lui        t6, 1031311
                  ori        t4, tp, -206
                  ori        s8, s4, -351
                  lui        s6, 76403
                  sub        s9, a4, a0
                  xor        gp, a7, t4
                  slli       t3, a3, 1
                  srl        a3, a6, t2
                  sltiu      a7, tp, -136
                  srai       t6, gp, 14
                  auipc      a4, 877395
                  srai       a2, s11, 16
                  slli       s3, s5, 28
                  sll        a1, t3, a3
                  sltu       t2, s9, a1
                  or         t4, t5, s7
                  or         s9, a2, s3
                  sub        ra, t5, s6
                  addi       a7, s0, -145
                  slli       a1, s11, 13
                  slti       t3, a5, 92
                  sra        a2, a1, tp
                  slli       s11, t3, 13
                  xor        t0, ra, sp
                  xor        s2, s9, t0
                  srli       a4, sp, 0
                  srl        sp, s7, zero
                  or         s11, t3, s5
                  srli       s2, s1, 3
                  add        t4, s0, s6
                  slti       s7, s11, 93
                  srli       t1, s7, 10
                  sra        sp, a4, a7
                  xori       s6, s0, 497
                  xor        s0, s2, s6
                  nop
                  slli       s9, s0, 12
                  addi       t1, a4, -834
                  slt        s2, zero, zero
                  sltu       sp, a0, s9
                  andi       s2, s11, -1016
                  andi       sp, s9, 738
                  add        a2, a3, t1
                  sub        t2, zero, t4
                  slt        a7, s10, a5
                  slt        a1, a7, a7
                  add        s7, s3, s9
                  or         a1, s0, a4
                  xor        s9, a5, a7
                  sub        s5, s2, t4
                  auipc      ra, 107140
                  srai       s6, s5, 2
                  xor        t6, s10, t6
                  ori        a0, gp, 807
                  ori        s8, a1, 381
                  sltiu      a1, a1, 152
                  slli       a6, t4, 7
                  sra        a3, s2, a2
                  add        s6, s6, tp
                  add        s2, a3, s9
                  slli       gp, t2, 11
                  slti       a7, a5, 763
                  or         t0, gp, s10
                  andi       t2, tp, 686
                  auipc      t1, 908245
                  or         t1, t4, t6
                  andi       t5, s9, 416
                  and        t0, s2, t2
                  addi       s2, sp, -775
                  ori        a2, s1, -435
                  xor        s3, a4, t1
                  add        t0, s5, gp
                  srai       a2, s10, 6
                  auipc      a1, 265724
                  sltiu      a3, s0, 209
                  ori        t6, t6, 377
                  and        t4, t4, ra
                  sll        a5, sp, a4
                  sll        a3, s4, t6
                  slti       a5, a2, -127
                  srai       gp, s9, 12
                  slli       zero, s8, 20
                  xori       a7, a4, -861
                  slt        s5, a2, s1
                  add        s3, t5, t6
                  sra        s7, t6, s7
                  srl        t1, s10, a5
                  lui        a6, 490498
                  sltiu      sp, s8, 724
                  srai       s0, zero, 25
                  and        zero, t3, s11
                  sll        s8, s11, t4
                  sltu       a3, sp, a0
                  slli       s8, a3, 1
                  srai       s7, s11, 19
                  lui        gp, 671965
                  lui        s0, 898500
                  add        t1, t3, s7
                  slt        s3, s6, ra
                  srl        s2, sp, a5
                  slt        t2, s9, a0
                  srli       s5, s11, 26
                  add        t3, s7, t1
                  sub        s8, s5, s1
                  srli       a3, t4, 14
                  lui        a5, 726167
                  sltiu      s6, s11, 185
                  slli       s3, a7, 12
                  andi       t2, t4, 846
                  srli       s7, s0, 30
                  add        a5, zero, a2
                  add        t4, s4, ra
                  sltu       s5, zero, a1
                  sra        t2, t0, s0
                  sll        t2, t2, tp
                  srl        s6, s4, s11
                  slt        s9, tp, a6
                  sra        t5, s10, t2
                  addi       s7, zero, -638
                  sub        t2, a4, s11
                  sltiu      t2, a4, -474
                  xori       a7, t5, 161
                  addi       a1, s3, 178
                  sub        s6, s6, tp
                  sll        s8, t5, s11
                  and        a4, t1, a6
                  srl        s5, s10, a6
                  srai       s6, s8, 11
                  xor        a4, sp, ra
                  sub        gp, t0, t1
                  auipc      a5, 245672
                  sra        ra, t4, a2
                  sra        t5, sp, a3
                  add        s7, t5, s0
                  srli       s6, a0, 29
                  ori        t4, s10, -309
                  sltiu      a4, t6, -218
                  sll        t3, a5, s2
                  sltu       s7, ra, a5
                  slt        s6, t0, s2
                  xor        t4, s9, zero
                  srl        s8, s2, s5
                  addi       a5, a6, -5
                  addi       s11, a2, -201
                  auipc      a0, 668839
                  andi       t5, s6, 499
                  sltu       s0, t1, s7
                  slli       a0, a1, 2
                  auipc      s5, 387098
                  nop
                  srl        s7, s10, a0
                  slli       s11, a3, 16
                  srl        a0, s9, t5
                  auipc      s6, 959610
                  andi       a0, s0, 921
                  slti       t1, sp, -659
                  slti       a1, s7, 377
                  slli       gp, s0, 12
                  ori        t2, s9, 565
                  or         a7, gp, a2
                  or         a2, a3, tp
                  xori       t3, a7, -851
                  add        s6, ra, t6
                  ori        ra, a5, 778
                  andi       a6, s9, -715
                  sll        a2, s0, a3
                  srli       s8, a3, 15
                  xor        a7, t0, t1
                  lui        zero, 553265
                  srai       tp, s0, 1
                  lui        s11, 481862
                  slli       s5, t4, 10
                  srl        s9, t5, a0
                  srli       ra, a4, 27
                  sltiu      t3, a3, -608
                  xori       gp, t5, -14
                  ori        t6, a0, 228
                  sub        a5, s1, a6
                  andi       a2, a6, -45
                  nop
                  xor        t4, s3, a6
                  sub        s3, t4, s2
                  or         gp, s1, t5
                  addi       a5, s0, -966
                  add        s0, s3, a3
                  auipc      a7, 439771
                  srai       s7, s11, 10
                  nop
                  slt        s8, s5, a4
                  sra        a6, a6, sp
                  srli       s11, a0, 19
                  sltu       s7, s4, t4
                  sra        s6, a4, s6
                  sltu       s2, ra, s7
                  or         a0, t0, s7
                  xori       a5, a6, -685
                  add        t1, s11, t5
                  xori       t1, t0, -144
                  nop
                  slti       t4, t1, -135
                  andi       a5, s7, 756
                  nop
                  slt        s11, a3, s8
                  and        t5, a7, a5
                  srl        a4, s2, a5
                  add        s0, t0, s6
                  srli       tp, s5, 22
                  andi       s11, s5, 558
                  andi       a2, a3, 493
                  nop
                  xori       gp, t0, -776
                  sra        tp, s9, a5
                  sltiu      a2, t4, 202
                  xor        s2, s0, ra
                  sltiu      s0, sp, -1015
                  andi       a4, s7, -487
                  auipc      a3, 350684
                  lui        s8, 190917
                  xor        gp, s7, a7
                  sra        t0, t6, s10
                  nop
                  srl        t6, s5, s11
                  srli       t3, s8, 15
                  lui        s8, 57662
                  addi       t5, s8, -52
                  sltu       t3, tp, a0
                  add        s6, tp, s3
                  xori       gp, s1, -795
                  slli       s8, t4, 9
                  srl        s3, s10, a1
                  nop
                  slli       t0, s11, 14
                  andi       t6, gp, -265
                  slti       a4, t4, 388
                  ori        a0, a0, -307
                  xor        tp, t3, s8
                  xori       a0, s1, -852
                  sltu       s9, a0, t1
                  srai       a4, ra, 25
                  sra        a0, a1, s4
                  lui        gp, 1005837
                  slli       a6, s7, 14
                  or         a6, t1, a4
                  srai       gp, s6, 30
                  lui        t1, 259538
                  srai       a6, t1, 24
                  sub        s0, s0, t2
                  ori        a7, a1, 709
                  nop
                  slt        a7, a2, gp
                  and        s9, s4, a6
                  slli       a3, s4, 2
                  ori        gp, a0, 100
                  srli       s3, a6, 9
                  sub        tp, t1, a1
                  andi       s9, t6, 240
                  andi       a2, s4, -431
                  xor        s0, a2, a3
                  slti       t6, gp, -929
                  add        a1, t2, s11
                  ori        t0, t2, -387
                  srai       tp, t1, 0
                  add        a0, t6, s10
                  slt        s9, a7, sp
                  add        gp, gp, a5
                  nop
                  ori        a6, t5, 714
                  slti       gp, a7, -855
                  xor        t1, ra, s6
                  lui        zero, 909725
                  xor        s7, a5, s10
                  add        ra, a7, a0
                  ori        s7, t6, -783
                  xori       sp, t6, -919
                  srai       s6, ra, 15
                  lui        t1, 327973
                  ori        t5, s1, -769
                  slti       a0, s2, 18
                  sll        t2, t2, ra
                  nop
                  srai       a7, a1, 31
                  and        a7, t5, a7
                  add        t2, t5, t4
                  lui        gp, 472414
                  sltiu      a6, s5, 862
                  sltiu      s6, s9, -101
                  srl        t6, s7, a6
                  srl        s3, a1, zero
                  slti       s9, a5, 621
                  sltu       t6, s11, a7
                  addi       s0, t0, 386
                  srli       t5, zero, 0
                  sltu       a5, a3, s2
                  add        s7, s2, t6
                  slti       s6, s5, -2
                  or         s8, s3, ra
                  sra        sp, tp, s0
                  addi       t0, t2, 116
                  slti       s3, s9, 631
                  sra        a7, t3, t5
                  sub        a1, s8, t4
                  sra        s3, a5, a6
                  slli       t1, s6, 8
                  andi       a6, a6, -9
                  auipc      t4, 965280
                  srai       a5, ra, 30
                  sltu       t1, s2, s4
                  ori        ra, t3, 984
                  srai       s7, s1, 1
                  slti       zero, a0, 289
                  sra        s2, ra, s4
                  sltiu      t2, a4, 589
                  xor        t6, t6, t5
                  add        t0, s9, s5
                  and        a0, sp, ra
                  ori        s11, s3, 905
                  slti       a0, gp, -825
                  add        t3, a2, s7
                  and        s7, t3, t1
                  xori       t6, s6, -159
                  or         s11, s1, s10
                  sltu       a1, s2, a3
                  and        a2, a4, a0
                  sll        a5, a1, t6
                  xor        s5, s3, a4
                  sll        s6, zero, s9
                  add        t5, s9, zero
                  andi       a7, a1, -634
                  and        t0, s7, t4
                  lui        s6, 476884
                  and        ra, zero, a3
                  slt        t2, a7, s5
                  xori       s8, s2, -81
                  xor        a3, s3, t2
                  sub        a7, a3, s7
                  andi       t5, sp, 88
                  sub        a4, a1, t5
                  sltiu      s6, a2, -449
                  ori        a4, a5, -797
                  sll        s0, zero, gp
                  or         t4, ra, t4
                  sltiu      a3, ra, 205
                  sltiu      s11, t0, 585
                  sltu       a3, zero, s9
                  andi       a0, s8, 937
                  auipc      a0, 924031
                  sra        t3, s10, t2
                  andi       sp, s4, -162
                  slt        s7, ra, s9
                  ori        t5, t4, -803
                  nop
                  andi       s2, t0, 978
                  xor        t6, a4, ra
                  auipc      t0, 395817
                  nop
                  auipc      a3, 688321
                  slli       a2, s1, 26
                  xor        a2, s11, sp
                  slli       s9, s9, 21
                  srli       a2, s1, 10
                  lui        a2, 154667
                  srai       a5, s0, 12
                  auipc      a5, 507086
                  srli       a5, t0, 4
                  xor        a0, zero, zero
                  srai       a4, t6, 13
                  or         s2, a1, zero
                  sub        s7, s3, s8
                  andi       s5, a6, 406
                  sll        t0, t3, t6
                  xor        s6, s8, s1
                  auipc      s11, 335916
                  add        s11, t6, a5
                  auipc      sp, 851414
                  lui        s9, 961042
                  sub        a4, s4, t6
                  sll        t4, s6, a7
                  andi       t5, s10, 679
                  sltu       s3, a2, zero
                  sra        a2, s11, t2
                  sra        s11, t6, t0
                  xor        tp, s1, a6
                  and        a1, s10, t1
                  xor        t0, t4, t3
                  nop
                  sltiu      t3, s2, -53
                  xori       a2, t1, -467
                  xori       a5, t0, 121
                  add        a7, s6, a4
                  auipc      a3, 127503
                  addi       t3, s4, -696
                  sra        a0, zero, s5
                  xori       gp, a7, -901
                  slti       t3, s6, 739
                  or         s5, ra, sp
                  xor        tp, t2, t6
                  or         t4, s4, t4
                  sltiu      tp, s10, 44
                  sra        s6, t2, s9
                  andi       s6, a4, -673
                  xori       t3, s8, -77
                  andi       s8, t5, 928
                  andi       a5, a0, -717
                  andi       s7, a2, -888
                  lui        sp, 309477
                  srli       a6, t4, 14
                  sub        s11, s3, a4
                  sub        a1, t1, s6
                  srai       s0, s1, 17
                  lui        s3, 238188
                  slli       s9, s9, 11
                  or         s7, a5, a0
                  xor        sp, s4, s10
                  nop
                  sll        a2, a5, sp
                  nop
                  sll        gp, t1, t6
                  srli       t4, t2, 19
                  lui        gp, 848399
                  sltiu      s8, a7, 644
                  auipc      t1, 166946
                  ori        a3, t5, -627
                  xor        s0, a0, s3
                  slti       sp, a7, 66
                  ori        s3, gp, 448
                  srli       a6, t2, 6
                  sra        gp, ra, s10
                  add        a3, s4, a7
                  xor        s0, a0, s2
                  ori        a4, s2, 877
                  addi       s2, t0, -420
                  auipc      t5, 26813
                  slli       t5, t4, 22
                  xor        t2, t3, s4
                  andi       t5, s4, 568
                  slt        t2, a7, t6
                  addi       a3, a0, 492
                  xori       zero, t0, -602
                  sub        a4, tp, s4
                  lui        s9, 355740
                  srli       t4, gp, 2
                  sltiu      a5, a6, -353
                  or         s0, a3, s6
                  or         t1, a7, t4
                  auipc      s0, 956761
                  xori       zero, s10, -915
                  andi       s2, a2, 697
                  sub        a6, t2, t1
                  slti       s5, t4, -997
                  xor        s2, s5, t6
                  ori        a0, a3, -631
                  or         sp, a7, sp
                  slli       s5, tp, 3
                  sub        a0, t5, ra
                  sltiu      t0, t2, -718
                  srli       a0, s6, 14
                  or         s6, s5, tp
                  nop
                  sub        s8, a5, s1
                  sll        a4, t4, tp
                  addi       s11, s8, 132
                  sra        t2, ra, a1
                  srai       a3, t4, 13
                  auipc      s11, 739249
                  srli       s11, a5, 13
                  sltiu      t4, t1, -130
                  ori        ra, gp, -214
                  addi       s8, s8, 736
                  sltu       a5, s5, s6
                  or         a5, t6, a6
                  slti       t4, s10, -912
                  addi       tp, s0, -28
                  slli       a4, t3, 5
                  andi       t0, t1, 648
                  srli       s9, s2, 0
                  sltiu      s6, t5, -769
                  sltu       a2, s9, a7
                  and        zero, a0, ra
                  andi       t2, t0, -82
                  srl        t4, a3, s2
                  and        s11, t0, a2
                  sltiu      t2, a2, 926
                  auipc      s9, 131050
                  slti       s3, s9, 766
                  or         ra, zero, s7
                  srli       a3, t3, 21
                  lui        a2, 490465
                  xori       s0, a7, -863
                  sub        a6, t5, s3
                  srl        gp, sp, s10
                  addi       t2, gp, 493
                  slli       ra, zero, 26
                  li         a2, 0x0 #start riscv_int_numeric_corner_stream_36
                  li         t4, 0xffffffff
                  li         s8, 0x80000000
                  li         gp, 0x80000000
                  li         a4, 0x0
                  li         t1, 0xfedaed50
                  li         t6, 0x545e7e11
                  li         s9, 0x6f144945
                  li         s6, 0x80000000
                  li         a0, 0x34c43d64
                  lui        a4, 172275
                  auipc      s6, 382368
                  auipc      s6, 83844
                  addi       s8, s8, -193
                  addi       a2, t1, 333
                  nop
                  nop
                  auipc      t1, 257378
                  nop
                  auipc      a0, 98843
                  auipc      a0, 280196
                  add        a0, t6, s8
                  auipc      t6, 445429
                  auipc      s9, 551804
                  auipc      gp, 800935
                  auipc      t4, 417412 #end riscv_int_numeric_corner_stream_36
                  sltu       tp, a1, zero
                  or         ra, a1, a7
                  auipc      t2, 1047453
                  andi       s8, s6, -362
                  addi       s6, t4, 280
                  srli       t4, t3, 4
                  xori       zero, t4, -359
                  ori        t6, a2, 267
                  srli       s7, t4, 14
                  ori        a7, a5, 623
                  sub        a7, t5, tp
                  and        t5, a0, t6
                  sra        s2, a2, a5
                  add        s11, t1, t0
                  lui        s7, 137052
                  srli       t3, s6, 27
                  sub        a6, t0, ra
                  sltiu      t4, tp, 350
                  sltiu      t6, s9, 528
                  slt        zero, ra, s8
                  ori        t2, t2, 990
                  sltiu      s9, t3, -2
                  xor        a5, t4, s1
                  addi       s7, a2, 116
                  srl        t4, t3, s6
                  auipc      a4, 182926
                  srl        gp, s7, t0
                  sltiu      t4, tp, -202
                  sra        a0, t6, t2
                  sltu       t6, t0, gp
                  andi       s9, t3, 514
                  srli       a3, a4, 1
                  ori        a7, t0, -714
                  addi       s3, s0, -945
                  srai       s5, ra, 29
                  xor        t6, a7, tp
                  sra        s11, s2, sp
                  srli       a0, a3, 0
                  sltu       s2, a1, a0
                  srli       tp, a0, 15
                  xori       gp, t2, -138
                  srl        s2, s1, a4
                  andi       t3, t2, -680
                  andi       a2, t3, -800
                  or         a7, t4, a6
                  or         s5, t5, s4
                  or         t3, s4, s5
                  sra        s7, a0, a6
                  xori       s2, t4, 805
                  auipc      s9, 130919
                  lui        a4, 787451
                  srl        a3, t6, s10
                  and        t4, s8, a0
                  lui        a1, 90283
                  sltu       s0, tp, tp
                  or         s0, s10, gp
                  and        a5, ra, t3
                  srl        s6, s4, t6
                  srai       t3, tp, 31
                  xor        a6, t6, s8
                  srl        t1, tp, s6
                  ori        sp, t5, -42
                  sltu       gp, a6, s4
                  nop
                  andi       a1, t4, 810
                  add        s3, sp, a2
                  addi       ra, t6, -883
                  andi       s0, t5, 481
                  nop
                  sub        sp, a3, s9
                  andi       zero, s2, 705
                  sltiu      sp, a1, -898
                  srai       t4, s10, 23
                  or         s6, a0, s0
                  xor        t1, s2, gp
                  lui        s3, 604568
                  srl        a0, s9, a1
                  sll        s3, ra, sp
                  auipc      t4, 1031852
                  or         s7, t1, t5
                  slli       s8, t4, 17
                  slli       s11, s1, 26
                  sra        t2, a0, s2
                  sll        s7, t3, s9
                  andi       s5, t6, 9
                  sub        s2, a5, s9
                  ori        s5, s8, -516
                  sltiu      t6, s4, 927
                  srl        tp, a5, tp
                  slt        t6, a4, a0
                  srl        t1, s1, s10
                  sub        a0, t0, s2
                  sra        s7, s6, s0
                  srli       a5, s0, 9
                  auipc      a2, 774434
                  slt        sp, s3, s3
                  andi       a2, s2, -270
                  sltiu      a5, a4, -884
                  or         t3, t6, s5
                  sltiu      t2, s1, -953
                  sra        t4, s9, a2
                  srai       a5, a4, 22
                  srl        t3, t0, sp
                  sll        ra, a5, a7
                  lui        s6, 404662
                  sltiu      ra, a3, 814
                  xori       t5, s5, -356
                  sll        s11, a5, t5
                  auipc      gp, 399025
                  srai       t5, t0, 14
                  slt        a7, s2, s1
                  and        t2, t0, s6
                  sltiu      a6, s9, 274
                  ori        t2, s11, -709
                  xor        s11, a5, a5
                  sub        s2, t1, a1
                  sltiu      s6, s4, 990
                  xor        gp, s11, t0
                  add        a3, s2, t4
                  or         tp, t1, t4
                  lui        s0, 168565
                  andi       s11, s5, 416
                  andi       s11, a5, 600
                  lui        t4, 579020
                  addi       tp, a5, -72
                  xori       s0, s9, 979
                  sltiu      tp, t4, -627
                  and        s2, s0, a5
                  xor        gp, t1, s10
                  andi       tp, s7, -797
                  or         a5, tp, s0
                  lui        s7, 308659
                  sub        t2, t4, s6
                  or         zero, a0, a5
                  and        a0, s11, zero
                  sub        ra, s4, a0
                  andi       sp, s8, -13
                  slt        ra, s0, s7
                  slti       a0, s4, 61
                  sra        sp, t2, a7
                  xori       tp, t2, 732
                  sra        gp, a5, ra
                  sll        a1, gp, t4
                  lui        s6, 1028363
                  ori        t4, gp, 859
                  sltiu      t4, a5, 890
                  or         s7, a5, s9
                  lui        tp, 746220
                  lui        a3, 856975
                  slti       a4, a2, -698
                  nop
                  lui        s0, 321471
                  sll        s5, s8, a5
                  addi       s3, t4, 437
                  sra        s8, s9, s5
                  addi       s6, s10, 22
                  sll        a7, s0, t2
                  nop
                  slli       s3, s9, 10
                  addi       t0, tp, -795
                  sltu       a0, sp, t6
                  nop
                  slt        t1, a0, s11
                  auipc      t1, 521041
                  sltiu      s11, s8, 886
                  srai       t1, t3, 10
                  slt        a1, a6, s7
                  sra        a5, t0, a1
                  slt        t5, t4, t5
                  xori       s11, s5, 861
                  ori        t5, t6, -342
                  slti       s2, gp, -639
                  ori        a6, s10, 473
                  slti       a7, t0, 241
                  sltiu      t4, a3, -682
                  sub        a0, s0, a0
                  lui        tp, 471632
                  sub        s5, a6, s5
                  xor        a4, s1, a2
                  nop
                  sltiu      s5, t3, -615
                  sub        s5, zero, tp
                  nop
                  add        s8, t0, s4
                  add        s9, s11, s10
                  and        s6, ra, tp
                  sra        s8, t5, gp
                  srl        tp, s1, tp
                  srli       t2, s10, 12
                  slli       t6, a4, 23
                  xori       t2, s0, 562
                  xori       s9, s10, 26
                  lui        a1, 264686
                  sra        s6, s10, s8
                  lui        a2, 926809
                  slt        a7, t4, s7
                  sltu       s5, a4, zero
                  sltiu      s9, a6, -380
                  sll        t4, a5, gp
                  ori        t3, a7, -383
                  sub        a6, t2, gp
                  add        s9, tp, a5
                  xori       s7, tp, 806
                  sltiu      s3, t2, 567
                  or         sp, a0, sp
                  sltiu      a3, a7, 712
                  sltu       a5, s11, gp
                  slti       t0, a1, 124
                  and        zero, s1, s10
                  slt        s9, t5, s7
                  sltu       sp, s3, t4
                  xori       a5, t4, -920
                  srai       gp, a7, 20
                  andi       a5, a2, -236
                  sub        sp, a6, t3
                  addi       gp, s4, 738
                  sub        s9, a3, gp
                  addi       t0, s5, 469
                  srli       zero, t2, 20
                  srli       s3, a2, 31
                  sra        s8, s7, t2
                  slli       a6, s0, 9
                  slli       t0, a4, 10
                  sra        s0, t4, s3
                  or         a0, s9, t0
                  xor        s2, t0, a6
                  auipc      a5, 484662
                  sra        tp, a3, a1
                  sra        a3, s5, a4
                  xori       s2, a7, 909
                  slt        tp, a3, t2
                  xori       s5, s3, -438
                  srai       t0, t4, 24
                  srl        tp, t6, t0
                  slli       tp, s7, 27
                  sub        t5, a0, s9
                  sll        a7, s11, a5
                  sra        s6, t6, t4
                  auipc      t1, 250456
                  ori        tp, zero, -24
                  srai       a4, a7, 29
                  sltiu      t2, t6, 530
                  xori       t4, a3, -441
                  andi       a5, t6, -709
                  xor        s2, s5, s4
                  slli       t1, t1, 11
                  slt        s2, sp, t3
                  xori       s9, a6, 464
                  and        s2, gp, t5
                  sltiu      s0, s2, 204
                  xor        t2, gp, a2
                  auipc      a2, 405270
                  slt        sp, s1, a7
                  sltu       s7, t5, t3
                  srli       t6, t1, 8
                  srli       a5, a7, 0
                  andi       s3, a5, 495
                  sltu       t6, a2, s4
                  lui        t0, 1008753
                  lui        s6, 208940
                  slti       a4, s6, 135
                  or         t2, t4, a3
                  srl        s11, s6, s3
                  slli       gp, tp, 23
                  srai       a1, a3, 25
                  nop
                  lui        s6, 808106
                  sll        t1, s2, a5
                  and        t3, zero, t5
                  sll        t5, a1, s4
                  or         s5, tp, a0
                  andi       s2, s7, 78
                  andi       t6, s8, -871
                  slt        a6, s9, t3
                  and        a6, tp, ra
                  sra        s11, s3, tp
                  xori       t3, s3, -26
                  andi       t3, t2, 942
                  slt        a6, s7, s11
                  nop
                  srl        gp, s3, t6
                  slt        t0, a0, t5
                  sltiu      a1, a1, 686
                  andi       sp, a2, -521
                  xor        a4, s0, s10
                  andi       s5, s1, 123
                  srli       ra, s5, 11
                  sra        t4, s5, t5
                  srli       a5, s1, 28
                  add        a7, t1, s6
                  andi       a2, s11, 364
                  srai       s5, s2, 13
                  slti       tp, tp, 125
                  andi       t0, s2, 104
                  srl        t4, t1, t0
                  xori       a6, s1, 861
                  nop
                  add        gp, tp, a7
                  sra        ra, sp, a7
                  srl        t4, t0, a1
                  or         a6, s2, s4
                  ori        t0, s11, 291
                  xor        gp, s4, s8
                  sltiu      t4, s2, -96
                  srli       s6, s7, 17
                  xori       ra, s4, 240
                  sub        s7, s9, t4
                  xor        sp, a4, t6
                  and        a5, a4, s9
                  srai       t1, a6, 17
                  slt        a0, s4, t1
                  addi       a2, zero, -879
                  xori       a0, ra, -150
                  addi       a6, t5, -273
                  xori       t6, t3, -256
                  ori        s7, s11, -785
                  sltiu      gp, s2, 998
                  sra        sp, t1, s10
                  sltu       a7, t5, a3
                  sra        sp, s1, t2
                  and        s9, s8, a4
                  slt        a4, t0, ra
                  sra        tp, t4, s11
                  nop
                  slti       tp, a1, -410
                  srai       a4, t2, 24
                  srli       t2, s2, 31
                  add        a3, a2, t6
                  andi       s7, s8, -979
                  ori        t1, zero, 716
                  sub        sp, a4, a0
                  srl        s6, s6, t2
                  sltu       a0, s9, s11
                  auipc      a6, 21606
                  srl        gp, t2, t4
                  srli       s6, s9, 10
                  sltu       a2, s11, s1
                  slli       s9, s11, 29
                  sra        tp, tp, a6
                  xor        a4, a2, tp
                  lui        sp, 239772
                  xor        s9, gp, s2
                  sltu       s8, s10, s2
                  lui        t6, 96678
                  addi       t3, zero, -771
                  xor        t6, zero, t2
                  sltu       s2, s7, t6
                  ori        s7, t0, -553
                  nop
                  sll        t0, a6, s6
                  ori        a2, s5, 90
                  nop
                  andi       a6, t2, 433
                  sltu       s11, t0, s4
                  srai       s3, gp, 8
                  add        t4, a6, s2
                  nop
                  xor        s8, a0, t5
                  xor        s2, t2, t4
                  srai       s3, s9, 1
                  nop
                  xor        s11, s4, zero
                  sra        gp, s0, a0
                  nop
                  nop
                  xori       t2, gp, 523
                  auipc      sp, 846790
                  xori       s3, zero, -56
                  nop
                  srai       s2, s1, 9
                  addi       a7, t6, 592
                  andi       s3, a2, 905
                  slli       tp, ra, 28
                  slt        s7, zero, s1
                  sltiu      a6, t2, -859
                  sll        zero, s5, t0
                  auipc      a1, 622278
                  auipc      s2, 964943
                  add        sp, s9, s5
                  sltu       a3, s10, t6
                  ori        t0, t2, 649
                  auipc      t6, 19484
                  slli       t3, t5, 8
                  add        s6, s3, zero
                  slli       zero, t5, 10
                  or         sp, s4, t2
                  addi       s7, a4, 922
                  sll        t6, a5, a6
                  lui        s6, 461696
                  srli       s2, s6, 12
                  andi       t4, t4, -818
                  xori       a0, t6, -407
                  and        a6, s1, a0
                  sltiu      t6, t0, 970
                  add        s11, s8, a7
                  andi       s2, s3, 993
                  xor        t2, s9, s4
                  andi       s2, a3, 84
                  xori       s3, tp, 505
                  sltiu      s6, t0, 261
                  sub        s11, a6, tp
                  slli       s5, s9, 9
                  auipc      t3, 248106
                  srli       a4, s8, 6
                  andi       a7, zero, -113
                  sll        a6, s6, t3
                  slti       t6, s7, 218
                  slli       t0, t2, 30
                  srli       t4, a6, 13
                  srl        s6, t5, zero
                  auipc      tp, 855871
                  slli       s9, a1, 17
                  nop
                  sll        t5, s8, zero
                  xori       s8, a2, 723
                  and        sp, a7, a7
                  srl        s9, ra, t3
                  ori        s0, s8, -669
                  addi       t1, sp, -234
                  xori       tp, s3, 14
                  addi       s5, tp, 380
                  srl        t1, a5, t2
                  and        s6, zero, s7
                  xori       ra, ra, -368
                  ori        s3, s4, 276
                  srli       t4, ra, 21
                  lui        s8, 459699
                  srl        a6, s2, zero
                  add        a1, t2, a2
                  srl        a5, s3, sp
                  sll        a1, s9, a5
                  auipc      t2, 699783
                  auipc      gp, 197254
                  srl        s7, s8, s4
                  sra        a2, s5, t6
                  auipc      t0, 283777
                  slli       s5, ra, 12
                  lui        t1, 919753
                  sltiu      t5, a3, -518
                  slt        t0, ra, t0
                  ori        t4, s1, -1023
                  addi       t6, s11, -761
                  srli       s5, tp, 4
                  nop
                  xor        s2, t2, a4
                  add        a0, s0, t4
                  or         a2, t5, s10
                  sltiu      a0, a4, 101
                  srl        a6, s5, zero
                  andi       s9, tp, -504
                  sra        gp, t5, gp
                  sltiu      t6, s5, 254
                  ori        a6, tp, -431
                  sll        t5, a3, a4
                  andi       a3, s1, -402
                  sra        a6, a1, s0
                  nop
                  addi       t0, s10, 961
                  srli       s5, s3, 7
                  sltu       s8, a6, a0
                  and        s5, sp, a5
                  andi       t6, a6, -905
                  srli       t2, a2, 26
                  or         s3, t3, t5
                  sub        s0, a3, t3
                  auipc      s2, 340694
                  slti       gp, t1, -45
                  srli       s5, s5, 7
                  slti       s3, s8, -734
                  addi       a4, t4, 600
                  slt        gp, s7, t5
                  xori       s7, a4, -415
                  or         a6, a3, t2
                  slti       a2, s5, -314
                  or         t0, a3, a2
                  sub        t2, a0, s11
                  srli       a7, t4, 8
                  sll        t2, s10, a3
                  slt        s7, t3, t0
                  auipc      a5, 567802
                  auipc      ra, 301139
                  ori        s5, t6, 182
                  slt        s8, t5, sp
                  addi       s3, zero, -80
                  lui        t3, 695180
                  slti       zero, a2, 206
                  sll        t1, s1, a3
                  and        ra, s1, t6
                  or         t0, t6, a4
                  add        s3, t1, t5
                  sltiu      s0, s2, 85
                  xor        t0, a1, s7
                  sra        a6, a1, zero
                  sra        s6, t6, t1
                  lui        t1, 472675
                  xor        t0, s10, a5
                  or         a4, t3, t1
                  sltiu      ra, sp, 576
                  slt        gp, t3, s10
                  and        t3, t4, a0
                  lui        s5, 407172
                  xor        s2, s0, sp
                  sub        s5, tp, sp
                  add        a7, s7, t0
                  slt        s6, a6, sp
                  xor        tp, a5, sp
                  sll        s8, s9, s5
                  lui        t1, 252377
                  sub        t3, s10, sp
                  sltu       s6, s10, ra
                  add        a5, s8, t4
                  sra        t0, a2, s7
                  sltu       a5, a2, s1
                  xori       t2, sp, 889
                  andi       t1, a5, 222
                  addi       a7, t6, 458
                  xor        s6, a7, t0
                  and        a7, a1, t3
                  addi       tp, tp, -707
                  ori        a5, t3, -862
                  or         sp, a0, s8
                  auipc      t5, 478554
                  sltu       t5, s4, t2
                  lui        s0, 909005
                  lui        zero, 827696
                  srli       ra, t6, 4
                  sltiu      t5, a6, -657
                  or         s0, a3, s4
                  xori       a4, s2, 631
                  or         t0, t2, s5
                  add        s5, t5, a0
                  sltiu      a2, s9, -1002
                  slt        t2, a4, t2
                  xori       a7, s7, -900
                  slli       sp, zero, 17
                  srli       s8, a6, 29
                  and        s5, s9, t2
                  srl        a1, a4, a7
                  sra        t3, s6, a2
                  and        a2, a0, a6
                  slli       s2, tp, 16
                  sltu       a4, t3, a3
                  sltiu      s0, tp, -955
                  slli       t3, ra, 4
                  sltu       s5, s10, s7
                  auipc      t6, 552772
                  xori       a7, a1, 167
                  and        a7, s10, s6
                  slt        zero, t6, s10
                  srli       a7, t6, 5
                  andi       s5, tp, -658
                  sll        a5, zero, s6
                  slti       ra, s8, -932
                  andi       tp, ra, -648
                  ori        a5, s4, -765
                  auipc      a6, 215097
                  ori        a0, s10, -127
                  slt        gp, t6, tp
                  sltu       t1, a2, a2
                  srli       t5, t1, 28
                  lui        a1, 724103
                  add        s9, s1, s5
                  ori        t5, a3, -590
                  add        s5, a5, t5
                  or         a6, s11, s0
                  srl        s7, s3, a0
                  sra        ra, s0, s6
                  xori       t3, t3, -683
                  ori        s5, s3, 23
                  sra        sp, t5, a3
                  slli       s6, s5, 20
                  slt        s3, s3, s10
                  lui        a6, 746897
                  sltu       s7, t5, sp
                  nop
                  xori       s6, s7, -586
                  slt        s0, gp, t1
                  slti       a5, s3, 49
                  sltu       s6, gp, tp
                  ori        a6, s2, 458
                  or         s9, t1, s1
                  lui        t2, 442947
                  ori        t4, a7, 198
                  andi       a2, a3, -964
                  slli       a4, zero, 1
                  andi       s11, a7, -931
                  lui        a3, 858061
                  slt        s8, s5, s5
                  sltiu      a1, sp, -318
                  ori        s6, s9, -337
                  xor        a2, t6, s5
                  or         zero, t5, s11
                  sra        t4, ra, ra
                  andi       a4, a1, 791
                  sll        sp, a0, s9
                  lui        tp, 763974
                  sub        s8, t3, s6
                  sub        s8, tp, zero
                  auipc      t1, 64432
                  andi       s0, t2, -354
                  lui        a3, 638810
                  nop
                  ori        a0, t4, 894
                  add        s11, a7, t2
                  sra        a7, s2, gp
                  srl        s11, a0, t2
                  sltu       t3, t3, s1
                  sltu       zero, a2, a2
                  nop
                  auipc      tp, 114075
                  sra        tp, s0, s11
                  srli       a5, sp, 29
                  slli       t4, s11, 1
                  slli       tp, t3, 4
                  xori       s9, a2, -72
                  andi       s9, t2, -395
                  sltiu      s5, gp, 375
                  sltiu      s9, a7, -884
                  slt        s9, tp, t5
                  sra        a7, a2, t0
                  auipc      a4, 41824
                  auipc      gp, 517595
                  srli       sp, t4, 12
                  lui        a4, 515147
                  sltiu      t0, s2, -646
                  andi       tp, s4, -119
                  slli       s7, s0, 10
                  ori        a4, t4, -793
                  sltu       a6, s3, a3
                  slt        s9, tp, zero
                  lui        t4, 248740
                  slli       t4, ra, 22
                  add        a2, s10, s7
                  lui        t6, 5394
                  srl        s9, a2, s1
                  xor        t1, a1, s1
                  addi       s2, a2, -315
                  sll        s9, t3, s6
                  sra        s3, t3, a0
                  sub        s0, s8, a2
                  srai       t5, t0, 25
                  xori       s6, a3, -569
                  and        gp, t6, s2
                  sra        ra, tp, s1
                  srl        s7, t5, a5
                  slti       a6, a6, -505
                  addi       tp, s9, 452
                  sra        t6, ra, a0
                  sra        a0, t3, s6
                  sra        zero, s7, s1
                  srli       s3, s4, 6
                  sub        t2, a2, s6
                  or         a4, a3, t5
                  xor        a0, gp, t2
                  xor        tp, a5, s11
                  xori       t0, gp, 37
                  slt        t6, s3, s8
                  sra        sp, s4, t0
                  nop
                  sub        t0, s11, tp
                  auipc      gp, 689337
                  lui        tp, 992338
                  xori       a2, tp, -844
                  srai       a6, gp, 28
                  xori       t5, a5, -106
                  sra        zero, ra, sp
                  srl        s11, t0, s9
                  srai       a7, s8, 1
                  sltu       a4, zero, s9
                  sltiu      t6, gp, 380
                  and        t3, s3, t3
                  or         s11, s7, s1
                  sra        zero, s5, s8
                  srai       s3, a2, 23
                  srl        s7, gp, tp
                  sub        sp, a1, s10
                  add        a5, a4, s5
                  and        s9, s7, s8
                  srl        ra, a3, gp
                  sra        s5, a2, a4
                  slti       s5, sp, 298
                  addi       s3, s11, -192
                  addi       s11, s1, 968
                  slli       s0, sp, 26
                  slli       s9, s7, 24
                  and        ra, a3, zero
                  srl        s9, s10, s1
                  auipc      a4, 695906
                  andi       gp, sp, 898
                  andi       t0, t0, 139
                  ori        t4, a2, -774
                  srli       a3, t2, 15
                  srai       a6, t1, 20
                  add        s9, a2, t1
                  auipc      s7, 773527
                  slti       s2, s9, 468
                  lui        s2, 212770
                  sltiu      tp, a2, 604
                  and        s0, t1, a7
                  nop
                  sra        ra, s7, s9
                  sub        t2, s9, s1
                  lui        t2, 628074
                  sll        a6, a2, a6
                  addi       sp, a4, -807
                  slt        s6, s10, s1
                  auipc      t5, 489632
                  srli       s7, a4, 8
                  ori        a6, a7, 81
                  ori        s7, s2, 1005
                  ori        t5, s5, 158
                  ori        t0, s10, 25
                  and        s5, sp, s10
                  srl        a5, s6, s4
                  xori       zero, s1, -160
                  addi       t5, a5, 594
                  srli       t4, t5, 17
                  sltiu      t1, a7, -667
                  andi       s2, ra, -471
                  slti       s7, t0, 431
                  srl        t4, a3, a5
                  srl        t2, ra, tp
                  auipc      a1, 413230
                  lui        a1, 867691
                  or         t2, a4, s6
                  nop
                  addi       a6, s8, 976
                  xor        a4, tp, t2
                  srli       a4, a6, 31
                  ori        t3, s2, -68
                  slli       t5, a0, 26
                  slli       tp, s3, 8
                  addi       t0, s3, -627
                  xori       a5, gp, 939
                  and        ra, s2, tp
                  srai       s8, sp, 17
                  auipc      a4, 417398
                  sltu       t4, s2, a7
                  sra        a5, gp, zero
                  srl        tp, a6, s9
                  sra        gp, s1, s5
                  and        a5, s2, t2
                  srl        a3, t5, a1
                  or         zero, s11, a4
                  sltu       s9, s5, a3
                  slt        a5, s8, gp
                  auipc      a4, 390630
                  and        a7, t4, t4
                  xor        s3, t4, s8
                  slti       s9, s9, -950
                  sub        a7, s5, t0
                  nop
                  slli       a1, ra, 7
                  andi       s3, s5, -938
                  srl        s0, sp, t0
                  ori        s6, tp, 706
                  andi       s5, s11, -799
                  slti       s11, a6, 731
                  sub        a4, s5, a0
                  sra        s11, t1, t3
                  nop
                  add        s2, s0, t5
                  andi       s3, s10, 826
                  srl        t1, ra, s2
                  slli       s3, t4, 5
                  xori       t4, zero, 396
                  add        s7, s7, zero
                  auipc      ra, 290600
                  slt        t0, t6, a6
                  xori       t2, a2, 860
                  sltu       a7, a2, a7
                  sltu       a3, gp, tp
                  xori       t4, a4, -283
                  slti       a4, t5, -904
                  and        a3, a3, t6
                  sltiu      sp, a2, 78
                  xori       t6, s2, 736
                  sub        zero, a0, a7
                  andi       a1, s9, -89
                  srai       sp, zero, 30
                  srai       sp, t3, 8
                  add        t1, a2, s5
                  slli       t1, s0, 1
                  or         s7, ra, sp
                  sll        s2, a4, a5
                  or         sp, a4, sp
                  sltu       s11, s1, t2
                  xor        t5, a1, a4
                  srl        tp, ra, a7
                  sltiu      t0, t6, 899
                  ori        t1, a2, -517
                  auipc      tp, 1029287
                  andi       s3, a6, -972
                  add        a7, s8, tp
                  auipc      a0, 925477
                  sra        a6, a7, s10
                  sll        s3, a7, t1
                  xori       s3, ra, 562
                  xor        a4, gp, a5
                  ori        a6, zero, 529
                  lui        ra, 548643
                  sra        s6, a3, t2
                  srli       a7, t4, 16
                  slli       a0, a3, 19
                  ori        a5, t1, 618
                  sub        tp, t0, ra
                  srli       a5, a3, 9
                  xor        t1, zero, ra
                  srai       t2, gp, 23
                  ori        t0, a0, -104
                  slt        t3, s10, zero
                  lui        s11, 685975
                  slli       a6, gp, 16
                  slli       s0, zero, 21
                  andi       a3, sp, -649
                  or         gp, s3, s2
                  xor        a3, s5, t3
                  andi       zero, a4, -654
                  srl        a6, a6, s5
                  addi       t6, t6, 635
                  addi       a2, t5, -532
                  sub        s6, a0, a0
                  andi       t5, t0, -531
                  srai       a2, s1, 17
                  slli       t5, t1, 5
                  add        t4, tp, sp
                  xori       t2, t4, -977
                  xor        s3, s6, s0
                  ori        a1, s11, -933
                  srl        a0, gp, s11
                  auipc      s2, 606586
                  sltu       s5, s10, s10
                  addi       s0, a0, 951
                  nop
                  addi       a2, a7, 657
                  and        a0, t0, t3
                  slt        t1, t4, t3
                  sra        s9, s8, t3
                  xori       t0, a0, 874
                  sll        a7, t3, zero
                  xor        s6, s11, s3
                  sltu       a4, s1, s2
                  lui        s3, 789376
                  lui        zero, 259011
                  and        a6, a7, s0
                  srai       gp, sp, 7
                  lui        s9, 418767
                  slti       t1, a4, 764
                  sra        t0, s4, s7
                  lui        t3, 129341
                  add        t6, t0, a0
                  lui        a1, 919055
                  srai       gp, a1, 5
                  srl        t0, s8, s6
                  ori        s6, zero, 753
                  or         s6, a3, s2
                  slt        s5, s11, sp
                  sltu       gp, s11, a1
                  xori       a1, tp, 364
                  andi       a6, t1, 547
                  ori        t1, a2, 26
                  or         s3, s8, t1
                  srl        a6, t2, s2
                  and        t1, sp, a1
                  auipc      t2, 185275
                  ori        sp, s10, -309
                  nop
                  srl        a0, s11, a0
                  srl        s0, a0, a2
                  lui        t3, 188553
                  ori        a1, s9, -346
                  and        a7, sp, a6
                  slli       t1, sp, 12
                  auipc      tp, 129434
                  lui        s5, 744165
                  or         s0, a1, t3
                  ori        t2, s4, 913
                  sub        s0, sp, a4
                  xor        a7, s2, t2
                  xori       a0, a3, -349
                  sub        t6, a4, s6
                  lui        gp, 276419
                  sub        t1, t2, s8
                  and        a3, s11, a3
                  srai       s5, a7, 3
                  sltu       s6, s9, t6
                  sltu       ra, s8, a3
                  lui        a7, 297116
                  sltiu      zero, a5, -415
                  ori        ra, a0, -147
                  andi       gp, s6, -684
                  sra        t1, a2, a3
                  slti       t2, t2, 400
                  andi       a1, t0, 275
                  slti       t3, a2, -589
                  lui        s9, 265348
                  slt        a4, a5, a4
                  xori       t1, t4, -299
                  slti       t6, a3, -250
                  auipc      a2, 917017
                  srai       zero, s6, 23
                  xori       t5, t2, 800
                  sltu       a2, s3, s1
                  slli       s11, s4, 10
                  srai       s11, s8, 3
                  sltiu      gp, t3, -309
                  srl        t4, s3, a7
                  srai       a4, zero, 18
                  addi       t3, sp, 676
                  slt        a5, t2, s5
                  sub        tp, s4, zero
                  ori        s8, a0, 720
                  add        a3, ra, sp
                  xori       a3, t5, 543
                  xori       s6, a0, 974
                  slt        s5, s7, t2
                  slt        t4, s10, a5
                  xori       ra, s10, -111
                  slt        a4, tp, s1
                  sra        ra, a5, t1
                  addi       t4, t2, -268
                  xor        t0, a3, s2
                  or         a4, gp, t6
                  auipc      a4, 31873
                  slt        a0, t0, s4
                  sltiu      sp, a5, -912
                  sra        a5, t0, a2
                  sub        t3, a3, t6
                  srai       a1, a7, 22
                  add        s2, t2, a7
                  addi       s11, t4, -781
                  slt        s8, s5, s3
                  ori        t4, s8, 30
                  sra        t2, a5, s7
                  srai       a1, s1, 12
                  nop
                  srai       zero, ra, 12
                  slli       gp, a5, 25
                  slti       s8, t3, -867
                  sltu       s5, zero, tp
                  and        t4, a4, a6
                  sltiu      s9, tp, 320
                  srl        a5, t2, s1
                  slli       t1, t2, 9
                  srl        a6, tp, a5
                  xor        zero, a3, s1
                  sll        a5, t4, t4
                  slt        a6, sp, s1
                  srli       t1, sp, 15
                  lui        s8, 295242
                  lui        ra, 759325
                  nop
                  sub        sp, s11, t5
                  addi       a3, a5, 207
                  xori       t5, t5, -729
                  srli       t2, t2, 9
                  sltu       s2, a3, s4
                  ori        sp, s7, 827
                  add        t2, gp, a3
                  sll        t0, s5, a0
                  auipc      s8, 496166
                  xori       t4, s0, -224
                  lui        a6, 312061
                  auipc      t3, 88199
                  sltiu      t3, t2, -361
                  sll        s5, a3, s9
                  srli       a7, s2, 25
                  sltiu      t1, s5, 352
                  sra        t2, ra, a1
                  add        a2, a0, tp
                  auipc      t5, 693010
                  addi       t5, a5, -144
                  sub        a7, t6, s2
                  and        s8, zero, sp
                  sll        a3, s10, zero
                  sltu       a4, a2, a0
                  or         ra, s8, ra
                  srai       s3, s7, 28
                  srl        s7, s2, a0
                  sra        a5, ra, s8
                  and        a4, a5, gp
                  srli       a0, zero, 12
                  slli       tp, a2, 12
                  srli       a0, a5, 2
                  sltiu      t2, s5, -774
                  xori       a1, s5, 439
                  slti       a7, s10, 33
                  add        t5, ra, s4
                  nop
                  add        s2, t6, t3
                  xori       a6, s5, -442
                  sub        a6, s9, a6
                  sra        t0, a2, tp
                  sub        a7, a2, s0
                  slt        zero, gp, s1
                  srl        t5, s4, t2
                  sra        t1, s2, ra
                  sll        s7, s4, s10
                  auipc      t0, 541383
                  srl        tp, a7, s10
                  slt        a2, s2, s9
                  and        ra, t6, s11
                  andi       sp, t3, 725
                  addi       t1, s11, 602
                  and        ra, s1, s10
                  andi       s7, zero, 284
                  lui        s8, 737747
                  srl        a4, t1, s2
                  sll        t6, t2, s11
                  xor        a4, a2, t3
                  add        s2, s6, s7
                  and        t3, a0, t6
                  xori       t3, a5, -501
                  srli       s3, t3, 21
                  or         s0, s2, s1
                  sltiu      t5, a6, 787
                  sll        a1, a5, a6
                  slli       s5, a1, 10
                  srl        t3, t2, s11
                  slti       gp, s1, -532
                  and        zero, t0, a5
                  srli       t5, s0, 2
                  sltiu      s3, a6, 362
                  slt        gp, s11, t0
                  slti       s7, a1, -423
                  sltiu      t4, s6, -918
                  xor        t0, t0, s8
                  xor        a2, s4, a0
                  sltu       s11, s5, s3
                  sltu       s9, a0, t1
                  and        a6, sp, a6
                  sll        a7, ra, zero
                  lui        a0, 778561
                  sltiu      s5, s3, 576
                  andi       a7, t6, -55
                  add        a3, a6, s9
                  slti       s9, t6, 30
                  slt        t1, a1, a4
                  sltu       a3, s4, gp
                  sltu       t3, a1, t3
                  sltu       t3, a7, sp
                  add        a4, s8, a0
                  or         zero, a3, t5
                  sltiu      a2, a3, 935
                  srl        a2, s10, s5
                  sltiu      t6, s6, 451
                  and        s9, t2, s7
                  sll        t2, s0, ra
                  srli       t3, s1, 8
                  slti       s7, t3, 238
                  and        a3, s9, a3
                  srli       a2, a0, 4
                  sltiu      s2, s5, -714
                  sltiu      tp, a2, 160
                  andi       a7, a0, -65
                  slti       a1, s6, -594
                  lui        s9, 532841
                  srl        a4, ra, s0
                  andi       ra, s5, -665
                  addi       a6, a0, 495
                  auipc      tp, 188919
                  srl        a2, a6, a2
                  srai       t5, gp, 7
                  xor        sp, s7, s8
                  ori        s8, s6, -151
                  slt        t6, a1, gp
                  xori       a2, t6, 840
                  ori        t4, s10, 138
                  or         s5, s7, tp
                  slti       zero, s9, -68
                  auipc      s5, 444058
                  or         s5, a7, s0
                  slli       sp, a4, 18
                  or         a6, tp, tp
                  add        s7, t5, a0
                  or         s5, a3, tp
                  add        t3, s4, s5
                  srli       a5, a7, 22
                  or         a3, a1, s5
                  slli       t0, s5, 18
                  and        t6, s11, a7
                  lui        zero, 745664
                  slti       t6, gp, -644
                  or         s6, t1, t6
                  xori       a2, a4, 227
                  addi       sp, t3, 123
                  srai       a2, a5, 30
                  andi       a7, s2, 433
                  addi       t3, tp, -322
                  sltu       t6, a3, sp
                  sra        t3, s4, tp
                  xori       t1, s6, 264
                  and        t6, tp, s8
                  sltiu      s8, s1, -823
                  add        a0, gp, a7
                  sltu       t3, s5, t6
                  srl        s7, sp, sp
                  nop
                  sltiu      gp, a4, -667
                  or         t5, s2, t6
                  nop
                  and        tp, t1, a7
                  sra        a2, s5, t5
                  xori       s2, ra, 80
                  srl        ra, a2, t1
                  lui        a2, 145643
                  srai       s9, t2, 6
                  addi       s5, gp, -369
                  srl        a2, t4, t2
                  add        a0, t2, s8
                  srli       a7, s6, 22
                  lui        a6, 571558
                  andi       zero, a0, -611
                  sltu       t5, s1, t5
                  ori        a3, a0, 601
                  sra        t4, s5, a7
                  and        sp, t1, tp
                  or         s3, a7, zero
                  srai       s2, t5, 19
                  srli       s8, t1, 19
                  xor        tp, tp, t4
                  and        a4, s0, a2
                  sll        t3, s3, t2
                  add        tp, tp, t3
                  srli       a0, a5, 3
                  sub        s6, s2, s3
                  sll        a2, t5, s5
                  srl        s7, s8, a7
                  add        t1, s10, s5
                  sub        t3, ra, tp
                  sll        a6, t2, a0
                  srl        s7, t6, t5
                  sll        a2, s9, a3
                  ori        s3, t5, -349
                  slti       sp, s10, -878
                  sra        s7, a7, t2
                  srli       t2, sp, 3
                  srai       s3, ra, 29
                  sll        a1, s5, s10
                  auipc      s2, 370331
                  and        gp, zero, t6
                  srli       a1, a6, 2
                  slli       t5, s7, 1
                  sltu       zero, a4, t4
                  ori        a1, gp, -269
                  andi       s11, tp, -271
                  ori        s0, t5, 696
                  sltu       s2, a5, t3
                  slli       s2, s9, 29
                  sll        a4, s4, t0
                  slli       a7, sp, 20
                  sub        s5, a2, s8
                  srl        tp, t2, a2
                  sra        s6, t6, t0
                  srai       t4, t2, 23
                  sll        a1, t0, s7
                  or         t3, a4, s4
                  sra        s11, s11, gp
                  sltu       a2, a2, s8
                  lui        sp, 254055
                  srl        a4, t5, t6
                  sra        a6, t1, a6
                  and        a3, s0, s5
                  sltiu      s11, a3, 1017
                  nop
                  sltiu      t6, s11, -738
                  srli       s0, t1, 30
                  lui        sp, 669344
                  nop
                  nop
                  add        a2, t4, gp
                  addi       s0, s0, 927
                  sltu       sp, sp, t0
                  sll        s0, a4, t2
                  slli       a7, t3, 26
                  addi       s11, s0, -781
                  sltiu      t5, t6, 433
                  ori        a2, gp, -989
                  or         t2, a3, a7
                  auipc      t0, 718225
                  srl        t1, t2, a1
                  auipc      t1, 570372
                  sra        a3, s6, t0
                  srl        a7, a6, a3
                  sltu       a4, s6, s5
                  sra        s8, s7, s9
                  xori       sp, tp, 882
                  srai       t2, a5, 6
                  srli       s9, a3, 23
                  sll        s0, t6, s1
                  srl        t3, gp, s1
                  auipc      t6, 8301
                  nop
                  sltu       a1, s6, a3
                  sub        tp, t1, s9
                  add        a3, a7, t5
                  slt        ra, a4, s8
                  auipc      s0, 565424
                  sll        a1, s6, tp
                  sra        s9, a3, t2
                  xor        t3, a3, s6
                  sltu       a7, s7, a2
                  ori        ra, s6, -933
                  srli       a5, a5, 22
                  sra        a2, s8, s9
                  sll        t5, s2, s8
                  slli       t3, a7, 30
                  addi       a6, s7, -483
                  ori        s7, s8, -386
                  nop
                  sltu       t6, s11, t0
                  slti       a0, s10, -503
                  slti       s3, a0, 429
                  or         sp, t0, t2
                  and        s9, a5, gp
                  sll        a7, t6, s2
                  xor        s2, ra, s0
                  ori        s0, s4, -735
                  srai       a2, s1, 7
                  xori       t1, s9, 559
                  srl        s7, s3, s2
                  add        a1, s8, s4
                  ori        s5, gp, -621
                  slli       a4, t4, 8
                  sltu       a7, a2, a5
                  sll        a0, a5, t6
                  srai       a7, t3, 4
                  or         t5, a7, a5
                  auipc      s5, 264091
                  xor        a0, s9, s5
                  auipc      s0, 201026
                  ori        s0, gp, 836
                  srl        t5, s5, a5
                  ori        t6, tp, -606
                  addi       s6, t3, -894
                  sltiu      tp, s6, 827
                  xori       a6, a1, -70
                  xor        t2, a4, s9
                  auipc      tp, 622385
                  sll        s9, a5, a0
                  add        ra, zero, s10
                  xor        a3, s8, sp
                  addi       s9, s3, -962
                  srli       gp, a2, 16
                  sra        a2, t3, t5
                  lui        s8, 501351
                  sltiu      zero, s3, -608
                  sltiu      ra, s5, 957
                  srli       t6, a3, 0
                  ori        a1, a7, 978
                  nop
                  sub        s0, s10, a3
                  xori       t1, t1, 549
                  xori       a1, s10, -201
                  lui        a2, 528573
                  lui        t3, 296396
                  srai       s7, sp, 8
                  add        s3, s8, t5
                  auipc      a7, 26993
                  addi       s3, zero, 229
                  sltiu      a0, a0, -866
                  lui        a3, 437755
                  xor        tp, s9, a2
                  slt        s0, a7, s9
                  sltu       s9, s9, a5
                  sltu       s0, a7, a3
                  sltiu      s2, zero, 516
                  andi       s2, s5, 538
                  or         a7, t0, s5
                  sra        a7, s4, a0
                  and        a1, t3, t6
                  sltu       a6, s4, gp
                  srli       t2, s5, 5
                  lui        ra, 161881
                  xor        a1, s4, a4
                  slli       t3, s11, 11
                  addi       t2, s0, 877
                  sll        s8, a7, ra
                  xor        gp, zero, t5
                  nop
                  slt        s9, a6, s4
                  nop
                  slti       s6, a5, -484
                  srl        s2, s9, tp
                  andi       t0, ra, -570
                  addi       s9, tp, -471
                  addi       a0, t4, -569
                  srl        a0, s9, ra
                  sll        s8, a7, t5
                  ori        ra, t3, -972
                  andi       s3, s11, 1003
                  lui        ra, 675016
                  addi       s3, a5, -402
                  slli       a0, s2, 10
                  add        s8, s10, a7
                  srl        a1, s2, s11
                  slli       t6, a2, 24
                  or         t3, a7, s0
                  add        a3, s0, sp
                  and        s2, s0, gp
                  slti       t1, s5, -701
                  sub        a4, zero, s8
                  slti       gp, a2, -881
                  slti       s9, t3, 53
                  ori        s0, a0, 270
                  srai       a1, t4, 18
                  slt        t6, t0, s6
                  add        s7, s1, t6
                  andi       s3, s0, 419
                  add        a3, tp, t4
                  sltiu      sp, s5, 942
                  srai       s2, s0, 27
                  srl        sp, s0, s7
                  nop
                  add        a7, t6, t4
                  slt        sp, gp, a5
                  sll        a4, t6, t6
                  slt        ra, a5, t3
                  xor        t3, t0, a7
                  srli       s11, a5, 30
                  ori        a1, s1, 144
                  sltu       t4, zero, s9
                  xori       s2, a1, -250
                  sltiu      zero, t1, 232
                  slli       a6, s0, 22
                  sra        a2, s9, a5
                  srl        zero, s4, t5
                  sltiu      s7, s8, -662
                  auipc      s3, 733627
                  xor        t5, s3, t5
                  sub        a3, t1, s2
                  or         t5, s3, s10
                  ori        sp, a5, -991
                  srl        gp, s3, t6
                  sll        s9, a3, a1
                  xor        s11, t1, gp
                  addi       a5, s10, -256
                  and        s11, a3, s2
                  nop
                  add        s11, gp, t4
                  slli       s8, t1, 11
                  slli       t6, a6, 27
                  xor        a4, a3, t4
                  slti       t2, s7, -225
                  sub        t6, zero, a0
                  sub        t4, t1, s4
                  or         s7, t4, s3
                  and        a5, sp, s5
                  srl        a0, a6, a3
                  ori        t4, a0, -535
                  sra        s7, s3, zero
                  sra        s2, a7, s10
                  andi       sp, t6, -900
                  auipc      tp, 549772
                  ori        s5, zero, -796
                  xori       a0, a6, -907
                  andi       s9, a5, 915
                  sltiu      a4, t5, -605
                  lui        ra, 588689
                  sra        a0, s2, a0
                  xor        t5, t3, t6
                  xor        s9, ra, gp
                  or         s8, s5, t1
                  lui        sp, 468570
                  sltu       a6, a3, s5
                  sra        s9, t6, s7
                  addi       a7, t6, -224
                  sltiu      t6, t1, -1001
                  slti       t3, s5, 259
                  srl        zero, t0, ra
                  sra        a7, a4, a6
                  and        s2, t6, t4
                  ori        ra, s9, 415
                  ori        a2, t0, -979
                  srl        t5, t1, t1
                  slt        a0, s6, a5
                  add        s5, s5, gp
                  slli       s8, t2, 16
                  nop
                  slti       t4, ra, -837
                  slli       t5, a0, 6
                  addi       a0, s9, -717
                  slli       t1, a2, 15
                  lui        a5, 801017
                  or         a5, t5, t4
                  sltiu      t5, a4, -660
                  and        s11, s7, s7
                  and        a0, t4, a3
                  ori        a3, t5, 81
                  slt        s8, a4, s9
                  ori        gp, gp, -602
                  sltiu      s8, s8, -476
                  slti       a0, s2, -259
                  andi       s5, s0, -400
                  ori        s5, zero, 140
                  slt        t4, a5, s10
                  sub        s11, s6, t5
                  srli       t1, a6, 15
                  srl        s11, a5, sp
                  slli       a4, s0, 12
                  xori       s8, s5, -946
                  sll        s6, s9, s1
                  slli       tp, s9, 2
                  ori        t1, s10, -526
                  sra        ra, ra, a3
                  lui        s9, 12980
                  slti       sp, s5, -915
                  or         a5, a2, ra
                  sltiu      s2, s1, -298
                  sra        t5, s8, t4
                  srli       s5, s8, 6
                  slti       t2, a2, -262
                  auipc      t1, 844557
                  srli       a7, a5, 2
                  sub        t5, a3, t4
                  or         t2, tp, t6
                  nop
                  sltu       t1, sp, t4
                  nop
                  and        ra, gp, sp
                  srli       sp, zero, 16
                  srai       t5, a3, 19
                  andi       s0, sp, -197
                  srai       s11, t0, 18
                  and        t2, zero, t1
                  slli       s2, a5, 10
                  srli       a2, s10, 12
                  andi       gp, s3, -523
                  or         ra, ra, s3
                  slli       s3, ra, 11
                  slti       ra, s2, 55
                  andi       s5, t6, 622
                  sltu       ra, a2, t0
                  add        s8, a6, a2
                  lui        a5, 908050
                  xori       s3, s8, -1019
                  nop
                  addi       s6, t2, -954
                  slli       a4, s7, 16
                  srai       s8, ra, 12
                  lui        t1, 837841
                  add        t2, ra, s11
                  and        a7, a0, s2
                  auipc      sp, 320770
                  srai       t0, s3, 1
                  addi       t6, t2, 776
                  sltu       tp, t5, s11
                  sltu       t0, s1, a4
                  lui        s9, 869156
                  nop
                  sra        a0, a7, gp
                  nop
                  sra        t1, a3, s8
                  sll        a1, a3, s6
                  srl        a6, t6, s5
                  auipc      ra, 401268
                  sub        t6, a2, t6
                  xor        t2, s6, s9
                  ori        t1, t6, -730
                  slti       t3, a2, 460
                  sub        a3, a5, a2
                  add        a0, t5, a5
                  sltiu      ra, t5, -853
                  sltu       s8, sp, tp
                  sll        a3, s4, a7
                  lui        sp, 45517
                  and        a3, a7, t3
                  and        s2, t6, a1
                  and        s0, s5, t6
                  srl        a5, s8, t0
                  andi       t0, s5, -541
                  slli       a5, a6, 2
                  lui        zero, 360739
                  sra        s6, s7, t2
                  and        a6, s1, s1
                  srli       tp, sp, 20
                  nop
                  sll        ra, a7, zero
                  sll        s0, s10, t3
                  srai       s8, a3, 26
                  lui        ra, 637077
                  auipc      a5, 79050
                  nop
                  srai       s9, a4, 30
                  xor        t6, sp, a0
                  srli       t0, s11, 9
                  or         a2, a1, s5
                  sub        s9, ra, s8
                  srl        a2, t0, s0
                  sub        a3, s0, a2
                  sll        tp, t1, s9
                  srai       s5, s3, 9
                  ori        a1, s11, 983
                  srli       zero, t4, 30
                  slt        ra, t0, a2
                  sra        ra, s0, s6
                  sltu       s9, a7, a6
                  srl        t2, s5, t2
                  or         s9, s3, t6
                  addi       t3, s0, -125
                  sll        a7, s10, tp
                  sll        a3, s4, t6
                  add        t1, t1, a1
                  ori        a1, s1, -473
                  sltu       t6, t2, t0
                  srai       t4, s1, 10
                  srai       t0, t0, 12
                  nop
                  or         s3, s6, a0
                  and        t1, a6, s2
                  xori       s7, s11, 921
                  sll        zero, a3, t2
                  sltiu      s5, tp, -796
                  xori       a2, t1, -850
                  sll        t4, a1, s8
                  or         t4, a0, t1
                  srl        t5, s8, s1
                  auipc      t6, 836469
                  srai       s2, a3, 31
                  sra        a6, t4, a5
                  slli       t2, a3, 13
                  xori       ra, a4, -3
                  addi       s2, t1, 721
                  auipc      s6, 110521
                  xori       a7, zero, -551
                  or         s6, t4, a0
                  slli       a0, a7, 11
                  auipc      ra, 485025
                  sll        ra, t3, a4
                  xor        a3, s2, s8
                  addi       t2, sp, 280
                  sltu       a2, t5, t6
                  srli       s7, s9, 20
                  sll        a4, s7, gp
                  nop
                  srli       sp, t3, 28
                  sub        tp, a4, s10
                  srli       a7, s5, 7
                  add        s3, s2, a5
                  nop
                  xor        s6, t3, s1
                  add        s0, a4, a7
                  add        t0, t2, a3
                  sra        s9, s3, s3
                  andi       t3, a2, 201
                  slli       s7, t6, 12
                  slli       gp, s11, 9
                  sra        t1, a7, a6
                  sltiu      s3, s2, 738
                  auipc      t4, 739365
                  sltu       a0, gp, s3
                  sub        zero, s4, a3
                  slti       s0, t3, -418
                  add        t0, s9, a0
                  sub        a5, a7, a3
                  and        s8, a0, a0
                  lui        s6, 50187
                  add        a6, a2, s1
                  auipc      s3, 455627
                  srl        a7, a1, t6
                  ori        t3, t1, 948
                  sub        t4, a5, s4
                  slt        s5, s0, t2
                  xori       s11, s5, -70
                  addi       a0, a7, 852
                  sltu       a1, a6, a3
                  addi       a4, s10, -372
                  andi       a6, s4, -905
                  nop
                  sub        t5, tp, t3
                  slti       sp, a3, -27
                  sltu       a5, tp, t1
                  addi       s2, t0, 640
                  sub        tp, s11, sp
                  slli       zero, tp, 15
                  addi       t1, ra, -82
                  sltu       t4, s2, t5
                  sltiu      a7, gp, 113
                  andi       t6, s5, -650
                  srai       t6, t4, 7
                  andi       a1, a3, 225
                  sra        s7, t5, ra
                  sll        s8, s7, s0
                  srli       t6, a2, 13
                  ori        s0, s6, 885
                  sra        s8, s7, ra
                  and        ra, a4, t0
                  xori       t2, s11, 594
                  sub        a7, a3, a6
                  auipc      t4, 854559
                  and        t3, a7, s3
                  slt        s7, t1, tp
                  slli       a2, a2, 7
                  nop
                  sra        s0, t4, a2
                  slti       s0, a5, -94
                  lui        s7, 958288
                  srli       t3, a4, 4
                  sltiu      tp, tp, -219
                  add        a7, a4, s5
                  srai       s6, s4, 5
                  or         a5, t1, a7
                  slli       tp, a6, 4
                  ori        a7, a1, 129
                  xori       s11, a1, 49
                  nop
                  sltu       gp, a6, s7
                  auipc      t1, 790847
                  sub        t4, s11, t4
                  nop
                  sll        a5, t0, t2
                  sra        t1, a5, a1
                  or         s6, sp, s10
                  slti       s7, t0, -624
                  sll        s3, ra, a0
                  xori       ra, a4, -829
                  slt        tp, s7, a5
                  sra        t6, t4, s11
                  nop
                  slli       a0, t0, 12
                  sltu       a3, a4, a5
                  andi       t6, gp, 32
                  nop
                  slli       zero, a2, 17
                  srl        tp, s6, s7
                  sra        t3, s5, s3
                  slt        t3, t4, a2
                  sra        sp, t4, s1
                  slti       a5, gp, 940
                  sll        a4, t2, t5
                  xori       s9, t5, 428
                  sra        t2, s8, a7
                  ori        s11, t3, -329
                  slt        gp, a0, a7
                  sltiu      a1, t5, -407
                  andi       t1, s0, -878
                  srli       t0, t6, 16
                  srli       a7, t3, 20
                  srai       s11, s10, 9
                  or         t1, gp, s5
                  xor        t3, s3, tp
                  srli       t6, tp, 25
                  auipc      tp, 986072
                  srli       s6, a5, 13
                  sltu       a7, t6, t2
                  or         a3, zero, a4
                  sra        s8, a1, s5
                  slli       t3, s9, 29
                  srli       t2, a4, 1
                  sll        a6, t4, s5
                  sra        t5, gp, t1
                  srai       t5, tp, 19
                  andi       t2, s2, 205
                  xor        s6, s4, t3
                  lui        a4, 861841
                  slt        s9, s6, t3
                  slt        s2, s11, t6
                  sub        s7, t5, a4
                  srli       a6, t2, 1
                  or         t6, s7, a0
                  slt        s8, sp, a3
                  auipc      a1, 812450
                  nop
                  lui        tp, 157613
                  ori        ra, s2, -253
                  andi       s5, a4, -537
                  addi       t6, s7, -590
                  sltu       tp, a3, t3
                  srli       sp, a6, 20
                  ori        s7, a3, -772
                  andi       t6, s9, -660
                  add        t0, s5, s4
                  addi       s2, a5, -360
                  slti       s7, s10, -626
                  slt        tp, a6, tp
                  andi       tp, t5, -659
                  srl        s9, a2, ra
                  or         zero, s1, t5
                  or         a2, s7, t4
                  or         t6, s4, s0
                  slt        s6, sp, t1
                  sra        s9, sp, gp
                  sub        t4, tp, tp
                  sub        t2, s4, s5
                  slti       s3, t5, -556
                  ori        t5, s9, 337
                  ori        t3, s9, 534
                  slt        a2, gp, a4
                  add        t5, s2, s8
                  and        s0, s1, s11
                  or         s8, a3, t0
                  auipc      s6, 198609
                  sub        ra, a7, s3
                  slti       a6, a6, -921
                  xori       t3, a1, 26
                  add        s2, t2, t2
                  lui        s3, 632087
                  sltu       a0, s11, s6
                  sub        s7, t2, sp
                  slt        s3, ra, s6
                  or         t0, t2, a0
                  sltu       t6, t6, zero
                  sltu       s11, t4, a2
                  slti       ra, tp, 225
                  xor        gp, s3, a3
                  slti       tp, t3, 856
                  auipc      ra, 475720
                  slti       sp, s5, 909
                  srl        tp, ra, t3
                  add        tp, a5, a7
                  add        t4, t3, t6
                  srli       tp, s6, 3
                  srli       a6, s1, 27
                  add        s5, s10, a2
                  slti       a5, t3, -675
                  sltu       s2, s4, t5
                  slt        t1, a4, s5
                  slli       a3, a0, 22
                  slti       a2, t2, -258
                  sltu       a6, t3, s8
                  ori        s5, s3, 759
                  addi       t4, s2, -501
                  sra        a1, t5, ra
                  xor        zero, a7, a6
                  auipc      a5, 341643
                  add        t0, zero, a2
                  lui        a3, 747180
                  srai       a2, gp, 19
                  nop
                  sub        a5, t4, t5
                  slli       t1, a2, 24
                  sub        t6, ra, s3
                  and        gp, t1, a4
                  sltu       a7, t6, a5
                  sra        tp, a0, a0
                  slt        a3, s0, ra
                  srli       t0, a4, 24
                  srli       gp, zero, 9
                  xori       s7, a7, -370
                  sub        t2, t6, t5
                  sub        s7, a3, s11
                  srl        s6, gp, gp
                  srli       a0, s4, 26
                  xor        t6, s4, t0
                  srli       a6, a3, 13
                  sltu       tp, s4, gp
                  sll        s9, t4, a4
                  srl        s7, t6, gp
                  slli       t4, ra, 29
                  sll        s8, sp, t4
                  or         a3, a7, t1
                  sub        s3, a6, gp
                  srli       a5, t1, 24
                  sub        a2, sp, s0
                  nop
                  lui        t4, 767850
                  sub        t5, a5, a5
                  sll        a6, s3, a0
                  slt        zero, s8, s7
                  andi       a2, s4, 266
                  sub        ra, s3, sp
                  srli       t2, sp, 29
                  sll        sp, sp, s7
                  add        sp, t5, s4
                  sltiu      a0, sp, 822
                  xori       t3, s11, 239
                  lui        a1, 379013
                  andi       t2, t5, 633
                  srai       s9, t1, 29
                  sub        gp, s11, a4
                  slt        s9, tp, t3
                  lui        t3, 158656
                  addi       a5, t4, -325
                  lui        a6, 450633
                  sll        a6, a5, sp
                  addi       t1, t2, 408
                  sll        t3, a7, s10
                  add        zero, a4, a0
                  and        t3, t3, s5
                  or         s3, t3, s4
                  slt        gp, t5, a1
                  xor        t6, s2, a3
                  xori       gp, s11, 114
                  xor        t6, s0, t1
                  andi       a2, ra, 830
                  sll        a7, t5, gp
                  srl        s5, a2, t5
                  addi       t2, a3, -862
                  sll        s2, s11, t6
                  srai       s5, sp, 28
                  nop
                  auipc      s9, 295385
                  slt        a2, a3, s8
                  nop
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_18
                  li         gp, 0x80000000
                  li         s2, 0x0
                  li         sp, 0x0
                  li         s5, 0xffffffff
                  li         t1, 0x33e02f26
                  li         t2, 0x60604fd8
                  li         a4, 0x0
                  li         a3, 0x0
                  li         tp, 0xffffffff
                  sub        s5, s2, tp
                  addi       sp, s5, 721
                  nop
                  add        t2, tp, t2
                  sub        s7, s2, a3
                  nop
                  sub        s5, t1, s2
                  addi       s2, s2, 310
                  auipc      s5, 75416
                  add        s2, t2, a4
                  addi       sp, tp, 599
                  auipc      t1, 493765
                  sub        sp, gp, gp
                  auipc      a3, 79614
                  add        s5, t2, gp
                  sub        t2, tp, s2
                  addi       s2, gp, -176
                  addi       tp, sp, -557
                  nop
                  lui        sp, 966091
                  add        tp, tp, sp
                  sub        sp, t1, tp
                  sub        t2, tp, a3
                  addi       tp, a4, 876
                  nop
                  auipc      s2, 909542
                  lui        a3, 849367 #end riscv_int_numeric_corner_stream_18
                  sltiu      s3, s7, 883
                  sltu       a5, ra, s2
                  sra        zero, sp, a2
                  sub        sp, s8, a0
                  srai       t2, s8, 24
                  sub        a0, t5, s10
                  sub        zero, a4, a7
                  sltiu      a5, a0, 129
                  and        a3, t5, s5
                  slli       s0, a5, 7
                  add        sp, t6, s0
                  li         t3, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li         a7, 0x73fcd540
                  li         tp, 0xffffffff
                  li         ra, 0x0
                  li         s11, 0xffffffff
                  li         t4, 0x4427b257
                  li         a3, 0x3871250b
                  li         s8, 0xffffffff
                  li         s6, 0x0
                  li         a6, 0x0
                  nop
                  nop
                  add        ra, s6, t3
                  nop
                  nop
                  addi       t3, a3, 760
                  addi       a7, ra, 393
                  addi       a6, a7, 209
                  addi       a6, a3, 317
                  nop
                  addi       a3, t3, 46
                  addi       t4, ra, 862
                  auipc      a7, 639975
                  addi       s8, a7, -303
                  sub        t3, t3, s6
                  addi       a6, ra, -103
                  lui        a7, 156637
                  auipc      s6, 1034871
                  nop
                  add        s6, s8, a3
                  sub        s6, t3, tp
                  addi       s11, a3, 339 #end riscv_int_numeric_corner_stream_32
                  addi       a2, s10, 461
                  srli       t1, gp, 23
                  slti       t0, s0, -248
                  sltiu      t4, a2, -400
                  sltu       t0, sp, t3
                  xori       a7, t3, -1014
                  srli       s5, s10, 17
                  and        s3, a3, s5
                  sra        t1, t6, zero
                  slli       s5, gp, 7
                  sltiu      t6, t4, -508
                  slli       a6, zero, 31
                  xor        a3, sp, a4
                  sltu       t3, s7, s4
                  xori       gp, a5, 928
                  sltu       s6, s1, s6
                  srai       sp, t4, 7
                  sltu       t5, s11, t1
                  nop
                  auipc      ra, 257136
                  or         t1, a1, s6
                  slt        a4, a0, s5
                  lui        s7, 430098
                  sub        a2, gp, t6
                  sltu       t4, a0, t6
                  srl        tp, t4, a0
                  auipc      s5, 409808
                  addi       s6, ra, 160
                  sll        a3, s7, t4
                  andi       s6, s5, -395
                  nop
                  nop
                  srli       a0, s9, 5
                  andi       s11, ra, -684
                  sra        t5, a6, t5
                  slt        t4, s3, s10
                  srai       t2, a3, 31
                  addi       t6, s6, -522
                  sra        s8, s11, zero
                  auipc      s2, 861853
                  nop
                  srl        a4, a6, s9
                  and        s11, a5, t6
                  srli       t6, s3, 7
                  xor        s7, zero, t5
                  sltu       ra, t1, s5
                  add        t1, s2, a0
                  sltiu      sp, s7, -985
                  sll        t1, s2, gp
                  srai       t6, t1, 11
                  srai       a1, t1, 19
                  srl        s5, t6, a2
                  srl        t3, a0, sp
                  or         s8, s8, s0
                  xor        t6, s0, s9
                  srli       sp, t3, 25
                  nop
                  slti       a4, sp, 63
                  sra        s0, t5, ra
                  andi       sp, s7, -630
                  nop
                  ori        s2, a4, 710
                  xori       t2, t5, -643
                  slt        a6, s6, zero
                  andi       t5, s0, -931
                  ori        t5, sp, -975
                  srli       s5, t1, 2
                  sll        s3, t6, a6
                  addi       zero, gp, -616
                  and        t4, a0, t6
                  or         a0, s5, s2
                  xori       ra, a0, 243
                  slli       t1, s4, 24
                  addi       s2, s4, 986
                  sll        t4, s8, a7
                  add        a3, a7, a7
                  srl        a2, a6, ra
                  srai       t3, zero, 13
                  slti       s8, zero, 274
                  slt        a0, a4, s6
                  or         a5, a2, t0
                  sll        a4, a0, s3
                  slti       t0, s6, 902
                  nop
                  and        a3, s1, s1
                  nop
                  and        t4, t3, t5
                  xor        a4, a4, a1
                  sll        a3, a4, a1
                  andi       a6, s5, -770
                  sltu       a1, a7, t4
                  andi       sp, s7, 988
                  sra        a7, s11, ra
                  add        a7, s3, a1
                  andi       a4, a4, -920
                  srl        a1, t6, a2
                  ori        a6, sp, -33
                  addi       a0, a3, -638
                  sltiu      ra, t2, -597
                  lui        tp, 142806
                  slli       s0, sp, 24
                  sll        t0, t0, a5
                  slt        s6, s11, s11
                  addi       gp, s4, 127
                  nop
                  sra        ra, t6, s7
                  srl        s3, s1, s10
                  srl        a2, ra, s9
                  sltu       s6, s1, s6
                  andi       a0, t3, 69
                  addi       s2, s7, -795
                  xori       gp, a3, 121
                  nop
                  srl        s7, t0, a1
                  j test_done
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  li x15, 0x0
                  csrw 0x304, x15 # MIE
                  mret
instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align           2
mtvec_handler:    
                  csrrw x9, 0x340, x9
                  add x9, x20, zero
                  1: addi x9, x9, -124
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x15, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x15, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x15, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x15, x7, ecall_handler
                  li x7, 0x1
                  beq x15, x7, instr_fault_handler
                  li x7, 0x5
                  beq x15, x7, load_fault_handler
                  li x7, 0x7
                  beq x15, x7, store_fault_handler
                  li x7, 0xc
                  beq x15, x7, pt_fault_handler
                  li x7, 0xd
                  beq x15, x7, pt_fault_handler
                  li x7, 0xf
                  beq x15, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: jal x1, test_done 

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  j write_tohost
instr_fault_handler:
                  li x15, 0
                  csrw 0x340, x15
                  li x11, 0
                  0: csrr x15, 0x340
                  mv x26, x15
                  li x26, 0
                  beq x15, x26, 1f
                  1: csrr x7, 0x3b0
                  csrr x25, 0x3a0
                  j 17f
                  17: li x23, 4
                  csrr x15, 0x340
                  slli x15, x15, 30
                  srli x15, x15, 30
                  sub x26, x23, x15
                  addi x26, x26, -1
                  slli x26, x26, 3
                  sll x23, x25, x26
                  slli x15, x15, 3
                  add x26, x26, x15
                  srl x23, x23, x26
                  slli x26, x23, 27
                  srli x26, x26, 30
                  beqz x26, 20f
                  li x15, 1
                  beq x26, x15, 21f
                  li x15, 2
                  beq x26, x15, 25f
                  li x15, 3
                  beq x26, x15, 27f
                  j test_done
                  18: csrr x15, 0x340
                  mv x11, x7
                  addi x15, x15, 1
                  csrw 0x340, x15
                  li x7, 1
                  ble x7, x15, 19f
                  j 0b
                  19: j test_done
                  20: j 18b
                  21: csrr x15, 0x340
                  csrr x26, 0x343
                  srli x26, x26, 2
                  bnez x15, 22f
                  bltz x26, 18b
                  j 23f
                  22: bgtu x11, x26, 18b
                  23: bleu x7, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 24f
                  j test_done
                  24: j 29f
                  25: csrr x15, 0x343
                  srli x15, x15, 2
                  slli x26, x7, 2
                  srli x26, x26, 2
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 26f
                  j test_done
                  26: j 29f
                  27: csrr x15, 0x343
                  srli x15, x15, 2
                  srli x15, x15, 0
                  slli x15, x15, 0
                  slli x26, x7, 2
                  srli x26, x26, 2
                  srli x26, x26, 0
                  slli x26, x26, 0
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 29f
                  j test_done
                  28: j 29f
                  29: ori x23, x23, 4
                  csrr x15, 0x340
                  li x26, 30
                  sll x15, x15, x26
                  srl x15, x15, x26
                  slli x26, x15, 3
                  sll x23, x23, x26
                  or x25, x25, x23
                  csrr x15, 0x340
                  srli x15, x15, 2
                  beqz x15, 30f
                  li x26, 1
                  beq x15, x26, 31f
                  li x26, 2
                  beq x15, x26, 32f
                  li x26, 3
                  beq x15, x26, 33f
                  30: csrw 0x3a0, x25
                  j 34f
                  31: csrw 0x3a1, x25
                  j 34f
                  32: csrw 0x3a2, x25
                  j 34f
                  33: csrw 0x3a3, x25
                  34: nop
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret

load_fault_handler:
                  li x15, 0
                  csrw 0x340, x15
                  li x11, 0
                  0: csrr x15, 0x340
                  mv x26, x15
                  li x26, 0
                  beq x15, x26, 1f
                  1: csrr x7, 0x3b0
                  csrr x25, 0x3a0
                  j 17f
                  17: li x23, 4
                  csrr x15, 0x340
                  slli x15, x15, 30
                  srli x15, x15, 30
                  sub x26, x23, x15
                  addi x26, x26, -1
                  slli x26, x26, 3
                  sll x23, x25, x26
                  slli x15, x15, 3
                  add x26, x26, x15
                  srl x23, x23, x26
                  slli x26, x23, 27
                  srli x26, x26, 30
                  beqz x26, 20f
                  li x15, 1
                  beq x26, x15, 21f
                  li x15, 2
                  beq x26, x15, 25f
                  li x15, 3
                  beq x26, x15, 27f
                  j test_done
                  18: csrr x15, 0x340
                  mv x11, x7
                  addi x15, x15, 1
                  csrw 0x340, x15
                  li x7, 1
                  ble x7, x15, 19f
                  j 0b
                  19: j test_done
                  20: j 18b
                  21: csrr x15, 0x340
                  csrr x26, 0x343
                  srli x26, x26, 2
                  bnez x15, 22f
                  bltz x26, 18b
                  j 23f
                  22: bgtu x11, x26, 18b
                  23: bleu x7, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 24f
                  j test_done
                  24: j 29f
                  25: csrr x15, 0x343
                  srli x15, x15, 2
                  slli x26, x7, 2
                  srli x26, x26, 2
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 26f
                  j test_done
                  26: j 29f
                  27: csrr x15, 0x343
                  srli x15, x15, 2
                  srli x15, x15, 0
                  slli x15, x15, 0
                  slli x26, x7, 2
                  srli x26, x26, 2
                  srli x26, x26, 0
                  slli x26, x26, 0
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 29f
                  j test_done
                  28: j 29f
                  29: ori x23, x23, 1
                  csrr x15, 0x340
                  li x26, 30
                  sll x15, x15, x26
                  srl x15, x15, x26
                  slli x26, x15, 3
                  sll x23, x23, x26
                  or x25, x25, x23
                  csrr x15, 0x340
                  srli x15, x15, 2
                  beqz x15, 30f
                  li x26, 1
                  beq x15, x26, 31f
                  li x26, 2
                  beq x15, x26, 32f
                  li x26, 3
                  beq x15, x26, 33f
                  30: csrw 0x3a0, x25
                  j 34f
                  31: csrw 0x3a1, x25
                  j 34f
                  32: csrw 0x3a2, x25
                  j 34f
                  33: csrw 0x3a3, x25
                  34: nop
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret

store_fault_handler:
                  li x15, 0
                  csrw 0x340, x15
                  li x11, 0
                  0: csrr x15, 0x340
                  mv x26, x15
                  li x26, 0
                  beq x15, x26, 1f
                  1: csrr x7, 0x3b0
                  csrr x25, 0x3a0
                  j 17f
                  17: li x23, 4
                  csrr x15, 0x340
                  slli x15, x15, 30
                  srli x15, x15, 30
                  sub x26, x23, x15
                  addi x26, x26, -1
                  slli x26, x26, 3
                  sll x23, x25, x26
                  slli x15, x15, 3
                  add x26, x26, x15
                  srl x23, x23, x26
                  slli x26, x23, 27
                  srli x26, x26, 30
                  beqz x26, 20f
                  li x15, 1
                  beq x26, x15, 21f
                  li x15, 2
                  beq x26, x15, 25f
                  li x15, 3
                  beq x26, x15, 27f
                  j test_done
                  18: csrr x15, 0x340
                  mv x11, x7
                  addi x15, x15, 1
                  csrw 0x340, x15
                  li x7, 1
                  ble x7, x15, 19f
                  j 0b
                  19: j test_done
                  20: j 18b
                  21: csrr x15, 0x340
                  csrr x26, 0x343
                  srli x26, x26, 2
                  bnez x15, 22f
                  bltz x26, 18b
                  j 23f
                  22: bgtu x11, x26, 18b
                  23: bleu x7, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 24f
                  j test_done
                  24: j 29f
                  25: csrr x15, 0x343
                  srli x15, x15, 2
                  slli x26, x7, 2
                  srli x26, x26, 2
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 26f
                  j test_done
                  26: j 29f
                  27: csrr x15, 0x343
                  srli x15, x15, 2
                  srli x15, x15, 0
                  slli x15, x15, 0
                  slli x26, x7, 2
                  srli x26, x26, 2
                  srli x26, x26, 0
                  slli x26, x26, 0
                  bne x15, x26, 18b
                  andi x26, x23, 128
                  beqz x26, 29f
                  j test_done
                  28: j 29f
                  29: ori x23, x23, 3
                  csrr x15, 0x340
                  li x26, 30
                  sll x15, x15, x26
                  srl x15, x15, x26
                  slli x26, x15, 3
                  sll x23, x23, x26
                  or x25, x25, x23
                  csrr x15, 0x340
                  srli x15, x15, 2
                  beqz x15, 30f
                  li x26, 1
                  beq x15, x26, 31f
                  li x26, 2
                  beq x15, x26, 32f
                  li x26, 3
                  beq x15, x26, 33f
                  30: csrw 0x3a0, x25
                  j 34f
                  31: csrw 0x3a1, x25
                  j 34f
                  32: csrw 0x3a2, x25
                  j 34f
                  33: csrw 0x3a3, x25
                  34: nop
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 124
                  add x20, x9, zero
                  csrrw x9, 0x340, x9
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
