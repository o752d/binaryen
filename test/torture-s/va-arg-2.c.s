	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/va-arg-2.c"
	.section	.text.to_hex,"ax",@progbits
	.hidden	to_hex
	.globl	to_hex
	.type	to_hex,@function
to_hex:                                 # @to_hex
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	block
	i32.const	$push0=, 16
	i32.ge_u	$push1=, $0, $pop0
	br_if   	0, $pop1        # 0: down to label0
# BB#1:                                 # %if.end
	i32.load8_s	$push2=, .L.str($0)
	return  	$pop2
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	to_hex, .Lfunc_end0-to_hex

	.section	.text.f0,"ax",@progbits
	.hidden	f0
	.globl	f0
	.type	f0,@function
f0:                                     # @f0
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$3=, __stack_pointer
	i32.load	$3=, 0($3)
	i32.const	$4=, 16
	i32.sub 	$6=, $3, $4
	i32.const	$4=, __stack_pointer
	i32.store	$6=, 0($4), $6
	i32.store	$discard=, 12($6), $1
	block
	i32.call	$push0=, strlen@FUNCTION, $0
	i32.const	$push8=, 16
	i32.ne  	$push1=, $pop0, $pop8
	br_if   	0, $pop1        # 0: down to label1
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label3:
	i32.load8_u	$push10=, 0($0)
	tee_local	$push9=, $1=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label2
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	i32.load	$push2=, 12($6)
	i32.const	$push18=, 3
	i32.add 	$push3=, $pop2, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop3, $pop17
	tee_local	$push15=, $2=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push4=, $pop15, $pop14
	i32.store	$discard=, 12($6), $pop4
	i32.load	$push13=, 0($2)
	tee_local	$push12=, $2=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push5=, $pop12, $pop11
	br_if   	3, $pop5        # 3: down to label1
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB1_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$0=, $0, $pop19
	i32.load8_u	$push6=, .L.str($2)
	i32.eq  	$push7=, $1, $pop6
	br_if   	0, $pop7        # 0: up to label3
# BB#4:                                 # %if.then5
	end_loop                        # label4:
	call    	abort@FUNCTION
	unreachable
.LBB1_5:                                # %while.end
	end_block                       # label2:
	i32.const	$5=, 16
	i32.add 	$6=, $6, $5
	i32.const	$5=, __stack_pointer
	i32.store	$6=, 0($5), $6
	return
.LBB1_6:                                # %if.then.i
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	f0, .Lfunc_end1-f0

	.section	.text.f1,"ax",@progbits
	.hidden	f1
	.globl	f1
	.type	f1,@function
f1:                                     # @f1
	.param  	i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$4=, __stack_pointer
	i32.load	$4=, 0($4)
	i32.const	$5=, 16
	i32.sub 	$7=, $4, $5
	i32.const	$5=, __stack_pointer
	i32.store	$7=, 0($5), $7
	i32.store	$discard=, 12($7), $2
	block
	i32.call	$push0=, strlen@FUNCTION, $1
	i32.const	$push1=, 15
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label5
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label7:
	i32.load8_u	$push10=, 0($1)
	tee_local	$push9=, $2=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	i32.load	$push3=, 12($7)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $3=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($7), $pop5
	i32.load	$push13=, 0($3)
	tee_local	$push12=, $3=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label5
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$1=, $1, $pop19
	i32.load8_u	$push7=, .L.str($3)
	i32.eq  	$push8=, $2, $pop7
	br_if   	0, $pop8        # 0: up to label7
# BB#4:                                 # %if.then5
	end_loop                        # label8:
	call    	abort@FUNCTION
	unreachable
.LBB2_5:                                # %while.end
	end_block                       # label6:
	i32.const	$6=, 16
	i32.add 	$7=, $7, $6
	i32.const	$6=, __stack_pointer
	i32.store	$7=, 0($6), $7
	return
.LBB2_6:                                # %if.then.i
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	f1, .Lfunc_end2-f1

	.section	.text.f2,"ax",@progbits
	.hidden	f2
	.globl	f2
	.type	f2,@function
f2:                                     # @f2
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$5=, __stack_pointer
	i32.load	$5=, 0($5)
	i32.const	$6=, 16
	i32.sub 	$8=, $5, $6
	i32.const	$6=, __stack_pointer
	i32.store	$8=, 0($6), $8
	i32.store	$discard=, 12($8), $3
	block
	i32.call	$push0=, strlen@FUNCTION, $2
	i32.const	$push1=, 14
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label9
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label11:
	i32.load8_u	$push10=, 0($2)
	tee_local	$push9=, $3=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	i32.load	$push3=, 12($8)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $4=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($8), $pop5
	i32.load	$push13=, 0($4)
	tee_local	$push12=, $4=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label9
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$2=, $2, $pop19
	i32.load8_u	$push7=, .L.str($4)
	i32.eq  	$push8=, $3, $pop7
	br_if   	0, $pop8        # 0: up to label11
# BB#4:                                 # %if.then5
	end_loop                        # label12:
	call    	abort@FUNCTION
	unreachable
.LBB3_5:                                # %while.end
	end_block                       # label10:
	i32.const	$7=, 16
	i32.add 	$8=, $8, $7
	i32.const	$7=, __stack_pointer
	i32.store	$8=, 0($7), $8
	return
.LBB3_6:                                # %if.then.i
	end_block                       # label9:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end3:
	.size	f2, .Lfunc_end3-f2

	.section	.text.f3,"ax",@progbits
	.hidden	f3
	.globl	f3
	.type	f3,@function
f3:                                     # @f3
	.param  	i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$6=, __stack_pointer
	i32.load	$6=, 0($6)
	i32.const	$7=, 16
	i32.sub 	$9=, $6, $7
	i32.const	$7=, __stack_pointer
	i32.store	$9=, 0($7), $9
	i32.store	$discard=, 12($9), $4
	block
	i32.call	$push0=, strlen@FUNCTION, $3
	i32.const	$push1=, 13
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label13
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label15:
	i32.load8_u	$push10=, 0($3)
	tee_local	$push9=, $4=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	i32.load	$push3=, 12($9)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $5=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($9), $pop5
	i32.load	$push13=, 0($5)
	tee_local	$push12=, $5=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label13
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$3=, $3, $pop19
	i32.load8_u	$push7=, .L.str($5)
	i32.eq  	$push8=, $4, $pop7
	br_if   	0, $pop8        # 0: up to label15
# BB#4:                                 # %if.then5
	end_loop                        # label16:
	call    	abort@FUNCTION
	unreachable
.LBB4_5:                                # %while.end
	end_block                       # label14:
	i32.const	$8=, 16
	i32.add 	$9=, $9, $8
	i32.const	$8=, __stack_pointer
	i32.store	$9=, 0($8), $9
	return
.LBB4_6:                                # %if.then.i
	end_block                       # label13:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end4:
	.size	f3, .Lfunc_end4-f3

	.section	.text.f4,"ax",@progbits
	.hidden	f4
	.globl	f4
	.type	f4,@function
f4:                                     # @f4
	.param  	i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$7=, __stack_pointer
	i32.load	$7=, 0($7)
	i32.const	$8=, 16
	i32.sub 	$10=, $7, $8
	i32.const	$8=, __stack_pointer
	i32.store	$10=, 0($8), $10
	i32.store	$discard=, 12($10), $5
	block
	i32.call	$push0=, strlen@FUNCTION, $4
	i32.const	$push1=, 12
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label17
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label19:
	i32.load8_u	$push10=, 0($4)
	tee_local	$push9=, $5=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	i32.load	$push3=, 12($10)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $6=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($10), $pop5
	i32.load	$push13=, 0($6)
	tee_local	$push12=, $6=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label17
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$4=, $4, $pop19
	i32.load8_u	$push7=, .L.str($6)
	i32.eq  	$push8=, $5, $pop7
	br_if   	0, $pop8        # 0: up to label19
# BB#4:                                 # %if.then5
	end_loop                        # label20:
	call    	abort@FUNCTION
	unreachable
.LBB5_5:                                # %while.end
	end_block                       # label18:
	i32.const	$9=, 16
	i32.add 	$10=, $10, $9
	i32.const	$9=, __stack_pointer
	i32.store	$10=, 0($9), $10
	return
.LBB5_6:                                # %if.then.i
	end_block                       # label17:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end5:
	.size	f4, .Lfunc_end5-f4

	.section	.text.f5,"ax",@progbits
	.hidden	f5
	.globl	f5
	.type	f5,@function
f5:                                     # @f5
	.param  	i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$8=, __stack_pointer
	i32.load	$8=, 0($8)
	i32.const	$9=, 16
	i32.sub 	$11=, $8, $9
	i32.const	$9=, __stack_pointer
	i32.store	$11=, 0($9), $11
	i32.store	$discard=, 12($11), $6
	block
	i32.call	$push0=, strlen@FUNCTION, $5
	i32.const	$push1=, 11
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label21
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label23:
	i32.load8_u	$push10=, 0($5)
	tee_local	$push9=, $6=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label22
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	i32.load	$push3=, 12($11)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $7=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($11), $pop5
	i32.load	$push13=, 0($7)
	tee_local	$push12=, $7=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label21
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$5=, $5, $pop19
	i32.load8_u	$push7=, .L.str($7)
	i32.eq  	$push8=, $6, $pop7
	br_if   	0, $pop8        # 0: up to label23
# BB#4:                                 # %if.then5
	end_loop                        # label24:
	call    	abort@FUNCTION
	unreachable
.LBB6_5:                                # %while.end
	end_block                       # label22:
	i32.const	$10=, 16
	i32.add 	$11=, $11, $10
	i32.const	$10=, __stack_pointer
	i32.store	$11=, 0($10), $11
	return
.LBB6_6:                                # %if.then.i
	end_block                       # label21:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end6:
	.size	f5, .Lfunc_end6-f5

	.section	.text.f6,"ax",@progbits
	.hidden	f6
	.globl	f6
	.type	f6,@function
f6:                                     # @f6
	.param  	i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$9=, __stack_pointer
	i32.load	$9=, 0($9)
	i32.const	$10=, 16
	i32.sub 	$12=, $9, $10
	i32.const	$10=, __stack_pointer
	i32.store	$12=, 0($10), $12
	i32.store	$discard=, 12($12), $7
	block
	i32.call	$push0=, strlen@FUNCTION, $6
	i32.const	$push1=, 10
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label25
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label27:
	i32.load8_u	$push10=, 0($6)
	tee_local	$push9=, $7=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label26
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	i32.load	$push3=, 12($12)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $8=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($12), $pop5
	i32.load	$push13=, 0($8)
	tee_local	$push12=, $8=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label25
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$6=, $6, $pop19
	i32.load8_u	$push7=, .L.str($8)
	i32.eq  	$push8=, $7, $pop7
	br_if   	0, $pop8        # 0: up to label27
# BB#4:                                 # %if.then5
	end_loop                        # label28:
	call    	abort@FUNCTION
	unreachable
.LBB7_5:                                # %while.end
	end_block                       # label26:
	i32.const	$11=, 16
	i32.add 	$12=, $12, $11
	i32.const	$11=, __stack_pointer
	i32.store	$12=, 0($11), $12
	return
.LBB7_6:                                # %if.then.i
	end_block                       # label25:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end7:
	.size	f6, .Lfunc_end7-f6

	.section	.text.f7,"ax",@progbits
	.hidden	f7
	.globl	f7
	.type	f7,@function
f7:                                     # @f7
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$10=, __stack_pointer
	i32.load	$10=, 0($10)
	i32.const	$11=, 16
	i32.sub 	$13=, $10, $11
	i32.const	$11=, __stack_pointer
	i32.store	$13=, 0($11), $13
	i32.store	$discard=, 12($13), $8
	block
	i32.call	$push0=, strlen@FUNCTION, $7
	i32.const	$push1=, 9
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label29
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label31:
	i32.load8_u	$push10=, 0($7)
	tee_local	$push9=, $8=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label30
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	i32.load	$push3=, 12($13)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $9=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($13), $pop5
	i32.load	$push13=, 0($9)
	tee_local	$push12=, $9=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label29
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$7=, $7, $pop19
	i32.load8_u	$push7=, .L.str($9)
	i32.eq  	$push8=, $8, $pop7
	br_if   	0, $pop8        # 0: up to label31
# BB#4:                                 # %if.then5
	end_loop                        # label32:
	call    	abort@FUNCTION
	unreachable
.LBB8_5:                                # %while.end
	end_block                       # label30:
	i32.const	$12=, 16
	i32.add 	$13=, $13, $12
	i32.const	$12=, __stack_pointer
	i32.store	$13=, 0($12), $13
	return
.LBB8_6:                                # %if.then.i
	end_block                       # label29:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end8:
	.size	f7, .Lfunc_end8-f7

	.section	.text.f8,"ax",@progbits
	.hidden	f8
	.globl	f8
	.type	f8,@function
f8:                                     # @f8
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$11=, __stack_pointer
	i32.load	$11=, 0($11)
	i32.const	$12=, 16
	i32.sub 	$14=, $11, $12
	i32.const	$12=, __stack_pointer
	i32.store	$14=, 0($12), $14
	i32.store	$discard=, 12($14), $9
	block
	i32.call	$push0=, strlen@FUNCTION, $8
	i32.const	$push1=, 8
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label33
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label35:
	i32.load8_u	$push10=, 0($8)
	tee_local	$push9=, $9=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label34
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	i32.load	$push3=, 12($14)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $10=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($14), $pop5
	i32.load	$push13=, 0($10)
	tee_local	$push12=, $10=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label33
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$8=, $8, $pop19
	i32.load8_u	$push7=, .L.str($10)
	i32.eq  	$push8=, $9, $pop7
	br_if   	0, $pop8        # 0: up to label35
# BB#4:                                 # %if.then5
	end_loop                        # label36:
	call    	abort@FUNCTION
	unreachable
.LBB9_5:                                # %while.end
	end_block                       # label34:
	i32.const	$13=, 16
	i32.add 	$14=, $14, $13
	i32.const	$13=, __stack_pointer
	i32.store	$14=, 0($13), $14
	return
.LBB9_6:                                # %if.then.i
	end_block                       # label33:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end9:
	.size	f8, .Lfunc_end9-f8

	.section	.text.f9,"ax",@progbits
	.hidden	f9
	.globl	f9
	.type	f9,@function
f9:                                     # @f9
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$12=, __stack_pointer
	i32.load	$12=, 0($12)
	i32.const	$13=, 16
	i32.sub 	$15=, $12, $13
	i32.const	$13=, __stack_pointer
	i32.store	$15=, 0($13), $15
	i32.store	$discard=, 12($15), $10
	block
	i32.call	$push0=, strlen@FUNCTION, $9
	i32.const	$push1=, 7
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label37
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label39:
	i32.load8_u	$push10=, 0($9)
	tee_local	$push9=, $10=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label38
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	i32.load	$push3=, 12($15)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $11=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($15), $pop5
	i32.load	$push13=, 0($11)
	tee_local	$push12=, $11=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label37
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$9=, $9, $pop19
	i32.load8_u	$push7=, .L.str($11)
	i32.eq  	$push8=, $10, $pop7
	br_if   	0, $pop8        # 0: up to label39
# BB#4:                                 # %if.then5
	end_loop                        # label40:
	call    	abort@FUNCTION
	unreachable
.LBB10_5:                               # %while.end
	end_block                       # label38:
	i32.const	$14=, 16
	i32.add 	$15=, $15, $14
	i32.const	$14=, __stack_pointer
	i32.store	$15=, 0($14), $15
	return
.LBB10_6:                               # %if.then.i
	end_block                       # label37:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end10:
	.size	f9, .Lfunc_end10-f9

	.section	.text.f10,"ax",@progbits
	.hidden	f10
	.globl	f10
	.type	f10,@function
f10:                                    # @f10
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$13=, __stack_pointer
	i32.load	$13=, 0($13)
	i32.const	$14=, 16
	i32.sub 	$16=, $13, $14
	i32.const	$14=, __stack_pointer
	i32.store	$16=, 0($14), $16
	i32.store	$discard=, 12($16), $11
	block
	i32.call	$push0=, strlen@FUNCTION, $10
	i32.const	$push1=, 6
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label41
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label43:
	i32.load8_u	$push10=, 0($10)
	tee_local	$push9=, $11=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label42
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	i32.load	$push3=, 12($16)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $12=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($16), $pop5
	i32.load	$push13=, 0($12)
	tee_local	$push12=, $12=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label41
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB11_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$10=, $10, $pop19
	i32.load8_u	$push7=, .L.str($12)
	i32.eq  	$push8=, $11, $pop7
	br_if   	0, $pop8        # 0: up to label43
# BB#4:                                 # %if.then5
	end_loop                        # label44:
	call    	abort@FUNCTION
	unreachable
.LBB11_5:                               # %while.end
	end_block                       # label42:
	i32.const	$15=, 16
	i32.add 	$16=, $16, $15
	i32.const	$15=, __stack_pointer
	i32.store	$16=, 0($15), $16
	return
.LBB11_6:                               # %if.then.i
	end_block                       # label41:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end11:
	.size	f10, .Lfunc_end11-f10

	.section	.text.f11,"ax",@progbits
	.hidden	f11
	.globl	f11
	.type	f11,@function
f11:                                    # @f11
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$14=, __stack_pointer
	i32.load	$14=, 0($14)
	i32.const	$15=, 16
	i32.sub 	$17=, $14, $15
	i32.const	$15=, __stack_pointer
	i32.store	$17=, 0($15), $17
	i32.store	$discard=, 12($17), $12
	block
	i32.call	$push0=, strlen@FUNCTION, $11
	i32.const	$push1=, 5
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label45
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label47:
	i32.load8_u	$push10=, 0($11)
	tee_local	$push9=, $12=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label46
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	i32.load	$push3=, 12($17)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $13=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($17), $pop5
	i32.load	$push13=, 0($13)
	tee_local	$push12=, $13=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label45
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB12_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$11=, $11, $pop19
	i32.load8_u	$push7=, .L.str($13)
	i32.eq  	$push8=, $12, $pop7
	br_if   	0, $pop8        # 0: up to label47
# BB#4:                                 # %if.then5
	end_loop                        # label48:
	call    	abort@FUNCTION
	unreachable
.LBB12_5:                               # %while.end
	end_block                       # label46:
	i32.const	$16=, 16
	i32.add 	$17=, $17, $16
	i32.const	$16=, __stack_pointer
	i32.store	$17=, 0($16), $17
	return
.LBB12_6:                               # %if.then.i
	end_block                       # label45:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end12:
	.size	f11, .Lfunc_end12-f11

	.section	.text.f12,"ax",@progbits
	.hidden	f12
	.globl	f12
	.type	f12,@function
f12:                                    # @f12
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$15=, __stack_pointer
	i32.load	$15=, 0($15)
	i32.const	$16=, 16
	i32.sub 	$18=, $15, $16
	i32.const	$16=, __stack_pointer
	i32.store	$18=, 0($16), $18
	i32.store	$discard=, 12($18), $13
	block
	i32.call	$push0=, strlen@FUNCTION, $12
	i32.const	$push8=, 4
	i32.ne  	$push1=, $pop0, $pop8
	br_if   	0, $pop1        # 0: down to label49
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label51:
	i32.load8_u	$push10=, 0($12)
	tee_local	$push9=, $13=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label50
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	i32.load	$push2=, 12($18)
	i32.const	$push18=, 3
	i32.add 	$push3=, $pop2, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop3, $pop17
	tee_local	$push15=, $14=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push4=, $pop15, $pop14
	i32.store	$discard=, 12($18), $pop4
	i32.load	$push13=, 0($14)
	tee_local	$push12=, $14=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push5=, $pop12, $pop11
	br_if   	3, $pop5        # 3: down to label49
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB13_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$12=, $12, $pop19
	i32.load8_u	$push6=, .L.str($14)
	i32.eq  	$push7=, $13, $pop6
	br_if   	0, $pop7        # 0: up to label51
# BB#4:                                 # %if.then5
	end_loop                        # label52:
	call    	abort@FUNCTION
	unreachable
.LBB13_5:                               # %while.end
	end_block                       # label50:
	i32.const	$17=, 16
	i32.add 	$18=, $18, $17
	i32.const	$17=, __stack_pointer
	i32.store	$18=, 0($17), $18
	return
.LBB13_6:                               # %if.then.i
	end_block                       # label49:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end13:
	.size	f12, .Lfunc_end13-f12

	.section	.text.f13,"ax",@progbits
	.hidden	f13
	.globl	f13
	.type	f13,@function
f13:                                    # @f13
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$16=, __stack_pointer
	i32.load	$16=, 0($16)
	i32.const	$17=, 16
	i32.sub 	$19=, $16, $17
	i32.const	$17=, __stack_pointer
	i32.store	$19=, 0($17), $19
	i32.store	$discard=, 12($19), $14
	block
	i32.call	$push0=, strlen@FUNCTION, $13
	i32.const	$push8=, 3
	i32.ne  	$push1=, $pop0, $pop8
	br_if   	0, $pop1        # 0: down to label53
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label55:
	i32.load8_u	$push10=, 0($13)
	tee_local	$push9=, $14=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label54
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	i32.load	$push2=, 12($19)
	i32.const	$push18=, 3
	i32.add 	$push3=, $pop2, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop3, $pop17
	tee_local	$push15=, $15=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push4=, $pop15, $pop14
	i32.store	$discard=, 12($19), $pop4
	i32.load	$push13=, 0($15)
	tee_local	$push12=, $15=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push5=, $pop12, $pop11
	br_if   	3, $pop5        # 3: down to label53
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB14_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$13=, $13, $pop19
	i32.load8_u	$push6=, .L.str($15)
	i32.eq  	$push7=, $14, $pop6
	br_if   	0, $pop7        # 0: up to label55
# BB#4:                                 # %if.then5
	end_loop                        # label56:
	call    	abort@FUNCTION
	unreachable
.LBB14_5:                               # %while.end
	end_block                       # label54:
	i32.const	$18=, 16
	i32.add 	$19=, $19, $18
	i32.const	$18=, __stack_pointer
	i32.store	$19=, 0($18), $19
	return
.LBB14_6:                               # %if.then.i
	end_block                       # label53:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end14:
	.size	f13, .Lfunc_end14-f13

	.section	.text.f14,"ax",@progbits
	.hidden	f14
	.globl	f14
	.type	f14,@function
f14:                                    # @f14
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$17=, __stack_pointer
	i32.load	$17=, 0($17)
	i32.const	$18=, 16
	i32.sub 	$20=, $17, $18
	i32.const	$18=, __stack_pointer
	i32.store	$20=, 0($18), $20
	i32.store	$discard=, 12($20), $15
	block
	i32.call	$push0=, strlen@FUNCTION, $14
	i32.const	$push1=, 2
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label57
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label59:
	i32.load8_u	$push10=, 0($14)
	tee_local	$push9=, $15=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label58
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	i32.load	$push3=, 12($20)
	i32.const	$push18=, 3
	i32.add 	$push4=, $pop3, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop4, $pop17
	tee_local	$push15=, $16=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push5=, $pop15, $pop14
	i32.store	$discard=, 12($20), $pop5
	i32.load	$push13=, 0($16)
	tee_local	$push12=, $16=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push6=, $pop12, $pop11
	br_if   	3, $pop6        # 3: down to label57
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB15_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$14=, $14, $pop19
	i32.load8_u	$push7=, .L.str($16)
	i32.eq  	$push8=, $15, $pop7
	br_if   	0, $pop8        # 0: up to label59
# BB#4:                                 # %if.then5
	end_loop                        # label60:
	call    	abort@FUNCTION
	unreachable
.LBB15_5:                               # %while.end
	end_block                       # label58:
	i32.const	$19=, 16
	i32.add 	$20=, $20, $19
	i32.const	$19=, __stack_pointer
	i32.store	$20=, 0($19), $20
	return
.LBB15_6:                               # %if.then.i
	end_block                       # label57:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end15:
	.size	f14, .Lfunc_end15-f14

	.section	.text.f15,"ax",@progbits
	.hidden	f15
	.globl	f15
	.type	f15,@function
f15:                                    # @f15
	.param  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$18=, __stack_pointer
	i32.load	$18=, 0($18)
	i32.const	$19=, 16
	i32.sub 	$21=, $18, $19
	i32.const	$19=, __stack_pointer
	i32.store	$21=, 0($19), $21
	i32.store	$discard=, 12($21), $16
	block
	i32.call	$push0=, strlen@FUNCTION, $15
	i32.const	$push8=, 1
	i32.ne  	$push1=, $pop0, $pop8
	br_if   	0, $pop1        # 0: down to label61
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label63:
	i32.load8_u	$push10=, 0($15)
	tee_local	$push9=, $16=, $pop10
	i32.const	$push20=, 0
	i32.eq  	$push21=, $pop9, $pop20
	br_if   	2, $pop21       # 2: down to label62
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	i32.load	$push2=, 12($21)
	i32.const	$push18=, 3
	i32.add 	$push3=, $pop2, $pop18
	i32.const	$push17=, -4
	i32.and 	$push16=, $pop3, $pop17
	tee_local	$push15=, $17=, $pop16
	i32.const	$push14=, 4
	i32.add 	$push4=, $pop15, $pop14
	i32.store	$discard=, 12($21), $pop4
	i32.load	$push13=, 0($17)
	tee_local	$push12=, $17=, $pop13
	i32.const	$push11=, 16
	i32.ge_u	$push5=, $pop12, $pop11
	br_if   	3, $pop5        # 3: down to label61
# BB#3:                                 # %to_hex.exit
                                        #   in Loop: Header=BB16_1 Depth=1
	i32.const	$push19=, 1
	i32.add 	$15=, $15, $pop19
	i32.load8_u	$push6=, .L.str($17)
	i32.eq  	$push7=, $16, $pop6
	br_if   	0, $pop7        # 0: up to label63
# BB#4:                                 # %if.then5
	end_loop                        # label64:
	call    	abort@FUNCTION
	unreachable
.LBB16_5:                               # %while.end
	end_block                       # label62:
	i32.const	$20=, 16
	i32.add 	$21=, $21, $20
	i32.const	$20=, __stack_pointer
	i32.store	$21=, 0($20), $21
	return
.LBB16_6:                               # %if.then.i
	end_block                       # label61:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end16:
	.size	f15, .Lfunc_end16-f15

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$14=, __stack_pointer
	i32.load	$14=, 0($14)
	i32.const	$15=, 640
	i32.sub 	$87=, $14, $15
	i32.const	$15=, __stack_pointer
	i32.store	$87=, 0($15), $87
	i32.const	$push0=, 56
	i32.const	$16=, 576
	i32.add 	$16=, $87, $16
	i32.add 	$push1=, $16, $pop0
	i64.const	$push2=, 64424509454
	i64.store	$0=, 0($pop1), $pop2
	i32.const	$push3=, 48
	i32.const	$17=, 576
	i32.add 	$17=, $87, $17
	i32.add 	$push4=, $17, $pop3
	i64.const	$push5=, 55834574860
	i64.store	$1=, 0($pop4):p2align=4, $pop5
	i32.const	$push6=, 40
	i32.const	$18=, 576
	i32.add 	$18=, $87, $18
	i32.add 	$push7=, $18, $pop6
	i64.const	$push8=, 47244640266
	i64.store	$2=, 0($pop7), $pop8
	i32.const	$push9=, 32
	i32.const	$19=, 576
	i32.add 	$19=, $87, $19
	i32.add 	$push10=, $19, $pop9
	i64.const	$push11=, 38654705672
	i64.store	$3=, 0($pop10):p2align=4, $pop11
	i32.const	$push12=, 24
	i32.const	$20=, 576
	i32.add 	$20=, $87, $20
	i32.add 	$push13=, $20, $pop12
	i64.const	$push14=, 30064771078
	i64.store	$4=, 0($pop13), $pop14
	i32.const	$push15=, 16
	i32.const	$21=, 576
	i32.add 	$21=, $87, $21
	i32.add 	$push16=, $21, $pop15
	i64.const	$push17=, 21474836484
	i64.store	$5=, 0($pop16):p2align=4, $pop17
	i32.const	$push18=, 8
	i32.const	$22=, 576
	i32.add 	$22=, $87, $22
	i32.or  	$push19=, $22, $pop18
	i64.const	$push20=, 12884901890
	i64.store	$6=, 0($pop19), $pop20
	i64.const	$push21=, 4294967296
	i64.store	$discard=, 576($87):p2align=4, $pop21
	i32.const	$push22=, .L.str
	i32.const	$23=, 576
	i32.add 	$23=, $87, $23
	call    	f0@FUNCTION, $pop22, $23
	i32.const	$push144=, 56
	i32.const	$24=, 512
	i32.add 	$24=, $87, $24
	i32.add 	$push23=, $24, $pop144
	i32.const	$push24=, 15
	i32.store	$7=, 0($pop23):p2align=3, $pop24
	i32.const	$push143=, 48
	i32.const	$25=, 512
	i32.add 	$25=, $87, $25
	i32.add 	$push25=, $25, $pop143
	i64.const	$push26=, 60129542157
	i64.store	$8=, 0($pop25):p2align=4, $pop26
	i32.const	$push142=, 40
	i32.const	$26=, 512
	i32.add 	$26=, $87, $26
	i32.add 	$push27=, $26, $pop142
	i64.const	$push28=, 51539607563
	i64.store	$9=, 0($pop27), $pop28
	i32.const	$push141=, 32
	i32.const	$27=, 512
	i32.add 	$27=, $87, $27
	i32.add 	$push29=, $27, $pop141
	i64.const	$push30=, 42949672969
	i64.store	$10=, 0($pop29):p2align=4, $pop30
	i32.const	$push140=, 24
	i32.const	$28=, 512
	i32.add 	$28=, $87, $28
	i32.add 	$push31=, $28, $pop140
	i64.const	$push32=, 34359738375
	i64.store	$11=, 0($pop31), $pop32
	i32.const	$push139=, 16
	i32.const	$29=, 512
	i32.add 	$29=, $87, $29
	i32.add 	$push33=, $29, $pop139
	i64.const	$push34=, 25769803781
	i64.store	$12=, 0($pop33):p2align=4, $pop34
	i32.const	$push138=, 8
	i32.const	$30=, 512
	i32.add 	$30=, $87, $30
	i32.or  	$push35=, $30, $pop138
	i64.const	$push36=, 17179869187
	i64.store	$13=, 0($pop35), $pop36
	i64.const	$push37=, 8589934593
	i64.store	$discard=, 512($87):p2align=4, $pop37
	i32.const	$push38=, .L.str+1
	i32.const	$31=, 512
	i32.add 	$31=, $87, $31
	call    	f1@FUNCTION, $7, $pop38, $31
	i32.const	$push137=, 48
	i32.const	$32=, 448
	i32.add 	$32=, $87, $32
	i32.add 	$push39=, $32, $pop137
	i64.store	$discard=, 0($pop39):p2align=4, $0
	i32.const	$push136=, 40
	i32.const	$33=, 448
	i32.add 	$33=, $87, $33
	i32.add 	$push40=, $33, $pop136
	i64.store	$discard=, 0($pop40), $1
	i32.const	$push135=, 32
	i32.const	$34=, 448
	i32.add 	$34=, $87, $34
	i32.add 	$push41=, $34, $pop135
	i64.store	$discard=, 0($pop41):p2align=4, $2
	i32.const	$push134=, 24
	i32.const	$35=, 448
	i32.add 	$35=, $87, $35
	i32.add 	$push42=, $35, $pop134
	i64.store	$discard=, 0($pop42), $3
	i32.const	$push133=, 16
	i32.const	$36=, 448
	i32.add 	$36=, $87, $36
	i32.add 	$push43=, $36, $pop133
	i64.store	$discard=, 0($pop43):p2align=4, $4
	i32.const	$push132=, 8
	i32.const	$37=, 448
	i32.add 	$37=, $87, $37
	i32.or  	$push44=, $37, $pop132
	i64.store	$discard=, 0($pop44), $5
	i64.store	$discard=, 448($87):p2align=4, $6
	i32.const	$push45=, .L.str+2
	i32.const	$38=, 448
	i32.add 	$38=, $87, $38
	call    	f2@FUNCTION, $7, $7, $pop45, $38
	i32.const	$push131=, 48
	i32.const	$39=, 384
	i32.add 	$39=, $87, $39
	i32.add 	$push46=, $39, $pop131
	i32.store	$discard=, 0($pop46):p2align=4, $7
	i32.const	$push130=, 40
	i32.const	$40=, 384
	i32.add 	$40=, $87, $40
	i32.add 	$push47=, $40, $pop130
	i64.store	$6=, 0($pop47), $8
	i32.const	$push129=, 32
	i32.const	$41=, 384
	i32.add 	$41=, $87, $41
	i32.add 	$push48=, $41, $pop129
	i64.store	$8=, 0($pop48):p2align=4, $9
	i32.const	$push128=, 24
	i32.const	$42=, 384
	i32.add 	$42=, $87, $42
	i32.add 	$push49=, $42, $pop128
	i64.store	$9=, 0($pop49), $10
	i32.const	$push127=, 16
	i32.const	$43=, 384
	i32.add 	$43=, $87, $43
	i32.add 	$push50=, $43, $pop127
	i64.store	$10=, 0($pop50):p2align=4, $11
	i32.const	$push126=, 8
	i32.const	$44=, 384
	i32.add 	$44=, $87, $44
	i32.or  	$push51=, $44, $pop126
	i64.store	$11=, 0($pop51), $12
	i64.store	$discard=, 384($87):p2align=4, $13
	i32.const	$push52=, .L.str+3
	i32.const	$45=, 384
	i32.add 	$45=, $87, $45
	call    	f3@FUNCTION, $7, $7, $7, $pop52, $45
	i32.const	$push125=, 40
	i32.const	$46=, 336
	i32.add 	$46=, $87, $46
	i32.add 	$push53=, $46, $pop125
	i64.store	$discard=, 0($pop53), $0
	i32.const	$push124=, 32
	i32.const	$47=, 336
	i32.add 	$47=, $87, $47
	i32.add 	$push54=, $47, $pop124
	i64.store	$discard=, 0($pop54):p2align=4, $1
	i32.const	$push123=, 24
	i32.const	$48=, 336
	i32.add 	$48=, $87, $48
	i32.add 	$push55=, $48, $pop123
	i64.store	$discard=, 0($pop55), $2
	i32.const	$push122=, 16
	i32.const	$49=, 336
	i32.add 	$49=, $87, $49
	i32.add 	$push56=, $49, $pop122
	i64.store	$discard=, 0($pop56):p2align=4, $3
	i32.const	$push121=, 8
	i32.const	$50=, 336
	i32.add 	$50=, $87, $50
	i32.or  	$push57=, $50, $pop121
	i64.store	$discard=, 0($pop57), $4
	i64.store	$discard=, 336($87):p2align=4, $5
	i32.const	$push58=, .L.str+4
	i32.const	$51=, 336
	i32.add 	$51=, $87, $51
	call    	f4@FUNCTION, $7, $7, $7, $7, $pop58, $51
	i32.const	$push120=, 40
	i32.const	$52=, 288
	i32.add 	$52=, $87, $52
	i32.add 	$push59=, $52, $pop120
	i32.store	$discard=, 0($pop59):p2align=3, $7
	i32.const	$push119=, 32
	i32.const	$53=, 288
	i32.add 	$53=, $87, $53
	i32.add 	$push60=, $53, $pop119
	i64.store	$5=, 0($pop60):p2align=4, $6
	i32.const	$push118=, 24
	i32.const	$54=, 288
	i32.add 	$54=, $87, $54
	i32.add 	$push61=, $54, $pop118
	i64.store	$6=, 0($pop61), $8
	i32.const	$push117=, 16
	i32.const	$55=, 288
	i32.add 	$55=, $87, $55
	i32.add 	$push62=, $55, $pop117
	i64.store	$8=, 0($pop62):p2align=4, $9
	i32.const	$push116=, 8
	i32.const	$56=, 288
	i32.add 	$56=, $87, $56
	i32.or  	$push63=, $56, $pop116
	i64.store	$9=, 0($pop63), $10
	i64.store	$discard=, 288($87):p2align=4, $11
	i32.const	$push64=, .L.str+5
	i32.const	$57=, 288
	i32.add 	$57=, $87, $57
	call    	f5@FUNCTION, $7, $7, $7, $7, $7, $pop64, $57
	i32.const	$push115=, 32
	i32.const	$58=, 240
	i32.add 	$58=, $87, $58
	i32.add 	$push65=, $58, $pop115
	i64.store	$discard=, 0($pop65):p2align=4, $0
	i32.const	$push114=, 24
	i32.const	$59=, 240
	i32.add 	$59=, $87, $59
	i32.add 	$push66=, $59, $pop114
	i64.store	$discard=, 0($pop66), $1
	i32.const	$push113=, 16
	i32.const	$60=, 240
	i32.add 	$60=, $87, $60
	i32.add 	$push67=, $60, $pop113
	i64.store	$discard=, 0($pop67):p2align=4, $2
	i32.const	$push112=, 8
	i32.const	$61=, 240
	i32.add 	$61=, $87, $61
	i32.or  	$push68=, $61, $pop112
	i64.store	$discard=, 0($pop68), $3
	i64.store	$discard=, 240($87):p2align=4, $4
	i32.const	$push69=, .L.str+6
	i32.const	$62=, 240
	i32.add 	$62=, $87, $62
	call    	f6@FUNCTION, $7, $7, $7, $7, $7, $7, $pop69, $62
	i32.const	$push111=, 32
	i32.const	$63=, 192
	i32.add 	$63=, $87, $63
	i32.add 	$push70=, $63, $pop111
	i32.store	$discard=, 0($pop70):p2align=4, $7
	i32.const	$push110=, 24
	i32.const	$64=, 192
	i32.add 	$64=, $87, $64
	i32.add 	$push71=, $64, $pop110
	i64.store	$4=, 0($pop71), $5
	i32.const	$push109=, 16
	i32.const	$65=, 192
	i32.add 	$65=, $87, $65
	i32.add 	$push72=, $65, $pop109
	i64.store	$5=, 0($pop72):p2align=4, $6
	i32.const	$push108=, 8
	i32.const	$66=, 192
	i32.add 	$66=, $87, $66
	i32.or  	$push73=, $66, $pop108
	i64.store	$6=, 0($pop73), $8
	i64.store	$discard=, 192($87):p2align=4, $9
	i32.const	$push74=, .L.str+7
	i32.const	$67=, 192
	i32.add 	$67=, $87, $67
	call    	f7@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $pop74, $67
	i32.const	$push107=, 24
	i32.const	$68=, 160
	i32.add 	$68=, $87, $68
	i32.add 	$push75=, $68, $pop107
	i64.store	$discard=, 0($pop75), $0
	i32.const	$push106=, 16
	i32.const	$69=, 160
	i32.add 	$69=, $87, $69
	i32.add 	$push76=, $69, $pop106
	i64.store	$discard=, 0($pop76):p2align=4, $1
	i32.const	$push105=, 8
	i32.const	$70=, 160
	i32.add 	$70=, $87, $70
	i32.or  	$push77=, $70, $pop105
	i64.store	$discard=, 0($pop77), $2
	i64.store	$discard=, 160($87):p2align=4, $3
	i32.const	$push78=, .L.str+8
	i32.const	$71=, 160
	i32.add 	$71=, $87, $71
	call    	f8@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $pop78, $71
	i32.const	$push104=, 24
	i32.const	$72=, 128
	i32.add 	$72=, $87, $72
	i32.add 	$push79=, $72, $pop104
	i32.store	$discard=, 0($pop79):p2align=3, $7
	i32.const	$push103=, 16
	i32.const	$73=, 128
	i32.add 	$73=, $87, $73
	i32.add 	$push80=, $73, $pop103
	i64.store	$3=, 0($pop80):p2align=4, $4
	i32.const	$push102=, 8
	i32.const	$74=, 128
	i32.add 	$74=, $87, $74
	i32.or  	$push81=, $74, $pop102
	i64.store	$4=, 0($pop81), $5
	i64.store	$discard=, 128($87):p2align=4, $6
	i32.const	$push82=, .L.str+9
	i32.const	$75=, 128
	i32.add 	$75=, $87, $75
	call    	f9@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop82, $75
	i32.const	$push101=, 16
	i32.const	$76=, 96
	i32.add 	$76=, $87, $76
	i32.add 	$push83=, $76, $pop101
	i64.store	$discard=, 0($pop83):p2align=4, $0
	i32.const	$push100=, 8
	i32.const	$77=, 96
	i32.add 	$77=, $87, $77
	i32.or  	$push84=, $77, $pop100
	i64.store	$discard=, 0($pop84), $1
	i64.store	$discard=, 96($87):p2align=4, $2
	i32.const	$push85=, .L.str+10
	i32.const	$78=, 96
	i32.add 	$78=, $87, $78
	call    	f10@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop85, $78
	i32.const	$push99=, 16
	i32.const	$79=, 64
	i32.add 	$79=, $87, $79
	i32.add 	$push86=, $79, $pop99
	i32.store	$discard=, 0($pop86):p2align=4, $7
	i32.const	$push98=, 8
	i32.const	$80=, 64
	i32.add 	$80=, $87, $80
	i32.or  	$push87=, $80, $pop98
	i64.store	$2=, 0($pop87), $3
	i64.store	$discard=, 64($87):p2align=4, $4
	i32.const	$push88=, .L.str+11
	i32.const	$81=, 64
	i32.add 	$81=, $87, $81
	call    	f11@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop88, $81
	i32.const	$push97=, 8
	i32.const	$82=, 48
	i32.add 	$82=, $87, $82
	i32.or  	$push89=, $82, $pop97
	i64.store	$discard=, 0($pop89), $0
	i64.store	$discard=, 48($87):p2align=4, $1
	i32.const	$push90=, .L.str+12
	i32.const	$83=, 48
	i32.add 	$83=, $87, $83
	call    	f12@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop90, $83
	i32.const	$push96=, 8
	i32.const	$84=, 32
	i32.add 	$84=, $87, $84
	i32.or  	$push91=, $84, $pop96
	i32.store	$discard=, 0($pop91):p2align=3, $7
	i64.store	$discard=, 32($87):p2align=4, $2
	i32.const	$push92=, .L.str+13
	i32.const	$85=, 32
	i32.add 	$85=, $87, $85
	call    	f13@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop92, $85
	i64.store	$discard=, 16($87):p2align=4, $0
	i32.const	$push93=, .L.str+14
	i32.const	$86=, 16
	i32.add 	$86=, $87, $86
	call    	f14@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop93, $86
	i32.store	$discard=, 0($87):p2align=4, $7
	i32.const	$push94=, .L.str+15
	call    	f15@FUNCTION, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $7, $pop94, $87
	i32.const	$push95=, 0
	call    	exit@FUNCTION, $pop95
	unreachable
	.endfunc
.Lfunc_end17:
	.size	main, .Lfunc_end17-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17


	.ident	"clang version 3.9.0 "