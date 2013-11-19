Parallel recompilation has been disabled for tracing.
-----------------------------------------------------------
Compiling method parse using hydrogen
--- Raw source ---
(str) {
    if (typeof str === "string") {
        if (str.length > QueryStringParser.maxLength) {
            throw new RangeError(
                "str is too long (" +
                "QueryStringParser.maxLength=" + QueryStringParser.maxLength +
                ")"
            );
        }
        return parseString(str);
    }
    return {};
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = parse
stack_slots = 1
Instructions (size = 556)
0000000099582740     0  55             push rbp
0000000099582741     1  4889e5         REX.W movq rbp,rsp
0000000099582744     4  56             push rsi
0000000099582745     5  57             push rdi
0000000099582746     6  4883ec08       REX.W subq rsp,0x8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
000000009958274A    10  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
000000009958274D    13  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@12,#10> stack-check
0000000099582751    17  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099582755    21  7305           jnc 28  (000000009958275C)
0000000099582757    23  e82436f9ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@14,#12> gap
000000009958275C    28  488b4510       REX.W movq rax,[rbp+0x10]
                  ;;; <@15,#12> typeof-is-and-branch
0000000099582760    32  a801           test al,0x1
0000000099582762    34  0f8418000000   jz 64  (0000000099582780)
0000000099582768    40  488b40ff       REX.W movq rax,[rax-0x1]
000000009958276C    44  80780b80       cmpb [rax+0xb],0x80
0000000099582770    48  0f830a000000   jnc 64  (0000000099582780)
0000000099582776    54  f6400d20       testb [rax+0xd],0x20
000000009958277A    58  0f843a000000   jz 122  (00000000995827BA)
                  ;;; <@20,#70> -------------------- B3 --------------------
                  ;;; <@22,#72> push-argument
0000000099582780    64  49ba785fd0e400000000 REX.W movq r10,00000000E4D05F78    ;; property cell
000000009958278A    74  4d8b12         REX.W movq r10,[r10]
000000009958278D    77  4152           push r10
                  ;;; <@24,#74> push-argument
000000009958278F    79  4154           push r12
                  ;;; <@26,#76> push-argument
0000000099582791    81  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
000000009958279B    91  4152           push r10
                  ;;; <@28,#78> push-argument
000000009958279D    93  4154           push r12
                  ;;; <@30,#79> call-runtime
000000009958279F    95  b804000000     movl rax,0000000000000004
00000000995827A4   100  48bbf094d03f01000000 REX.W movq rbx,000000013FD094F0
00000000995827AE   110  e8ed4af8ff     call 00000000995072A0    ;; debug: position 2071
                                                             ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@32,#81> return
00000000995827B3   115  488be5         REX.W movq rsp,rbp
00000000995827B6   118  5d             pop rbp
00000000995827B7   119  c21000         ret 0x10
                  ;;; <@38,#19> -------------------- B5 --------------------
                  ;;; <@39,#19> gap
00000000995827BA   122  488b4510       REX.W movq rax,[rbp+0x10]
                  ;;; <@40,#20> check-non-smi
00000000995827BE   126  a801           test al,0x1
00000000995827C0   128  0f8422010000   jz 424  (00000000995828E8)
                  ;;; <@42,#21> check-instance-type
00000000995827C6   134  4c8b50ff       REX.W movq r10,[rax-0x1]
00000000995827CA   138  41f6420b80     testb [r10+0xb],0x80
00000000995827CF   143  0f8518010000   jnz 429  (00000000995828ED)
                  ;;; <@44,#22> load-named-field
00000000995827D5   149  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@45,#22> gap
00000000995827D9   153  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@46,#23> load-context-slot
00000000995827DD   157  488b4a47       REX.W movq rcx,[rdx+0x47]
                  ;;; <@48,#24> check-non-smi
00000000995827E1   161  f6c101         testb rcx,0x1
00000000995827E4   164  0f8408010000   jz 434  (00000000995828F2)
                  ;;; <@50,#25> check-maps
00000000995827EA   170  49baf1d9a1df00000000 REX.W movq r10,00000000DFA1D9F1    ;; object: 00000000DFA1D9F1 <Map(elements=3)>
00000000995827F4   180  4c3951ff       REX.W cmpq [rcx-0x1],r10
00000000995827F8   184  0f85f9000000   jnz 439  (00000000995828F7)
                  ;;; <@52,#26> load-named-field
00000000995827FE   190  488b791f       REX.W movq rdi,[rcx+0x1f]
                  ;;; <@55,#27> compare-numeric-and-branch
0000000099582802   194  483bdf         REX.W cmpq rbx,rdi
0000000099582805   197  0f8f38000000   jg 259  (0000000099582843)
                  ;;; <@60,#59> -------------------- B7 --------------------
                  ;;; <@62,#60> load-context-slot
000000009958280B   203  488bba9f000000 REX.W movq rdi,[rdx+0x9f]
                  ;;; <@64,#61> global-object
0000000099582812   210  488b5e27       REX.W movq rbx,[rsi+0x27]
                  ;;; <@66,#62> global-receiver
0000000099582816   214  488b5b2f       REX.W movq rbx,[rbx+0x2f]
                  ;;; <@68,#63> check-function
000000009958281A   218  49ba885fd0e400000000 REX.W movq r10,00000000E4D05F88    ;; property cell
0000000099582824   228  493b3a         REX.W cmpq rdi,[r10]
0000000099582827   231  0f85cf000000   jnz 444  (00000000995828FC)
                  ;;; <@70,#64> push-argument
000000009958282D   237  53             push rbx
                  ;;; <@72,#65> push-argument
000000009958282E   238  50             push rax
                  ;;; <@74,#66> invoke-function
000000009958282F   239  488b772f       REX.W movq rsi,[rdi+0x2f]
0000000099582833   243  33c9           xorl rcx,rcx
0000000099582835   245  ff5717         call [rdi+0x17]       ;; debug: position 2354
0000000099582838   248  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@76,#67> lazy-bailout
                  ;;; <@78,#69> return
000000009958283C   252  488be5         REX.W movq rsp,rbp
000000009958283F   255  5d             pop rbp
0000000099582840   256  c21000         ret 0x10
                  ;;; <@84,#34> -------------------- B9 --------------------
                  ;;; <@86,#36> push-argument
0000000099582843   259  49bab1f214f500000000 REX.W movq r10,00000000F514F2B1    ;; object: 00000000F514F2B1 <JS Function RangeError (SharedFunctionInfo 00000000F511BCF1)>
000000009958284D   269  4152           push r10
                  ;;; <@88,#43> deoptimize
                  ;;; deoptimize: Insufficient feedback for generic named load
000000009958284F   271  e8f237e8ff     call 0000000099406046    ;; soft deoptimization bailout 7
                  ;;; <@89,#43> gap
0000000099582854   276  488bc1         REX.W movq rax,rcx
                  ;;; <@90,#44> load-named-generic
0000000099582857   279  48b999d9ae8800000000 REX.W movq rcx,0000000088AED999    ;; object: 0000000088AED999 <String[9]: maxLength>
0000000099582861   289  e83a9af9ff     call LoadIC_Initialize  (000000009951C2A0)    ;; debug: position 2281
                                                             ;; code: LOAD_IC, UNINITIALIZED
                  ;;; <@92,#45> lazy-bailout
                  ;;; <@94,#41> constant-t
0000000099582866   294  48ba985fd0e400000000 REX.W movq rdx,00000000E4D05F98    ;; property cell
0000000099582870   304  488b12         REX.W movq rdx,[rdx]
                  ;;; <@96,#46> add-t
0000000099582873   307  e828ecf8ff     call 00000000995114A0    ;; debug: position 2213
                                                             ;; code: BINARY_OP_IC, UNINITIALIZED
0000000099582878   312  90             nop
0000000099582879   313  90             nop
                  ;;; <@97,#46> gap
000000009958287A   314  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@98,#47> lazy-bailout
                  ;;; <@100,#49> check-non-smi
000000009958287E   318  a801           test al,0x1
0000000099582880   320  0f847b000000   jz 449  (0000000099582901)
                  ;;; <@102,#50> check-instance-type
0000000099582886   326  4c8b50ff       REX.W movq r10,[rax-0x1]
000000009958288A   330  41f6420b80     testb [r10+0xb],0x80
000000009958288F   335  0f8571000000   jnz 454  (0000000099582906)
                  ;;; <@104,#52> string-add
0000000099582895   341  50             push rax
0000000099582896   342  49ba11dbae8800000000 REX.W movq r10,0000000088AEDB11    ;; object: 0000000088AEDB11 <String[1]: )>
00000000995828A0   352  4152           push r10
00000000995828A2   354  e859f8ffff     call 0000000099582100    ;; debug: position 2292
                                                             ;; code: STUB, StringAddStub, minor: 0
                  ;;; <@106,#53> push-argument
00000000995828A7   359  50             push rax
                  ;;; <@108,#35> constant-t
00000000995828A8   360  48bfb1f214f500000000 REX.W movq rdi,00000000F514F2B1    ;; object: 00000000F514F2B1 <JS Function RangeError (SharedFunctionInfo 00000000F511BCF1)>
                  ;;; <@110,#54> call-new
00000000995828B2   370  b801000000     movl rax,0000000000000001
00000000995828B7   375  48bb214110f500000000 REX.W movq rbx,00000000F5104121    ;; object: 00000000F5104121 <undefined>
00000000995828C1   385  e89a4ef9ff     call 0000000099517760    ;; debug: position 2161
                                                             ;; code: constructor, STUB, CallConstructStub, minor: 0
                  ;;; <@112,#55> lazy-bailout
                  ;;; <@114,#56> throw
00000000995828C6   390  50             push rax
00000000995828C7   391  b801000000     movl rax,0000000000000001
00000000995828CC   396  48bb1098d43f01000000 REX.W movq rbx,000000013FD49810
00000000995828D6   406  e8c549f8ff     call 00000000995072A0    ;; debug: position 2155
                                                             ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@116,#57> lazy-bailout
00000000995828DB   411  6666660f1f840000000000 nop
00000000995828E6   422  6690           nop
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
00000000995828E8   424  e81d37c8ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
00000000995828ED   429  e82237c8ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 3.
00000000995828F2   434  e82737c8ff     call 000000009920601E    ;; deoptimization bailout 3
                  ;;; jump table entry 3: deoptimization bailout 4.
00000000995828F7   439  e82c37c8ff     call 0000000099206028    ;; deoptimization bailout 4
                  ;;; jump table entry 4: deoptimization bailout 5.
00000000995828FC   444  e83137c8ff     call 0000000099206032    ;; deoptimization bailout 5
                  ;;; jump table entry 5: deoptimization bailout 10.
0000000099582901   449  e85e37c8ff     call 0000000099206064    ;; deoptimization bailout 10
                  ;;; jump table entry 6: deoptimization bailout 11.
0000000099582906   454  e86337c8ff     call 000000009920606E    ;; deoptimization bailout 11
000000009958290B   459  90             nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 14)
 index  ast id    argc     pc             
     0       3       0     28
     1      74       0     -1
     2      74       0     -1
     3      74       0     -1
     4      74       0     -1
     5      65       0     -1
     6      70       0    252
     7      64       1     -1
     8      47       1    294
     9      50       1    318
    10      50       1     -1
    11      50       1     -1
    12      58       0    390
    13      61       0    411

Safepoints (size = 96)
000000009958275C    28  1 (sp -> fp)       0
00000000995827B3   115  0 (sp -> fp)       6
0000000099582838   248  0 (sp -> fp)       6
0000000099582866   294  0 (sp -> fp)       8
0000000099582878   312  0 (sp -> fp)       9
00000000995828A7   359  1 (sp -> fp)      12
00000000995828C6   390  0 (sp -> fp)      12
00000000995828DB   411  0 (sp -> fp)      13

RelocInfo (size = 785)
000000009958274A  comment  (;;; <@0,#0> -------------------- B0 --------------------)
000000009958274A  comment  (;;; <@2,#1> context)
000000009958274D  comment  (;;; <@3,#1> gap)
0000000099582751  comment  (;;; <@10,#8> -------------------- B1 --------------------)
0000000099582751  comment  (;;; <@12,#10> stack-check)
0000000099582758  code target (STUB)  (0000000099515D80)
000000009958275C  comment  (;;; <@14,#12> gap)
0000000099582760  comment  (;;; <@15,#12> typeof-is-and-branch)
0000000099582780  comment  (;;; <@20,#70> -------------------- B3 --------------------)
0000000099582780  comment  (;;; <@22,#72> push-argument)
0000000099582782  property cell
000000009958278F  comment  (;;; <@24,#74> push-argument)
0000000099582791  comment  (;;; <@26,#76> push-argument)
0000000099582793  embedded object  (00000000FCE04139 <FixedArray[0]>)
000000009958279D  comment  (;;; <@28,#78> push-argument)
000000009958279F  comment  (;;; <@30,#79> call-runtime)
00000000995827AE  position  (2071)
00000000995827AF  code target (STUB)  (00000000995072A0)
00000000995827B3  comment  (;;; <@32,#81> return)
00000000995827BA  comment  (;;; <@38,#19> -------------------- B5 --------------------)
00000000995827BA  comment  (;;; <@39,#19> gap)
00000000995827BE  comment  (;;; <@40,#20> check-non-smi)
00000000995827C6  comment  (;;; <@42,#21> check-instance-type)
00000000995827D5  comment  (;;; <@44,#22> load-named-field)
00000000995827D9  comment  (;;; <@45,#22> gap)
00000000995827DD  comment  (;;; <@46,#23> load-context-slot)
00000000995827E1  comment  (;;; <@48,#24> check-non-smi)
00000000995827EA  comment  (;;; <@50,#25> check-maps)
00000000995827EC  embedded object  (00000000DFA1D9F1 <Map(elements=3)>)
00000000995827FE  comment  (;;; <@52,#26> load-named-field)
0000000099582802  comment  (;;; <@55,#27> compare-numeric-and-branch)
000000009958280B  comment  (;;; <@60,#59> -------------------- B7 --------------------)
000000009958280B  comment  (;;; <@62,#60> load-context-slot)
0000000099582812  comment  (;;; <@64,#61> global-object)
0000000099582816  comment  (;;; <@66,#62> global-receiver)
000000009958281A  comment  (;;; <@68,#63> check-function)
000000009958281C  property cell
000000009958282D  comment  (;;; <@70,#64> push-argument)
000000009958282E  comment  (;;; <@72,#65> push-argument)
000000009958282F  comment  (;;; <@74,#66> invoke-function)
0000000099582835  position  (2354)
000000009958283C  comment  (;;; <@76,#67> lazy-bailout)
000000009958283C  comment  (;;; <@78,#69> return)
0000000099582843  comment  (;;; <@84,#34> -------------------- B9 --------------------)
0000000099582843  comment  (;;; <@86,#36> push-argument)
0000000099582845  embedded object  (00000000F514F2B1 <JS Function RangeError (SharedFunctionInfo 00000000F511BCF1)>)
000000009958284F  comment  (;;; <@88,#43> deoptimize)
000000009958284F  comment  (;;; deoptimize: Insufficient feedback for generic named load)
0000000099582850  runtime entry
0000000099582854  comment  (;;; <@89,#43> gap)
0000000099582857  comment  (;;; <@90,#44> load-named-generic)
0000000099582859  embedded object  (0000000088AED999 <String[9]: maxLength>)
0000000099582861  position  (2281)
0000000099582862  code target (LOAD_IC)  (000000009951C2A0)
0000000099582866  comment  (;;; <@92,#45> lazy-bailout)
0000000099582866  comment  (;;; <@94,#41> constant-t)
0000000099582868  property cell
0000000099582873  comment  (;;; <@96,#46> add-t)
0000000099582873  position  (2213)
0000000099582874  code target (BINARY_OP_IC)  (00000000995114A0)
000000009958287A  comment  (;;; <@97,#46> gap)
000000009958287E  comment  (;;; <@98,#47> lazy-bailout)
000000009958287E  comment  (;;; <@100,#49> check-non-smi)
0000000099582886  comment  (;;; <@102,#50> check-instance-type)
0000000099582895  comment  (;;; <@104,#52> string-add)
0000000099582898  embedded object  (0000000088AEDB11 <String[1]: )>)
00000000995828A2  position  (2292)
00000000995828A3  code target (STUB)  (0000000099582100)
00000000995828A7  comment  (;;; <@106,#53> push-argument)
00000000995828A8  comment  (;;; <@108,#35> constant-t)
00000000995828AA  embedded object  (00000000F514F2B1 <JS Function RangeError (SharedFunctionInfo 00000000F511BCF1)>)
00000000995828B2  comment  (;;; <@110,#54> call-new)
00000000995828B9  embedded object  (00000000F5104121 <undefined>)
00000000995828C1  position  (2161)
00000000995828C2  code target (js construct call) (STUB)  (0000000099517760)
00000000995828C6  comment  (;;; <@112,#55> lazy-bailout)
00000000995828C6  comment  (;;; <@114,#56> throw)
00000000995828D6  position  (2155)
00000000995828D7  code target (STUB)  (00000000995072A0)
00000000995828DB  comment  (;;; <@116,#57> lazy-bailout)
00000000995828E8  comment  (;;; -------------------- Jump table --------------------)
00000000995828E8  comment  (;;; jump table entry 0: deoptimization bailout 1.)
00000000995828E9  runtime entry  (deoptimization bailout 1)
00000000995828ED  comment  (;;; jump table entry 1: deoptimization bailout 2.)
00000000995828EE  runtime entry  (deoptimization bailout 2)
00000000995828F2  comment  (;;; jump table entry 2: deoptimization bailout 3.)
00000000995828F3  runtime entry  (deoptimization bailout 3)
00000000995828F7  comment  (;;; jump table entry 3: deoptimization bailout 4.)
00000000995828F8  runtime entry  (deoptimization bailout 4)
00000000995828FC  comment  (;;; jump table entry 4: deoptimization bailout 5.)
00000000995828FD  runtime entry  (deoptimization bailout 5)
0000000099582901  comment  (;;; jump table entry 5: deoptimization bailout 10.)
0000000099582902  runtime entry  (deoptimization bailout 10)
0000000099582906  comment  (;;; jump table entry 6: deoptimization bailout 11.)
0000000099582907  runtime entry  (deoptimization bailout 11)
000000009958290C  comment  (;;; Safepoint table.)

-----------------------------------------------------------
Compiling method placeValue using hydrogen
--- Raw source ---
(dictionary, key, value, possiblyNested) {

    if (possiblyNested === true) {
        maybePlaceNestedValue(dictionary, key, value);
        return;
    }
    insert(dictionary, key, value);
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = placeValue
stack_slots = 4
Instructions (size = 759)
0000000099582F00     0  55             push rbp
0000000099582F01     1  4889e5         REX.W movq rbp,rsp
0000000099582F04     4  56             push rsi
0000000099582F05     5  57             push rdi
0000000099582F06     6  4883ec20       REX.W subq rsp,0x20
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
0000000099582F0A    10  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
0000000099582F0D    13  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@16,#11> -------------------- B1 --------------------
                  ;;; <@18,#13> stack-check
0000000099582F11    17  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099582F15    21  7305           jnc 28  (0000000099582F1C)
0000000099582F17    23  e8642ef9ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@20,#16> gap
0000000099582F1C    28  488b4510       REX.W movq rax,[rbp+0x10]
                  ;;; <@21,#16> cmp-object-eq-and-branch
0000000099582F20    32  49ba614110f500000000 REX.W movq r10,00000000F5104161    ;; object: 00000000F5104161 <true>
0000000099582F2A    42  493bc2         REX.W cmpq rax,r10
0000000099582F2D    45  0f8404020000   jz 567  (0000000099583137)
                  ;;; <@26,#36> -------------------- B3 --------------------
                  ;;; <@27,#36> gap
0000000099582F33    51  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@28,#37> load-context-slot
0000000099582F37    55  488b537f       REX.W movq rdx,[rbx+0x7f]
                  ;;; <@29,#37> gap
0000000099582F3B    59  488955e0       REX.W movq [rbp-0x20],rdx
                  ;;; <@30,#38> global-object
0000000099582F3F    63  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@32,#39> global-receiver
0000000099582F43    67  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@33,#39> gap
0000000099582F47    71  48894dd8       REX.W movq [rbp-0x28],rcx
                  ;;; <@34,#40> check-function
0000000099582F4B    75  49baf85fd0e400000000 REX.W movq r10,00000000E4D05FF8    ;; property cell
0000000099582F55    85  493b12         REX.W cmpq rdx,[r10]
0000000099582F58    88  0f8510020000   jnz 622  (000000009958316E)
                  ;;; <@36,#43> load-context-slot
0000000099582F5E    94  488b7b3f       REX.W movq rdi,[rbx+0x3f]
                  ;;; <@38,#44> check-non-smi
0000000099582F62    98  40f6c701       testb rdi,0x1
0000000099582F66   102  0f8407020000   jz 627  (0000000099583173)
                  ;;; <@40,#45> check-maps
0000000099582F6C   108  49ba7959a0df00000000 REX.W movq r10,00000000DFA05979    ;; object: 00000000DFA05979 <Map(elements=3)>
0000000099582F76   118  4c3957ff       REX.W cmpq [rdi-0x1],r10
0000000099582F7A   122  0f85f8010000   jnz 632  (0000000099583178)
                  ;;; <@42,#46> push-argument
0000000099582F80   128  57             push rdi
                  ;;; <@43,#46> gap
0000000099582F81   129  488b7d28       REX.W movq rdi,[rbp+0x28]
                  ;;; <@44,#47> push-argument
0000000099582F85   133  57             push rdi
                  ;;; <@45,#47> gap
0000000099582F86   134  4c8b4520       REX.W movq r8,[rbp+0x20]
                  ;;; <@46,#48> push-argument
0000000099582F8A   138  4150           push r8
                  ;;; <@48,#49> call-constant-function
0000000099582F8C   140  48bff9e615f500000000 REX.W movq rdi,00000000F515E6F9    ;; object: 00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>
0000000099582F96   150  488b772f       REX.W movq rsi,[rdi+0x2f]
0000000099582F9A   154  b802000000     movl rax,0000000000000002
0000000099582F9F   159  33c9           xorl rcx,rcx
0000000099582FA1   161  ff5717         call [rdi+0x17]       ;; debug: position 4135
0000000099582FA4   164  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@50,#50> lazy-bailout
                  ;;; <@53,#51> branch
0000000099582FA8   168  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099582FAC   172  0f8425000000   jz 215  (0000000099582FD7)
0000000099582FB2   178  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099582FB6   182  0f8405000000   jz 193  (0000000099582FC1)
0000000099582FBC   188  e87130c8ff     call 0000000099206032    ;; deoptimization bailout 5
                  ;;; <@58,#108> -------------------- B5 --------------------
                  ;;; <@59,#108> gap
0000000099582FC1   193  488b5528       REX.W movq rdx,[rbp+0x28]
0000000099582FC5   197  488b4d20       REX.W movq rcx,[rbp+0x20]
0000000099582FC9   201  488b4518       REX.W movq rax,[rbp+0x18]
                  ;;; <@60,#109> store-keyed-generic
0000000099582FCD   205  e86ea3faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4377
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@62,#110> lazy-bailout
                  ;;; <@65,#115> goto
0000000099582FD2   210  e94f010000     jmp 550  (0000000099583126)
                  ;;; <@70,#58> -------------------- B7 --------------------
                  ;;; <@71,#58> gap
0000000099582FD7   215  488b5528       REX.W movq rdx,[rbp+0x28]
0000000099582FDB   219  488b4520       REX.W movq rax,[rbp+0x20]
                  ;;; <@72,#59> load-keyed-generic
0000000099582FDF   223  e8bcc2f9ff     call KeyedLoadIC_Initialize  (000000009951F2A0)    ;; debug: position 4189
                                                             ;; code: KEYED_LOAD_IC, UNINITIALIZED
                  ;;; <@73,#59> gap
0000000099582FE4   228  488945d0       REX.W movq [rbp-0x30],rax
                  ;;; <@74,#60> lazy-bailout
                  ;;; <@75,#60> gap
0000000099582FE8   232  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@76,#62> load-context-slot
0000000099582FEC   236  488b7b37       REX.W movq rdi,[rbx+0x37]
                  ;;; <@78,#65> push-argument
0000000099582FF0   240  ff75d8         push [rbp-0x28]
                  ;;; <@80,#67> push-argument
0000000099582FF3   243  50             push rax
                  ;;; <@82,#68> call-function
0000000099582FF4   244  e807fdffff     call 0000000099582D00    ;; debug: position 4208
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099582FF9   249  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@84,#69> lazy-bailout
                  ;;; <@87,#70> branch
0000000099582FFD   253  493b45a8       REX.W cmpq rax,[r13-0x58]
0000000099583001   257  0f8484000000   jz 395  (000000009958308B)
0000000099583007   263  493b45c0       REX.W cmpq rax,[r13-0x40]
000000009958300B   267  0f84fa000000   jz 523  (000000009958310B)
0000000099583011   273  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099583015   277  0f8470000000   jz 395  (000000009958308B)
000000009958301B   283  493b45b8       REX.W cmpq rax,[r13-0x48]
000000009958301F   287  0f8466000000   jz 395  (000000009958308B)
0000000099583025   293  4885c0         REX.W testq rax,rax
0000000099583028   296  0f845d000000   jz 395  (000000009958308B)
000000009958302E   302  a801           test al,0x1
0000000099583030   304  0f84d5000000   jz 523  (000000009958310B)
0000000099583036   310  4c8b50ff       REX.W movq r10,[rax-0x1]
000000009958303A   314  41f6420d20     testb [r10+0xd],0x20
000000009958303F   319  0f8546000000   jnz 395  (000000009958308B)
0000000099583045   325  41807a0bad     cmpb [r10+0xb],0xad
000000009958304A   330  0f83bb000000   jnc 523  (000000009958310B)
0000000099583050   336  41807a0b80     cmpb [r10+0xb],0x80
0000000099583055   341  7310           jnc 359  (0000000099583067)
0000000099583057   343  4883780f00     REX.W cmpq [rax+0xf],0x0
000000009958305C   348  0f85a9000000   jnz 523  (000000009958310B)
0000000099583062   354  e924000000     jmp 395  (000000009958308B)
0000000099583067   359  41807a0b80     cmpb [r10+0xb],0x80
000000009958306C   364  0f8499000000   jz 523  (000000009958310B)
0000000099583072   370  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099583076   374  7513           jnz 395  (000000009958308B)
0000000099583078   376  0f57c0         xorps xmm0, xmm0
000000009958307B   379  660f2e4007     ucomisd xmm0,[rax+0x7]
0000000099583080   384  0f8405000000   jz 395  (000000009958308B)
0000000099583086   390  e980000000     jmp 523  (000000009958310B)
                  ;;; <@92,#83> -------------------- B9 --------------------
                  ;;; <@94,#85> push-argument
000000009958308B   395  49ba0860d0e400000000 REX.W movq r10,00000000E4D06008    ;; property cell
0000000099583095   405  4d8b12         REX.W movq r10,[r10]
0000000099583098   408  4152           push r10
                  ;;; <@96,#87> push-argument
000000009958309A   410  4154           push r12
                  ;;; <@98,#89> push-argument
000000009958309C   412  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
00000000995830A6   422  4152           push r10
                  ;;; <@100,#90> call-runtime
00000000995830A8   424  b803000000     movl rax,0000000000000003
00000000995830AD   429  48bbd09ed03f01000000 REX.W movq rbx,000000013FD09ED0
00000000995830B7   439  e8e441f8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@102,#91> check-maps
00000000995830BC   444  49bad15ea0df00000000 REX.W movq r10,00000000DFA05ED1    ;; object: 00000000DFA05ED1 <Map(elements=0)>
00000000995830C6   454  4c3950ff       REX.W cmpq [rax-0x1],r10
00000000995830CA   458  0f85ad000000   jnz 637  (000000009958317D)
                  ;;; <@104,#94> load-named-field
00000000995830D0   464  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@105,#94> gap
00000000995830D4   468  488b55d0       REX.W movq rdx,[rbp-0x30]
                  ;;; <@106,#126> check-smi
00000000995830D8   472  f6c201         testb rdx,0x1
00000000995830DB   475  0f85a1000000   jnz 642  (0000000099583182)
                  ;;; <@107,#126> gap
00000000995830E1   481  488bcb         REX.W movq rcx,rbx
                  ;;; <@108,#96> store-keyed
00000000995830E4   484  4889510f       REX.W movq [rcx+0xf],rdx
                  ;;; <@109,#96> gap
00000000995830E8   488  488b5518       REX.W movq rdx,[rbp+0x18]
                  ;;; <@110,#125> check-smi
00000000995830EC   492  f6c201         testb rdx,0x1
00000000995830EF   495  0f8592000000   jnz 647  (0000000099583187)
                  ;;; <@112,#100> store-keyed
00000000995830F5   501  48895317       REX.W movq [rbx+0x17],rdx
                  ;;; <@113,#100> gap
00000000995830F9   505  488b5528       REX.W movq rdx,[rbp+0x28]
00000000995830FD   509  488b4d20       REX.W movq rcx,[rbp+0x20]
                  ;;; <@114,#102> store-keyed-generic
0000000099583101   513  e83aa2faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4309
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@116,#106> lazy-bailout
                  ;;; <@119,#107> goto
0000000099583106   518  e91b000000     jmp 550  (0000000099583126)
                  ;;; <@124,#77> -------------------- B11 --------------------
                  ;;; <@126,#79> push-argument
000000009958310B   523  ff75d0         push [rbp-0x30]
                  ;;; <@127,#79> gap
000000009958310E   526  488b4518       REX.W movq rax,[rbp+0x18]
                  ;;; <@128,#80> push-argument
0000000099583112   530  50             push rax
                  ;;; <@130,#81> call-named
0000000099583113   531  48b90947e1fc00000000 REX.W movq rcx,00000000FCE14709    ;; object: 00000000FCE14709 <String[4]: push>
000000009958311D   541  e83e7ef9ff     call 000000009951AF60    ;; debug: position 4243
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 1
0000000099583122   546  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@132,#82> lazy-bailout
                  ;;; <@144,#121> -------------------- B14 --------------------
                  ;;; <@146,#2> constant-t
0000000099583126   550  48b8214110f500000000 REX.W movq rax,00000000F5104121    ;; object: 00000000F5104121 <undefined>
                  ;;; <@148,#123> return
0000000099583130   560  488be5         REX.W movq rsp,rbp
0000000099583133   563  5d             pop rbp
0000000099583134   564  c22800         ret 0x28
                  ;;; <@150,#17> -------------------- B15 --------------------
0000000099583137   567  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@154,#23> -------------------- B16 --------------------
                  ;;; <@156,#24> load-context-slot
000000009958313B   571  488bbb87000000 REX.W movq rdi,[rbx+0x87]
                  ;;; <@158,#25> global-object
0000000099583142   578  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@160,#26> global-receiver
0000000099583146   582  488b402f       REX.W movq rax,[rax+0x2f]
                  ;;; <@162,#27> push-argument
000000009958314A   586  50             push rax
                  ;;; <@164,#28> push-argument
000000009958314B   587  ff7528         push [rbp+0x28]
                  ;;; <@166,#29> push-argument
000000009958314E   590  ff7520         push [rbp+0x20]
                  ;;; <@168,#30> push-argument
0000000099583151   593  ff7518         push [rbp+0x18]
                  ;;; <@170,#31> call-function
0000000099583154   596  e8a7fcffff     call 0000000099582E00    ;; debug: position 5383
                                                             ;; code: STUB, CallFunctionStub, argc = 3
0000000099583159   601  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@172,#32> lazy-bailout
                  ;;; <@174,#2> constant-t
000000009958315D   605  48b8214110f500000000 REX.W movq rax,00000000F5104121    ;; object: 00000000F5104121 <undefined>
                  ;;; <@176,#35> return
0000000099583167   615  488be5         REX.W movq rsp,rbp
000000009958316A   618  5d             pop rbp
000000009958316B   619  c22800         ret 0x28
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
000000009958316E   622  e8972ec8ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
0000000099583173   627  e89c2ec8ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 3.
0000000099583178   632  e8a12ec8ff     call 000000009920601E    ;; deoptimization bailout 3
                  ;;; jump table entry 3: deoptimization bailout 9.
000000009958317D   637  e8d82ec8ff     call 000000009920605A    ;; deoptimization bailout 9
                  ;;; jump table entry 4: deoptimization bailout 10.
0000000099583182   642  e8dd2ec8ff     call 0000000099206064    ;; deoptimization bailout 10
                  ;;; jump table entry 5: deoptimization bailout 11.
0000000099583187   647  e8e22ec8ff     call 000000009920606E    ;; deoptimization bailout 11
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 15)
 index  ast id    argc     pc             
     0       3       0     28
     1      27       0     -1
     2       2       0     -1
     3       2       0     -1
     4      15       0    168
     5      15       0     -1
     6      93       0    210
     7      28       0    232
     8      40       0    253
     9      79       0     -1
    10      79       0     -1
    11      72       0     -1
    12      77       0    518
    13      54       0    550
    14      20       0    605

Safepoints (size = 107)
0000000099582F1C    28  0001 (sp -> fp)       0
0000000099582FA4   164  0111 (sp -> fp)       4
0000000099582FD2   210  0110 (sp -> fp)       6
0000000099582FE4   228  0111 (sp -> fp)       7
0000000099582FF9   249  1110 (sp -> fp)       8
00000000995830BC   444  1110 (sp -> fp)      12
0000000099583106   518  0110 (sp -> fp)      12
0000000099583122   546  0110 (sp -> fp)      13
0000000099583159   601  0000 (sp -> fp)      14

RelocInfo (size = 1081)
0000000099582F0A  comment  (;;; <@0,#0> -------------------- B0 --------------------)
0000000099582F0A  comment  (;;; <@2,#1> context)
0000000099582F0D  comment  (;;; <@3,#1> gap)
0000000099582F11  comment  (;;; <@16,#11> -------------------- B1 --------------------)
0000000099582F11  comment  (;;; <@18,#13> stack-check)
0000000099582F18  code target (STUB)  (0000000099515D80)
0000000099582F1C  comment  (;;; <@20,#16> gap)
0000000099582F20  comment  (;;; <@21,#16> cmp-object-eq-and-branch)
0000000099582F22  embedded object  (00000000F5104161 <true>)
0000000099582F33  comment  (;;; <@26,#36> -------------------- B3 --------------------)
0000000099582F33  comment  (;;; <@27,#36> gap)
0000000099582F37  comment  (;;; <@28,#37> load-context-slot)
0000000099582F3B  comment  (;;; <@29,#37> gap)
0000000099582F3F  comment  (;;; <@30,#38> global-object)
0000000099582F43  comment  (;;; <@32,#39> global-receiver)
0000000099582F47  comment  (;;; <@33,#39> gap)
0000000099582F4B  comment  (;;; <@34,#40> check-function)
0000000099582F4D  property cell
0000000099582F5E  comment  (;;; <@36,#43> load-context-slot)
0000000099582F62  comment  (;;; <@38,#44> check-non-smi)
0000000099582F6C  comment  (;;; <@40,#45> check-maps)
0000000099582F6E  embedded object  (00000000DFA05979 <Map(elements=3)>)
0000000099582F80  comment  (;;; <@42,#46> push-argument)
0000000099582F81  comment  (;;; <@43,#46> gap)
0000000099582F85  comment  (;;; <@44,#47> push-argument)
0000000099582F86  comment  (;;; <@45,#47> gap)
0000000099582F8A  comment  (;;; <@46,#48> push-argument)
0000000099582F8C  comment  (;;; <@48,#49> call-constant-function)
0000000099582F8E  embedded object  (00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>)
0000000099582FA1  position  (4135)
0000000099582FA8  comment  (;;; <@50,#50> lazy-bailout)
0000000099582FA8  comment  (;;; <@53,#51> branch)
0000000099582FBD  runtime entry  (deoptimization bailout 5)
0000000099582FC1  comment  (;;; <@58,#108> -------------------- B5 --------------------)
0000000099582FC1  comment  (;;; <@59,#108> gap)
0000000099582FCD  comment  (;;; <@60,#109> store-keyed-generic)
0000000099582FCD  position  (4377)
0000000099582FCE  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099582FD2  comment  (;;; <@62,#110> lazy-bailout)
0000000099582FD2  comment  (;;; <@65,#115> goto)
0000000099582FD7  comment  (;;; <@70,#58> -------------------- B7 --------------------)
0000000099582FD7  comment  (;;; <@71,#58> gap)
0000000099582FDF  comment  (;;; <@72,#59> load-keyed-generic)
0000000099582FDF  position  (4189)
0000000099582FE0  code target (KEYED_LOAD_IC)  (000000009951F2A0)
0000000099582FE4  comment  (;;; <@73,#59> gap)
0000000099582FE8  comment  (;;; <@74,#60> lazy-bailout)
0000000099582FE8  comment  (;;; <@75,#60> gap)
0000000099582FEC  comment  (;;; <@76,#62> load-context-slot)
0000000099582FF0  comment  (;;; <@78,#65> push-argument)
0000000099582FF3  comment  (;;; <@80,#67> push-argument)
0000000099582FF4  comment  (;;; <@82,#68> call-function)
0000000099582FF4  position  (4208)
0000000099582FF5  code target (STUB)  (0000000099582D00)
0000000099582FFD  comment  (;;; <@84,#69> lazy-bailout)
0000000099582FFD  comment  (;;; <@87,#70> branch)
000000009958308B  comment  (;;; <@92,#83> -------------------- B9 --------------------)
000000009958308B  comment  (;;; <@94,#85> push-argument)
000000009958308D  property cell
000000009958309A  comment  (;;; <@96,#87> push-argument)
000000009958309C  comment  (;;; <@98,#89> push-argument)
000000009958309E  embedded object  (00000000FCE04139 <FixedArray[0]>)
00000000995830A8  comment  (;;; <@100,#90> call-runtime)
00000000995830B8  code target (STUB)  (00000000995072A0)
00000000995830BC  comment  (;;; <@102,#91> check-maps)
00000000995830BE  embedded object  (00000000DFA05ED1 <Map(elements=0)>)
00000000995830D0  comment  (;;; <@104,#94> load-named-field)
00000000995830D4  comment  (;;; <@105,#94> gap)
00000000995830D8  comment  (;;; <@106,#126> check-smi)
00000000995830E1  comment  (;;; <@107,#126> gap)
00000000995830E4  comment  (;;; <@108,#96> store-keyed)
00000000995830E8  comment  (;;; <@109,#96> gap)
00000000995830EC  comment  (;;; <@110,#125> check-smi)
00000000995830F5  comment  (;;; <@112,#100> store-keyed)
00000000995830F9  comment  (;;; <@113,#100> gap)
0000000099583101  comment  (;;; <@114,#102> store-keyed-generic)
0000000099583101  position  (4309)
0000000099583102  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099583106  comment  (;;; <@116,#106> lazy-bailout)
0000000099583106  comment  (;;; <@119,#107> goto)
000000009958310B  comment  (;;; <@124,#77> -------------------- B11 --------------------)
000000009958310B  comment  (;;; <@126,#79> push-argument)
000000009958310E  comment  (;;; <@127,#79> gap)
0000000099583112  comment  (;;; <@128,#80> push-argument)
0000000099583113  comment  (;;; <@130,#81> call-named)
0000000099583115  embedded object  (00000000FCE14709 <String[4]: push>)
000000009958311D  position  (4243)
000000009958311E  code target (CALL_IC)  (000000009951AF60)
0000000099583126  comment  (;;; <@132,#82> lazy-bailout)
0000000099583126  comment  (;;; <@144,#121> -------------------- B14 --------------------)
0000000099583126  comment  (;;; <@146,#2> constant-t)
0000000099583128  embedded object  (00000000F5104121 <undefined>)
0000000099583130  comment  (;;; <@148,#123> return)
0000000099583137  comment  (;;; <@150,#17> -------------------- B15 --------------------)
000000009958313B  comment  (;;; <@154,#23> -------------------- B16 --------------------)
000000009958313B  comment  (;;; <@156,#24> load-context-slot)
0000000099583142  comment  (;;; <@158,#25> global-object)
0000000099583146  comment  (;;; <@160,#26> global-receiver)
000000009958314A  comment  (;;; <@162,#27> push-argument)
000000009958314B  comment  (;;; <@164,#28> push-argument)
000000009958314E  comment  (;;; <@166,#29> push-argument)
0000000099583151  comment  (;;; <@168,#30> push-argument)
0000000099583154  comment  (;;; <@170,#31> call-function)
0000000099583154  position  (5383)
0000000099583155  code target (STUB)  (0000000099582E00)
000000009958315D  comment  (;;; <@172,#32> lazy-bailout)
000000009958315D  comment  (;;; <@174,#2> constant-t)
000000009958315F  embedded object  (00000000F5104121 <undefined>)
0000000099583167  comment  (;;; <@176,#35> return)
000000009958316E  comment  (;;; -------------------- Jump table --------------------)
000000009958316E  comment  (;;; jump table entry 0: deoptimization bailout 1.)
000000009958316F  runtime entry  (deoptimization bailout 1)
0000000099583173  comment  (;;; jump table entry 1: deoptimization bailout 2.)
0000000099583174  runtime entry  (deoptimization bailout 2)
0000000099583178  comment  (;;; jump table entry 2: deoptimization bailout 3.)
0000000099583179  runtime entry  (deoptimization bailout 3)
000000009958317D  comment  (;;; jump table entry 3: deoptimization bailout 9.)
000000009958317E  runtime entry  (deoptimization bailout 9)
0000000099583182  comment  (;;; jump table entry 4: deoptimization bailout 10.)
0000000099583183  runtime entry  (deoptimization bailout 10)
0000000099583187  comment  (;;; jump table entry 5: deoptimization bailout 11.)
0000000099583188  runtime entry  (deoptimization bailout 11)
000000009958318C  comment  (;;; Safepoint table.)

-----------------------------------------------------------
Compiling method slice using hydrogen
--- Raw source ---
(a,b){
if((this==null)&&!(%_IsUndetectableObject(this))){
throw MakeTypeError("called_on_null_or_undefined",
["String.prototype.slice"]);
}
var c=((typeof(%IS_VAR(this))==='string')?this:NonStringToString(this));
var d=c.length;
var g=(%_IsSmi(%IS_VAR(a))?a:%NumberToInteger(ToNumber(a)));
var h=d;
if(b!==void 0){
h=(%_IsSmi(%IS_VAR(b))?b:%NumberToInteger(ToNumber(b)));
}

if(g<0){
g+=d;
if(g<0){
g=0;
}
}else{
if(g>d){
return'';
}
}

if(h<0){
h+=d;
if(h<0){
return'';
}
}else{
if(h>d){
h=d;
}
}

if(h<=g){
return'';
}

return %_SubString(c,g,h);
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = slice
stack_slots = 4
Instructions (size = 1437)
00000000995836C0     0  4885c9         REX.W testq rcx,rcx
00000000995836C3     3  7409           jz 14  (00000000995836CE)
00000000995836C5     5  4d8b55a8       REX.W movq r10,[r13-0x58]
00000000995836C9     9  4c89542418     REX.W movq [rsp+0x18],r10
00000000995836CE    14  55             push rbp
00000000995836CF    15  4889e5         REX.W movq rbp,rsp
00000000995836D2    18  56             push rsi
00000000995836D3    19  57             push rdi
00000000995836D4    20  4883ec20       REX.W subq rsp,0x20
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
00000000995836D8    24  488bc6         REX.W movq rax,rsi
                  ;;; <@12,#9> -------------------- B1 --------------------
                  ;;; <@14,#11> stack-check
00000000995836DB    27  493b6558       REX.W cmpq rsp,[r13+0x58]
00000000995836DF    31  7305           jnc 38  (00000000995836E6)
00000000995836E1    33  e89a26f9ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@16,#14> gap
00000000995836E6    38  488b4520       REX.W movq rax,[rbp+0x20]
                  ;;; <@17,#14> cmp-object-eq-and-branch
00000000995836EA    42  49ba014110f500000000 REX.W movq r10,00000000F5104101    ;; object: 00000000F5104101 <null>
00000000995836F4    52  493bc2         REX.W cmpq rax,r10
00000000995836F7    55  0f8429000000   jz 102  (0000000099583726)
                  ;;; <@18,#19> -------------------- B2 --------------------
                  ;;; <@21,#20> cmp-object-eq-and-branch
00000000995836FD    61  49ba214110f500000000 REX.W movq r10,00000000F5104121    ;; object: 00000000F5104121 <undefined>
0000000099583707    71  493bc2         REX.W cmpq rax,r10
000000009958370A    74  0f8416000000   jz 102  (0000000099583726)
                  ;;; <@22,#23> -------------------- B3 --------------------
                  ;;; <@25,#24> is-undetectable-and-branch
0000000099583710    80  a801           test al,0x1
0000000099583712    82  0f84c6000000   jz 286  (00000000995837DE)
0000000099583718    88  488b58ff       REX.W movq rbx,[rax-0x1]
000000009958371C    92  f6430d20       testb [rbx+0xd],0x20
0000000099583720    96  0f84b8000000   jz 286  (00000000995837DE)
                  ;;; <@46,#31> -------------------- B9 --------------------
                  ;;; <@49,#32> is-undetectable-and-branch
0000000099583726   102  a801           test al,0x1
0000000099583728   104  0f840e000000   jz 124  (000000009958373C)
000000009958372E   110  488b58ff       REX.W movq rbx,[rax-0x1]
0000000099583732   114  f6430d20       testb [rbx+0xd],0x20
0000000099583736   118  0f85a2000000   jnz 286  (00000000995837DE)
                  ;;; <@54,#39> -------------------- B11 --------------------
                  ;;; <@56,#40> global-object
000000009958373C   124  488b5e27       REX.W movq rbx,[rsi+0x27]
                  ;;; <@58,#43> allocate
0000000099583740   128  498b8dc8090000 REX.W movq rcx,[r13+0x9c8]
0000000099583747   135  488bd1         REX.W movq rdx,rcx
000000009958374A   138  4883c220       REX.W addq rdx,0x20
000000009958374E   142  0f82fc020000   jc 912  (0000000099583A50)
0000000099583754   148  493b95d0090000 REX.W cmpq rdx,[r13+0x9d0]
000000009958375B   155  0f87ef020000   ja 912  (0000000099583A50)
0000000099583761   161  498995c8090000 REX.W movq [r13+0x9c8],rdx
0000000099583768   168  48ffc1         REX.W incq rcx
                  ;;; <@60,#44> sub-allocated-object
000000009958376B   171  488d11         REX.W leaq rdx,[rcx]
                  ;;; <@62,#46> store-named-field
000000009958376E   174  49baf95da0df00000000 REX.W movq r10,00000000DFA05DF9    ;; object: 00000000DFA05DF9 <Map(elements=2)>
0000000099583778   184  4c8952ff       REX.W movq [rdx-0x1],r10
                  ;;; <@64,#47> constant-t
000000009958377C   188  48bf2860d0e400000000 REX.W movq rdi,00000000E4D06028    ;; property cell
0000000099583786   198  488b3f         REX.W movq rdi,[rdi]
                  ;;; <@66,#48> store-named-field
0000000099583789   201  48897a0f       REX.W movq [rdx+0xf],rdi
                  ;;; <@68,#50> store-named-field
000000009958378D   205  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099583797   215  4c895207       REX.W movq [rdx+0x7],r10
                  ;;; <@70,#52> store-named-field
000000009958379B   219  4c896217       REX.W movq [rdx+0x17],r12
                  ;;; <@72,#56> global-receiver
000000009958379F   223  488b5b2f       REX.W movq rbx,[rbx+0x2f]
                  ;;; <@74,#57> push-argument
00000000995837A3   227  53             push rbx
                  ;;; <@76,#58> push-argument
00000000995837A4   228  49baf11de1fc00000000 REX.W movq r10,00000000FCE11DF1    ;; object: 00000000FCE11DF1 <String[27]: called_on_null_or_undefined>
00000000995837AE   238  4152           push r10
                  ;;; <@78,#59> push-argument
00000000995837B0   240  51             push rcx
                  ;;; <@80,#60> call-known-global
00000000995837B1   241  48bf39d415f500000000 REX.W movq rdi,00000000F515D439    ;; object: 00000000F515D439 <JS Function MakeTypeError (SharedFunctionInfo 00000000F5119D29)>
00000000995837BB   251  488b772f       REX.W movq rsi,[rdi+0x2f]
00000000995837BF   255  4c89e1         REX.W movq rcx,r12
00000000995837C2   258  ff5717         call [rdi+0x17]       ;; debug: position 8703
00000000995837C5   261  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@82,#61> lazy-bailout
                  ;;; <@84,#62> throw
00000000995837C9   265  50             push rax
00000000995837CA   266  b801000000     movl rax,0000000000000001
00000000995837CF   271  48bb1098d43f01000000 REX.W movq rbx,000000013FD49810
00000000995837D9   281  e8c23af8ff     call 00000000995072A0    ;; debug: position 8697
                                                             ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@86,#63> lazy-bailout
                  ;;; <@92,#65> -------------------- B13 --------------------
                  ;;; <@94,#66> gap
00000000995837DE   286  488b4520       REX.W movq rax,[rbp+0x20]
                  ;;; <@95,#66> typeof-is-and-branch
00000000995837E2   290  a801           test al,0x1
00000000995837E4   292  0f8418000000   jz 322  (0000000099583802)
00000000995837EA   298  488b40ff       REX.W movq rax,[rax-0x1]
00000000995837EE   302  80780b80       cmpb [rax+0xb],0x80
00000000995837F2   306  0f830a000000   jnc 322  (0000000099583802)
00000000995837F8   312  f6400d20       testb [rax+0xd],0x20
00000000995837FC   316  0f8429000000   jz 363  (000000009958382B)
                  ;;; <@100,#73> -------------------- B15 --------------------
                  ;;; <@102,#74> global-object
0000000099583802   322  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@104,#77> global-receiver
0000000099583806   326  488b402f       REX.W movq rax,[rax+0x2f]
                  ;;; <@106,#78> push-argument
000000009958380A   330  50             push rax
                  ;;; <@108,#79> push-argument
000000009958380B   331  ff7520         push [rbp+0x20]
                  ;;; <@110,#80> call-known-global
000000009958380E   334  48bf897215f500000000 REX.W movq rdi,00000000F5157289    ;; object: 00000000F5157289 <JS Function NonStringToString (SharedFunctionInfo 00000000F5115FA9)>
0000000099583818   344  488b772f       REX.W movq rsi,[rdi+0x2f]
000000009958381C   348  4c89e1         REX.W movq rcx,r12
000000009958381F   351  ff5717         call [rdi+0x17]       ;; debug: position 8826
0000000099583822   354  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@112,#81> lazy-bailout
                  ;;; <@115,#86> goto
0000000099583826   358  e904000000     jmp 367  (000000009958382F)
                  ;;; <@120,#82> -------------------- B17 --------------------
                  ;;; <@122,#84> gap
000000009958382B   363  488b4520       REX.W movq rax,[rbp+0x20]
                  ;;; <@124,#88> -------------------- B18 --------------------
000000009958382F   367  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@126,#91> check-non-smi
0000000099583833   371  a801           test al,0x1
0000000099583835   373  0f8483030000   jz 1278  (0000000099583BBE)
                  ;;; <@128,#92> check-instance-type
000000009958383B   379  4c8b50ff       REX.W movq r10,[rax-0x1]
000000009958383F   383  41f6420b80     testb [r10+0xb],0x80
0000000099583844   388  0f8579030000   jnz 1283  (0000000099583BC3)
                  ;;; <@130,#93> load-named-field
000000009958384A   394  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@131,#93> gap
000000009958384E   398  48895de0       REX.W movq [rbp-0x20],rbx
                  ;;; <@132,#95> gap
0000000099583852   402  488b5518       REX.W movq rdx,[rbp+0x18]
                  ;;; <@133,#95> is-smi-and-branch
0000000099583856   406  f6c201         testb rdx,0x1
0000000099583859   409  0f844f000000   jz 494  (00000000995838AE)
                  ;;; <@138,#102> -------------------- B20 --------------------
                  ;;; <@140,#103> global-object
000000009958385F   415  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@142,#106> global-receiver
0000000099583863   419  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@144,#107> push-argument
0000000099583867   423  51             push rcx
                  ;;; <@146,#108> push-argument
0000000099583868   424  52             push rdx
                  ;;; <@148,#109> call-known-global
0000000099583869   425  48bf91c215f500000000 REX.W movq rdi,00000000F515C291    ;; object: 00000000F515C291 <JS Function ToNumber (SharedFunctionInfo 00000000F5115D49)>
0000000099583873   435  488b772f       REX.W movq rsi,[rdi+0x2f]
0000000099583877   439  4c89e1         REX.W movq rcx,r12
000000009958387A   442  ff5717         call [rdi+0x17]       ;; debug: position 8914
000000009958387D   445  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@150,#110> lazy-bailout
                  ;;; <@152,#111> push-argument
0000000099583881   449  50             push rax
                  ;;; <@154,#112> call-runtime
0000000099583882   450  b801000000     movl rax,0000000000000001
0000000099583887   455  48bb9069d33f01000000 REX.W movq rbx,000000013FD36990
0000000099583891   465  e80a3af8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@156,#117> lazy-bailout
                  ;;; <@157,#117> gap
0000000099583896   470  488bd8         REX.W movq rbx,rax
                  ;;; <@158,#313> tagged-to-i
0000000099583899   473  f6c301         testb rbx,0x1
000000009958389C   476  0f8508020000   jnz 1002  (0000000099583AAA)
00000000995838A2   482  48c1eb20       REX.W shrq rbx,32
                  ;;; <@160,#118> gap
00000000995838A6   486  488bc3         REX.W movq rax,rbx
                  ;;; <@161,#118> goto
00000000995838A9   489  e910000000     jmp 510  (00000000995838BE)
                  ;;; <@166,#114> -------------------- B22 --------------------
                  ;;; <@167,#114> gap
00000000995838AE   494  488b4518       REX.W movq rax,[rbp+0x18]
                  ;;; <@168,#304> tagged-to-i
00000000995838B2   498  a801           test al,0x1
00000000995838B4   500  0f8535020000   jnz 1071  (0000000099583AEF)
00000000995838BA   506  48c1e820       REX.W shrq rax,32
                  ;;; <@172,#120> -------------------- B23 --------------------
00000000995838BE   510  488945d8       REX.W movq [rbp-0x28],rax
                  ;;; <@174,#124> gap
00000000995838C2   514  488b5d10       REX.W movq rbx,[rbp+0x10]
                  ;;; <@175,#124> cmp-object-eq-and-branch
00000000995838C6   518  49ba214110f500000000 REX.W movq r10,00000000F5104121    ;; object: 00000000F5104121 <undefined>
00000000995838D0   528  493bda         REX.W cmpq rbx,r10
00000000995838D3   531  0f846d000000   jz 646  (0000000099583946)
                  ;;; <@180,#131> -------------------- B25 --------------------
                  ;;; <@183,#132> is-smi-and-branch
00000000995838D9   537  f6c301         testb rbx,0x1
00000000995838DC   540  0f844f000000   jz 625  (0000000099583931)
                  ;;; <@188,#139> -------------------- B27 --------------------
                  ;;; <@190,#140> global-object
00000000995838E2   546  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@192,#143> global-receiver
00000000995838E6   550  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@194,#144> push-argument
00000000995838EA   554  52             push rdx
                  ;;; <@196,#145> push-argument
00000000995838EB   555  53             push rbx
                  ;;; <@198,#146> call-known-global
00000000995838EC   556  48bf91c215f500000000 REX.W movq rdi,00000000F515C291    ;; object: 00000000F515C291 <JS Function ToNumber (SharedFunctionInfo 00000000F5115D49)>
00000000995838F6   566  488b772f       REX.W movq rsi,[rdi+0x2f]
00000000995838FA   570  4c89e1         REX.W movq rcx,r12
00000000995838FD   573  ff5717         call [rdi+0x17]       ;; debug: position 8996
0000000099583900   576  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@200,#147> lazy-bailout
                  ;;; <@202,#148> push-argument
0000000099583904   580  50             push rax
                  ;;; <@204,#149> call-runtime
0000000099583905   581  b801000000     movl rax,0000000000000001
000000009958390A   586  48bb9069d33f01000000 REX.W movq rbx,000000013FD36990
0000000099583914   596  e88739f8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@206,#154> lazy-bailout
                  ;;; <@207,#154> gap
0000000099583919   601  488bd8         REX.W movq rbx,rax
                  ;;; <@208,#314> tagged-to-i
000000009958391C   604  f6c301         testb rbx,0x1
000000009958391F   607  0f850f020000   jnz 1140  (0000000099583B34)
0000000099583925   613  48c1eb20       REX.W shrq rbx,32
                  ;;; <@210,#155> gap
0000000099583929   617  488bc3         REX.W movq rax,rbx
                  ;;; <@211,#155> goto
000000009958392C   620  e91d000000     jmp 654  (000000009958394E)
                  ;;; <@216,#151> -------------------- B29 --------------------
                  ;;; <@217,#151> gap
0000000099583931   625  488b4510       REX.W movq rax,[rbp+0x10]
                  ;;; <@218,#305> tagged-to-i
0000000099583935   629  a801           test al,0x1
0000000099583937   631  0f853c020000   jnz 1209  (0000000099583B79)
000000009958393D   637  48c1e820       REX.W shrq rax,32
                  ;;; <@221,#153> goto
0000000099583941   641  e908000000     jmp 654  (000000009958394E)
                  ;;; <@230,#161> -------------------- B32 --------------------
                  ;;; <@231,#161> gap
0000000099583946   646  488b45e0       REX.W movq rax,[rbp-0x20]
                  ;;; <@232,#312> smi-untag
000000009958394A   650  48c1e820       REX.W shrq rax,32
                  ;;; <@236,#165> -------------------- B33 --------------------
                  ;;; <@238,#168> gap
000000009958394E   654  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@239,#168> compare-numeric-and-branch
0000000099583952   658  83fb00         cmpl rbx,0x0
0000000099583955   661  0f8c21000000   jl 700  (000000009958397C)
                  ;;; <@244,#199> -------------------- B35 --------------------
                  ;;; <@245,#199> gap
000000009958395B   667  488b55e0       REX.W movq rdx,[rbp-0x20]
                  ;;; <@246,#310> smi-untag
000000009958395F   671  48c1ea20       REX.W shrq rdx,32
                  ;;; <@249,#202> compare-numeric-and-branch
0000000099583963   675  3bda           cmpl rbx,rdx
0000000099583965   677  0f8e31000000   jle 732  (000000009958399C)
                  ;;; <@262,#209> -------------------- B39 --------------------
                  ;;; <@264,#210> constant-t
000000009958396B   683  48b8c160e0fc00000000 REX.W movq rax,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
                  ;;; <@266,#212> return
0000000099583975   693  488be5         REX.W movq rsp,rbp
0000000099583978   696  5d             pop rbp
0000000099583979   697  c21800         ret 0x18
                  ;;; <@272,#175> -------------------- B41 --------------------
                  ;;; <@273,#175> gap
000000009958397C   700  488b55e0       REX.W movq rdx,[rbp-0x20]
                  ;;; <@274,#311> smi-untag
0000000099583980   704  48c1ea20       REX.W shrq rdx,32
                  ;;; <@276,#178> add-i
0000000099583984   708  03d3           addl rdx,rbx
                  ;;; <@279,#183> compare-numeric-and-branch
0000000099583986   710  83fa00         cmpl rdx,0x0
0000000099583989   713  0f8c08000000   jl 727  (0000000099583997)
                  ;;; <@284,#195> -------------------- B43 --------------------
                  ;;; <@286,#197> gap
000000009958398F   719  488bda         REX.W movq rbx,rdx
                  ;;; <@287,#197> goto
0000000099583992   722  e905000000     jmp 732  (000000009958399C)
                  ;;; <@292,#190> -------------------- B45 --------------------
                  ;;; <@294,#194> gap
0000000099583997   727  bb00000000     movl rbx,0000000000000000
                  ;;; <@300,#220> -------------------- B47 --------------------
000000009958399C   732  48895dd8       REX.W movq [rbp-0x28],rbx
                  ;;; <@303,#223> compare-numeric-and-branch
00000000995839A0   736  83f800         cmpl rax,0x0
00000000995839A3   739  0f8c1b000000   jl 772  (00000000995839C4)
                  ;;; <@308,#252> -------------------- B49 --------------------
                  ;;; <@309,#252> gap
00000000995839A9   745  488b55e0       REX.W movq rdx,[rbp-0x20]
                  ;;; <@310,#308> smi-untag
00000000995839AD   749  48c1ea20       REX.W shrq rdx,32
                  ;;; <@313,#255> compare-numeric-and-branch
00000000995839B1   753  3bc2           cmpl rax,rdx
00000000995839B3   755  0f8f03000000   jg 764  (00000000995839BC)
                  ;;; <@318,#267> -------------------- B51 --------------------
                  ;;; <@320,#269> gap
00000000995839B9   761  488bd0         REX.W movq rdx,rax
                  ;;; <@330,#274> -------------------- B54 --------------------
                  ;;; <@332,#276> gap
00000000995839BC   764  488bc2         REX.W movq rax,rdx
                  ;;; <@333,#276> goto
00000000995839BF   767  e944000000     jmp 840  (0000000099583A08)
                  ;;; <@338,#230> -------------------- B56 --------------------
                  ;;; <@340,#233> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
00000000995839C4   772  e89b26e8ff     call 0000000099406064    ;; debug: position 9123
                                                             ;; soft deoptimization bailout 10
                  ;;; <@341,#233> gap
00000000995839C9   777  488b55e0       REX.W movq rdx,[rbp-0x20]
                  ;;; <@342,#309> smi-untag
00000000995839CD   781  48c1ea20       REX.W shrq rdx,32
                  ;;; <@343,#309> gap
00000000995839D1   785  488bca         REX.W movq rcx,rdx
                  ;;; <@344,#234> add-i
00000000995839D4   788  03c8           addl rcx,rax
                  ;;; <@345,#234> gap
00000000995839D6   790  48894dd0       REX.W movq [rbp-0x30],rcx
00000000995839DA   794  488bc1         REX.W movq rax,rcx
                  ;;; <@346,#317> smi-tag
00000000995839DD   797  48c1e020       REX.W shlq rax,32
                  ;;; <@348,#318> constant-t
00000000995839E1   801  33d2           xorl rdx,rdx
                  ;;; <@349,#318> gap
00000000995839E3   803  4892           REX.W xchgq rax, rdx
                  ;;; <@350,#239> cmp-t
00000000995839E5   805  e8b677f8ff     call 000000009950B1A0    ;; debug: position 9095
                                                             ;; code: COMPARE_IC, UNINITIALIZED
00000000995839EA   810  90             nop
00000000995839EB   811  4885c0         REX.W testq rax,rax
00000000995839EE   814  7c06           jl 822  (00000000995839F6)
00000000995839F0   816  498b45c8       REX.W movq rax,[r13-0x38]
00000000995839F4   820  eb04           jmp 826  (00000000995839FA)
00000000995839F6   822  498b45c0       REX.W movq rax,[r13-0x40]
                  ;;; <@352,#240> lazy-bailout
                  ;;; <@355,#241> branch
00000000995839FA   826  493b45c0       REX.W cmpq rax,[r13-0x40]
00000000995839FE   830  0f843b000000   jz 895  (0000000099583A3F)
                  ;;; <@360,#271> -------------------- B58 --------------------
                  ;;; <@362,#273> gap
0000000099583A04   836  488b45d0       REX.W movq rax,[rbp-0x30]
                  ;;; <@364,#278> -------------------- B59 --------------------
                  ;;; <@367,#281> compare-numeric-and-branch
0000000099583A08   840  3b45d8         cmpl rax,[rbp-0x28]
0000000099583A0B   843  0f8e1d000000   jle 878  (0000000099583A2E)
                  ;;; <@372,#292> -------------------- B61 --------------------
                  ;;; <@374,#294> push-argument
0000000099583A11   849  ff75e8         push [rbp-0x18]
                  ;;; <@375,#294> gap
0000000099583A14   852  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@376,#316> smi-tag
0000000099583A18   856  48c1e320       REX.W shlq rbx,32
                  ;;; <@378,#296> push-argument
0000000099583A1C   860  53             push rbx
                  ;;; <@380,#319> smi-tag
0000000099583A1D   861  48c1e020       REX.W shlq rax,32
                  ;;; <@382,#298> push-argument
0000000099583A21   865  50             push rax
                  ;;; <@384,#299> call-stub
0000000099583A22   866  e8b9a5fcff     call 000000009954DFE0    ;; debug: position 9142
                                                             ;; code: STUB, SubStringStub, minor: 0
                  ;;; <@386,#300> lazy-bailout
                  ;;; <@388,#302> return
0000000099583A27   871  488be5         REX.W movq rsp,rbp
0000000099583A2A   874  5d             pop rbp
0000000099583A2B   875  c21800         ret 0x18
                  ;;; <@394,#288> -------------------- B63 --------------------
                  ;;; <@396,#289> constant-t
0000000099583A2E   878  48b8c160e0fc00000000 REX.W movq rax,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
                  ;;; <@398,#291> return
0000000099583A38   888  488be5         REX.W movq rsp,rbp
0000000099583A3B   891  5d             pop rbp
0000000099583A3C   892  c21800         ret 0x18
                  ;;; <@404,#248> -------------------- B65 --------------------
                  ;;; <@406,#249> constant-t
0000000099583A3F   895  48b8c160e0fc00000000 REX.W movq rax,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
                  ;;; <@408,#251> return
0000000099583A49   905  488be5         REX.W movq rsp,rbp
0000000099583A4C   908  5d             pop rbp
0000000099583A4D   909  c21800         ret 0x18
                  ;;; <@58,#43> -------------------- Deferred allocate --------------------
0000000099583A50   912  33c9           xorl rcx,rcx
0000000099583A52   914  50             push rax
0000000099583A53   915  51             push rcx
0000000099583A54   916  52             push rdx
0000000099583A55   917  53             push rbx
0000000099583A56   918  56             push rsi
0000000099583A57   919  57             push rdi
0000000099583A58   920  4150           push r8
0000000099583A5A   922  4151           push r9
0000000099583A5C   924  4153           push r11
0000000099583A5E   926  4156           push r14
0000000099583A60   928  4157           push r15
0000000099583A62   930  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099583A67   935  49ba0000000020000000 REX.W movq r10,0000002000000000
0000000099583A71   945  4152           push r10
0000000099583A73   947  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099583A77   951  b801000000     movl rax,0000000000000001
0000000099583A7C   956  48bba0c9d43f01000000 REX.W movq rbx,000000013FD4C9A0
0000000099583A86   966  e81530f8ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
0000000099583A8B   971  4889442470     REX.W movq [rsp+0x70],rax
0000000099583A90   976  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099583A95   981  415f           pop r15
0000000099583A97   983  415e           pop r14
0000000099583A99   985  415b           pop r11
0000000099583A9B   987  4159           pop r9
0000000099583A9D   989  4158           pop r8
0000000099583A9F   991  5f             pop rdi
0000000099583AA0   992  5e             pop rsi
0000000099583AA1   993  5b             pop rbx
0000000099583AA2   994  5a             pop rdx
0000000099583AA3   995  59             pop rcx
0000000099583AA4   996  58             pop rax
0000000099583AA5   997  e9c1fcffff     jmp 171  (000000009958376B)
                  ;;; <@158,#313> -------------------- Deferred tagged-to-i --------------------
0000000099583AAA  1002  4d8b55f8       REX.W movq r10,[r13-0x8]
0000000099583AAE  1006  4c3953ff       REX.W cmpq [rbx-0x1],r10
0000000099583AB2  1010  0f8510010000   jnz 1288  (0000000099583BC8)
0000000099583AB8  1016  f20f104307     movsd xmm0,[rbx+0x7]
0000000099583ABD  1021  f20f2cd8       cvttsd2sil rbx,xmm0
0000000099583AC1  1025  f20f2acb       cvtsi2sd xmm1,rbx
0000000099583AC5  1029  660f2ec1       ucomisd xmm0,xmm1
0000000099583AC9  1033  0f85f9000000   jnz 1288  (0000000099583BC8)
0000000099583ACF  1039  0f8af3000000   jpe 1288  (0000000099583BC8)
0000000099583AD5  1045  85db           testl rbx,rbx
0000000099583AD7  1047  0f850d000000   jnz 1066  (0000000099583AEA)
0000000099583ADD  1053  660f50d8       movmskpd rbx,xmm0
0000000099583AE1  1057  83e301         andl rbx,0x1
0000000099583AE4  1060  0f85de000000   jnz 1288  (0000000099583BC8)
0000000099583AEA  1066  e9b7fdffff     jmp 486  (00000000995838A6)
                  ;;; <@168,#304> -------------------- Deferred tagged-to-i --------------------
0000000099583AEF  1071  4d8b55f8       REX.W movq r10,[r13-0x8]
0000000099583AF3  1075  4c3950ff       REX.W cmpq [rax-0x1],r10
0000000099583AF7  1079  0f85d0000000   jnz 1293  (0000000099583BCD)
0000000099583AFD  1085  f20f104007     movsd xmm0,[rax+0x7]
0000000099583B02  1090  f20f2cc0       cvttsd2sil rax,xmm0
0000000099583B06  1094  f20f2ac8       cvtsi2sd xmm1,rax
0000000099583B0A  1098  660f2ec1       ucomisd xmm0,xmm1
0000000099583B0E  1102  0f85b9000000   jnz 1293  (0000000099583BCD)
0000000099583B14  1108  0f8ab3000000   jpe 1293  (0000000099583BCD)
0000000099583B1A  1114  85c0           testl rax,rax
0000000099583B1C  1116  0f850d000000   jnz 1135  (0000000099583B2F)
0000000099583B22  1122  660f50c0       movmskpd rax,xmm0
0000000099583B26  1126  83e001         andl rax,0x1
0000000099583B29  1129  0f859e000000   jnz 1293  (0000000099583BCD)
0000000099583B2F  1135  e98afdffff     jmp 510  (00000000995838BE)
                  ;;; <@208,#314> -------------------- Deferred tagged-to-i --------------------
0000000099583B34  1140  4d8b55f8       REX.W movq r10,[r13-0x8]
0000000099583B38  1144  4c3953ff       REX.W cmpq [rbx-0x1],r10
0000000099583B3C  1148  0f8590000000   jnz 1298  (0000000099583BD2)
0000000099583B42  1154  f20f104307     movsd xmm0,[rbx+0x7]
0000000099583B47  1159  f20f2cd8       cvttsd2sil rbx,xmm0
0000000099583B4B  1163  f20f2acb       cvtsi2sd xmm1,rbx
0000000099583B4F  1167  660f2ec1       ucomisd xmm0,xmm1
0000000099583B53  1171  0f8579000000   jnz 1298  (0000000099583BD2)
0000000099583B59  1177  0f8a73000000   jpe 1298  (0000000099583BD2)
0000000099583B5F  1183  85db           testl rbx,rbx
0000000099583B61  1185  0f850d000000   jnz 1204  (0000000099583B74)
0000000099583B67  1191  660f50d8       movmskpd rbx,xmm0
0000000099583B6B  1195  83e301         andl rbx,0x1
0000000099583B6E  1198  0f855e000000   jnz 1298  (0000000099583BD2)
0000000099583B74  1204  e9b0fdffff     jmp 617  (0000000099583929)
                  ;;; <@218,#305> -------------------- Deferred tagged-to-i --------------------
0000000099583B79  1209  4d8b55f8       REX.W movq r10,[r13-0x8]
0000000099583B7D  1213  4c3950ff       REX.W cmpq [rax-0x1],r10
0000000099583B81  1217  0f8550000000   jnz 1303  (0000000099583BD7)
0000000099583B87  1223  f20f104007     movsd xmm0,[rax+0x7]
0000000099583B8C  1228  f20f2cc0       cvttsd2sil rax,xmm0
0000000099583B90  1232  f20f2ac8       cvtsi2sd xmm1,rax
0000000099583B94  1236  660f2ec1       ucomisd xmm0,xmm1
0000000099583B98  1240  0f8539000000   jnz 1303  (0000000099583BD7)
0000000099583B9E  1246  0f8a33000000   jpe 1303  (0000000099583BD7)
0000000099583BA4  1252  85c0           testl rax,rax
0000000099583BA6  1254  0f850d000000   jnz 1273  (0000000099583BB9)
0000000099583BAC  1260  660f50c0       movmskpd rax,xmm0
0000000099583BB0  1264  83e001         andl rax,0x1
0000000099583BB3  1267  0f851e000000   jnz 1303  (0000000099583BD7)
0000000099583BB9  1273  e983fdffff     jmp 641  (0000000099583941)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 4.
0000000099583BBE  1278  e86524c8ff     call 0000000099206028    ;; debug: position 8996
                                                             ;; deoptimization bailout 4
                  ;;; jump table entry 1: deoptimization bailout 5.
0000000099583BC3  1283  e86a24c8ff     call 0000000099206032    ;; deoptimization bailout 5
                  ;;; jump table entry 2: deoptimization bailout 13.
0000000099583BC8  1288  e8b524c8ff     call 0000000099206082    ;; deoptimization bailout 13
                  ;;; jump table entry 3: deoptimization bailout 14.
0000000099583BCD  1293  e8ba24c8ff     call 000000009920608C    ;; deoptimization bailout 14
                  ;;; jump table entry 4: deoptimization bailout 15.
0000000099583BD2  1298  e8bf24c8ff     call 0000000099206096    ;; deoptimization bailout 15
                  ;;; jump table entry 5: deoptimization bailout 16.
0000000099583BD7  1303  e8c424c8ff     call 00000000992060A0    ;; deoptimization bailout 16
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 17)
 index  ast id    argc     pc             
     0       3       0     38
     1      32       0    265
     2      35       0    286
     3      60       0    358
     4      63       0     -1
     5      63       0     -1
     6     102       0    449
     7     107       0    470
     8     155       0    580
     9     160       0    601
    10     276       0     -1
    11     246       0    826
    12     297       0    871
    13     107       0     -1
    14     107       0     -1
    15     160       0     -1
    16     160       0     -1

Safepoints (size = 129)
00000000995836E6    38  0000 (sp -> fp)       0
00000000995837C5   261  0000 (sp -> fp)       1
00000000995837DE   286  0000 (sp -> fp)       2
0000000099583822   354  0000 (sp -> fp)       3
000000009958387D   445  0001 (sp -> fp)       6
0000000099583896   470  0001 (sp -> fp)       7
0000000099583900   576  0001 (sp -> fp)       8
0000000099583919   601  0001 (sp -> fp)       9
00000000995839EA   810  0001 (sp -> fp)      11
0000000099583A27   871  0000 (sp -> fp)      12
0000000099583A8B   971  0000 | rax | rcx | rbx | rsi (sp -> fp)  <none> argc: 1

RelocInfo (size = 1967)
00000000995836D8  comment  (;;; <@0,#0> -------------------- B0 --------------------)
00000000995836D8  comment  (;;; <@2,#1> context)
00000000995836DB  comment  (;;; <@12,#9> -------------------- B1 --------------------)
00000000995836DB  comment  (;;; <@14,#11> stack-check)
00000000995836E2  code target (STUB)  (0000000099515D80)
00000000995836E6  comment  (;;; <@16,#14> gap)
00000000995836EA  comment  (;;; <@17,#14> cmp-object-eq-and-branch)
00000000995836EC  embedded object  (00000000F5104101 <null>)
00000000995836FD  comment  (;;; <@18,#19> -------------------- B2 --------------------)
00000000995836FD  comment  (;;; <@21,#20> cmp-object-eq-and-branch)
00000000995836FF  embedded object  (00000000F5104121 <undefined>)
0000000099583710  comment  (;;; <@22,#23> -------------------- B3 --------------------)
0000000099583710  comment  (;;; <@25,#24> is-undetectable-and-branch)
0000000099583726  comment  (;;; <@46,#31> -------------------- B9 --------------------)
0000000099583726  comment  (;;; <@49,#32> is-undetectable-and-branch)
000000009958373C  comment  (;;; <@54,#39> -------------------- B11 --------------------)
000000009958373C  comment  (;;; <@56,#40> global-object)
0000000099583740  comment  (;;; <@58,#43> allocate)
000000009958376B  comment  (;;; <@60,#44> sub-allocated-object)
000000009958376E  comment  (;;; <@62,#46> store-named-field)
0000000099583770  embedded object  (00000000DFA05DF9 <Map(elements=2)>)
000000009958377C  comment  (;;; <@64,#47> constant-t)
000000009958377E  property cell
0000000099583789  comment  (;;; <@66,#48> store-named-field)
000000009958378D  comment  (;;; <@68,#50> store-named-field)
000000009958378F  embedded object  (00000000FCE04139 <FixedArray[0]>)
000000009958379B  comment  (;;; <@70,#52> store-named-field)
000000009958379F  comment  (;;; <@72,#56> global-receiver)
00000000995837A3  comment  (;;; <@74,#57> push-argument)
00000000995837A4  comment  (;;; <@76,#58> push-argument)
00000000995837A6  embedded object  (00000000FCE11DF1 <String[27]: called_on_null_or_undefined>)
00000000995837B0  comment  (;;; <@78,#59> push-argument)
00000000995837B1  comment  (;;; <@80,#60> call-known-global)
00000000995837B3  embedded object  (00000000F515D439 <JS Function MakeTypeError (SharedFunctionInfo 00000000F5119D29)>)
00000000995837C2  position  (8703)
00000000995837C9  comment  (;;; <@82,#61> lazy-bailout)
00000000995837C9  comment  (;;; <@84,#62> throw)
00000000995837D9  position  (8697)
00000000995837DA  code target (STUB)  (00000000995072A0)
00000000995837DE  comment  (;;; <@86,#63> lazy-bailout)
00000000995837DE  comment  (;;; <@92,#65> -------------------- B13 --------------------)
00000000995837DE  comment  (;;; <@94,#66> gap)
00000000995837E2  comment  (;;; <@95,#66> typeof-is-and-branch)
0000000099583802  comment  (;;; <@100,#73> -------------------- B15 --------------------)
0000000099583802  comment  (;;; <@102,#74> global-object)
0000000099583806  comment  (;;; <@104,#77> global-receiver)
000000009958380A  comment  (;;; <@106,#78> push-argument)
000000009958380B  comment  (;;; <@108,#79> push-argument)
000000009958380E  comment  (;;; <@110,#80> call-known-global)
0000000099583810  embedded object  (00000000F5157289 <JS Function NonStringToString (SharedFunctionInfo 00000000F5115FA9)>)
000000009958381F  position  (8826)
0000000099583826  comment  (;;; <@112,#81> lazy-bailout)
0000000099583826  comment  (;;; <@115,#86> goto)
000000009958382B  comment  (;;; <@120,#82> -------------------- B17 --------------------)
000000009958382B  comment  (;;; <@122,#84> gap)
000000009958382F  comment  (;;; <@124,#88> -------------------- B18 --------------------)
0000000099583833  comment  (;;; <@126,#91> check-non-smi)
000000009958383B  comment  (;;; <@128,#92> check-instance-type)
000000009958384A  comment  (;;; <@130,#93> load-named-field)
000000009958384E  comment  (;;; <@131,#93> gap)
0000000099583852  comment  (;;; <@132,#95> gap)
0000000099583856  comment  (;;; <@133,#95> is-smi-and-branch)
000000009958385F  comment  (;;; <@138,#102> -------------------- B20 --------------------)
000000009958385F  comment  (;;; <@140,#103> global-object)
0000000099583863  comment  (;;; <@142,#106> global-receiver)
0000000099583867  comment  (;;; <@144,#107> push-argument)
0000000099583868  comment  (;;; <@146,#108> push-argument)
0000000099583869  comment  (;;; <@148,#109> call-known-global)
000000009958386B  embedded object  (00000000F515C291 <JS Function ToNumber (SharedFunctionInfo 00000000F5115D49)>)
000000009958387A  position  (8914)
0000000099583881  comment  (;;; <@150,#110> lazy-bailout)
0000000099583881  comment  (;;; <@152,#111> push-argument)
0000000099583882  comment  (;;; <@154,#112> call-runtime)
0000000099583892  code target (STUB)  (00000000995072A0)
0000000099583896  comment  (;;; <@156,#117> lazy-bailout)
0000000099583896  comment  (;;; <@157,#117> gap)
0000000099583899  comment  (;;; <@158,#313> tagged-to-i)
00000000995838A6  comment  (;;; <@160,#118> gap)
00000000995838A9  comment  (;;; <@161,#118> goto)
00000000995838AE  comment  (;;; <@166,#114> -------------------- B22 --------------------)
00000000995838AE  comment  (;;; <@167,#114> gap)
00000000995838B2  comment  (;;; <@168,#304> tagged-to-i)
00000000995838BE  comment  (;;; <@172,#120> -------------------- B23 --------------------)
00000000995838C2  comment  (;;; <@174,#124> gap)
00000000995838C6  comment  (;;; <@175,#124> cmp-object-eq-and-branch)
00000000995838C8  embedded object  (00000000F5104121 <undefined>)
00000000995838D9  comment  (;;; <@180,#131> -------------------- B25 --------------------)
00000000995838D9  comment  (;;; <@183,#132> is-smi-and-branch)
00000000995838E2  comment  (;;; <@188,#139> -------------------- B27 --------------------)
00000000995838E2  comment  (;;; <@190,#140> global-object)
00000000995838E6  comment  (;;; <@192,#143> global-receiver)
00000000995838EA  comment  (;;; <@194,#144> push-argument)
00000000995838EB  comment  (;;; <@196,#145> push-argument)
00000000995838EC  comment  (;;; <@198,#146> call-known-global)
00000000995838EE  embedded object  (00000000F515C291 <JS Function ToNumber (SharedFunctionInfo 00000000F5115D49)>)
00000000995838FD  position  (8996)
0000000099583904  comment  (;;; <@200,#147> lazy-bailout)
0000000099583904  comment  (;;; <@202,#148> push-argument)
0000000099583905  comment  (;;; <@204,#149> call-runtime)
0000000099583915  code target (STUB)  (00000000995072A0)
0000000099583919  comment  (;;; <@206,#154> lazy-bailout)
0000000099583919  comment  (;;; <@207,#154> gap)
000000009958391C  comment  (;;; <@208,#314> tagged-to-i)
0000000099583929  comment  (;;; <@210,#155> gap)
000000009958392C  comment  (;;; <@211,#155> goto)
0000000099583931  comment  (;;; <@216,#151> -------------------- B29 --------------------)
0000000099583931  comment  (;;; <@217,#151> gap)
0000000099583935  comment  (;;; <@218,#305> tagged-to-i)
0000000099583941  comment  (;;; <@221,#153> goto)
0000000099583946  comment  (;;; <@230,#161> -------------------- B32 --------------------)
0000000099583946  comment  (;;; <@231,#161> gap)
000000009958394A  comment  (;;; <@232,#312> smi-untag)
000000009958394E  comment  (;;; <@236,#165> -------------------- B33 --------------------)
000000009958394E  comment  (;;; <@238,#168> gap)
0000000099583952  comment  (;;; <@239,#168> compare-numeric-and-branch)
000000009958395B  comment  (;;; <@244,#199> -------------------- B35 --------------------)
000000009958395B  comment  (;;; <@245,#199> gap)
000000009958395F  comment  (;;; <@246,#310> smi-untag)
0000000099583963  comment  (;;; <@249,#202> compare-numeric-and-branch)
000000009958396B  comment  (;;; <@262,#209> -------------------- B39 --------------------)
000000009958396B  comment  (;;; <@264,#210> constant-t)
000000009958396D  embedded object  (00000000FCE060C1 <String[0]: >)
0000000099583975  comment  (;;; <@266,#212> return)
000000009958397C  comment  (;;; <@272,#175> -------------------- B41 --------------------)
000000009958397C  comment  (;;; <@273,#175> gap)
0000000099583980  comment  (;;; <@274,#311> smi-untag)
0000000099583984  comment  (;;; <@276,#178> add-i)
0000000099583986  comment  (;;; <@279,#183> compare-numeric-and-branch)
000000009958398F  comment  (;;; <@284,#195> -------------------- B43 --------------------)
000000009958398F  comment  (;;; <@286,#197> gap)
0000000099583992  comment  (;;; <@287,#197> goto)
0000000099583997  comment  (;;; <@292,#190> -------------------- B45 --------------------)
0000000099583997  comment  (;;; <@294,#194> gap)
000000009958399C  comment  (;;; <@300,#220> -------------------- B47 --------------------)
00000000995839A0  comment  (;;; <@303,#223> compare-numeric-and-branch)
00000000995839A9  comment  (;;; <@308,#252> -------------------- B49 --------------------)
00000000995839A9  comment  (;;; <@309,#252> gap)
00000000995839AD  comment  (;;; <@310,#308> smi-untag)
00000000995839B1  comment  (;;; <@313,#255> compare-numeric-and-branch)
00000000995839B9  comment  (;;; <@318,#267> -------------------- B51 --------------------)
00000000995839B9  comment  (;;; <@320,#269> gap)
00000000995839BC  comment  (;;; <@330,#274> -------------------- B54 --------------------)
00000000995839BC  comment  (;;; <@332,#276> gap)
00000000995839BF  comment  (;;; <@333,#276> goto)
00000000995839C4  comment  (;;; <@338,#230> -------------------- B56 --------------------)
00000000995839C4  comment  (;;; <@340,#233> deoptimize)
00000000995839C4  comment  (;;; deoptimize: Insufficient type feedback for left side)
00000000995839C4  position  (9123)
00000000995839C5  runtime entry
00000000995839C9  comment  (;;; <@341,#233> gap)
00000000995839CD  comment  (;;; <@342,#309> smi-untag)
00000000995839D1  comment  (;;; <@343,#309> gap)
00000000995839D4  comment  (;;; <@344,#234> add-i)
00000000995839D6  comment  (;;; <@345,#234> gap)
00000000995839DD  comment  (;;; <@346,#317> smi-tag)
00000000995839E1  comment  (;;; <@348,#318> constant-t)
00000000995839E3  comment  (;;; <@349,#318> gap)
00000000995839E5  comment  (;;; <@350,#239> cmp-t)
00000000995839E5  position  (9095)
00000000995839E6  code target (COMPARE_IC)  (000000009950B1A0)
00000000995839FA  comment  (;;; <@352,#240> lazy-bailout)
00000000995839FA  comment  (;;; <@355,#241> branch)
0000000099583A04  comment  (;;; <@360,#271> -------------------- B58 --------------------)
0000000099583A04  comment  (;;; <@362,#273> gap)
0000000099583A08  comment  (;;; <@364,#278> -------------------- B59 --------------------)
0000000099583A08  comment  (;;; <@367,#281> compare-numeric-and-branch)
0000000099583A11  comment  (;;; <@372,#292> -------------------- B61 --------------------)
0000000099583A11  comment  (;;; <@374,#294> push-argument)
0000000099583A14  comment  (;;; <@375,#294> gap)
0000000099583A18  comment  (;;; <@376,#316> smi-tag)
0000000099583A1C  comment  (;;; <@378,#296> push-argument)
0000000099583A1D  comment  (;;; <@380,#319> smi-tag)
0000000099583A21  comment  (;;; <@382,#298> push-argument)
0000000099583A22  comment  (;;; <@384,#299> call-stub)
0000000099583A22  position  (9142)
0000000099583A23  code target (STUB)  (000000009954DFE0)
0000000099583A27  comment  (;;; <@386,#300> lazy-bailout)
0000000099583A27  comment  (;;; <@388,#302> return)
0000000099583A2E  comment  (;;; <@394,#288> -------------------- B63 --------------------)
0000000099583A2E  comment  (;;; <@396,#289> constant-t)
0000000099583A30  embedded object  (00000000FCE060C1 <String[0]: >)
0000000099583A38  comment  (;;; <@398,#291> return)
0000000099583A3F  comment  (;;; <@404,#248> -------------------- B65 --------------------)
0000000099583A3F  comment  (;;; <@406,#249> constant-t)
0000000099583A41  embedded object  (00000000FCE060C1 <String[0]: >)
0000000099583A49  comment  (;;; <@408,#251> return)
0000000099583A50  comment  (;;; <@58,#43> -------------------- Deferred allocate --------------------)
0000000099583A87  code target (STUB)  (0000000099506AA0)
0000000099583AAA  comment  (;;; <@158,#313> -------------------- Deferred tagged-to-i --------------------)
0000000099583AEF  comment  (;;; <@168,#304> -------------------- Deferred tagged-to-i --------------------)
0000000099583B34  comment  (;;; <@208,#314> -------------------- Deferred tagged-to-i --------------------)
0000000099583B79  comment  (;;; <@218,#305> -------------------- Deferred tagged-to-i --------------------)
0000000099583BBE  comment  (;;; -------------------- Jump table --------------------)
0000000099583BBE  comment  (;;; jump table entry 0: deoptimization bailout 4.)
0000000099583BBE  position  (8996)
0000000099583BBF  runtime entry  (deoptimization bailout 4)
0000000099583BC3  comment  (;;; jump table entry 1: deoptimization bailout 5.)
0000000099583BC4  runtime entry  (deoptimization bailout 5)
0000000099583BC8  comment  (;;; jump table entry 2: deoptimization bailout 13.)
0000000099583BC9  runtime entry  (deoptimization bailout 13)
0000000099583BCD  comment  (;;; jump table entry 3: deoptimization bailout 14.)
0000000099583BCE  runtime entry  (deoptimization bailout 14)
0000000099583BD2  comment  (;;; jump table entry 4: deoptimization bailout 15.)
0000000099583BD3  runtime entry  (deoptimization bailout 15)
0000000099583BD7  comment  (;;; jump table entry 5: deoptimization bailout 16.)
0000000099583BD8  runtime entry  (deoptimization bailout 16)
0000000099583BDC  comment  (;;; Safepoint table.)

-----------------------------------------------------------
Compiling method parseString using hydrogen
--- Raw source ---
(str) {
    containsSparse = false;
    var decodeKey = false;
    var decodeValue = false;
    var possiblyNested = false;
    var len = str.length;
    var i = 0;
    var dictionary = {};
    var keyStart = 0;
    var keyEnd = 0;
    var valueStart = 0;
    var valueEnd = 0;
    var left = 0;

    mainloop: for (; i < len; ++i) {
        var ch = str.charCodeAt(i);
        if (ch === 91) {
            left++;
        }
        else if (left > 0 && ch === 93) {
            possiblyNested = true;
            left--;
        }
        else if (left === 0 && ch === 61) {
            var j = i + 1;
            keyEnd = i - 1;
            valueEnd = valueStart = j;
            for (; j < len; ++j) {
                ch = str.charCodeAt(j);

                if (ch === 43 || ch === 37) {
                    decodeValue = true;
                }
                else if (ch === 38) {
                    i = j - 1;
                    valueEnd = i;
                    var key = str.slice(keyStart, keyEnd + 1);
                    var value = str.slice(valueStart, valueEnd + 1);
                    if (decodeKey) key = decode(key);
                    if (decodeValue) value = decode(value);
                    placeValue(dictionary, key, value, possiblyNested);

                    decodeValue = decodeKey = false;
                    possiblyNested = false;
                    keyEnd = keyStart = j + 1;
                    continue mainloop;
                }
            }
            i = j;
            valueEnd = j - 1;
            var key = str.slice(keyStart, keyEnd + 1);
            var value = str.slice(valueStart, valueEnd + 1);
            if (decodeKey) key = decode(key);
            if (decodeValue) value = decode(value);
            placeValue(dictionary, key, value, possiblyNested);
            decodeValue = decodeKey = false;
            possiblyNested = false;
            keyEnd = keyStart = j + 1;
        }
        else if (ch === 43 || ch === 37) {
            decodeKey = true;
        }
        keyEnd = i + 1;

    }

    if (keyEnd !== keyStart) {

        var value = "";
        var key = str.slice(keyStart, keyEnd);
        if (decodeKey) key = decode(key);
        placeValue(dictionary, key, value, possiblyNested);
    }


    if (containsSparse) {
        compact(dictionary);
    }

    return dictionary;
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = parseString
stack_slots = 27
Instructions (size = 3836)
00000000995849C0     0  55             push rbp
00000000995849C1     1  4889e5         REX.W movq rbp,rsp
00000000995849C4     4  56             push rsi
00000000995849C5     5  57             push rdi
00000000995849C6     6  4881ecd8000000 REX.W subq rsp,0xd8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
00000000995849CD    13  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
00000000995849D0    16  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@12,#10> stack-check
00000000995849D4    20  493b6558       REX.W cmpq rsp,[r13+0x58]
00000000995849D8    24  7305           jnc 31  (00000000995849DF)
00000000995849DA    26  e8a113f9ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@14,#11> constant-t
00000000995849DF    31  48b8814110f500000000 REX.W movq rax,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@15,#11> gap
00000000995849E9    41  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@16,#12> store-context-slot
00000000995849ED    45  4889436f       REX.W movq [rbx+0x6f],rax
                  ;;; <@17,#12> gap
00000000995849F1    49  488b4d10       REX.W movq rcx,[rbp+0x10]
                  ;;; <@18,#21> check-non-smi
00000000995849F5    53  f6c101         testb rcx,0x1
00000000995849F8    56  0f84d20c0000   jz 3344  (00000000995856D0)
                  ;;; <@20,#22> check-instance-type
00000000995849FE    62  4c8b51ff       REX.W movq r10,[rcx-0x1]
0000000099584A02    66  41f6420b80     testb [r10+0xb],0x80
0000000099584A07    71  0f85c80c0000   jnz 3349  (00000000995856D5)
                  ;;; <@22,#23> load-named-field
0000000099584A0D    77  488b790f       REX.W movq rdi,[rcx+0xf]
                  ;;; <@23,#23> gap
0000000099584A11    81  48897dc8       REX.W movq [rbp-0x38],rdi
                  ;;; <@24,#28> allocate
0000000099584A15    85  4d8b85c8090000 REX.W movq r8,[r13+0x9c8]
0000000099584A1C    92  498bc0         REX.W movq rax,r8
0000000099584A1F    95  4883c018       REX.W addq rax,0x18
0000000099584A23    99  0f82110b0000   jc 2938  (000000009958553A)
0000000099584A29   105  493b85d0090000 REX.W cmpq rax,[r13+0x9d0]
0000000099584A30   112  0f87040b0000   ja 2938  (000000009958553A)
0000000099584A36   118  498985c8090000 REX.W movq [r13+0x9c8],rax
0000000099584A3D   125  49ffc0         REX.W incq r8
                  ;;; <@25,#28> gap
0000000099584A40   128  4c8945c0       REX.W movq [rbp-0x40],r8
                  ;;; <@26,#29> sub-allocated-object
0000000099584A44   132  498d00         REX.W leaq rax,[r8]
                  ;;; <@28,#31> store-named-field
0000000099584A47   135  49bae16ca0df00000000 REX.W movq r10,00000000DFA06CE1    ;; object: 00000000DFA06CE1 <Map(elements=3)>
0000000099584A51   145  4c8950ff       REX.W movq [rax-0x1],r10
                  ;;; <@30,#33> store-named-field
0000000099584A55   149  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099584A5F   159  4c89500f       REX.W movq [rax+0xf],r10
                  ;;; <@32,#35> store-named-field
0000000099584A63   163  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099584A6D   173  4c895007       REX.W movq [rax+0x7],r10
                  ;;; <@33,#35> gap
0000000099584A71   177  4c8bcf         REX.W movq r9,rdi
                  ;;; <@34,#796> smi-untag
0000000099584A74   180  49c1e920       REX.W shrq r9,32
                  ;;; <@35,#796> gap
0000000099584A78   184  4c894d98       REX.W movq [rbp-0x68],r9
                  ;;; <@36,#398> global-object
0000000099584A7C   188  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@38,#399> global-receiver
0000000099584A80   192  4c8b582f       REX.W movq r11,[rax+0x2f]
                  ;;; <@39,#399> gap
0000000099584A84   196  4c895d88       REX.W movq [rbp-0x78],r11
                  ;;; <@40,#66> gap
0000000099584A88   200  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099584A92   210  4c8955d0       REX.W movq [rbp-0x30],r10
0000000099584A96   214  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099584AA0   224  4c8955d8       REX.W movq [rbp-0x28],r10
0000000099584AA4   228  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099584AAE   238  4c8955e0       REX.W movq [rbp-0x20],r10
0000000099584AB2   242  ba00000000     movl rdx,0000000000000000
0000000099584AB7   247  41bf00000000   movl r15,0000000000000000
0000000099584ABD   253  b800000000     movl rax,0000000000000000
0000000099584AC2   258  41be00000000   movl r14,0000000000000000
                  ;;; <@42,#67> -------------------- B2 (loop header) --------------------
0000000099584AC8   264  488955a0       REX.W movq [rbp-0x60],rdx
0000000099584ACC   268  4c897db0       REX.W movq [rbp-0x50],r15
0000000099584AD0   272  4c8975b8       REX.W movq [rbp-0x48],r14
                  ;;; <@45,#70> compare-numeric-and-branch
0000000099584AD4   276  413bd1         cmpl rdx,r9
0000000099584AD7   279  0f8d1a090000   jge 2615  (00000000995853F7)
                  ;;; <@50,#77> -------------------- B4 --------------------
                  ;;; <@52,#79> stack-check
0000000099584ADD   285  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099584AE1   289  0f82ae0a0000   jc 3029  (0000000099585595)
                  ;;; <@54,#83> load-named-field
0000000099584AE7   295  488b410f       REX.W movq rax,[rcx+0xf]
                  ;;; <@56,#802> smi-untag
0000000099584AEB   299  48c1e820       REX.W shrq rax,32
                  ;;; <@57,#802> gap
0000000099584AEF   303  48894590       REX.W movq [rbp-0x70],rax
                  ;;; <@58,#84> bounds-check
0000000099584AF3   307  483bc2         REX.W cmpq rax,rdx
0000000099584AF6   310  0f86de0b0000   jna 3354  (00000000995856DA)
                  ;;; <@59,#84> gap
0000000099584AFC   316  488bda         REX.W movq rbx,rdx
                  ;;; <@60,#85> string-char-code-at
0000000099584AFF   319  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099584B03   323  0fb67f0b       movzxbl rdi,[rdi+0xb]
0000000099584B07   327  40f6c701       testb rdi,0x1
0000000099584B0B   331  742f           jz 380  (0000000099584B3C)
0000000099584B0D   333  40f6c702       testb rdi,0x2
0000000099584B11   337  740c           jz 351  (0000000099584B1F)
0000000099584B13   339  8b7923         movl rdi,[rcx+0x23]
0000000099584B16   342  4803df         REX.W addq rbx,rdi
0000000099584B19   345  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099584B1D   349  eb15           jmp 372  (0000000099584B34)
0000000099584B1F   351  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099584B26   358  4c39511f       REX.W cmpq [rcx+0x1f],r10
0000000099584B2A   362  0f85a90a0000   jnz 3097  (00000000995855D9)
0000000099584B30   368  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099584B34   372  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099584B38   376  0fb67f0b       movzxbl rdi,[rdi+0xb]
0000000099584B3C   380  40f6c703       testb rdi,0x3
0000000099584B40   384  7420           jz 418  (0000000099584B62)
0000000099584B42   386  40f6c710       testb rdi,0x10
0000000099584B46   390  0f858d0a0000   jnz 3097  (00000000995855D9)
0000000099584B4C   396  40f6c704       testb rdi,0x4
0000000099584B50   400  488b791f       REX.W movq rdi,[rcx+0x1f]
0000000099584B54   404  7506           jnz 412  (0000000099584B5C)
0000000099584B56   406  0fb73c5f       movzxwl rdi,[rdi+rbx*2]
0000000099584B5A   410  eb18           jmp 436  (0000000099584B74)
0000000099584B5C   412  0fb63c1f       movzxbl rdi,[rdi+rbx*1]
0000000099584B60   416  eb12           jmp 436  (0000000099584B74)
0000000099584B62   418  40f6c704       testb rdi,0x4
0000000099584B66   422  7507           jnz 431  (0000000099584B6F)
0000000099584B68   424  0fb77c5917     movzxwl rdi,[rcx+rbx*2+0x17]
0000000099584B6D   429  eb05           jmp 436  (0000000099584B74)
0000000099584B6F   431  0fb67c1917     movzxbl rdi,[rcx+rbx*1+0x17]
                  ;;; <@61,#85> gap
0000000099584B74   436  48897da8       REX.W movq [rbp-0x58],rdi
                  ;;; <@63,#89> compare-numeric-and-branch
0000000099584B78   440  83ff5b         cmpl rdi,0x5b
0000000099584B7B   443  0f84ff070000   jz 2496  (0000000099585380)
                  ;;; <@68,#101> -------------------- B6 --------------------
                  ;;; <@71,#104> compare-numeric-and-branch
0000000099584B81   449  4183fe00       cmpl r14,0x0
0000000099584B85   453  0f8e3a000000   jle 517  (0000000099584BC5)
                  ;;; <@80,#111> -------------------- B9 --------------------
                  ;;; <@82,#114> deoptimize
                  ;;; deoptimize: insufficient type feedback for combined type
0000000099584B8B   459  e8a214e8ff     call 0000000099406032    ;; debug: position 6463
                                                             ;; soft deoptimization bailout 5
                  ;;; <@83,#114> gap
0000000099584B90   464  488bdf         REX.W movq rbx,rdi
                  ;;; <@84,#803> smi-tag
0000000099584B93   467  48c1e320       REX.W shlq rbx,32
                  ;;; <@86,#804> constant-t
0000000099584B97   471  48b9000000005d000000 REX.W movq rcx,0000005D00000000
                  ;;; <@87,#804> gap
0000000099584BA1   481  4887d3         REX.W xchgq rdx,rbx
0000000099584BA4   484  4891           REX.W xchgq rax, rcx
                  ;;; <@88,#115> cmp-t
0000000099584BA6   486  e87594f8ff     call 000000009950E020    ;; debug: position 6473
                                                             ;; code: COMPARE_IC, UNINITIALIZED
0000000099584BAB   491  90             nop
0000000099584BAC   492  4885c0         REX.W testq rax,rax
0000000099584BAF   495  7406           jz 503  (0000000099584BB7)
0000000099584BB1   497  498b45c8       REX.W movq rax,[r13-0x38]
0000000099584BB5   501  eb04           jmp 507  (0000000099584BBB)
0000000099584BB7   503  498b45c0       REX.W movq rax,[r13-0x40]
                  ;;; <@90,#116> lazy-bailout
                  ;;; <@93,#117> branch
0000000099584BBB   507  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099584BBF   511  0f848e070000   jz 2451  (0000000099585353)
                  ;;; <@98,#131> -------------------- B11 --------------------
                  ;;; <@100,#134> gap
0000000099584BC5   517  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@101,#134> compare-numeric-and-branch
0000000099584BC9   521  83f800         cmpl rax,0x0
0000000099584BCC   524  0f8409000000   jz 539  (0000000099584BDB)
                  ;;; <@102,#138> -------------------- B12 --------------------
                  ;;; <@104,#140> gap
0000000099584BD2   530  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@105,#140> goto
0000000099584BD6   534  e90d000000     jmp 552  (0000000099584BE8)
                  ;;; <@110,#141> -------------------- B14 --------------------
                  ;;; <@112,#144> gap
0000000099584BDB   539  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@113,#144> compare-numeric-and-branch
0000000099584BDF   543  83fb3d         cmpl rbx,0x3d
0000000099584BE2   546  0f843d000000   jz 613  (0000000099584C25)
                  ;;; <@118,#571> -------------------- B16 --------------------
                  ;;; <@121,#574> compare-numeric-and-branch
0000000099584BE8   552  83fb2b         cmpl rbx,0x2b
0000000099584BEB   555  0f8412000000   jz 579  (0000000099584C03)
                  ;;; <@126,#581> -------------------- B18 --------------------
                  ;;; <@129,#584> compare-numeric-and-branch
0000000099584BF1   561  83fb25         cmpl rbx,0x25
0000000099584BF4   564  0f8409000000   jz 579  (0000000099584C03)
                  ;;; <@134,#596> -------------------- B20 --------------------
                  ;;; <@136,#598> gap
0000000099584BFA   570  488b5dd0       REX.W movq rbx,[rbp-0x30]
                  ;;; <@137,#598> goto
0000000099584BFE   574  e90a000000     jmp 589  (0000000099584C0D)
                  ;;; <@146,#591> -------------------- B23 --------------------
                  ;;; <@148,#595> gap
0000000099584C03   579  48bb614110f500000000 REX.W movq rbx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@150,#602> -------------------- B24 --------------------
                  ;;; <@152,#604> gap
0000000099584C0D   589  488bfb         REX.W movq rdi,rbx
0000000099584C10   592  488b4dd8       REX.W movq rcx,[rbp-0x28]
0000000099584C14   596  488b55e0       REX.W movq rdx,[rbp-0x20]
0000000099584C18   600  488b5da0       REX.W movq rbx,[rbp-0x60]
0000000099584C1C   604  488b45b0       REX.W movq rax,[rbp-0x50]
                  ;;; <@153,#604> goto
0000000099584C20   608  e916070000     jmp 2427  (000000009958533B)
                  ;;; <@158,#151> -------------------- B26 --------------------
                  ;;; <@159,#151> gap
0000000099584C25   613  488b5da0       REX.W movq rbx,[rbp-0x60]
                  ;;; <@160,#154> add-i
0000000099584C29   617  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@161,#154> gap
0000000099584C2C   620  488955a8       REX.W movq [rbp-0x58],rdx
0000000099584C30   624  488bcb         REX.W movq rcx,rbx
                  ;;; <@162,#159> sub-i
0000000099584C33   627  83e901         subl rcx,0x1
0000000099584C36   630  0f80a30a0000   jo 3359  (00000000995856DF)
                  ;;; <@164,#184> gap
0000000099584C3C   636  488b7dd8       REX.W movq rdi,[rbp-0x28]
0000000099584C40   640  488bda         REX.W movq rbx,rdx
                  ;;; <@166,#185> -------------------- B27 (loop header) --------------------
0000000099584C43   643  4889bd78ffffff REX.W movq [rbp-0x88],rdi
0000000099584C4A   650  48895d80       REX.W movq [rbp-0x80],rbx
                  ;;; <@169,#188> compare-numeric-and-branch
0000000099584C4E   654  3b5d98         cmpl rbx,[rbp-0x68]
0000000099584C51   657  0f8d30030000   jge 1479  (0000000099584F87)
                  ;;; <@174,#195> -------------------- B29 --------------------
                  ;;; <@176,#197> stack-check
0000000099584C57   663  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099584C5B   667  0f82d0090000   jc 3185  (0000000099585631)
                  ;;; <@178,#202> bounds-check
0000000099584C61   673  48395d90       REX.W cmpq [rbp-0x70],rbx
0000000099584C65   677  0f86790a0000   jna 3364  (00000000995856E4)
                  ;;; <@179,#202> gap
0000000099584C6B   683  4c8b4d10       REX.W movq r9,[rbp+0x10]
0000000099584C6F   687  4c8bc3         REX.W movq r8,rbx
                  ;;; <@180,#203> string-char-code-at
0000000099584C72   690  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099584C76   694  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099584C7B   699  41f6c301       testb r11,0x1
0000000099584C7F   703  7431           jz 754  (0000000099584CB2)
0000000099584C81   705  41f6c302       testb r11,0x2
0000000099584C85   709  740d           jz 724  (0000000099584C94)
0000000099584C87   711  458b5923       movl r11,[r9+0x23]
0000000099584C8B   715  4d03c3         REX.W addq r8,r11
0000000099584C8E   718  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099584C92   722  eb15           jmp 745  (0000000099584CA9)
0000000099584C94   724  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099584C9B   731  4d39511f       REX.W cmpq [r9+0x1f],r10
0000000099584C9F   735  0f85d0090000   jnz 3253  (0000000099585675)
0000000099584CA5   741  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099584CA9   745  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099584CAD   749  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099584CB2   754  41f6c303       testb r11,0x3
0000000099584CB6   758  7422           jz 794  (0000000099584CDA)
0000000099584CB8   760  41f6c310       testb r11,0x10
0000000099584CBC   764  0f85b3090000   jnz 3253  (0000000099585675)
0000000099584CC2   770  41f6c304       testb r11,0x4
0000000099584CC6   774  4d8b591f       REX.W movq r11,[r9+0x1f]
0000000099584CCA   778  7507           jnz 787  (0000000099584CD3)
0000000099584CCC   780  470fb71c43     movzxwl r11,[r11+r8*2]
0000000099584CD1   785  eb1b           jmp 814  (0000000099584CEE)
0000000099584CD3   787  470fb61c03     movzxbl r11,[r11+r8*1]
0000000099584CD8   792  eb14           jmp 814  (0000000099584CEE)
0000000099584CDA   794  41f6c304       testb r11,0x4
0000000099584CDE   798  7508           jnz 808  (0000000099584CE8)
0000000099584CE0   800  470fb75c4117   movzxwl r11,[r9+r8*2+0x17]
0000000099584CE6   806  eb06           jmp 814  (0000000099584CEE)
0000000099584CE8   808  470fb65c0117   movzxbl r11,[r9+r8*1+0x17]
                  ;;; <@181,#203> gap
0000000099584CEE   814  4c899d70ffffff REX.W movq [rbp-0x90],r11
                  ;;; <@183,#207> compare-numeric-and-branch
0000000099584CF5   821  4183fb2b       cmpl r11,0x2b
0000000099584CF9   825  0f8419000000   jz 856  (0000000099584D18)
                  ;;; <@188,#214> -------------------- B31 --------------------
                  ;;; <@191,#217> compare-numeric-and-branch
0000000099584CFF   831  4183fb25       cmpl r11,0x25
0000000099584D03   835  0f840f000000   jz 856  (0000000099584D18)
                  ;;; <@196,#227> -------------------- B33 --------------------
                  ;;; <@199,#230> compare-numeric-and-branch
0000000099584D09   841  4183fb26       cmpl r11,0x26
0000000099584D0D   845  0f8417000000   jz 874  (0000000099584D2A)
0000000099584D13   851  e90a000000     jmp 866  (0000000099584D22)
                  ;;; <@216,#224> -------------------- B38 --------------------
                  ;;; <@218,#347> gap
0000000099584D18   856  48bf614110f500000000 REX.W movq rdi,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@220,#352> -------------------- B39 --------------------
                  ;;; <@222,#354> add-i
0000000099584D22   866  83c301         addl rbx,0x1
                  ;;; <@225,#357> goto
0000000099584D25   869  e919ffffff     jmp 643  (0000000099584C43)
                  ;;; <@230,#237> -------------------- B41 --------------------
                  ;;; <@232,#240> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099584D2A   874  e83513e8ff     call 0000000099406064    ;; debug: position 6894
                                                             ;; soft deoptimization bailout 10
                  ;;; <@233,#240> gap
0000000099584D2F   879  4c8bc3         REX.W movq r8,rbx
                  ;;; <@234,#241> sub-i
0000000099584D32   882  4183e801       subl r8,0x1
0000000099584D36   886  0f80ad090000   jo 3369  (00000000995856E9)
                  ;;; <@235,#241> gap
0000000099584D3C   892  4c898568ffffff REX.W movq [rbp-0x98],r8
                  ;;; <@236,#249> add-i
0000000099584D43   899  83c101         addl rcx,0x1
                  ;;; <@238,#251> push-argument
0000000099584D46   902  ff7510         push [rbp+0x10]
                  ;;; <@239,#251> gap
0000000099584D49   905  4c8b4db0       REX.W movq r9,[rbp-0x50]
                  ;;; <@240,#798> smi-tag
0000000099584D4D   909  49c1e120       REX.W shlq r9,32
                  ;;; <@242,#252> push-argument
0000000099584D51   913  4151           push r9
                  ;;; <@244,#808> smi-tag
0000000099584D53   915  48c1e120       REX.W shlq rcx,32
                  ;;; <@246,#253> push-argument
0000000099584D57   919  51             push rcx
                  ;;; <@248,#254> call-named
0000000099584D58   920  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099584D62   930  e8f946f9ff     call 0000000099519460    ;; debug: position 7003
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099584D67   935  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@249,#254> gap
0000000099584D6B   939  48898560ffffff REX.W movq [rbp-0xa0],rax
                  ;;; <@250,#255> lazy-bailout
                  ;;; <@251,#255> gap
0000000099584D72   946  488b9d68ffffff REX.W movq rbx,[rbp-0x98]
                  ;;; <@252,#260> add-i
0000000099584D79   953  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@254,#262> push-argument
0000000099584D7C   956  ff7510         push [rbp+0x10]
                  ;;; <@255,#262> gap
0000000099584D7F   959  488b4da8       REX.W movq rcx,[rbp-0x58]
                  ;;; <@256,#805> smi-tag
0000000099584D83   963  48c1e120       REX.W shlq rcx,32
                  ;;; <@258,#263> push-argument
0000000099584D87   967  51             push rcx
                  ;;; <@260,#809> smi-tag
0000000099584D88   968  48c1e220       REX.W shlq rdx,32
                  ;;; <@262,#264> push-argument
0000000099584D8C   972  52             push rdx
                  ;;; <@264,#265> call-named
0000000099584D8D   973  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099584D97   983  e8c446f9ff     call 0000000099519460    ;; debug: position 7068
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099584D9C   988  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@265,#265> gap
0000000099584DA0   992  48898558ffffff REX.W movq [rbp-0xa8],rax
                  ;;; <@266,#266> lazy-bailout
                  ;;; <@268,#269> gap
0000000099584DA7   999  488b5dd0       REX.W movq rbx,[rbp-0x30]
                  ;;; <@269,#269> branch
0000000099584DAB  1003  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099584DAF  1007  0f8485000000   jz 1146  (0000000099584E3A)
0000000099584DB5  1013  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099584DB9  1017  0f8487000000   jz 1158  (0000000099584E46)
0000000099584DBF  1023  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099584DC3  1027  0f8471000000   jz 1146  (0000000099584E3A)
0000000099584DC9  1033  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099584DCD  1037  0f8467000000   jz 1146  (0000000099584E3A)
0000000099584DD3  1043  4885db         REX.W testq rbx,rbx
0000000099584DD6  1046  0f845e000000   jz 1146  (0000000099584E3A)
0000000099584DDC  1052  f6c301         testb rbx,0x1
0000000099584DDF  1055  0f8461000000   jz 1158  (0000000099584E46)
0000000099584DE5  1061  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099584DE9  1065  41f6420d20     testb [r10+0xd],0x20
0000000099584DEE  1070  0f8546000000   jnz 1146  (0000000099584E3A)
0000000099584DF4  1076  41807a0bad     cmpb [r10+0xb],0xad
0000000099584DF9  1081  0f8347000000   jnc 1158  (0000000099584E46)
0000000099584DFF  1087  41807a0b80     cmpb [r10+0xb],0x80
0000000099584E04  1092  7310           jnc 1110  (0000000099584E16)
0000000099584E06  1094  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099584E0B  1099  0f8535000000   jnz 1158  (0000000099584E46)
0000000099584E11  1105  e924000000     jmp 1146  (0000000099584E3A)
0000000099584E16  1110  41807a0b80     cmpb [r10+0xb],0x80
0000000099584E1B  1115  0f8425000000   jz 1158  (0000000099584E46)
0000000099584E21  1121  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099584E25  1125  7513           jnz 1146  (0000000099584E3A)
0000000099584E27  1127  0f57c0         xorps xmm0, xmm0
0000000099584E2A  1130  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099584E2F  1135  0f8405000000   jz 1146  (0000000099584E3A)
0000000099584E35  1141  e90c000000     jmp 1158  (0000000099584E46)
                  ;;; <@274,#288> -------------------- B43 --------------------
                  ;;; <@276,#290> gap
0000000099584E3A  1146  488b8560ffffff REX.W movq rax,[rbp-0xa0]
                  ;;; <@277,#290> goto
0000000099584E41  1153  e91a000000     jmp 1184  (0000000099584E60)
                  ;;; <@282,#276> -------------------- B45 --------------------
                  ;;; <@283,#276> gap
0000000099584E46  1158  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@284,#277> load-context-slot
0000000099584E4A  1162  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@286,#280> push-argument
0000000099584E4E  1166  ff7588         push [rbp-0x78]
                  ;;; <@288,#282> push-argument
0000000099584E51  1169  ffb560ffffff   push [rbp-0xa0]
                  ;;; <@290,#283> call-function
0000000099584E57  1175  e8a4deffff     call 0000000099582D00    ;; debug: position 7142
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099584E5C  1180  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@292,#284> lazy-bailout
                  ;;; <@296,#292> -------------------- B46 --------------------
0000000099584E60  1184  48898550ffffff REX.W movq [rbp-0xb0],rax
                  ;;; <@298,#294> gap
0000000099584E67  1191  488b9d78ffffff REX.W movq rbx,[rbp-0x88]
                  ;;; <@299,#294> branch
0000000099584E6E  1198  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099584E72  1202  0f8485000000   jz 1341  (0000000099584EFD)
0000000099584E78  1208  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099584E7C  1212  0f8487000000   jz 1353  (0000000099584F09)
0000000099584E82  1218  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099584E86  1222  0f8471000000   jz 1341  (0000000099584EFD)
0000000099584E8C  1228  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099584E90  1232  0f8467000000   jz 1341  (0000000099584EFD)
0000000099584E96  1238  4885db         REX.W testq rbx,rbx
0000000099584E99  1241  0f845e000000   jz 1341  (0000000099584EFD)
0000000099584E9F  1247  f6c301         testb rbx,0x1
0000000099584EA2  1250  0f8461000000   jz 1353  (0000000099584F09)
0000000099584EA8  1256  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099584EAC  1260  41f6420d20     testb [r10+0xd],0x20
0000000099584EB1  1265  0f8546000000   jnz 1341  (0000000099584EFD)
0000000099584EB7  1271  41807a0bad     cmpb [r10+0xb],0xad
0000000099584EBC  1276  0f8347000000   jnc 1353  (0000000099584F09)
0000000099584EC2  1282  41807a0b80     cmpb [r10+0xb],0x80
0000000099584EC7  1287  7310           jnc 1305  (0000000099584ED9)
0000000099584EC9  1289  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099584ECE  1294  0f8535000000   jnz 1353  (0000000099584F09)
0000000099584ED4  1300  e924000000     jmp 1341  (0000000099584EFD)
0000000099584ED9  1305  41807a0b80     cmpb [r10+0xb],0x80
0000000099584EDE  1310  0f8425000000   jz 1353  (0000000099584F09)
0000000099584EE4  1316  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099584EE8  1320  7513           jnz 1341  (0000000099584EFD)
0000000099584EEA  1322  0f57c0         xorps xmm0, xmm0
0000000099584EED  1325  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099584EF2  1330  0f8405000000   jz 1341  (0000000099584EFD)
0000000099584EF8  1336  e90c000000     jmp 1353  (0000000099584F09)
                  ;;; <@304,#313> -------------------- B48 --------------------
                  ;;; <@306,#315> gap
0000000099584EFD  1341  488b8558ffffff REX.W movq rax,[rbp-0xa8]
                  ;;; <@307,#315> goto
0000000099584F04  1348  e91a000000     jmp 1379  (0000000099584F23)
                  ;;; <@312,#301> -------------------- B50 --------------------
                  ;;; <@313,#301> gap
0000000099584F09  1353  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@314,#302> load-context-slot
0000000099584F0D  1357  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@316,#305> push-argument
0000000099584F11  1361  ff7588         push [rbp-0x78]
                  ;;; <@318,#307> push-argument
0000000099584F14  1364  ffb558ffffff   push [rbp-0xa8]
                  ;;; <@320,#308> call-function
0000000099584F1A  1370  e8e1ddffff     call 0000000099582D00    ;; debug: position 7200
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099584F1F  1375  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@322,#309> lazy-bailout
                  ;;; <@326,#317> -------------------- B51 --------------------
                  ;;; <@327,#317> gap
0000000099584F23  1379  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@328,#318> load-context-slot
0000000099584F27  1383  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@330,#321> push-argument
0000000099584F2E  1390  ff7588         push [rbp-0x78]
                  ;;; <@332,#323> push-argument
0000000099584F31  1393  ff75c0         push [rbp-0x40]
                  ;;; <@334,#325> push-argument
0000000099584F34  1396  ffb550ffffff   push [rbp-0xb0]
                  ;;; <@336,#327> push-argument
0000000099584F3A  1402  50             push rax
                  ;;; <@338,#329> push-argument
0000000099584F3B  1403  ff75e0         push [rbp-0x20]
                  ;;; <@340,#330> call-function
0000000099584F3E  1406  e87df9ffff     call 00000000995848C0    ;; debug: position 7235
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099584F43  1411  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@342,#331> lazy-bailout
                  ;;; <@344,#339> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099584F47  1415  e85e11e8ff     call 00000000994060AA    ;; soft deoptimization bailout 17
                  ;;; <@345,#339> gap
0000000099584F4C  1420  488b4580       REX.W movq rax,[rbp-0x80]
                  ;;; <@346,#340> add-i
0000000099584F50  1424  83c001         addl rax,0x1
                  ;;; <@348,#345> gap
0000000099584F53  1427  488b8d68ffffff REX.W movq rcx,[rbp-0x98]
0000000099584F5A  1434  488bd0         REX.W movq rdx,rax
0000000099584F5D  1437  488bd8         REX.W movq rbx,rax
0000000099584F60  1440  488b45b8       REX.W movq rax,[rbp-0x48]
0000000099584F64  1444  49b9814110f500000000 REX.W movq r9,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099584F6E  1454  49b8814110f500000000 REX.W movq r8,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099584F78  1464  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@349,#345> goto
0000000099584F82  1474  e936040000     jmp 2557  (00000000995853BD)
                  ;;; <@350,#192> -------------------- B52 --------------------
0000000099584F87  1479  488bc3         REX.W movq rax,rbx
                  ;;; <@354,#358> -------------------- B53 --------------------
                  ;;; <@355,#358> gap
0000000099584F8A  1482  488bd8         REX.W movq rbx,rax
                  ;;; <@356,#363> sub-i
0000000099584F8D  1485  83eb01         subl rbx,0x1
                  ;;; <@357,#363> gap
0000000099584F90  1488  48899d48ffffff REX.W movq [rbp-0xb8],rbx
                  ;;; <@358,#369> add-i
0000000099584F97  1495  8d5101         leal rdx,[rcx+0x1]
                  ;;; <@360,#371> push-argument
0000000099584F9A  1498  ff7510         push [rbp+0x10]
                  ;;; <@361,#371> gap
0000000099584F9D  1501  488b4db0       REX.W movq rcx,[rbp-0x50]
                  ;;; <@362,#799> smi-tag
0000000099584FA1  1505  48c1e120       REX.W shlq rcx,32
                  ;;; <@364,#372> push-argument
0000000099584FA5  1509  51             push rcx
                  ;;; <@366,#810> smi-tag
0000000099584FA6  1510  48c1e220       REX.W shlq rdx,32
                  ;;; <@368,#373> push-argument
0000000099584FAA  1514  52             push rdx
                  ;;; <@370,#374> call-named
0000000099584FAB  1515  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099584FB5  1525  e8a644f9ff     call 0000000099519460    ;; debug: position 7578
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099584FBA  1530  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@371,#374> gap
0000000099584FBE  1534  48898540ffffff REX.W movq [rbp-0xc0],rax
                  ;;; <@372,#375> lazy-bailout
                  ;;; <@373,#375> gap
0000000099584FC5  1541  488b9d48ffffff REX.W movq rbx,[rbp-0xb8]
                  ;;; <@374,#380> add-i
0000000099584FCC  1548  83c301         addl rbx,0x1
                  ;;; <@376,#382> push-argument
0000000099584FCF  1551  ff7510         push [rbp+0x10]
                  ;;; <@377,#382> gap
0000000099584FD2  1554  488b55a8       REX.W movq rdx,[rbp-0x58]
                  ;;; <@378,#806> smi-tag
0000000099584FD6  1558  48c1e220       REX.W shlq rdx,32
                  ;;; <@380,#383> push-argument
0000000099584FDA  1562  52             push rdx
                  ;;; <@382,#811> smi-tag
0000000099584FDB  1563  48c1e320       REX.W shlq rbx,32
                  ;;; <@384,#384> push-argument
0000000099584FDF  1567  53             push rbx
                  ;;; <@386,#385> call-named
0000000099584FE0  1568  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099584FEA  1578  e87144f9ff     call 0000000099519460    ;; debug: position 7635
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099584FEF  1583  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@387,#385> gap
0000000099584FF3  1587  48898548ffffff REX.W movq [rbp-0xb8],rax
                  ;;; <@388,#386> lazy-bailout
                  ;;; <@390,#389> gap
0000000099584FFA  1594  488b5dd0       REX.W movq rbx,[rbp-0x30]
                  ;;; <@391,#389> branch
0000000099584FFE  1598  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585002  1602  0f841b000000   jz 1635  (0000000099585023)
0000000099585008  1608  493b5dc8       REX.W cmpq rbx,[r13-0x38]
000000009958500C  1612  0f8405000000   jz 1623  (0000000099585017)
0000000099585012  1618  e8b110c8ff     call 00000000992060C8    ;; deoptimization bailout 20
                  ;;; <@396,#408> -------------------- B55 --------------------
                  ;;; <@398,#410> gap
0000000099585017  1623  488b8540ffffff REX.W movq rax,[rbp-0xc0]
                  ;;; <@399,#410> goto
000000009958501E  1630  e91a000000     jmp 1661  (000000009958503D)
                  ;;; <@404,#396> -------------------- B57 --------------------
                  ;;; <@405,#396> gap
0000000099585023  1635  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@406,#397> load-context-slot
0000000099585027  1639  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@408,#400> push-argument
000000009958502B  1643  ff7588         push [rbp-0x78]
                  ;;; <@410,#402> push-argument
000000009958502E  1646  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@412,#403> call-function
0000000099585034  1652  e8c7dcffff     call 0000000099582D00    ;; debug: position 7701
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585039  1657  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@414,#404> lazy-bailout
                  ;;; <@418,#412> -------------------- B58 --------------------
000000009958503D  1661  48898538ffffff REX.W movq [rbp-0xc8],rax
                  ;;; <@420,#414> gap
0000000099585044  1668  488b9d78ffffff REX.W movq rbx,[rbp-0x88]
                  ;;; <@421,#414> branch
000000009958504B  1675  493b5dc0       REX.W cmpq rbx,[r13-0x40]
000000009958504F  1679  0f8427000000   jz 1724  (000000009958507C)
0000000099585055  1685  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585059  1689  0f8405000000   jz 1700  (0000000099585064)
000000009958505F  1695  e87810c8ff     call 00000000992060DC    ;; deoptimization bailout 22
                  ;;; <@426,#433> -------------------- B60 --------------------
                  ;;; <@427,#433> gap
0000000099585064  1700  488b9548ffffff REX.W movq rdx,[rbp-0xb8]
                  ;;; <@428,#812> check-smi
000000009958506B  1707  f6c201         testb rdx,0x1
000000009958506E  1710  0f857a060000   jnz 3374  (00000000995856EE)
                  ;;; <@430,#435> gap
0000000099585074  1716  488bc2         REX.W movq rax,rdx
                  ;;; <@431,#435> goto
0000000099585077  1719  e929000000     jmp 1765  (00000000995850A5)
                  ;;; <@436,#421> -------------------- B62 --------------------
                  ;;; <@437,#421> gap
000000009958507C  1724  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@438,#422> load-context-slot
0000000099585080  1728  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@440,#425> push-argument
0000000099585084  1732  ff7588         push [rbp-0x78]
                  ;;; <@442,#427> push-argument
0000000099585087  1735  ffb548ffffff   push [rbp-0xb8]
                  ;;; <@444,#428> call-function
000000009958508D  1741  e86edcffff     call 0000000099582D00    ;; debug: position 7751
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585092  1746  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@446,#429> lazy-bailout
                  ;;; <@447,#429> gap
0000000099585096  1750  488bd8         REX.W movq rbx,rax
                  ;;; <@448,#813> check-smi
0000000099585099  1753  f6c301         testb rbx,0x1
000000009958509C  1756  0f8551060000   jnz 3379  (00000000995856F3)
                  ;;; <@450,#432> gap
00000000995850A2  1762  488bc3         REX.W movq rax,rbx
                  ;;; <@452,#437> -------------------- B63 --------------------
00000000995850A5  1765  48898530ffffff REX.W movq [rbp-0xd0],rax
                  ;;; <@453,#437> gap
00000000995850AC  1772  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@454,#438> load-context-slot
00000000995850B0  1776  488b938f000000 REX.W movq rdx,[rbx+0x8f]
                  ;;; <@455,#438> gap
00000000995850B7  1783  48899528ffffff REX.W movq [rbp-0xd8],rdx
                  ;;; <@456,#445> check-function
00000000995850BE  1790  49bad860d0e400000000 REX.W movq r10,00000000E4D060D8    ;; property cell
00000000995850C8  1800  493b12         REX.W cmpq rdx,[r10]
00000000995850CB  1803  0f8527060000   jnz 3384  (00000000995856F8)
                  ;;; <@458,#449> gap
00000000995850D1  1809  488b4de0       REX.W movq rcx,[rbp-0x20]
                  ;;; <@459,#449> cmp-object-eq-and-branch
00000000995850D5  1813  49ba614110f500000000 REX.W movq r10,00000000F5104161    ;; object: 00000000F5104161 <true>
00000000995850DF  1823  493bca         REX.W cmpq rcx,r10
00000000995850E2  1826  0f84fc010000   jz 2340  (00000000995852E4)
                  ;;; <@464,#470> -------------------- B65 --------------------
                  ;;; <@466,#471> load-context-slot
00000000995850E8  1832  488b7b7f       REX.W movq rdi,[rbx+0x7f]
                  ;;; <@467,#471> gap
00000000995850EC  1836  4889bd20ffffff REX.W movq [rbp-0xe0],rdi
                  ;;; <@468,#474> check-function
00000000995850F3  1843  49bae860d0e400000000 REX.W movq r10,00000000E4D060E8    ;; property cell
00000000995850FD  1853  493b3a         REX.W cmpq rdi,[r10]
0000000099585100  1856  0f85f7050000   jnz 3389  (00000000995856FD)
                  ;;; <@470,#477> load-context-slot
0000000099585106  1862  4c8b433f       REX.W movq r8,[rbx+0x3f]
                  ;;; <@472,#478> check-non-smi
000000009958510A  1866  41f6c001       testb r8,0x1
000000009958510E  1870  0f84ee050000   jz 3394  (0000000099585702)
                  ;;; <@474,#479> check-maps
0000000099585114  1876  49ba7959a0df00000000 REX.W movq r10,00000000DFA05979    ;; object: 00000000DFA05979 <Map(elements=3)>
000000009958511E  1886  4d3950ff       REX.W cmpq [r8-0x1],r10
0000000099585122  1890  0f85df050000   jnz 3399  (0000000099585707)
                  ;;; <@476,#480> push-argument
0000000099585128  1896  4150           push r8
                  ;;; <@478,#481> push-argument
000000009958512A  1898  ff75c0         push [rbp-0x40]
                  ;;; <@480,#482> push-argument
000000009958512D  1901  ffb538ffffff   push [rbp-0xc8]
                  ;;; <@482,#483> call-constant-function
0000000099585133  1907  48bff9e615f500000000 REX.W movq rdi,00000000F515E6F9    ;; object: 00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>
000000009958513D  1917  488b772f       REX.W movq rsi,[rdi+0x2f]
0000000099585141  1921  b802000000     movl rax,0000000000000002
0000000099585146  1926  33c9           xorl rcx,rcx
0000000099585148  1928  ff5717         call [rdi+0x17]       ;; debug: position 4135
000000009958514B  1931  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@484,#484> lazy-bailout
                  ;;; <@487,#485> branch
000000009958514F  1935  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099585153  1939  0f842b000000   jz 1988  (0000000099585184)
0000000099585159  1945  493b45c8       REX.W cmpq rax,[r13-0x38]
000000009958515D  1949  0f8405000000   jz 1960  (0000000099585168)
0000000099585163  1955  e8ce0fc8ff     call 0000000099206136    ;; deoptimization bailout 31
                  ;;; <@492,#542> -------------------- B67 --------------------
                  ;;; <@493,#542> gap
0000000099585168  1960  488b8530ffffff REX.W movq rax,[rbp-0xd0]
                  ;;; <@494,#814> dummy-use
                  ;;; <@495,#814> gap
000000009958516F  1967  488b55c0       REX.W movq rdx,[rbp-0x40]
0000000099585173  1971  488b8d38ffffff REX.W movq rcx,[rbp-0xc8]
                  ;;; <@496,#543> store-keyed-generic
000000009958517A  1978  e8c181faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4377
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@498,#544> lazy-bailout
                  ;;; <@501,#549> goto
000000009958517F  1983  e988010000     jmp 2380  (000000009958530C)
                  ;;; <@506,#492> -------------------- B69 --------------------
                  ;;; <@507,#492> gap
0000000099585184  1988  488b55c0       REX.W movq rdx,[rbp-0x40]
0000000099585188  1992  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@508,#493> load-keyed-generic
000000009958518F  1999  e80ca1f9ff     call KeyedLoadIC_Initialize  (000000009951F2A0)    ;; debug: position 4189
                                                             ;; code: KEYED_LOAD_IC, UNINITIALIZED
                  ;;; <@509,#493> gap
0000000099585194  2004  48898518ffffff REX.W movq [rbp-0xe8],rax
                  ;;; <@510,#494> lazy-bailout
                  ;;; <@511,#494> gap
000000009958519B  2011  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@512,#496> load-context-slot
000000009958519F  2015  488b7b37       REX.W movq rdi,[rbx+0x37]
                  ;;; <@514,#499> push-argument
00000000995851A3  2019  ff7588         push [rbp-0x78]
                  ;;; <@516,#501> push-argument
00000000995851A6  2022  50             push rax
                  ;;; <@518,#502> call-function
00000000995851A7  2023  e854dbffff     call 0000000099582D00    ;; debug: position 4208
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995851AC  2028  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@520,#503> lazy-bailout
                  ;;; <@523,#504> branch
00000000995851B0  2032  493b45a8       REX.W cmpq rax,[r13-0x58]
00000000995851B4  2036  0f8484000000   jz 2174  (000000009958523E)
00000000995851BA  2042  493b45c0       REX.W cmpq rax,[r13-0x40]
00000000995851BE  2046  0f84fa000000   jz 2302  (00000000995852BE)
00000000995851C4  2052  493b45c8       REX.W cmpq rax,[r13-0x38]
00000000995851C8  2056  0f8470000000   jz 2174  (000000009958523E)
00000000995851CE  2062  493b45b8       REX.W cmpq rax,[r13-0x48]
00000000995851D2  2066  0f8466000000   jz 2174  (000000009958523E)
00000000995851D8  2072  4885c0         REX.W testq rax,rax
00000000995851DB  2075  0f845d000000   jz 2174  (000000009958523E)
00000000995851E1  2081  a801           test al,0x1
00000000995851E3  2083  0f84d5000000   jz 2302  (00000000995852BE)
00000000995851E9  2089  4c8b50ff       REX.W movq r10,[rax-0x1]
00000000995851ED  2093  41f6420d20     testb [r10+0xd],0x20
00000000995851F2  2098  0f8546000000   jnz 2174  (000000009958523E)
00000000995851F8  2104  41807a0bad     cmpb [r10+0xb],0xad
00000000995851FD  2109  0f83bb000000   jnc 2302  (00000000995852BE)
0000000099585203  2115  41807a0b80     cmpb [r10+0xb],0x80
0000000099585208  2120  7310           jnc 2138  (000000009958521A)
000000009958520A  2122  4883780f00     REX.W cmpq [rax+0xf],0x0
000000009958520F  2127  0f85a9000000   jnz 2302  (00000000995852BE)
0000000099585215  2133  e924000000     jmp 2174  (000000009958523E)
000000009958521A  2138  41807a0b80     cmpb [r10+0xb],0x80
000000009958521F  2143  0f8499000000   jz 2302  (00000000995852BE)
0000000099585225  2149  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099585229  2153  7513           jnz 2174  (000000009958523E)
000000009958522B  2155  0f57c0         xorps xmm0, xmm0
000000009958522E  2158  660f2e4007     ucomisd xmm0,[rax+0x7]
0000000099585233  2163  0f8405000000   jz 2174  (000000009958523E)
0000000099585239  2169  e980000000     jmp 2302  (00000000995852BE)
                  ;;; <@528,#517> -------------------- B71 --------------------
                  ;;; <@530,#519> push-argument
000000009958523E  2174  49baf860d0e400000000 REX.W movq r10,00000000E4D060F8    ;; property cell
0000000099585248  2184  4d8b12         REX.W movq r10,[r10]
000000009958524B  2187  4152           push r10
                  ;;; <@532,#521> push-argument
000000009958524D  2189  4154           push r12
                  ;;; <@534,#523> push-argument
000000009958524F  2191  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099585259  2201  4152           push r10
                  ;;; <@536,#524> call-runtime
000000009958525B  2203  b803000000     movl rax,0000000000000003
0000000099585260  2208  48bbd09ed03f01000000 REX.W movq rbx,000000013FD09ED0
000000009958526A  2218  e83120f8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@538,#525> check-maps
000000009958526F  2223  49bad15ea0df00000000 REX.W movq r10,00000000DFA05ED1    ;; object: 00000000DFA05ED1 <Map(elements=0)>
0000000099585279  2233  4c3950ff       REX.W cmpq [rax-0x1],r10
000000009958527D  2237  0f8589040000   jnz 3404  (000000009958570C)
                  ;;; <@540,#528> load-named-field
0000000099585283  2243  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@541,#528> gap
0000000099585287  2247  488b9518ffffff REX.W movq rdx,[rbp-0xe8]
                  ;;; <@542,#817> check-smi
000000009958528E  2254  f6c201         testb rdx,0x1
0000000099585291  2257  0f857a040000   jnz 3409  (0000000099585711)
                  ;;; <@543,#817> gap
0000000099585297  2263  488bcb         REX.W movq rcx,rbx
                  ;;; <@544,#530> store-keyed
000000009958529A  2266  4889510f       REX.W movq [rcx+0xf],rdx
                  ;;; <@545,#530> gap
000000009958529E  2270  488bbd30ffffff REX.W movq rdi,[rbp-0xd0]
                  ;;; <@546,#534> store-keyed
00000000995852A5  2277  48897b17       REX.W movq [rbx+0x17],rdi
                  ;;; <@547,#534> gap
00000000995852A9  2281  488b55c0       REX.W movq rdx,[rbp-0x40]
00000000995852AD  2285  488b8d38ffffff REX.W movq rcx,[rbp-0xc8]
                  ;;; <@548,#536> store-keyed-generic
00000000995852B4  2292  e88780faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4309
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@550,#540> lazy-bailout
                  ;;; <@553,#541> goto
00000000995852B9  2297  e94e000000     jmp 2380  (000000009958530C)
                  ;;; <@558,#511> -------------------- B73 --------------------
                  ;;; <@560,#513> push-argument
00000000995852BE  2302  ffb518ffffff   push [rbp-0xe8]
                  ;;; <@561,#513> gap
00000000995852C4  2308  488b8530ffffff REX.W movq rax,[rbp-0xd0]
                  ;;; <@562,#815> dummy-use
                  ;;; <@564,#514> push-argument
00000000995852CB  2315  50             push rax
                  ;;; <@566,#515> call-named
00000000995852CC  2316  48b90947e1fc00000000 REX.W movq rcx,00000000FCE14709    ;; object: 00000000FCE14709 <String[4]: push>
00000000995852D6  2326  e8855cf9ff     call 000000009951AF60    ;; debug: position 4243
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 1
00000000995852DB  2331  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@568,#516> lazy-bailout
                  ;;; <@571,#539> goto
00000000995852DF  2335  e928000000     jmp 2380  (000000009958530C)
                  ;;; <@588,#456> -------------------- B78 --------------------
                  ;;; <@589,#456> gap
00000000995852E4  2340  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@590,#457> load-context-slot
00000000995852E8  2344  488bb887000000 REX.W movq rdi,[rax+0x87]
                  ;;; <@592,#460> push-argument
00000000995852EF  2351  ff7588         push [rbp-0x78]
                  ;;; <@594,#461> push-argument
00000000995852F2  2354  ff75c0         push [rbp-0x40]
                  ;;; <@596,#462> push-argument
00000000995852F5  2357  ffb538ffffff   push [rbp-0xc8]
                  ;;; <@597,#462> gap
00000000995852FB  2363  488b9d30ffffff REX.W movq rbx,[rbp-0xd0]
                  ;;; <@598,#816> dummy-use
                  ;;; <@600,#463> push-argument
0000000099585302  2370  53             push rbx
                  ;;; <@602,#464> call-function
0000000099585303  2371  e8f8daffff     call 0000000099582E00    ;; debug: position 5383
                                                             ;; code: STUB, CallFunctionStub, argc = 3
0000000099585308  2376  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@604,#465> lazy-bailout
                  ;;; <@608,#559> -------------------- B79 --------------------
                  ;;; <@609,#559> gap
000000009958530C  2380  488b4580       REX.W movq rax,[rbp-0x80]
                  ;;; <@610,#567> add-i
0000000099585310  2384  83c001         addl rax,0x1
0000000099585313  2387  0f80fd030000   jo 3414  (0000000099585716)
                  ;;; <@612,#601> gap
0000000099585319  2393  488b5d80       REX.W movq rbx,[rbp-0x80]
000000009958531D  2397  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099585327  2407  48b9814110f500000000 REX.W movq rcx,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099585331  2417  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@614,#625> -------------------- B80 --------------------
                  ;;; <@616,#627> gap
000000009958533B  2427  4c8bc7         REX.W movq r8,rdi
000000009958533E  2430  488bf9         REX.W movq rdi,rcx
0000000099585341  2433  488bca         REX.W movq rcx,rdx
0000000099585344  2436  488bd3         REX.W movq rdx,rbx
0000000099585347  2439  488bd8         REX.W movq rbx,rax
000000009958534A  2442  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@617,#627> goto
000000009958534E  2446  e924000000     jmp 2487  (0000000099585377)
                  ;;; <@618,#118> -------------------- B81 --------------------
0000000099585353  2451  488b5da0       REX.W movq rbx,[rbp-0x60]
                  ;;; <@622,#124> -------------------- B82 --------------------
                  ;;; <@623,#124> gap
0000000099585357  2455  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@624,#129> add-i
000000009958535B  2459  83c0ff         addl rax,0xff
                  ;;; <@626,#624> gap
000000009958535E  2462  4c8b45d0       REX.W movq r8,[rbp-0x30]
0000000099585362  2466  488b7dd8       REX.W movq rdi,[rbp-0x28]
0000000099585366  2470  488bd3         REX.W movq rdx,rbx
0000000099585369  2473  488b5db0       REX.W movq rbx,[rbp-0x50]
000000009958536D  2477  48b9614110f500000000 REX.W movq rcx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@628,#648> -------------------- B83 --------------------
                  ;;; <@630,#650> gap
0000000099585377  2487  4892           REX.W xchgq rax, rdx
0000000099585379  2489  4893           REX.W xchgq rax, rbx
                  ;;; <@631,#650> goto
000000009958537B  2491  e922000000     jmp 2530  (00000000995853A2)
                  ;;; <@632,#90> -------------------- B84 --------------------
0000000099585380  2496  488bda         REX.W movq rbx,rdx
0000000099585383  2499  498bc6         REX.W movq rax,r14
                  ;;; <@636,#96> -------------------- B85 --------------------
                  ;;; <@637,#96> gap
0000000099585386  2502  488bd0         REX.W movq rdx,rax
                  ;;; <@638,#99> add-i
0000000099585389  2505  83c201         addl rdx,0x1
000000009958538C  2508  0f8089030000   jo 3419  (000000009958571B)
                  ;;; <@640,#647> gap
0000000099585392  2514  4c8b45d0       REX.W movq r8,[rbp-0x30]
0000000099585396  2518  488b7dd8       REX.W movq rdi,[rbp-0x28]
000000009958539A  2522  488b4de0       REX.W movq rcx,[rbp-0x20]
000000009958539E  2526  488b45b0       REX.W movq rax,[rbp-0x50]
                  ;;; <@642,#669> -------------------- B86 --------------------
                  ;;; <@643,#669> gap
00000000995853A2  2530  4c8bcb         REX.W movq r9,rbx
                  ;;; <@644,#672> add-i
00000000995853A5  2533  4183c101       addl r9,0x1
00000000995853A9  2537  0f8071030000   jo 3424  (0000000099585720)
                  ;;; <@646,#676> gap
00000000995853AF  2543  4987f8         REX.W xchgq rdi,r8
00000000995853B2  2546  4887cf         REX.W xchgq rcx,rdi
00000000995853B5  2549  4887d9         REX.W xchgq rbx,rcx
00000000995853B8  2552  4c87cb         REX.W xchgq r9,rbx
00000000995853BB  2555  4892           REX.W xchgq rax, rdx
                  ;;; <@648,#695> -------------------- B87 --------------------
                  ;;; <@649,#695> gap
00000000995853BD  2557  4c8bd9         REX.W movq r11,rcx
                  ;;; <@650,#697> add-i
00000000995853C0  2560  4183c301       addl r11,0x1
00000000995853C4  2564  0f805b030000   jo 3429  (0000000099585725)
                  ;;; <@652,#700> gap
00000000995853CA  2570  4c894dd0       REX.W movq [rbp-0x30],r9
00000000995853CE  2574  4c8945d8       REX.W movq [rbp-0x28],r8
00000000995853D2  2578  48897de0       REX.W movq [rbp-0x20],rdi
00000000995853D6  2582  4c8bfa         REX.W movq r15,rdx
00000000995853D9  2585  498bd3         REX.W movq rdx,r11
00000000995853DC  2588  4c8bf0         REX.W movq r14,rax
00000000995853DF  2591  488bc3         REX.W movq rax,rbx
00000000995853E2  2594  488b4d10       REX.W movq rcx,[rbp+0x10]
00000000995853E6  2598  4c8b45c0       REX.W movq r8,[rbp-0x40]
00000000995853EA  2602  4c8b5d88       REX.W movq r11,[rbp-0x78]
00000000995853EE  2606  4c8b4d98       REX.W movq r9,[rbp-0x68]
                  ;;; <@653,#700> goto
00000000995853F2  2610  e9d1f6ffff     jmp 264  (0000000099584AC8)
                  ;;; <@658,#701> -------------------- B89 --------------------
                  ;;; <@661,#704> compare-numeric-and-branch
00000000995853F7  2615  3b45b0         cmpl rax,[rbp-0x50]
00000000995853FA  2618  0f84f6000000   jz 2870  (00000000995854F6)
                  ;;; <@666,#711> -------------------- B91 --------------------
                  ;;; <@668,#716> push-argument
0000000099585400  2624  ff7510         push [rbp+0x10]
                  ;;; <@669,#716> gap
0000000099585403  2627  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@670,#800> smi-tag
0000000099585407  2631  48c1e320       REX.W shlq rbx,32
                  ;;; <@672,#717> push-argument
000000009958540B  2635  53             push rbx
                  ;;; <@674,#801> smi-tag
000000009958540C  2636  48c1e020       REX.W shlq rax,32
                  ;;; <@676,#718> push-argument
0000000099585410  2640  50             push rax
                  ;;; <@678,#719> call-named
0000000099585411  2641  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
000000009958541B  2651  e84040f9ff     call 0000000099519460    ;; debug: position 8153
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099585420  2656  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@680,#720> lazy-bailout
                  ;;; <@682,#723> gap
0000000099585424  2660  488b5dd0       REX.W movq rbx,[rbp-0x30]
                  ;;; <@683,#723> branch
0000000099585428  2664  493b5da8       REX.W cmpq rbx,[r13-0x58]
000000009958542C  2668  0f849a000000   jz 2828  (00000000995854CC)
0000000099585432  2674  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585436  2678  0f847b000000   jz 2807  (00000000995854B7)
000000009958543C  2684  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585440  2688  0f8486000000   jz 2828  (00000000995854CC)
0000000099585446  2694  493b5db8       REX.W cmpq rbx,[r13-0x48]
000000009958544A  2698  0f847c000000   jz 2828  (00000000995854CC)
0000000099585450  2704  4885db         REX.W testq rbx,rbx
0000000099585453  2707  0f8473000000   jz 2828  (00000000995854CC)
0000000099585459  2713  f6c301         testb rbx,0x1
000000009958545C  2716  0f8455000000   jz 2807  (00000000995854B7)
0000000099585462  2722  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099585466  2726  41f6420d20     testb [r10+0xd],0x20
000000009958546B  2731  0f855b000000   jnz 2828  (00000000995854CC)
0000000099585471  2737  41807a0bad     cmpb [r10+0xb],0xad
0000000099585476  2742  0f833b000000   jnc 2807  (00000000995854B7)
000000009958547C  2748  41807a0b80     cmpb [r10+0xb],0x80
0000000099585481  2753  7310           jnc 2771  (0000000099585493)
0000000099585483  2755  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099585488  2760  0f8529000000   jnz 2807  (00000000995854B7)
000000009958548E  2766  e939000000     jmp 2828  (00000000995854CC)
0000000099585493  2771  41807a0b80     cmpb [r10+0xb],0x80
0000000099585498  2776  0f8419000000   jz 2807  (00000000995854B7)
000000009958549E  2782  4d3b55f8       REX.W cmpq r10,[r13-0x8]
00000000995854A2  2786  7513           jnz 2807  (00000000995854B7)
00000000995854A4  2788  0f57c0         xorps xmm0, xmm0
00000000995854A7  2791  660f2e4307     ucomisd xmm0,[rbx+0x7]
00000000995854AC  2796  0f841a000000   jz 2828  (00000000995854CC)
00000000995854B2  2802  e900000000     jmp 2807  (00000000995854B7)
                  ;;; <@696,#730> -------------------- B95 --------------------
                  ;;; <@697,#730> gap
00000000995854B7  2807  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@698,#731> load-context-slot
00000000995854BB  2811  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@700,#734> push-argument
00000000995854BF  2815  ff7588         push [rbp-0x78]
                  ;;; <@702,#736> push-argument
00000000995854C2  2818  50             push rax
                  ;;; <@704,#737> call-function
00000000995854C3  2819  e838d8ffff     call 0000000099582D00    ;; debug: position 8207
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995854C8  2824  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@706,#738> lazy-bailout
                  ;;; <@710,#746> -------------------- B96 --------------------
                  ;;; <@711,#746> gap
00000000995854CC  2828  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@712,#747> load-context-slot
00000000995854D0  2832  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@714,#750> push-argument
00000000995854D7  2839  ff7588         push [rbp-0x78]
                  ;;; <@716,#752> push-argument
00000000995854DA  2842  ff75c0         push [rbp-0x40]
                  ;;; <@718,#754> push-argument
00000000995854DD  2845  50             push rax
                  ;;; <@720,#756> push-argument
00000000995854DE  2846  49bac160e0fc00000000 REX.W movq r10,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
00000000995854E8  2856  4152           push r10
                  ;;; <@722,#758> push-argument
00000000995854EA  2858  ff75e0         push [rbp-0x20]
                  ;;; <@724,#759> call-function
00000000995854ED  2861  e8cef3ffff     call 00000000995848C0    ;; debug: position 8228
                                                             ;; code: STUB, CallFunctionStub, argc = 4
00000000995854F2  2866  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@726,#760> lazy-bailout
                  ;;; <@738,#768> -------------------- B99 --------------------
                  ;;; <@739,#768> gap
00000000995854F6  2870  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@740,#769> load-context-slot
00000000995854FA  2874  488b586f       REX.W movq rbx,[rax+0x6f]
                  ;;; <@743,#770> branch
00000000995854FE  2878  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585502  2882  0f840f000000   jz 2903  (0000000099585517)
0000000099585508  2888  493b5dc8       REX.W cmpq rbx,[r13-0x38]
000000009958550C  2892  0f841b000000   jz 2925  (000000009958552D)
0000000099585512  2898  e8bf0cc8ff     call 00000000992061D6    ;; deoptimization bailout 47
                  ;;; <@756,#777> -------------------- B103 --------------------
                  ;;; <@758,#778> load-context-slot
0000000099585517  2903  488bb897000000 REX.W movq rdi,[rax+0x97]
                  ;;; <@760,#781> push-argument
000000009958551E  2910  ff7588         push [rbp-0x78]
                  ;;; <@762,#783> push-argument
0000000099585521  2913  ff75c0         push [rbp-0x40]
                  ;;; <@764,#784> call-function
0000000099585524  2916  e8d7d7ffff     call 0000000099582D00    ;; debug: position 8322
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585529  2921  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@766,#785> lazy-bailout
                  ;;; <@770,#791> -------------------- B104 --------------------
                  ;;; <@771,#791> gap
000000009958552D  2925  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@772,#794> return
0000000099585531  2929  488be5         REX.W movq rsp,rbp
0000000099585534  2932  5d             pop rbp
0000000099585535  2933  c21000         ret 0x10
0000000099585538  2936  6690           nop
                  ;;; <@24,#28> -------------------- Deferred allocate --------------------
000000009958553A  2938  4533c0         xorl r8,r8
000000009958553D  2941  50             push rax
000000009958553E  2942  51             push rcx
000000009958553F  2943  52             push rdx
0000000099585540  2944  53             push rbx
0000000099585541  2945  56             push rsi
0000000099585542  2946  57             push rdi
0000000099585543  2947  4150           push r8
0000000099585545  2949  4151           push r9
0000000099585547  2951  4153           push r11
0000000099585549  2953  4156           push r14
000000009958554B  2955  4157           push r15
000000009958554D  2957  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099585552  2962  49ba0000000018000000 REX.W movq r10,0000001800000000
000000009958555C  2972  4152           push r10
000000009958555E  2974  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099585562  2978  b801000000     movl rax,0000000000000001
0000000099585567  2983  48bba0c9d43f01000000 REX.W movq rbx,000000013FD4C9A0
0000000099585571  2993  e82a15f8ff     call 0000000099506AA0    ;; debug: position 6157
                                                             ;; code: STUB, CEntryStub, minor: 1
0000000099585576  2998  4889442448     REX.W movq [rsp+0x48],rax
000000009958557B  3003  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099585580  3008  415f           pop r15
0000000099585582  3010  415e           pop r14
0000000099585584  3012  415b           pop r11
0000000099585586  3014  4159           pop r9
0000000099585588  3016  4158           pop r8
000000009958558A  3018  5f             pop rdi
000000009958558B  3019  5e             pop rsi
000000009958558C  3020  5b             pop rbx
000000009958558D  3021  5a             pop rdx
000000009958558E  3022  59             pop rcx
000000009958558F  3023  58             pop rax
0000000099585590  3024  e9abf4ffff     jmp 128  (0000000099584A40)
                  ;;; <@52,#79> -------------------- Deferred stack-check --------------------
0000000099585595  3029  50             push rax
0000000099585596  3030  51             push rcx
0000000099585597  3031  52             push rdx
0000000099585598  3032  53             push rbx
0000000099585599  3033  56             push rsi
000000009958559A  3034  57             push rdi
000000009958559B  3035  4150           push r8
000000009958559D  3037  4151           push r9
000000009958559F  3039  4153           push r11
00000000995855A1  3041  4156           push r14
00000000995855A3  3043  4157           push r15
00000000995855A5  3045  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995855AA  3050  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995855AE  3054  33c0           xorl rax,rax
00000000995855B0  3056  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
00000000995855BA  3066  e8e114f8ff     call 0000000099506AA0    ;; debug: position 6336
                                                             ;; code: STUB, CEntryStub, minor: 1
00000000995855BF  3071  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995855C4  3076  415f           pop r15
00000000995855C6  3078  415e           pop r14
00000000995855C8  3080  415b           pop r11
00000000995855CA  3082  4159           pop r9
00000000995855CC  3084  4158           pop r8
00000000995855CE  3086  5f             pop rdi
00000000995855CF  3087  5e             pop rsi
00000000995855D0  3088  5b             pop rbx
00000000995855D1  3089  5a             pop rdx
00000000995855D2  3090  59             pop rcx
00000000995855D3  3091  58             pop rax
00000000995855D4  3092  e90ef5ffff     jmp 295  (0000000099584AE7)
                  ;;; <@60,#85> -------------------- Deferred string-char-code-at --------------------
00000000995855D9  3097  33ff           xorl rdi,rdi
00000000995855DB  3099  50             push rax
00000000995855DC  3100  51             push rcx
00000000995855DD  3101  52             push rdx
00000000995855DE  3102  53             push rbx
00000000995855DF  3103  56             push rsi
00000000995855E0  3104  57             push rdi
00000000995855E1  3105  4150           push r8
00000000995855E3  3107  4151           push r9
00000000995855E5  3109  4153           push r11
00000000995855E7  3111  4156           push r14
00000000995855E9  3113  4157           push r15
00000000995855EB  3115  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995855F0  3120  51             push rcx
00000000995855F1  3121  48c1e320       REX.W shlq rbx,32
00000000995855F5  3125  53             push rbx
00000000995855F6  3126  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995855FA  3130  b802000000     movl rax,0000000000000002
00000000995855FF  3135  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
0000000099585609  3145  e89214f8ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
000000009958560E  3150  48c1e820       REX.W shrq rax,32
0000000099585612  3154  4889442450     REX.W movq [rsp+0x50],rax
0000000099585617  3159  488d642428     REX.W leaq rsp,[rsp+0x28]
000000009958561C  3164  415f           pop r15
000000009958561E  3166  415e           pop r14
0000000099585620  3168  415b           pop r11
0000000099585622  3170  4159           pop r9
0000000099585624  3172  4158           pop r8
0000000099585626  3174  5f             pop rdi
0000000099585627  3175  5e             pop rsi
0000000099585628  3176  5b             pop rbx
0000000099585629  3177  5a             pop rdx
000000009958562A  3178  59             pop rcx
000000009958562B  3179  58             pop rax
000000009958562C  3180  e943f5ffff     jmp 436  (0000000099584B74)
                  ;;; <@176,#197> -------------------- Deferred stack-check --------------------
0000000099585631  3185  50             push rax
0000000099585632  3186  51             push rcx
0000000099585633  3187  52             push rdx
0000000099585634  3188  53             push rbx
0000000099585635  3189  56             push rsi
0000000099585636  3190  57             push rdi
0000000099585637  3191  4150           push r8
0000000099585639  3193  4151           push r9
000000009958563B  3195  4153           push r11
000000009958563D  3197  4156           push r14
000000009958563F  3199  4157           push r15
0000000099585641  3201  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099585646  3206  488b75f8       REX.W movq rsi,[rbp-0x8]
000000009958564A  3210  33c0           xorl rax,rax
000000009958564C  3212  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
0000000099585656  3222  e84514f8ff     call 0000000099506AA0    ;; debug: position 6707
                                                             ;; code: STUB, CEntryStub, minor: 1
000000009958565B  3227  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099585660  3232  415f           pop r15
0000000099585662  3234  415e           pop r14
0000000099585664  3236  415b           pop r11
0000000099585666  3238  4159           pop r9
0000000099585668  3240  4158           pop r8
000000009958566A  3242  5f             pop rdi
000000009958566B  3243  5e             pop rsi
000000009958566C  3244  5b             pop rbx
000000009958566D  3245  5a             pop rdx
000000009958566E  3246  59             pop rcx
000000009958566F  3247  58             pop rax
0000000099585670  3248  e9ecf5ffff     jmp 673  (0000000099584C61)
                  ;;; <@180,#203> -------------------- Deferred string-char-code-at --------------------
0000000099585675  3253  4533db         xorl r11,r11
0000000099585678  3256  50             push rax
0000000099585679  3257  51             push rcx
000000009958567A  3258  52             push rdx
000000009958567B  3259  53             push rbx
000000009958567C  3260  56             push rsi
000000009958567D  3261  57             push rdi
000000009958567E  3262  4150           push r8
0000000099585680  3264  4151           push r9
0000000099585682  3266  4153           push r11
0000000099585684  3268  4156           push r14
0000000099585686  3270  4157           push r15
0000000099585688  3272  488d6424d8     REX.W leaq rsp,[rsp-0x28]
000000009958568D  3277  4151           push r9
000000009958568F  3279  49c1e020       REX.W shlq r8,32
0000000099585693  3283  4150           push r8
0000000099585695  3285  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099585699  3289  b802000000     movl rax,0000000000000002
000000009958569E  3294  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
00000000995856A8  3304  e8f313f8ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
00000000995856AD  3309  48c1e820       REX.W shrq rax,32
00000000995856B1  3313  4889442438     REX.W movq [rsp+0x38],rax
00000000995856B6  3318  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995856BB  3323  415f           pop r15
00000000995856BD  3325  415e           pop r14
00000000995856BF  3327  415b           pop r11
00000000995856C1  3329  4159           pop r9
00000000995856C3  3331  4158           pop r8
00000000995856C5  3333  5f             pop rdi
00000000995856C6  3334  5e             pop rsi
00000000995856C7  3335  5b             pop rbx
00000000995856C8  3336  5a             pop rdx
00000000995856C9  3337  59             pop rcx
00000000995856CA  3338  58             pop rax
00000000995856CB  3339  e91ef6ffff     jmp 814  (0000000099584CEE)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
00000000995856D0  3344  e83509c8ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
00000000995856D5  3349  e83a09c8ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 4.
00000000995856DA  3354  e84909c8ff     call 0000000099206028    ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 7.
00000000995856DF  3359  e86209c8ff     call 0000000099206046    ;; deoptimization bailout 7
                  ;;; jump table entry 4: deoptimization bailout 9.
00000000995856E4  3364  e87109c8ff     call 000000009920605A    ;; deoptimization bailout 9
                  ;;; jump table entry 5: deoptimization bailout 11.
00000000995856E9  3369  e88009c8ff     call 000000009920606E    ;; deoptimization bailout 11
                  ;;; jump table entry 6: deoptimization bailout 23.
00000000995856EE  3374  e8f309c8ff     call 00000000992060E6    ;; deoptimization bailout 23
                  ;;; jump table entry 7: deoptimization bailout 25.
00000000995856F3  3379  e8020ac8ff     call 00000000992060FA    ;; deoptimization bailout 25
                  ;;; jump table entry 8: deoptimization bailout 26.
00000000995856F8  3384  e8070ac8ff     call 0000000099206104    ;; deoptimization bailout 26
                  ;;; jump table entry 9: deoptimization bailout 27.
00000000995856FD  3389  e80c0ac8ff     call 000000009920610E    ;; deoptimization bailout 27
                  ;;; jump table entry 10: deoptimization bailout 28.
0000000099585702  3394  e8110ac8ff     call 0000000099206118    ;; deoptimization bailout 28
                  ;;; jump table entry 11: deoptimization bailout 29.
0000000099585707  3399  e8160ac8ff     call 0000000099206122    ;; deoptimization bailout 29
                  ;;; jump table entry 12: deoptimization bailout 35.
000000009958570C  3404  e84d0ac8ff     call 000000009920615E    ;; deoptimization bailout 35
                  ;;; jump table entry 13: deoptimization bailout 36.
0000000099585711  3409  e8520ac8ff     call 0000000099206168    ;; deoptimization bailout 36
                  ;;; jump table entry 14: deoptimization bailout 40.
0000000099585716  3414  e8750ac8ff     call 0000000099206190    ;; deoptimization bailout 40
                  ;;; jump table entry 15: deoptimization bailout 41.
000000009958571B  3419  e87a0ac8ff     call 000000009920619A    ;; deoptimization bailout 41
                  ;;; jump table entry 16: deoptimization bailout 42.
0000000099585720  3424  e87f0ac8ff     call 00000000992061A4    ;; deoptimization bailout 42
                  ;;; jump table entry 17: deoptimization bailout 43.
0000000099585725  3429  e8840ac8ff     call 00000000992061AE    ;; deoptimization bailout 43
000000009958572A  3434  6690           nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 49)
 index  ast id    argc     pc             
     0       3       0     31
     1      10       0     -1
     2      10       0     -1
     3     143       0    295
     4     143       0     -1
     5     207       0     -1
     6     203       0    507
     7     248       0     -1
     8     284       0    673
     9     284       0     -1
    10     507       0     -1
    11     507       0     -1
    12     387       0    946
    13     415       0    999
    14     431       0   1184
    15     448       0   1379
    16     467       0   1415
    17     467       0     -1
    18     551       0   1541
    19     579       0   1594
    20     579       0     -1
    21     595       0   1661
    22     601       0     -1
    23     618       0     -1
    24     612       0   1750
    25     618       0     -1
    26     618       0     -1
    27      27       0     -1
    28       2       0     -1
    29       2       0     -1
    30      15       0   1935
    31      15       0     -1
    32      93       0   1983
    33      28       0   2011
    34      40       0   2032
    35      79       0     -1
    36      79       0     -1
    37      77       0   2297
    38      54       0   2335
    39      20       0   2380
    40     631       0     -1
    41     704       0     -1
    42     703       0     -1
    43     142       0     -1
    44     756       0   2660
    45     772       0   2828
    46     791       0   2870
    47     794       0     -1
    48     805       0   2925

Safepoints (size = 400)
00000000995849DF    31  000000000000000000000000001 (sp -> fp)       0
0000000099584BAB   491  000000000000001000000101111 (sp -> fp)       6
0000000099584D67   935  000000000000101000000101011 (sp -> fp)      12
0000000099584D9C   988  000000000100101000000101011 (sp -> fp)      13
0000000099584E5C  1180  000000001000101000000101011 (sp -> fp)      14
0000000099584F1F  1375  000000010000101000000101011 (sp -> fp)      15
0000000099584F43  1411  000000000000101000000101001 (sp -> fp)      16
0000000099584FBA  1530  000000000000101000000101011 (sp -> fp)      18
0000000099584FEF  1583  000001000000101000000101011 (sp -> fp)      19
0000000099585039  1657  000000100000101000000101011 (sp -> fp)      21
0000000099585092  1746  000010000000101000000101011 (sp -> fp)      24
000000009958514B  1931  011010000000101000000101011 (sp -> fp)      30
000000009958517F  1983  011010000000101000000101011 (sp -> fp)      32
0000000099585194  2004  011010000000101000000101011 (sp -> fp)      33
00000000995851AC  2028  111010000000101000000101011 (sp -> fp)      34
000000009958526F  2223  111010000000101000000101011 (sp -> fp)      37
00000000995852B9  2297  011010000000101000000101011 (sp -> fp)      37
00000000995852DB  2331  011010000000101000000101011 (sp -> fp)      38
0000000099585308  2376  001010000000101000000101011 (sp -> fp)      39
0000000099585420  2656  000000000000001000000101011 (sp -> fp)      44
00000000995854C8  2824  000000000000001000000101011 (sp -> fp)      45
00000000995854F2  2866  000000000000001000000101001 (sp -> fp)      46
0000000099585529  2921  000000000000000000000101000 (sp -> fp)      48
0000000099585576  2998  000000000000000000000000001 | rcx | rbx | rsi | r8 (sp -> fp)  <none> argc: 1
00000000995855BF  3071  000000000000001000000101111 | rcx | rsi | r8 | r11 (sp -> fp)       3
000000009958560E  3150  000000000000001000000101111 | rsi | r8 | r11 (sp -> fp)  <none> argc: 2
000000009958565B  3227  000000000000101000000101011 | rsi | rdi (sp -> fp)       8
00000000995856AD  3309  000000000000101000000101011 | rsi | rdi (sp -> fp)  <none> argc: 2

RelocInfo (size = 4591)
00000000995849CD  comment  (;;; <@0,#0> -------------------- B0 --------------------)
00000000995849CD  comment  (;;; <@2,#1> context)
00000000995849D0  comment  (;;; <@3,#1> gap)
00000000995849D4  comment  (;;; <@10,#8> -------------------- B1 --------------------)
00000000995849D4  comment  (;;; <@12,#10> stack-check)
00000000995849DB  code target (STUB)  (0000000099515D80)
00000000995849DF  comment  (;;; <@14,#11> constant-t)
00000000995849E1  embedded object  (00000000F5104181 <false>)
00000000995849E9  comment  (;;; <@15,#11> gap)
00000000995849ED  comment  (;;; <@16,#12> store-context-slot)
00000000995849F1  comment  (;;; <@17,#12> gap)
00000000995849F5  comment  (;;; <@18,#21> check-non-smi)
00000000995849FE  comment  (;;; <@20,#22> check-instance-type)
0000000099584A0D  comment  (;;; <@22,#23> load-named-field)
0000000099584A11  comment  (;;; <@23,#23> gap)
0000000099584A15  comment  (;;; <@24,#28> allocate)
0000000099584A40  comment  (;;; <@25,#28> gap)
0000000099584A44  comment  (;;; <@26,#29> sub-allocated-object)
0000000099584A47  comment  (;;; <@28,#31> store-named-field)
0000000099584A49  embedded object  (00000000DFA06CE1 <Map(elements=3)>)
0000000099584A55  comment  (;;; <@30,#33> store-named-field)
0000000099584A57  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099584A63  comment  (;;; <@32,#35> store-named-field)
0000000099584A65  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099584A71  comment  (;;; <@33,#35> gap)
0000000099584A74  comment  (;;; <@34,#796> smi-untag)
0000000099584A78  comment  (;;; <@35,#796> gap)
0000000099584A7C  comment  (;;; <@36,#398> global-object)
0000000099584A80  comment  (;;; <@38,#399> global-receiver)
0000000099584A84  comment  (;;; <@39,#399> gap)
0000000099584A88  comment  (;;; <@40,#66> gap)
0000000099584A8A  embedded object  (00000000F5104181 <false>)
0000000099584A98  embedded object  (00000000F5104181 <false>)
0000000099584AA6  embedded object  (00000000F5104181 <false>)
0000000099584AC8  comment  (;;; <@42,#67> -------------------- B2 (loop header) --------------------)
0000000099584AD4  comment  (;;; <@45,#70> compare-numeric-and-branch)
0000000099584ADD  comment  (;;; <@50,#77> -------------------- B4 --------------------)
0000000099584ADD  comment  (;;; <@52,#79> stack-check)
0000000099584AE7  comment  (;;; <@54,#83> load-named-field)
0000000099584AEB  comment  (;;; <@56,#802> smi-untag)
0000000099584AEF  comment  (;;; <@57,#802> gap)
0000000099584AF3  comment  (;;; <@58,#84> bounds-check)
0000000099584AFC  comment  (;;; <@59,#84> gap)
0000000099584AFF  comment  (;;; <@60,#85> string-char-code-at)
0000000099584B74  comment  (;;; <@61,#85> gap)
0000000099584B78  comment  (;;; <@63,#89> compare-numeric-and-branch)
0000000099584B81  comment  (;;; <@68,#101> -------------------- B6 --------------------)
0000000099584B81  comment  (;;; <@71,#104> compare-numeric-and-branch)
0000000099584B8B  comment  (;;; <@80,#111> -------------------- B9 --------------------)
0000000099584B8B  comment  (;;; <@82,#114> deoptimize)
0000000099584B8B  comment  (;;; deoptimize: insufficient type feedback for combined type)
0000000099584B8B  position  (6463)
0000000099584B8C  runtime entry
0000000099584B90  comment  (;;; <@83,#114> gap)
0000000099584B93  comment  (;;; <@84,#803> smi-tag)
0000000099584B97  comment  (;;; <@86,#804> constant-t)
0000000099584BA1  comment  (;;; <@87,#804> gap)
0000000099584BA6  comment  (;;; <@88,#115> cmp-t)
0000000099584BA6  position  (6473)
0000000099584BA7  code target (COMPARE_IC)  (000000009950E020)
0000000099584BBB  comment  (;;; <@90,#116> lazy-bailout)
0000000099584BBB  comment  (;;; <@93,#117> branch)
0000000099584BC5  comment  (;;; <@98,#131> -------------------- B11 --------------------)
0000000099584BC5  comment  (;;; <@100,#134> gap)
0000000099584BC9  comment  (;;; <@101,#134> compare-numeric-and-branch)
0000000099584BD2  comment  (;;; <@102,#138> -------------------- B12 --------------------)
0000000099584BD2  comment  (;;; <@104,#140> gap)
0000000099584BD6  comment  (;;; <@105,#140> goto)
0000000099584BDB  comment  (;;; <@110,#141> -------------------- B14 --------------------)
0000000099584BDB  comment  (;;; <@112,#144> gap)
0000000099584BDF  comment  (;;; <@113,#144> compare-numeric-and-branch)
0000000099584BE8  comment  (;;; <@118,#571> -------------------- B16 --------------------)
0000000099584BE8  comment  (;;; <@121,#574> compare-numeric-and-branch)
0000000099584BF1  comment  (;;; <@126,#581> -------------------- B18 --------------------)
0000000099584BF1  comment  (;;; <@129,#584> compare-numeric-and-branch)
0000000099584BFA  comment  (;;; <@134,#596> -------------------- B20 --------------------)
0000000099584BFA  comment  (;;; <@136,#598> gap)
0000000099584BFE  comment  (;;; <@137,#598> goto)
0000000099584C03  comment  (;;; <@146,#591> -------------------- B23 --------------------)
0000000099584C03  comment  (;;; <@148,#595> gap)
0000000099584C05  embedded object  (00000000F5104161 <true>)
0000000099584C0D  comment  (;;; <@150,#602> -------------------- B24 --------------------)
0000000099584C0D  comment  (;;; <@152,#604> gap)
0000000099584C20  comment  (;;; <@153,#604> goto)
0000000099584C25  comment  (;;; <@158,#151> -------------------- B26 --------------------)
0000000099584C25  comment  (;;; <@159,#151> gap)
0000000099584C29  comment  (;;; <@160,#154> add-i)
0000000099584C2C  comment  (;;; <@161,#154> gap)
0000000099584C33  comment  (;;; <@162,#159> sub-i)
0000000099584C3C  comment  (;;; <@164,#184> gap)
0000000099584C43  comment  (;;; <@166,#185> -------------------- B27 (loop header) --------------------)
0000000099584C4E  comment  (;;; <@169,#188> compare-numeric-and-branch)
0000000099584C57  comment  (;;; <@174,#195> -------------------- B29 --------------------)
0000000099584C57  comment  (;;; <@176,#197> stack-check)
0000000099584C61  comment  (;;; <@178,#202> bounds-check)
0000000099584C6B  comment  (;;; <@179,#202> gap)
0000000099584C72  comment  (;;; <@180,#203> string-char-code-at)
0000000099584CEE  comment  (;;; <@181,#203> gap)
0000000099584CF5  comment  (;;; <@183,#207> compare-numeric-and-branch)
0000000099584CFF  comment  (;;; <@188,#214> -------------------- B31 --------------------)
0000000099584CFF  comment  (;;; <@191,#217> compare-numeric-and-branch)
0000000099584D09  comment  (;;; <@196,#227> -------------------- B33 --------------------)
0000000099584D09  comment  (;;; <@199,#230> compare-numeric-and-branch)
0000000099584D18  comment  (;;; <@216,#224> -------------------- B38 --------------------)
0000000099584D18  comment  (;;; <@218,#347> gap)
0000000099584D1A  embedded object  (00000000F5104161 <true>)
0000000099584D22  comment  (;;; <@220,#352> -------------------- B39 --------------------)
0000000099584D22  comment  (;;; <@222,#354> add-i)
0000000099584D25  comment  (;;; <@225,#357> goto)
0000000099584D2A  comment  (;;; <@230,#237> -------------------- B41 --------------------)
0000000099584D2A  comment  (;;; <@232,#240> deoptimize)
0000000099584D2A  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099584D2A  position  (6894)
0000000099584D2B  runtime entry
0000000099584D2F  comment  (;;; <@233,#240> gap)
0000000099584D32  comment  (;;; <@234,#241> sub-i)
0000000099584D3C  comment  (;;; <@235,#241> gap)
0000000099584D43  comment  (;;; <@236,#249> add-i)
0000000099584D46  comment  (;;; <@238,#251> push-argument)
0000000099584D49  comment  (;;; <@239,#251> gap)
0000000099584D4D  comment  (;;; <@240,#798> smi-tag)
0000000099584D51  comment  (;;; <@242,#252> push-argument)
0000000099584D53  comment  (;;; <@244,#808> smi-tag)
0000000099584D57  comment  (;;; <@246,#253> push-argument)
0000000099584D58  comment  (;;; <@248,#254> call-named)
0000000099584D5A  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099584D62  position  (7003)
0000000099584D63  code target (CALL_IC)  (0000000099519460)
0000000099584D6B  comment  (;;; <@249,#254> gap)
0000000099584D72  comment  (;;; <@250,#255> lazy-bailout)
0000000099584D72  comment  (;;; <@251,#255> gap)
0000000099584D79  comment  (;;; <@252,#260> add-i)
0000000099584D7C  comment  (;;; <@254,#262> push-argument)
0000000099584D7F  comment  (;;; <@255,#262> gap)
0000000099584D83  comment  (;;; <@256,#805> smi-tag)
0000000099584D87  comment  (;;; <@258,#263> push-argument)
0000000099584D88  comment  (;;; <@260,#809> smi-tag)
0000000099584D8C  comment  (;;; <@262,#264> push-argument)
0000000099584D8D  comment  (;;; <@264,#265> call-named)
0000000099584D8F  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099584D97  position  (7068)
0000000099584D98  code target (CALL_IC)  (0000000099519460)
0000000099584DA0  comment  (;;; <@265,#265> gap)
0000000099584DA7  comment  (;;; <@266,#266> lazy-bailout)
0000000099584DA7  comment  (;;; <@268,#269> gap)
0000000099584DAB  comment  (;;; <@269,#269> branch)
0000000099584E3A  comment  (;;; <@274,#288> -------------------- B43 --------------------)
0000000099584E3A  comment  (;;; <@276,#290> gap)
0000000099584E41  comment  (;;; <@277,#290> goto)
0000000099584E46  comment  (;;; <@282,#276> -------------------- B45 --------------------)
0000000099584E46  comment  (;;; <@283,#276> gap)
0000000099584E4A  comment  (;;; <@284,#277> load-context-slot)
0000000099584E4E  comment  (;;; <@286,#280> push-argument)
0000000099584E51  comment  (;;; <@288,#282> push-argument)
0000000099584E57  comment  (;;; <@290,#283> call-function)
0000000099584E57  position  (7142)
0000000099584E58  code target (STUB)  (0000000099582D00)
0000000099584E60  comment  (;;; <@292,#284> lazy-bailout)
0000000099584E60  comment  (;;; <@296,#292> -------------------- B46 --------------------)
0000000099584E67  comment  (;;; <@298,#294> gap)
0000000099584E6E  comment  (;;; <@299,#294> branch)
0000000099584EFD  comment  (;;; <@304,#313> -------------------- B48 --------------------)
0000000099584EFD  comment  (;;; <@306,#315> gap)
0000000099584F04  comment  (;;; <@307,#315> goto)
0000000099584F09  comment  (;;; <@312,#301> -------------------- B50 --------------------)
0000000099584F09  comment  (;;; <@313,#301> gap)
0000000099584F0D  comment  (;;; <@314,#302> load-context-slot)
0000000099584F11  comment  (;;; <@316,#305> push-argument)
0000000099584F14  comment  (;;; <@318,#307> push-argument)
0000000099584F1A  comment  (;;; <@320,#308> call-function)
0000000099584F1A  position  (7200)
0000000099584F1B  code target (STUB)  (0000000099582D00)
0000000099584F23  comment  (;;; <@322,#309> lazy-bailout)
0000000099584F23  comment  (;;; <@326,#317> -------------------- B51 --------------------)
0000000099584F23  comment  (;;; <@327,#317> gap)
0000000099584F27  comment  (;;; <@328,#318> load-context-slot)
0000000099584F2E  comment  (;;; <@330,#321> push-argument)
0000000099584F31  comment  (;;; <@332,#323> push-argument)
0000000099584F34  comment  (;;; <@334,#325> push-argument)
0000000099584F3A  comment  (;;; <@336,#327> push-argument)
0000000099584F3B  comment  (;;; <@338,#329> push-argument)
0000000099584F3E  comment  (;;; <@340,#330> call-function)
0000000099584F3E  position  (7235)
0000000099584F3F  code target (STUB)  (00000000995848C0)
0000000099584F47  comment  (;;; <@342,#331> lazy-bailout)
0000000099584F47  comment  (;;; <@344,#339> deoptimize)
0000000099584F47  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099584F48  runtime entry
0000000099584F4C  comment  (;;; <@345,#339> gap)
0000000099584F50  comment  (;;; <@346,#340> add-i)
0000000099584F53  comment  (;;; <@348,#345> gap)
0000000099584F66  embedded object  (00000000F5104181 <false>)
0000000099584F70  embedded object  (00000000F5104181 <false>)
0000000099584F7A  embedded object  (00000000F5104181 <false>)
0000000099584F82  comment  (;;; <@349,#345> goto)
0000000099584F87  comment  (;;; <@350,#192> -------------------- B52 --------------------)
0000000099584F8A  comment  (;;; <@354,#358> -------------------- B53 --------------------)
0000000099584F8A  comment  (;;; <@355,#358> gap)
0000000099584F8D  comment  (;;; <@356,#363> sub-i)
0000000099584F90  comment  (;;; <@357,#363> gap)
0000000099584F97  comment  (;;; <@358,#369> add-i)
0000000099584F9A  comment  (;;; <@360,#371> push-argument)
0000000099584F9D  comment  (;;; <@361,#371> gap)
0000000099584FA1  comment  (;;; <@362,#799> smi-tag)
0000000099584FA5  comment  (;;; <@364,#372> push-argument)
0000000099584FA6  comment  (;;; <@366,#810> smi-tag)
0000000099584FAA  comment  (;;; <@368,#373> push-argument)
0000000099584FAB  comment  (;;; <@370,#374> call-named)
0000000099584FAD  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099584FB5  position  (7578)
0000000099584FB6  code target (CALL_IC)  (0000000099519460)
0000000099584FBE  comment  (;;; <@371,#374> gap)
0000000099584FC5  comment  (;;; <@372,#375> lazy-bailout)
0000000099584FC5  comment  (;;; <@373,#375> gap)
0000000099584FCC  comment  (;;; <@374,#380> add-i)
0000000099584FCF  comment  (;;; <@376,#382> push-argument)
0000000099584FD2  comment  (;;; <@377,#382> gap)
0000000099584FD6  comment  (;;; <@378,#806> smi-tag)
0000000099584FDA  comment  (;;; <@380,#383> push-argument)
0000000099584FDB  comment  (;;; <@382,#811> smi-tag)
0000000099584FDF  comment  (;;; <@384,#384> push-argument)
0000000099584FE0  comment  (;;; <@386,#385> call-named)
0000000099584FE2  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099584FEA  position  (7635)
0000000099584FEB  code target (CALL_IC)  (0000000099519460)
0000000099584FF3  comment  (;;; <@387,#385> gap)
0000000099584FFA  comment  (;;; <@388,#386> lazy-bailout)
0000000099584FFA  comment  (;;; <@390,#389> gap)
0000000099584FFE  comment  (;;; <@391,#389> branch)
0000000099585013  runtime entry  (deoptimization bailout 20)
0000000099585017  comment  (;;; <@396,#408> -------------------- B55 --------------------)
0000000099585017  comment  (;;; <@398,#410> gap)
000000009958501E  comment  (;;; <@399,#410> goto)
0000000099585023  comment  (;;; <@404,#396> -------------------- B57 --------------------)
0000000099585023  comment  (;;; <@405,#396> gap)
0000000099585027  comment  (;;; <@406,#397> load-context-slot)
000000009958502B  comment  (;;; <@408,#400> push-argument)
000000009958502E  comment  (;;; <@410,#402> push-argument)
0000000099585034  comment  (;;; <@412,#403> call-function)
0000000099585034  position  (7701)
0000000099585035  code target (STUB)  (0000000099582D00)
000000009958503D  comment  (;;; <@414,#404> lazy-bailout)
000000009958503D  comment  (;;; <@418,#412> -------------------- B58 --------------------)
0000000099585044  comment  (;;; <@420,#414> gap)
000000009958504B  comment  (;;; <@421,#414> branch)
0000000099585060  runtime entry  (deoptimization bailout 22)
0000000099585064  comment  (;;; <@426,#433> -------------------- B60 --------------------)
0000000099585064  comment  (;;; <@427,#433> gap)
000000009958506B  comment  (;;; <@428,#812> check-smi)
0000000099585074  comment  (;;; <@430,#435> gap)
0000000099585077  comment  (;;; <@431,#435> goto)
000000009958507C  comment  (;;; <@436,#421> -------------------- B62 --------------------)
000000009958507C  comment  (;;; <@437,#421> gap)
0000000099585080  comment  (;;; <@438,#422> load-context-slot)
0000000099585084  comment  (;;; <@440,#425> push-argument)
0000000099585087  comment  (;;; <@442,#427> push-argument)
000000009958508D  comment  (;;; <@444,#428> call-function)
000000009958508D  position  (7751)
000000009958508E  code target (STUB)  (0000000099582D00)
0000000099585096  comment  (;;; <@446,#429> lazy-bailout)
0000000099585096  comment  (;;; <@447,#429> gap)
0000000099585099  comment  (;;; <@448,#813> check-smi)
00000000995850A2  comment  (;;; <@450,#432> gap)
00000000995850A5  comment  (;;; <@452,#437> -------------------- B63 --------------------)
00000000995850AC  comment  (;;; <@453,#437> gap)
00000000995850B0  comment  (;;; <@454,#438> load-context-slot)
00000000995850B7  comment  (;;; <@455,#438> gap)
00000000995850BE  comment  (;;; <@456,#445> check-function)
00000000995850C0  property cell
00000000995850D1  comment  (;;; <@458,#449> gap)
00000000995850D5  comment  (;;; <@459,#449> cmp-object-eq-and-branch)
00000000995850D7  embedded object  (00000000F5104161 <true>)
00000000995850E8  comment  (;;; <@464,#470> -------------------- B65 --------------------)
00000000995850E8  comment  (;;; <@466,#471> load-context-slot)
00000000995850EC  comment  (;;; <@467,#471> gap)
00000000995850F3  comment  (;;; <@468,#474> check-function)
00000000995850F5  property cell
0000000099585106  comment  (;;; <@470,#477> load-context-slot)
000000009958510A  comment  (;;; <@472,#478> check-non-smi)
0000000099585114  comment  (;;; <@474,#479> check-maps)
0000000099585116  embedded object  (00000000DFA05979 <Map(elements=3)>)
0000000099585128  comment  (;;; <@476,#480> push-argument)
000000009958512A  comment  (;;; <@478,#481> push-argument)
000000009958512D  comment  (;;; <@480,#482> push-argument)
0000000099585133  comment  (;;; <@482,#483> call-constant-function)
0000000099585135  embedded object  (00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>)
0000000099585148  position  (4135)
000000009958514F  comment  (;;; <@484,#484> lazy-bailout)
000000009958514F  comment  (;;; <@487,#485> branch)
0000000099585164  runtime entry  (deoptimization bailout 31)
0000000099585168  comment  (;;; <@492,#542> -------------------- B67 --------------------)
0000000099585168  comment  (;;; <@493,#542> gap)
000000009958516F  comment  (;;; <@494,#814> dummy-use)
000000009958516F  comment  (;;; <@495,#814> gap)
000000009958517A  comment  (;;; <@496,#543> store-keyed-generic)
000000009958517A  position  (4377)
000000009958517B  code target (KEYED_STORE_IC)  (000000009952D340)
000000009958517F  comment  (;;; <@498,#544> lazy-bailout)
000000009958517F  comment  (;;; <@501,#549> goto)
0000000099585184  comment  (;;; <@506,#492> -------------------- B69 --------------------)
0000000099585184  comment  (;;; <@507,#492> gap)
000000009958518F  comment  (;;; <@508,#493> load-keyed-generic)
000000009958518F  position  (4189)
0000000099585190  code target (KEYED_LOAD_IC)  (000000009951F2A0)
0000000099585194  comment  (;;; <@509,#493> gap)
000000009958519B  comment  (;;; <@510,#494> lazy-bailout)
000000009958519B  comment  (;;; <@511,#494> gap)
000000009958519F  comment  (;;; <@512,#496> load-context-slot)
00000000995851A3  comment  (;;; <@514,#499> push-argument)
00000000995851A6  comment  (;;; <@516,#501> push-argument)
00000000995851A7  comment  (;;; <@518,#502> call-function)
00000000995851A7  position  (4208)
00000000995851A8  code target (STUB)  (0000000099582D00)
00000000995851B0  comment  (;;; <@520,#503> lazy-bailout)
00000000995851B0  comment  (;;; <@523,#504> branch)
000000009958523E  comment  (;;; <@528,#517> -------------------- B71 --------------------)
000000009958523E  comment  (;;; <@530,#519> push-argument)
0000000099585240  property cell
000000009958524D  comment  (;;; <@532,#521> push-argument)
000000009958524F  comment  (;;; <@534,#523> push-argument)
0000000099585251  embedded object  (00000000FCE04139 <FixedArray[0]>)
000000009958525B  comment  (;;; <@536,#524> call-runtime)
000000009958526B  code target (STUB)  (00000000995072A0)
000000009958526F  comment  (;;; <@538,#525> check-maps)
0000000099585271  embedded object  (00000000DFA05ED1 <Map(elements=0)>)
0000000099585283  comment  (;;; <@540,#528> load-named-field)
0000000099585287  comment  (;;; <@541,#528> gap)
000000009958528E  comment  (;;; <@542,#817> check-smi)
0000000099585297  comment  (;;; <@543,#817> gap)
000000009958529A  comment  (;;; <@544,#530> store-keyed)
000000009958529E  comment  (;;; <@545,#530> gap)
00000000995852A5  comment  (;;; <@546,#534> store-keyed)
00000000995852A9  comment  (;;; <@547,#534> gap)
00000000995852B4  comment  (;;; <@548,#536> store-keyed-generic)
00000000995852B4  position  (4309)
00000000995852B5  code target (KEYED_STORE_IC)  (000000009952D340)
00000000995852B9  comment  (;;; <@550,#540> lazy-bailout)
00000000995852B9  comment  (;;; <@553,#541> goto)
00000000995852BE  comment  (;;; <@558,#511> -------------------- B73 --------------------)
00000000995852BE  comment  (;;; <@560,#513> push-argument)
00000000995852C4  comment  (;;; <@561,#513> gap)
00000000995852CB  comment  (;;; <@562,#815> dummy-use)
00000000995852CB  comment  (;;; <@564,#514> push-argument)
00000000995852CC  comment  (;;; <@566,#515> call-named)
00000000995852CE  embedded object  (00000000FCE14709 <String[4]: push>)
00000000995852D6  position  (4243)
00000000995852D7  code target (CALL_IC)  (000000009951AF60)
00000000995852DF  comment  (;;; <@568,#516> lazy-bailout)
00000000995852DF  comment  (;;; <@571,#539> goto)
00000000995852E4  comment  (;;; <@588,#456> -------------------- B78 --------------------)
00000000995852E4  comment  (;;; <@589,#456> gap)
00000000995852E8  comment  (;;; <@590,#457> load-context-slot)
00000000995852EF  comment  (;;; <@592,#460> push-argument)
00000000995852F2  comment  (;;; <@594,#461> push-argument)
00000000995852F5  comment  (;;; <@596,#462> push-argument)
00000000995852FB  comment  (;;; <@597,#462> gap)
0000000099585302  comment  (;;; <@598,#816> dummy-use)
0000000099585302  comment  (;;; <@600,#463> push-argument)
0000000099585303  comment  (;;; <@602,#464> call-function)
0000000099585303  position  (5383)
0000000099585304  code target (STUB)  (0000000099582E00)
000000009958530C  comment  (;;; <@604,#465> lazy-bailout)
000000009958530C  comment  (;;; <@608,#559> -------------------- B79 --------------------)
000000009958530C  comment  (;;; <@609,#559> gap)
0000000099585310  comment  (;;; <@610,#567> add-i)
0000000099585319  comment  (;;; <@612,#601> gap)
000000009958531F  embedded object  (00000000F5104181 <false>)
0000000099585329  embedded object  (00000000F5104181 <false>)
0000000099585333  embedded object  (00000000F5104181 <false>)
000000009958533B  comment  (;;; <@614,#625> -------------------- B80 --------------------)
000000009958533B  comment  (;;; <@616,#627> gap)
000000009958534E  comment  (;;; <@617,#627> goto)
0000000099585353  comment  (;;; <@618,#118> -------------------- B81 --------------------)
0000000099585357  comment  (;;; <@622,#124> -------------------- B82 --------------------)
0000000099585357  comment  (;;; <@623,#124> gap)
000000009958535B  comment  (;;; <@624,#129> add-i)
000000009958535E  comment  (;;; <@626,#624> gap)
000000009958536F  embedded object  (00000000F5104161 <true>)
0000000099585377  comment  (;;; <@628,#648> -------------------- B83 --------------------)
0000000099585377  comment  (;;; <@630,#650> gap)
000000009958537B  comment  (;;; <@631,#650> goto)
0000000099585380  comment  (;;; <@632,#90> -------------------- B84 --------------------)
0000000099585386  comment  (;;; <@636,#96> -------------------- B85 --------------------)
0000000099585386  comment  (;;; <@637,#96> gap)
0000000099585389  comment  (;;; <@638,#99> add-i)
0000000099585392  comment  (;;; <@640,#647> gap)
00000000995853A2  comment  (;;; <@642,#669> -------------------- B86 --------------------)
00000000995853A2  comment  (;;; <@643,#669> gap)
00000000995853A5  comment  (;;; <@644,#672> add-i)
00000000995853AF  comment  (;;; <@646,#676> gap)
00000000995853BD  comment  (;;; <@648,#695> -------------------- B87 --------------------)
00000000995853BD  comment  (;;; <@649,#695> gap)
00000000995853C0  comment  (;;; <@650,#697> add-i)
00000000995853CA  comment  (;;; <@652,#700> gap)
00000000995853F2  comment  (;;; <@653,#700> goto)
00000000995853F7  comment  (;;; <@658,#701> -------------------- B89 --------------------)
00000000995853F7  comment  (;;; <@661,#704> compare-numeric-and-branch)
0000000099585400  comment  (;;; <@666,#711> -------------------- B91 --------------------)
0000000099585400  comment  (;;; <@668,#716> push-argument)
0000000099585403  comment  (;;; <@669,#716> gap)
0000000099585407  comment  (;;; <@670,#800> smi-tag)
000000009958540B  comment  (;;; <@672,#717> push-argument)
000000009958540C  comment  (;;; <@674,#801> smi-tag)
0000000099585410  comment  (;;; <@676,#718> push-argument)
0000000099585411  comment  (;;; <@678,#719> call-named)
0000000099585413  embedded object  (00000000FCE13E21 <String[5]: slice>)
000000009958541B  position  (8153)
000000009958541C  code target (CALL_IC)  (0000000099519460)
0000000099585424  comment  (;;; <@680,#720> lazy-bailout)
0000000099585424  comment  (;;; <@682,#723> gap)
0000000099585428  comment  (;;; <@683,#723> branch)
00000000995854B7  comment  (;;; <@696,#730> -------------------- B95 --------------------)
00000000995854B7  comment  (;;; <@697,#730> gap)
00000000995854BB  comment  (;;; <@698,#731> load-context-slot)
00000000995854BF  comment  (;;; <@700,#734> push-argument)
00000000995854C2  comment  (;;; <@702,#736> push-argument)
00000000995854C3  comment  (;;; <@704,#737> call-function)
00000000995854C3  position  (8207)
00000000995854C4  code target (STUB)  (0000000099582D00)
00000000995854CC  comment  (;;; <@706,#738> lazy-bailout)
00000000995854CC  comment  (;;; <@710,#746> -------------------- B96 --------------------)
00000000995854CC  comment  (;;; <@711,#746> gap)
00000000995854D0  comment  (;;; <@712,#747> load-context-slot)
00000000995854D7  comment  (;;; <@714,#750> push-argument)
00000000995854DA  comment  (;;; <@716,#752> push-argument)
00000000995854DD  comment  (;;; <@718,#754> push-argument)
00000000995854DE  comment  (;;; <@720,#756> push-argument)
00000000995854E0  embedded object  (00000000FCE060C1 <String[0]: >)
00000000995854EA  comment  (;;; <@722,#758> push-argument)
00000000995854ED  comment  (;;; <@724,#759> call-function)
00000000995854ED  position  (8228)
00000000995854EE  code target (STUB)  (00000000995848C0)
00000000995854F6  comment  (;;; <@726,#760> lazy-bailout)
00000000995854F6  comment  (;;; <@738,#768> -------------------- B99 --------------------)
00000000995854F6  comment  (;;; <@739,#768> gap)
00000000995854FA  comment  (;;; <@740,#769> load-context-slot)
00000000995854FE  comment  (;;; <@743,#770> branch)
0000000099585513  runtime entry  (deoptimization bailout 47)
0000000099585517  comment  (;;; <@756,#777> -------------------- B103 --------------------)
0000000099585517  comment  (;;; <@758,#778> load-context-slot)
000000009958551E  comment  (;;; <@760,#781> push-argument)
0000000099585521  comment  (;;; <@762,#783> push-argument)
0000000099585524  comment  (;;; <@764,#784> call-function)
0000000099585524  position  (8322)
0000000099585525  code target (STUB)  (0000000099582D00)
000000009958552D  comment  (;;; <@766,#785> lazy-bailout)
000000009958552D  comment  (;;; <@770,#791> -------------------- B104 --------------------)
000000009958552D  comment  (;;; <@771,#791> gap)
0000000099585531  comment  (;;; <@772,#794> return)
000000009958553A  comment  (;;; <@24,#28> -------------------- Deferred allocate --------------------)
0000000099585571  position  (6157)
0000000099585572  code target (STUB)  (0000000099506AA0)
0000000099585595  comment  (;;; <@52,#79> -------------------- Deferred stack-check --------------------)
00000000995855BA  position  (6336)
00000000995855BB  code target (STUB)  (0000000099506AA0)
00000000995855D9  comment  (;;; <@60,#85> -------------------- Deferred string-char-code-at --------------------)
000000009958560A  code target (STUB)  (0000000099506AA0)
0000000099585631  comment  (;;; <@176,#197> -------------------- Deferred stack-check --------------------)
0000000099585656  position  (6707)
0000000099585657  code target (STUB)  (0000000099506AA0)
0000000099585675  comment  (;;; <@180,#203> -------------------- Deferred string-char-code-at --------------------)
00000000995856A9  code target (STUB)  (0000000099506AA0)
00000000995856D0  comment  (;;; -------------------- Jump table --------------------)
00000000995856D0  comment  (;;; jump table entry 0: deoptimization bailout 1.)
00000000995856D1  runtime entry  (deoptimization bailout 1)
00000000995856D5  comment  (;;; jump table entry 1: deoptimization bailout 2.)
00000000995856D6  runtime entry  (deoptimization bailout 2)
00000000995856DA  comment  (;;; jump table entry 2: deoptimization bailout 4.)
00000000995856DB  runtime entry  (deoptimization bailout 4)
00000000995856DF  comment  (;;; jump table entry 3: deoptimization bailout 7.)
00000000995856E0  runtime entry  (deoptimization bailout 7)
00000000995856E4  comment  (;;; jump table entry 4: deoptimization bailout 9.)
00000000995856E5  runtime entry  (deoptimization bailout 9)
00000000995856E9  comment  (;;; jump table entry 5: deoptimization bailout 11.)
00000000995856EA  runtime entry  (deoptimization bailout 11)
00000000995856EE  comment  (;;; jump table entry 6: deoptimization bailout 23.)
00000000995856EF  runtime entry  (deoptimization bailout 23)
00000000995856F3  comment  (;;; jump table entry 7: deoptimization bailout 25.)
00000000995856F4  runtime entry  (deoptimization bailout 25)
00000000995856F8  comment  (;;; jump table entry 8: deoptimization bailout 26.)
00000000995856F9  runtime entry  (deoptimization bailout 26)
00000000995856FD  comment  (;;; jump table entry 9: deoptimization bailout 27.)
00000000995856FE  runtime entry  (deoptimization bailout 27)
0000000099585702  comment  (;;; jump table entry 10: deoptimization bailout 28.)
0000000099585703  runtime entry  (deoptimization bailout 28)
0000000099585707  comment  (;;; jump table entry 11: deoptimization bailout 29.)
0000000099585708  runtime entry  (deoptimization bailout 29)
000000009958570C  comment  (;;; jump table entry 12: deoptimization bailout 35.)
000000009958570D  runtime entry  (deoptimization bailout 35)
0000000099585711  comment  (;;; jump table entry 13: deoptimization bailout 36.)
0000000099585712  runtime entry  (deoptimization bailout 36)
0000000099585716  comment  (;;; jump table entry 14: deoptimization bailout 40.)
0000000099585717  runtime entry  (deoptimization bailout 40)
000000009958571B  comment  (;;; jump table entry 15: deoptimization bailout 41.)
000000009958571C  runtime entry  (deoptimization bailout 41)
0000000099585720  comment  (;;; jump table entry 16: deoptimization bailout 42.)
0000000099585721  runtime entry  (deoptimization bailout 42)
0000000099585725  comment  (;;; jump table entry 17: deoptimization bailout 43.)
0000000099585726  runtime entry  (deoptimization bailout 43)
000000009958572C  comment  (;;; Safepoint table.)

[deoptimizing (DEOPT eager): begin 0xf3f89bf1 parseString @23, FP to SP delta: 232]
            ;;; jump table entry 6: deoptimization bailout 23.
  translating parseString => node=618, height=120
    0x002cef60: [top + 160] <- 0xf515fca9 ; [sp + 256] 00000000F515FCA9 <JS Global Object>
    0x002cef58: [top + 152] <- 0x88aec121 ; [sp + 248] 0000000088AEC121 <String[7]: foo=bar>
    0x002cef50: [top + 144] <- 0x99582838 ; caller's pc
    0x002cef48: [top + 136] <- 0x002cef80 ; caller's fp
    0x002cef40: [top + 128] <- 0xf3f89839; context
    0x002cef38: [top + 120] <- 0xf3f89bf1; function
    0x002cef30: [top + 112] <- 0xf5104181 ; [sp + 184] 00000000F5104181 <false>
    0x002cef28: [top + 104] <- 0xf5104181 ; rbx 00000000F5104181 <false>
    0x002cef20: [top + 96] <- 0xf5104181 ; [sp + 200] 00000000F5104181 <false>
    0x002cef18: [top + 88] <- 0x700000000 ; [sp + 176] 7
    0x002cef10: [top + 80] <- 7 ; [sp + 104] (smi)
    0x002cef08: [top + 72] <- 0xf3f93471 ; [sp + 168] 00000000F3F93471 <an Object with map 00000000DFA06CE1>
    0x002cef00: [top + 64] <- 00000000F5104121 <undefined> ; literal
    0x002ceef8: [top + 56] <- 00000000F5104121 <undefined> ; literal
    0x002ceef0: [top + 48] <- 00000000F5104121 <undefined> ; literal
    0x002ceee8: [top + 40] <- 00000000F5104121 <undefined> ; literal
    0x002ceee0: [top + 32] <- 0 ; [sp + 160] (smi)
    0x002ceed8: [top + 24] <- 00000000F5104121 <undefined> ; literal
    0x002ceed0: [top + 16] <- 7 ; [sp + 104] (smi)
    0x002ceec8: [top + 8] <- 0xf3f93489 ; rax 00000000F3F93489 <String[3]: foo>
    0x002ceec0: [top + 0] <- 0xf3f934a9 ; [sp + 48] 00000000F3F934A9 <String[3]: bar>
[deoptimizing (eager): end 0xf3f89bf1 parseString @23 => node=618, pc=0x99581572, state=NO_REGISTERS, alignment=no padding, took 1.000 ms]
[removing optimized code for: parseString]
-----------------------------------------------------------
Compiling method parseString using hydrogen
--- Raw source ---
(str) {
    containsSparse = false;
    var decodeKey = false;
    var decodeValue = false;
    var possiblyNested = false;
    var len = str.length;
    var i = 0;
    var dictionary = {};
    var keyStart = 0;
    var keyEnd = 0;
    var valueStart = 0;
    var valueEnd = 0;
    var left = 0;

    mainloop: for (; i < len; ++i) {
        var ch = str.charCodeAt(i);
        if (ch === 91) {
            left++;
        }
        else if (left > 0 && ch === 93) {
            possiblyNested = true;
            left--;
        }
        else if (left === 0 && ch === 61) {
            var j = i + 1;
            keyEnd = i - 1;
            valueEnd = valueStart = j;
            for (; j < len; ++j) {
                ch = str.charCodeAt(j);

                if (ch === 43 || ch === 37) {
                    decodeValue = true;
                }
                else if (ch === 38) {
                    i = j - 1;
                    valueEnd = i;
                    var key = str.slice(keyStart, keyEnd + 1);
                    var value = str.slice(valueStart, valueEnd + 1);
                    if (decodeKey) key = decode(key);
                    if (decodeValue) value = decode(value);
                    placeValue(dictionary, key, value, possiblyNested);

                    decodeValue = decodeKey = false;
                    possiblyNested = false;
                    keyEnd = keyStart = j + 1;
                    continue mainloop;
                }
            }
            i = j;
            valueEnd = j - 1;
            var key = str.slice(keyStart, keyEnd + 1);
            var value = str.slice(valueStart, valueEnd + 1);
            if (decodeKey) key = decode(key);
            if (decodeValue) value = decode(value);
            placeValue(dictionary, key, value, possiblyNested);
            decodeValue = decodeKey = false;
            possiblyNested = false;
            keyEnd = keyStart = j + 1;
        }
        else if (ch === 43 || ch === 37) {
            decodeKey = true;
        }
        keyEnd = i + 1;

    }

    if (keyEnd !== keyStart) {

        var value = "";
        var key = str.slice(keyStart, keyEnd);
        if (decodeKey) key = decode(key);
        placeValue(dictionary, key, value, possiblyNested);
    }


    if (containsSparse) {
        compact(dictionary);
    }

    return dictionary;
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = parseString
stack_slots = 27
Instructions (size = 3880)
0000000099585920     0  55             push rbp
0000000099585921     1  4889e5         REX.W movq rbp,rsp
0000000099585924     4  56             push rsi
0000000099585925     5  57             push rdi
0000000099585926     6  4881ecd8000000 REX.W subq rsp,0xd8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
000000009958592D    13  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
0000000099585930    16  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@12,#10> stack-check
0000000099585934    20  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099585938    24  7305           jnc 31  (000000009958593F)
000000009958593A    26  e84104f9ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@14,#11> constant-t
000000009958593F    31  48b8814110f500000000 REX.W movq rax,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@15,#11> gap
0000000099585949    41  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@16,#12> store-context-slot
000000009958594D    45  4889436f       REX.W movq [rbx+0x6f],rax
                  ;;; <@17,#12> gap
0000000099585951    49  488b4d10       REX.W movq rcx,[rbp+0x10]
                  ;;; <@18,#21> check-non-smi
0000000099585955    53  f6c101         testb rcx,0x1
0000000099585958    56  0f84fe0c0000   jz 3388  (000000009958665C)
                  ;;; <@20,#22> check-instance-type
000000009958595E    62  4c8b51ff       REX.W movq r10,[rcx-0x1]
0000000099585962    66  41f6420b80     testb [r10+0xb],0x80
0000000099585967    71  0f85f40c0000   jnz 3393  (0000000099586661)
                  ;;; <@22,#23> load-named-field
000000009958596D    77  488b790f       REX.W movq rdi,[rcx+0xf]
                  ;;; <@23,#23> gap
0000000099585971    81  48897dd0       REX.W movq [rbp-0x30],rdi
                  ;;; <@24,#28> allocate
0000000099585975    85  4d8b85c8090000 REX.W movq r8,[r13+0x9c8]
000000009958597C    92  498bc0         REX.W movq rax,r8
000000009958597F    95  4883c018       REX.W addq rax,0x18
0000000099585983    99  0f823d0b0000   jc 2982  (00000000995864C6)
0000000099585989   105  493b85d0090000 REX.W cmpq rax,[r13+0x9d0]
0000000099585990   112  0f87300b0000   ja 2982  (00000000995864C6)
0000000099585996   118  498985c8090000 REX.W movq [r13+0x9c8],rax
000000009958599D   125  49ffc0         REX.W incq r8
                  ;;; <@25,#28> gap
00000000995859A0   128  4c8945c8       REX.W movq [rbp-0x38],r8
                  ;;; <@26,#29> sub-allocated-object
00000000995859A4   132  498d00         REX.W leaq rax,[r8]
                  ;;; <@28,#31> store-named-field
00000000995859A7   135  49bae16ca0df00000000 REX.W movq r10,00000000DFA06CE1    ;; object: 00000000DFA06CE1 <Map(elements=3)>
00000000995859B1   145  4c8950ff       REX.W movq [rax-0x1],r10
                  ;;; <@30,#33> store-named-field
00000000995859B5   149  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
00000000995859BF   159  4c89500f       REX.W movq [rax+0xf],r10
                  ;;; <@32,#35> store-named-field
00000000995859C3   163  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
00000000995859CD   173  4c895007       REX.W movq [rax+0x7],r10
                  ;;; <@33,#35> gap
00000000995859D1   177  4c8bcf         REX.W movq r9,rdi
                  ;;; <@34,#796> smi-untag
00000000995859D4   180  49c1e920       REX.W shrq r9,32
                  ;;; <@35,#796> gap
00000000995859D8   184  4c894d98       REX.W movq [rbp-0x68],r9
                  ;;; <@36,#66> gap
00000000995859DC   188  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995859E6   198  4c8955d8       REX.W movq [rbp-0x28],r10
00000000995859EA   202  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995859F4   212  4c8955e0       REX.W movq [rbp-0x20],r10
00000000995859F8   216  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099585A02   226  41bf00000000   movl r15,0000000000000000
0000000099585A08   232  41be00000000   movl r14,0000000000000000
0000000099585A0E   238  b800000000     movl rax,0000000000000000
0000000099585A13   243  41bb00000000   movl r11,0000000000000000
                  ;;; <@38,#67> -------------------- B2 (loop header) --------------------
0000000099585A19   249  488955a0       REX.W movq [rbp-0x60],rdx
0000000099585A1D   253  4c897db0       REX.W movq [rbp-0x50],r15
0000000099585A21   257  4c8975b8       REX.W movq [rbp-0x48],r14
0000000099585A25   261  4c895dc0       REX.W movq [rbp-0x40],r11
                  ;;; <@41,#70> compare-numeric-and-branch
0000000099585A29   265  453bf9         cmpl r15,r9
0000000099585A2C   268  0f8d3f090000   jge 2641  (0000000099586371)
                  ;;; <@46,#77> -------------------- B4 --------------------
                  ;;; <@48,#79> stack-check
0000000099585A32   274  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099585A36   278  0f82e50a0000   jc 3073  (0000000099586521)
                  ;;; <@50,#83> load-named-field
0000000099585A3C   284  488b410f       REX.W movq rax,[rcx+0xf]
                  ;;; <@52,#802> smi-untag
0000000099585A40   288  48c1e820       REX.W shrq rax,32
                  ;;; <@53,#802> gap
0000000099585A44   292  48894590       REX.W movq [rbp-0x70],rax
                  ;;; <@54,#84> bounds-check
0000000099585A48   296  493bc7         REX.W cmpq rax,r15
0000000099585A4B   299  0f86150c0000   jna 3398  (0000000099586666)
                  ;;; <@55,#84> gap
0000000099585A51   305  498bdf         REX.W movq rbx,r15
                  ;;; <@56,#85> string-char-code-at
0000000099585A54   308  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099585A58   312  0fb67f0b       movzxbl rdi,[rdi+0xb]
0000000099585A5C   316  40f6c701       testb rdi,0x1
0000000099585A60   320  742f           jz 369  (0000000099585A91)
0000000099585A62   322  40f6c702       testb rdi,0x2
0000000099585A66   326  740c           jz 340  (0000000099585A74)
0000000099585A68   328  8b7923         movl rdi,[rcx+0x23]
0000000099585A6B   331  4803df         REX.W addq rbx,rdi
0000000099585A6E   334  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099585A72   338  eb15           jmp 361  (0000000099585A89)
0000000099585A74   340  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099585A7B   347  4c39511f       REX.W cmpq [rcx+0x1f],r10
0000000099585A7F   351  0f85e00a0000   jnz 3141  (0000000099586565)
0000000099585A85   357  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099585A89   361  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099585A8D   365  0fb67f0b       movzxbl rdi,[rdi+0xb]
0000000099585A91   369  40f6c703       testb rdi,0x3
0000000099585A95   373  7420           jz 407  (0000000099585AB7)
0000000099585A97   375  40f6c710       testb rdi,0x10
0000000099585A9B   379  0f85c40a0000   jnz 3141  (0000000099586565)
0000000099585AA1   385  40f6c704       testb rdi,0x4
0000000099585AA5   389  488b791f       REX.W movq rdi,[rcx+0x1f]
0000000099585AA9   393  7506           jnz 401  (0000000099585AB1)
0000000099585AAB   395  0fb73c5f       movzxwl rdi,[rdi+rbx*2]
0000000099585AAF   399  eb18           jmp 425  (0000000099585AC9)
0000000099585AB1   401  0fb63c1f       movzxbl rdi,[rdi+rbx*1]
0000000099585AB5   405  eb12           jmp 425  (0000000099585AC9)
0000000099585AB7   407  40f6c704       testb rdi,0x4
0000000099585ABB   411  7507           jnz 420  (0000000099585AC4)
0000000099585ABD   413  0fb77c5917     movzxwl rdi,[rcx+rbx*2+0x17]
0000000099585AC2   418  eb05           jmp 425  (0000000099585AC9)
0000000099585AC4   420  0fb67c1917     movzxbl rdi,[rcx+rbx*1+0x17]
                  ;;; <@57,#85> gap
0000000099585AC9   425  48897da8       REX.W movq [rbp-0x58],rdi
                  ;;; <@59,#89> compare-numeric-and-branch
0000000099585ACD   429  83ff5b         cmpl rdi,0x5b
0000000099585AD0   432  0f8429080000   jz 2527  (00000000995862FF)
                  ;;; <@64,#101> -------------------- B6 --------------------
                  ;;; <@67,#104> compare-numeric-and-branch
0000000099585AD6   438  4183fb00       cmpl r11,0x0
0000000099585ADA   442  0f8e3a000000   jle 506  (0000000099585B1A)
                  ;;; <@76,#111> -------------------- B9 --------------------
                  ;;; <@78,#114> deoptimize
                  ;;; deoptimize: insufficient type feedback for combined type
0000000099585AE0   448  e84d05e8ff     call 0000000099406032    ;; debug: position 6463
                                                             ;; soft deoptimization bailout 5
                  ;;; <@79,#114> gap
0000000099585AE5   453  488bdf         REX.W movq rbx,rdi
                  ;;; <@80,#803> smi-tag
0000000099585AE8   456  48c1e320       REX.W shlq rbx,32
                  ;;; <@82,#804> constant-t
0000000099585AEC   460  48b9000000005d000000 REX.W movq rcx,0000005D00000000
                  ;;; <@83,#804> gap
0000000099585AF6   470  4887d3         REX.W xchgq rdx,rbx
0000000099585AF9   473  4891           REX.W xchgq rax, rcx
                  ;;; <@84,#115> cmp-t
0000000099585AFB   475  e82085f8ff     call 000000009950E020    ;; debug: position 6473
                                                             ;; code: COMPARE_IC, UNINITIALIZED
0000000099585B00   480  90             nop
0000000099585B01   481  4885c0         REX.W testq rax,rax
0000000099585B04   484  7406           jz 492  (0000000099585B0C)
0000000099585B06   486  498b45c8       REX.W movq rax,[r13-0x38]
0000000099585B0A   490  eb04           jmp 496  (0000000099585B10)
0000000099585B0C   492  498b45c0       REX.W movq rax,[r13-0x40]
                  ;;; <@86,#116> lazy-bailout
                  ;;; <@89,#117> branch
0000000099585B10   496  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099585B14   500  0f84b8070000   jz 2482  (00000000995862D2)
                  ;;; <@94,#131> -------------------- B11 --------------------
                  ;;; <@96,#134> gap
0000000099585B1A   506  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@97,#134> compare-numeric-and-branch
0000000099585B1E   510  83f800         cmpl rax,0x0
0000000099585B21   513  0f8409000000   jz 528  (0000000099585B30)
                  ;;; <@98,#138> -------------------- B12 --------------------
                  ;;; <@100,#140> gap
0000000099585B27   519  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@101,#140> goto
0000000099585B2B   523  e90d000000     jmp 541  (0000000099585B3D)
                  ;;; <@106,#141> -------------------- B14 --------------------
                  ;;; <@108,#144> gap
0000000099585B30   528  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@109,#144> compare-numeric-and-branch
0000000099585B34   532  83fb3d         cmpl rbx,0x3d
0000000099585B37   535  0f843d000000   jz 602  (0000000099585B7A)
                  ;;; <@114,#571> -------------------- B16 --------------------
                  ;;; <@117,#574> compare-numeric-and-branch
0000000099585B3D   541  83fb2b         cmpl rbx,0x2b
0000000099585B40   544  0f8412000000   jz 568  (0000000099585B58)
                  ;;; <@122,#581> -------------------- B18 --------------------
                  ;;; <@125,#584> compare-numeric-and-branch
0000000099585B46   550  83fb25         cmpl rbx,0x25
0000000099585B49   553  0f8409000000   jz 568  (0000000099585B58)
                  ;;; <@130,#596> -------------------- B20 --------------------
                  ;;; <@132,#598> gap
0000000099585B4F   559  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@133,#598> goto
0000000099585B53   563  e90a000000     jmp 578  (0000000099585B62)
                  ;;; <@142,#591> -------------------- B23 --------------------
                  ;;; <@144,#595> gap
0000000099585B58   568  48bb614110f500000000 REX.W movq rbx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@146,#602> -------------------- B24 --------------------
                  ;;; <@148,#604> gap
0000000099585B62   578  488bfb         REX.W movq rdi,rbx
0000000099585B65   581  488b4de0       REX.W movq rcx,[rbp-0x20]
0000000099585B69   585  488b55a0       REX.W movq rdx,[rbp-0x60]
0000000099585B6D   589  488b5db0       REX.W movq rbx,[rbp-0x50]
0000000099585B71   593  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@149,#604> goto
0000000099585B75   597  e940070000     jmp 2458  (00000000995862BA)
                  ;;; <@154,#151> -------------------- B26 --------------------
                  ;;; <@155,#151> gap
0000000099585B7A   602  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@156,#154> add-i
0000000099585B7E   606  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@157,#154> gap
0000000099585B81   609  488955a8       REX.W movq [rbp-0x58],rdx
0000000099585B85   613  488bcb         REX.W movq rcx,rbx
                  ;;; <@158,#159> sub-i
0000000099585B88   616  83e901         subl rcx,0x1
0000000099585B8B   619  0f80da0a0000   jo 3403  (000000009958666B)
                  ;;; <@160,#184> gap
0000000099585B91   625  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099585B95   629  488bda         REX.W movq rbx,rdx
                  ;;; <@162,#185> -------------------- B27 (loop header) --------------------
0000000099585B98   632  48897d80       REX.W movq [rbp-0x80],rdi
0000000099585B9C   636  48895d88       REX.W movq [rbp-0x78],rbx
                  ;;; <@165,#188> compare-numeric-and-branch
0000000099585BA0   640  3b5d98         cmpl rbx,[rbp-0x68]
0000000099585BA3   643  0f8d3f030000   jge 1480  (0000000099585EE8)
                  ;;; <@170,#195> -------------------- B29 --------------------
                  ;;; <@172,#197> stack-check
0000000099585BA9   649  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099585BAD   653  0f820a0a0000   jc 3229  (00000000995865BD)
                  ;;; <@174,#202> bounds-check
0000000099585BB3   659  48395d90       REX.W cmpq [rbp-0x70],rbx
0000000099585BB7   663  0f86b30a0000   jna 3408  (0000000099586670)
                  ;;; <@175,#202> gap
0000000099585BBD   669  4c8b4d10       REX.W movq r9,[rbp+0x10]
0000000099585BC1   673  4c8bc3         REX.W movq r8,rbx
                  ;;; <@176,#203> string-char-code-at
0000000099585BC4   676  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099585BC8   680  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099585BCD   685  41f6c301       testb r11,0x1
0000000099585BD1   689  7431           jz 740  (0000000099585C04)
0000000099585BD3   691  41f6c302       testb r11,0x2
0000000099585BD7   695  740d           jz 710  (0000000099585BE6)
0000000099585BD9   697  458b5923       movl r11,[r9+0x23]
0000000099585BDD   701  4d03c3         REX.W addq r8,r11
0000000099585BE0   704  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099585BE4   708  eb15           jmp 731  (0000000099585BFB)
0000000099585BE6   710  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099585BED   717  4d39511f       REX.W cmpq [r9+0x1f],r10
0000000099585BF1   721  0f850a0a0000   jnz 3297  (0000000099586601)
0000000099585BF7   727  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099585BFB   731  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099585BFF   735  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099585C04   740  41f6c303       testb r11,0x3
0000000099585C08   744  7422           jz 780  (0000000099585C2C)
0000000099585C0A   746  41f6c310       testb r11,0x10
0000000099585C0E   750  0f85ed090000   jnz 3297  (0000000099586601)
0000000099585C14   756  41f6c304       testb r11,0x4
0000000099585C18   760  4d8b591f       REX.W movq r11,[r9+0x1f]
0000000099585C1C   764  7507           jnz 773  (0000000099585C25)
0000000099585C1E   766  470fb71c43     movzxwl r11,[r11+r8*2]
0000000099585C23   771  eb1b           jmp 800  (0000000099585C40)
0000000099585C25   773  470fb61c03     movzxbl r11,[r11+r8*1]
0000000099585C2A   778  eb14           jmp 800  (0000000099585C40)
0000000099585C2C   780  41f6c304       testb r11,0x4
0000000099585C30   784  7508           jnz 794  (0000000099585C3A)
0000000099585C32   786  470fb75c4117   movzxwl r11,[r9+r8*2+0x17]
0000000099585C38   792  eb06           jmp 800  (0000000099585C40)
0000000099585C3A   794  470fb65c0117   movzxbl r11,[r9+r8*1+0x17]
                  ;;; <@177,#203> gap
0000000099585C40   800  4c899d78ffffff REX.W movq [rbp-0x88],r11
                  ;;; <@179,#207> compare-numeric-and-branch
0000000099585C47   807  4183fb2b       cmpl r11,0x2b
0000000099585C4B   811  0f8419000000   jz 842  (0000000099585C6A)
                  ;;; <@184,#214> -------------------- B31 --------------------
                  ;;; <@187,#217> compare-numeric-and-branch
0000000099585C51   817  4183fb25       cmpl r11,0x25
0000000099585C55   821  0f840f000000   jz 842  (0000000099585C6A)
                  ;;; <@192,#227> -------------------- B33 --------------------
                  ;;; <@195,#230> compare-numeric-and-branch
0000000099585C5B   827  4183fb26       cmpl r11,0x26
0000000099585C5F   831  0f8417000000   jz 860  (0000000099585C7C)
0000000099585C65   837  e90a000000     jmp 852  (0000000099585C74)
                  ;;; <@212,#224> -------------------- B38 --------------------
                  ;;; <@214,#347> gap
0000000099585C6A   842  48bf614110f500000000 REX.W movq rdi,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@216,#352> -------------------- B39 --------------------
                  ;;; <@218,#354> add-i
0000000099585C74   852  83c301         addl rbx,0x1
                  ;;; <@221,#357> goto
0000000099585C77   855  e91cffffff     jmp 632  (0000000099585B98)
                  ;;; <@226,#237> -------------------- B41 --------------------
                  ;;; <@228,#240> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099585C7C   860  e8e303e8ff     call 0000000099406064    ;; debug: position 6894
                                                             ;; soft deoptimization bailout 10
                  ;;; <@229,#240> gap
0000000099585C81   865  4c8bc3         REX.W movq r8,rbx
                  ;;; <@230,#241> sub-i
0000000099585C84   868  4183e801       subl r8,0x1
0000000099585C88   872  0f80e7090000   jo 3413  (0000000099586675)
                  ;;; <@231,#241> gap
0000000099585C8E   878  4c898570ffffff REX.W movq [rbp-0x90],r8
                  ;;; <@232,#249> add-i
0000000099585C95   885  83c101         addl rcx,0x1
                  ;;; <@234,#251> push-argument
0000000099585C98   888  ff7510         push [rbp+0x10]
                  ;;; <@235,#251> gap
0000000099585C9B   891  4c8b4db8       REX.W movq r9,[rbp-0x48]
                  ;;; <@236,#798> smi-tag
0000000099585C9F   895  49c1e120       REX.W shlq r9,32
                  ;;; <@238,#252> push-argument
0000000099585CA3   899  4151           push r9
                  ;;; <@240,#808> smi-tag
0000000099585CA5   901  48c1e120       REX.W shlq rcx,32
                  ;;; <@242,#253> push-argument
0000000099585CA9   905  51             push rcx
                  ;;; <@244,#254> call-named
0000000099585CAA   906  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099585CB4   916  e8a737f9ff     call 0000000099519460    ;; debug: position 7003
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099585CB9   921  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@245,#254> gap
0000000099585CBD   925  48898568ffffff REX.W movq [rbp-0x98],rax
                  ;;; <@246,#255> lazy-bailout
                  ;;; <@247,#255> gap
0000000099585CC4   932  488b9d70ffffff REX.W movq rbx,[rbp-0x90]
                  ;;; <@248,#260> add-i
0000000099585CCB   939  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@250,#262> push-argument
0000000099585CCE   942  ff7510         push [rbp+0x10]
                  ;;; <@251,#262> gap
0000000099585CD1   945  488b4da8       REX.W movq rcx,[rbp-0x58]
                  ;;; <@252,#805> smi-tag
0000000099585CD5   949  48c1e120       REX.W shlq rcx,32
                  ;;; <@254,#263> push-argument
0000000099585CD9   953  51             push rcx
                  ;;; <@256,#809> smi-tag
0000000099585CDA   954  48c1e220       REX.W shlq rdx,32
                  ;;; <@258,#264> push-argument
0000000099585CDE   958  52             push rdx
                  ;;; <@260,#265> call-named
0000000099585CDF   959  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099585CE9   969  e87237f9ff     call 0000000099519460    ;; debug: position 7068
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099585CEE   974  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@261,#265> gap
0000000099585CF2   978  48898560ffffff REX.W movq [rbp-0xa0],rax
                  ;;; <@262,#266> lazy-bailout
                  ;;; <@264,#269> gap
0000000099585CF9   985  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@265,#269> branch
0000000099585CFD   989  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099585D01   993  0f8485000000   jz 1132  (0000000099585D8C)
0000000099585D07   999  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585D0B  1003  0f8487000000   jz 1144  (0000000099585D98)
0000000099585D11  1009  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585D15  1013  0f8471000000   jz 1132  (0000000099585D8C)
0000000099585D1B  1019  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099585D1F  1023  0f8467000000   jz 1132  (0000000099585D8C)
0000000099585D25  1029  4885db         REX.W testq rbx,rbx
0000000099585D28  1032  0f845e000000   jz 1132  (0000000099585D8C)
0000000099585D2E  1038  f6c301         testb rbx,0x1
0000000099585D31  1041  0f8461000000   jz 1144  (0000000099585D98)
0000000099585D37  1047  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099585D3B  1051  41f6420d20     testb [r10+0xd],0x20
0000000099585D40  1056  0f8546000000   jnz 1132  (0000000099585D8C)
0000000099585D46  1062  41807a0bad     cmpb [r10+0xb],0xad
0000000099585D4B  1067  0f8347000000   jnc 1144  (0000000099585D98)
0000000099585D51  1073  41807a0b80     cmpb [r10+0xb],0x80
0000000099585D56  1078  7310           jnc 1096  (0000000099585D68)
0000000099585D58  1080  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099585D5D  1085  0f8535000000   jnz 1144  (0000000099585D98)
0000000099585D63  1091  e924000000     jmp 1132  (0000000099585D8C)
0000000099585D68  1096  41807a0b80     cmpb [r10+0xb],0x80
0000000099585D6D  1101  0f8425000000   jz 1144  (0000000099585D98)
0000000099585D73  1107  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099585D77  1111  7513           jnz 1132  (0000000099585D8C)
0000000099585D79  1113  0f57c0         xorps xmm0, xmm0
0000000099585D7C  1116  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099585D81  1121  0f8405000000   jz 1132  (0000000099585D8C)
0000000099585D87  1127  e90c000000     jmp 1144  (0000000099585D98)
                  ;;; <@270,#288> -------------------- B43 --------------------
                  ;;; <@272,#290> gap
0000000099585D8C  1132  488b8568ffffff REX.W movq rax,[rbp-0x98]
                  ;;; <@273,#290> goto
0000000099585D93  1139  e920000000     jmp 1176  (0000000099585DB8)
                  ;;; <@278,#276> -------------------- B45 --------------------
                  ;;; <@279,#276> gap
0000000099585D98  1144  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@280,#277> load-context-slot
0000000099585D9C  1148  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@282,#278> global-object
0000000099585DA0  1152  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@284,#279> global-receiver
0000000099585DA4  1156  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@286,#280> push-argument
0000000099585DA8  1160  51             push rcx
                  ;;; <@288,#282> push-argument
0000000099585DA9  1161  ffb568ffffff   push [rbp-0x98]
                  ;;; <@290,#283> call-function
0000000099585DAF  1167  e84ccfffff     call 0000000099582D00    ;; debug: position 7142
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585DB4  1172  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@292,#284> lazy-bailout
                  ;;; <@296,#292> -------------------- B46 --------------------
0000000099585DB8  1176  48898558ffffff REX.W movq [rbp-0xa8],rax
                  ;;; <@298,#294> gap
0000000099585DBF  1183  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@299,#294> branch
0000000099585DC3  1187  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099585DC7  1191  0f8485000000   jz 1330  (0000000099585E52)
0000000099585DCD  1197  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585DD1  1201  0f8487000000   jz 1342  (0000000099585E5E)
0000000099585DD7  1207  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585DDB  1211  0f8471000000   jz 1330  (0000000099585E52)
0000000099585DE1  1217  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099585DE5  1221  0f8467000000   jz 1330  (0000000099585E52)
0000000099585DEB  1227  4885db         REX.W testq rbx,rbx
0000000099585DEE  1230  0f845e000000   jz 1330  (0000000099585E52)
0000000099585DF4  1236  f6c301         testb rbx,0x1
0000000099585DF7  1239  0f8461000000   jz 1342  (0000000099585E5E)
0000000099585DFD  1245  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099585E01  1249  41f6420d20     testb [r10+0xd],0x20
0000000099585E06  1254  0f8546000000   jnz 1330  (0000000099585E52)
0000000099585E0C  1260  41807a0bad     cmpb [r10+0xb],0xad
0000000099585E11  1265  0f8347000000   jnc 1342  (0000000099585E5E)
0000000099585E17  1271  41807a0b80     cmpb [r10+0xb],0x80
0000000099585E1C  1276  7310           jnc 1294  (0000000099585E2E)
0000000099585E1E  1278  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099585E23  1283  0f8535000000   jnz 1342  (0000000099585E5E)
0000000099585E29  1289  e924000000     jmp 1330  (0000000099585E52)
0000000099585E2E  1294  41807a0b80     cmpb [r10+0xb],0x80
0000000099585E33  1299  0f8425000000   jz 1342  (0000000099585E5E)
0000000099585E39  1305  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099585E3D  1309  7513           jnz 1330  (0000000099585E52)
0000000099585E3F  1311  0f57c0         xorps xmm0, xmm0
0000000099585E42  1314  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099585E47  1319  0f8405000000   jz 1330  (0000000099585E52)
0000000099585E4D  1325  e90c000000     jmp 1342  (0000000099585E5E)
                  ;;; <@304,#313> -------------------- B48 --------------------
                  ;;; <@306,#315> gap
0000000099585E52  1330  488b8560ffffff REX.W movq rax,[rbp-0xa0]
                  ;;; <@307,#315> goto
0000000099585E59  1337  e920000000     jmp 1374  (0000000099585E7E)
                  ;;; <@312,#301> -------------------- B50 --------------------
                  ;;; <@313,#301> gap
0000000099585E5E  1342  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@314,#302> load-context-slot
0000000099585E62  1346  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@316,#303> global-object
0000000099585E66  1350  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@318,#304> global-receiver
0000000099585E6A  1354  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@320,#305> push-argument
0000000099585E6E  1358  51             push rcx
                  ;;; <@322,#307> push-argument
0000000099585E6F  1359  ffb560ffffff   push [rbp-0xa0]
                  ;;; <@324,#308> call-function
0000000099585E75  1365  e886ceffff     call 0000000099582D00    ;; debug: position 7200
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585E7A  1370  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@326,#309> lazy-bailout
                  ;;; <@330,#317> -------------------- B51 --------------------
                  ;;; <@331,#317> gap
0000000099585E7E  1374  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@332,#318> load-context-slot
0000000099585E82  1378  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@334,#319> global-object
0000000099585E89  1385  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@336,#320> global-receiver
0000000099585E8D  1389  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@338,#321> push-argument
0000000099585E91  1393  52             push rdx
                  ;;; <@340,#323> push-argument
0000000099585E92  1394  ff75c8         push [rbp-0x38]
                  ;;; <@342,#325> push-argument
0000000099585E95  1397  ffb558ffffff   push [rbp-0xa8]
                  ;;; <@344,#327> push-argument
0000000099585E9B  1403  50             push rax
                  ;;; <@346,#329> push-argument
0000000099585E9C  1404  ff75a0         push [rbp-0x60]
                  ;;; <@348,#330> call-function
0000000099585E9F  1407  e81ceaffff     call 00000000995848C0    ;; debug: position 7235
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099585EA4  1412  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@350,#331> lazy-bailout
                  ;;; <@352,#339> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099585EA8  1416  e8fd01e8ff     call 00000000994060AA    ;; soft deoptimization bailout 17
                  ;;; <@353,#339> gap
0000000099585EAD  1421  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@354,#340> add-i
0000000099585EB1  1425  83c001         addl rax,0x1
                  ;;; <@356,#345> gap
0000000099585EB4  1428  488b8d70ffffff REX.W movq rcx,[rbp-0x90]
0000000099585EBB  1435  488bd0         REX.W movq rdx,rax
0000000099585EBE  1438  488bd8         REX.W movq rbx,rax
0000000099585EC1  1441  488b45c0       REX.W movq rax,[rbp-0x40]
0000000099585EC5  1445  49b9814110f500000000 REX.W movq r9,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099585ECF  1455  49b8814110f500000000 REX.W movq r8,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099585ED9  1465  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@357,#345> goto
0000000099585EE3  1475  e954040000     jmp 2588  (000000009958633C)
                  ;;; <@358,#192> -------------------- B52 --------------------
0000000099585EE8  1480  488bc3         REX.W movq rax,rbx
                  ;;; <@362,#358> -------------------- B53 --------------------
                  ;;; <@363,#358> gap
0000000099585EEB  1483  488bd8         REX.W movq rbx,rax
                  ;;; <@364,#363> sub-i
0000000099585EEE  1486  83eb01         subl rbx,0x1
                  ;;; <@365,#363> gap
0000000099585EF1  1489  48899d50ffffff REX.W movq [rbp-0xb0],rbx
                  ;;; <@366,#369> add-i
0000000099585EF8  1496  8d5101         leal rdx,[rcx+0x1]
                  ;;; <@368,#371> push-argument
0000000099585EFB  1499  ff7510         push [rbp+0x10]
                  ;;; <@369,#371> gap
0000000099585EFE  1502  488b4db8       REX.W movq rcx,[rbp-0x48]
                  ;;; <@370,#799> smi-tag
0000000099585F02  1506  48c1e120       REX.W shlq rcx,32
                  ;;; <@372,#372> push-argument
0000000099585F06  1510  51             push rcx
                  ;;; <@374,#810> smi-tag
0000000099585F07  1511  48c1e220       REX.W shlq rdx,32
                  ;;; <@376,#373> push-argument
0000000099585F0B  1515  52             push rdx
                  ;;; <@378,#374> call-named
0000000099585F0C  1516  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099585F16  1526  e84535f9ff     call 0000000099519460    ;; debug: position 7578
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099585F1B  1531  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@379,#374> gap
0000000099585F1F  1535  48898548ffffff REX.W movq [rbp-0xb8],rax
                  ;;; <@380,#375> lazy-bailout
                  ;;; <@381,#375> gap
0000000099585F26  1542  488b9d50ffffff REX.W movq rbx,[rbp-0xb0]
                  ;;; <@382,#380> add-i
0000000099585F2D  1549  83c301         addl rbx,0x1
                  ;;; <@384,#382> push-argument
0000000099585F30  1552  ff7510         push [rbp+0x10]
                  ;;; <@385,#382> gap
0000000099585F33  1555  488b55a8       REX.W movq rdx,[rbp-0x58]
                  ;;; <@386,#806> smi-tag
0000000099585F37  1559  48c1e220       REX.W shlq rdx,32
                  ;;; <@388,#383> push-argument
0000000099585F3B  1563  52             push rdx
                  ;;; <@390,#811> smi-tag
0000000099585F3C  1564  48c1e320       REX.W shlq rbx,32
                  ;;; <@392,#384> push-argument
0000000099585F40  1568  53             push rbx
                  ;;; <@394,#385> call-named
0000000099585F41  1569  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099585F4B  1579  e81035f9ff     call 0000000099519460    ;; debug: position 7635
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099585F50  1584  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@395,#385> gap
0000000099585F54  1588  48898550ffffff REX.W movq [rbp-0xb0],rax
                  ;;; <@396,#386> lazy-bailout
                  ;;; <@398,#389> gap
0000000099585F5B  1595  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@399,#389> branch
0000000099585F5F  1599  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585F63  1603  0f841b000000   jz 1636  (0000000099585F84)
0000000099585F69  1609  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585F6D  1613  0f8405000000   jz 1624  (0000000099585F78)
0000000099585F73  1619  e85001c8ff     call 00000000992060C8    ;; deoptimization bailout 20
                  ;;; <@404,#408> -------------------- B55 --------------------
                  ;;; <@406,#410> gap
0000000099585F78  1624  488b8548ffffff REX.W movq rax,[rbp-0xb8]
                  ;;; <@407,#410> goto
0000000099585F7F  1631  e920000000     jmp 1668  (0000000099585FA4)
                  ;;; <@412,#396> -------------------- B57 --------------------
                  ;;; <@413,#396> gap
0000000099585F84  1636  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@414,#397> load-context-slot
0000000099585F88  1640  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@416,#398> global-object
0000000099585F8C  1644  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@418,#399> global-receiver
0000000099585F90  1648  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@420,#400> push-argument
0000000099585F94  1652  51             push rcx
                  ;;; <@422,#402> push-argument
0000000099585F95  1653  ffb548ffffff   push [rbp-0xb8]
                  ;;; <@424,#403> call-function
0000000099585F9B  1659  e860cdffff     call 0000000099582D00    ;; debug: position 7701
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585FA0  1664  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@426,#404> lazy-bailout
                  ;;; <@430,#412> -------------------- B58 --------------------
0000000099585FA4  1668  48898540ffffff REX.W movq [rbp-0xc0],rax
                  ;;; <@432,#414> gap
0000000099585FAB  1675  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@433,#414> branch
0000000099585FAF  1679  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099585FB3  1683  0f8427000000   jz 1728  (0000000099585FE0)
0000000099585FB9  1689  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099585FBD  1693  0f8405000000   jz 1704  (0000000099585FC8)
0000000099585FC3  1699  e81401c8ff     call 00000000992060DC    ;; deoptimization bailout 22
                  ;;; <@438,#433> -------------------- B60 --------------------
                  ;;; <@439,#433> gap
0000000099585FC8  1704  488b9550ffffff REX.W movq rdx,[rbp-0xb0]
                  ;;; <@440,#812> check-smi
0000000099585FCF  1711  f6c201         testb rdx,0x1
0000000099585FD2  1714  0f85a2060000   jnz 3418  (000000009958667A)
                  ;;; <@442,#435> gap
0000000099585FD8  1720  488bc2         REX.W movq rax,rdx
                  ;;; <@443,#435> goto
0000000099585FDB  1723  e92f000000     jmp 1775  (000000009958600F)
                  ;;; <@448,#421> -------------------- B62 --------------------
                  ;;; <@449,#421> gap
0000000099585FE0  1728  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@450,#422> load-context-slot
0000000099585FE4  1732  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@452,#423> global-object
0000000099585FE8  1736  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@454,#424> global-receiver
0000000099585FEC  1740  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@456,#425> push-argument
0000000099585FF0  1744  51             push rcx
                  ;;; <@458,#427> push-argument
0000000099585FF1  1745  ffb550ffffff   push [rbp-0xb0]
                  ;;; <@460,#428> call-function
0000000099585FF7  1751  e804cdffff     call 0000000099582D00    ;; debug: position 7751
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099585FFC  1756  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@462,#429> lazy-bailout
                  ;;; <@463,#429> gap
0000000099586000  1760  488bd8         REX.W movq rbx,rax
                  ;;; <@464,#813> check-smi
0000000099586003  1763  f6c301         testb rbx,0x1
0000000099586006  1766  0f8573060000   jnz 3423  (000000009958667F)
                  ;;; <@466,#432> gap
000000009958600C  1772  488bc3         REX.W movq rax,rbx
                  ;;; <@468,#437> -------------------- B63 --------------------
000000009958600F  1775  48898538ffffff REX.W movq [rbp-0xc8],rax
                  ;;; <@469,#437> gap
0000000099586016  1782  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@470,#438> load-context-slot
000000009958601A  1786  488b938f000000 REX.W movq rdx,[rbx+0x8f]
                  ;;; <@471,#438> gap
0000000099586021  1793  48899530ffffff REX.W movq [rbp-0xd0],rdx
                  ;;; <@472,#439> global-object
0000000099586028  1800  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@474,#440> global-receiver
000000009958602C  1804  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@475,#440> gap
0000000099586030  1808  48898d28ffffff REX.W movq [rbp-0xd8],rcx
                  ;;; <@476,#445> check-function
0000000099586037  1815  49ba0861d0e400000000 REX.W movq r10,00000000E4D06108    ;; property cell
0000000099586041  1825  493b12         REX.W cmpq rdx,[r10]
0000000099586044  1828  0f853a060000   jnz 3428  (0000000099586684)
                  ;;; <@478,#449> gap
000000009958604A  1834  488b7da0       REX.W movq rdi,[rbp-0x60]
                  ;;; <@479,#449> cmp-object-eq-and-branch
000000009958604E  1838  49ba614110f500000000 REX.W movq r10,00000000F5104161    ;; object: 00000000F5104161 <true>
0000000099586058  1848  493bfa         REX.W cmpq rdi,r10
000000009958605B  1851  0f84ff010000   jz 2368  (0000000099586260)
                  ;;; <@484,#470> -------------------- B65 --------------------
                  ;;; <@486,#471> load-context-slot
0000000099586061  1857  4c8b437f       REX.W movq r8,[rbx+0x7f]
                  ;;; <@487,#471> gap
0000000099586065  1861  4c898520ffffff REX.W movq [rbp-0xe0],r8
                  ;;; <@488,#474> check-function
000000009958606C  1868  49ba1861d0e400000000 REX.W movq r10,00000000E4D06118    ;; property cell
0000000099586076  1878  4d3b02         REX.W cmpq r8,[r10]
0000000099586079  1881  0f850a060000   jnz 3433  (0000000099586689)
                  ;;; <@490,#477> load-context-slot
000000009958607F  1887  4c8b4b3f       REX.W movq r9,[rbx+0x3f]
                  ;;; <@492,#478> check-non-smi
0000000099586083  1891  41f6c101       testb r9,0x1
0000000099586087  1895  0f8401060000   jz 3438  (000000009958668E)
                  ;;; <@494,#479> check-maps
000000009958608D  1901  49ba7959a0df00000000 REX.W movq r10,00000000DFA05979    ;; object: 00000000DFA05979 <Map(elements=3)>
0000000099586097  1911  4d3951ff       REX.W cmpq [r9-0x1],r10
000000009958609B  1915  0f85f2050000   jnz 3443  (0000000099586693)
                  ;;; <@496,#480> push-argument
00000000995860A1  1921  4151           push r9
                  ;;; <@498,#481> push-argument
00000000995860A3  1923  ff75c8         push [rbp-0x38]
                  ;;; <@500,#482> push-argument
00000000995860A6  1926  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@502,#483> call-constant-function
00000000995860AC  1932  48bff9e615f500000000 REX.W movq rdi,00000000F515E6F9    ;; object: 00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>
00000000995860B6  1942  488b772f       REX.W movq rsi,[rdi+0x2f]
00000000995860BA  1946  b802000000     movl rax,0000000000000002
00000000995860BF  1951  33c9           xorl rcx,rcx
00000000995860C1  1953  ff5717         call [rdi+0x17]       ;; debug: position 4135
00000000995860C4  1956  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@504,#484> lazy-bailout
                  ;;; <@507,#485> branch
00000000995860C8  1960  493b45c0       REX.W cmpq rax,[r13-0x40]
00000000995860CC  1964  0f842b000000   jz 2013  (00000000995860FD)
00000000995860D2  1970  493b45c8       REX.W cmpq rax,[r13-0x38]
00000000995860D6  1974  0f8405000000   jz 1985  (00000000995860E1)
00000000995860DC  1980  e85500c8ff     call 0000000099206136    ;; deoptimization bailout 31
                  ;;; <@512,#542> -------------------- B67 --------------------
                  ;;; <@513,#542> gap
00000000995860E1  1985  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@514,#814> dummy-use
                  ;;; <@515,#814> gap
00000000995860E8  1992  488b55c8       REX.W movq rdx,[rbp-0x38]
00000000995860EC  1996  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@516,#543> store-keyed-generic
00000000995860F3  2003  e84872faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4377
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@518,#544> lazy-bailout
                  ;;; <@521,#549> goto
00000000995860F8  2008  e98e010000     jmp 2411  (000000009958628B)
                  ;;; <@526,#492> -------------------- B69 --------------------
                  ;;; <@527,#492> gap
00000000995860FD  2013  488b55c8       REX.W movq rdx,[rbp-0x38]
0000000099586101  2017  488b8540ffffff REX.W movq rax,[rbp-0xc0]
                  ;;; <@528,#493> load-keyed-generic
0000000099586108  2024  e89391f9ff     call KeyedLoadIC_Initialize  (000000009951F2A0)    ;; debug: position 4189
                                                             ;; code: KEYED_LOAD_IC, UNINITIALIZED
                  ;;; <@529,#493> gap
000000009958610D  2029  48898518ffffff REX.W movq [rbp-0xe8],rax
                  ;;; <@530,#494> lazy-bailout
                  ;;; <@531,#494> gap
0000000099586114  2036  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@532,#496> load-context-slot
0000000099586118  2040  488b7b37       REX.W movq rdi,[rbx+0x37]
                  ;;; <@534,#499> push-argument
000000009958611C  2044  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@536,#501> push-argument
0000000099586122  2050  50             push rax
                  ;;; <@538,#502> call-function
0000000099586123  2051  e8d8cbffff     call 0000000099582D00    ;; debug: position 4208
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586128  2056  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@540,#503> lazy-bailout
                  ;;; <@543,#504> branch
000000009958612C  2060  493b45a8       REX.W cmpq rax,[r13-0x58]
0000000099586130  2064  0f8484000000   jz 2202  (00000000995861BA)
0000000099586136  2070  493b45c0       REX.W cmpq rax,[r13-0x40]
000000009958613A  2074  0f84fa000000   jz 2330  (000000009958623A)
0000000099586140  2080  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099586144  2084  0f8470000000   jz 2202  (00000000995861BA)
000000009958614A  2090  493b45b8       REX.W cmpq rax,[r13-0x48]
000000009958614E  2094  0f8466000000   jz 2202  (00000000995861BA)
0000000099586154  2100  4885c0         REX.W testq rax,rax
0000000099586157  2103  0f845d000000   jz 2202  (00000000995861BA)
000000009958615D  2109  a801           test al,0x1
000000009958615F  2111  0f84d5000000   jz 2330  (000000009958623A)
0000000099586165  2117  4c8b50ff       REX.W movq r10,[rax-0x1]
0000000099586169  2121  41f6420d20     testb [r10+0xd],0x20
000000009958616E  2126  0f8546000000   jnz 2202  (00000000995861BA)
0000000099586174  2132  41807a0bad     cmpb [r10+0xb],0xad
0000000099586179  2137  0f83bb000000   jnc 2330  (000000009958623A)
000000009958617F  2143  41807a0b80     cmpb [r10+0xb],0x80
0000000099586184  2148  7310           jnc 2166  (0000000099586196)
0000000099586186  2150  4883780f00     REX.W cmpq [rax+0xf],0x0
000000009958618B  2155  0f85a9000000   jnz 2330  (000000009958623A)
0000000099586191  2161  e924000000     jmp 2202  (00000000995861BA)
0000000099586196  2166  41807a0b80     cmpb [r10+0xb],0x80
000000009958619B  2171  0f8499000000   jz 2330  (000000009958623A)
00000000995861A1  2177  4d3b55f8       REX.W cmpq r10,[r13-0x8]
00000000995861A5  2181  7513           jnz 2202  (00000000995861BA)
00000000995861A7  2183  0f57c0         xorps xmm0, xmm0
00000000995861AA  2186  660f2e4007     ucomisd xmm0,[rax+0x7]
00000000995861AF  2191  0f8405000000   jz 2202  (00000000995861BA)
00000000995861B5  2197  e980000000     jmp 2330  (000000009958623A)
                  ;;; <@548,#517> -------------------- B71 --------------------
                  ;;; <@550,#519> push-argument
00000000995861BA  2202  49ba2861d0e400000000 REX.W movq r10,00000000E4D06128    ;; property cell
00000000995861C4  2212  4d8b12         REX.W movq r10,[r10]
00000000995861C7  2215  4152           push r10
                  ;;; <@552,#521> push-argument
00000000995861C9  2217  4154           push r12
                  ;;; <@554,#523> push-argument
00000000995861CB  2219  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
00000000995861D5  2229  4152           push r10
                  ;;; <@556,#524> call-runtime
00000000995861D7  2231  b803000000     movl rax,0000000000000003
00000000995861DC  2236  48bbd09ed03f01000000 REX.W movq rbx,000000013FD09ED0
00000000995861E6  2246  e8b510f8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@558,#525> check-maps
00000000995861EB  2251  49bad15ea0df00000000 REX.W movq r10,00000000DFA05ED1    ;; object: 00000000DFA05ED1 <Map(elements=0)>
00000000995861F5  2261  4c3950ff       REX.W cmpq [rax-0x1],r10
00000000995861F9  2265  0f8599040000   jnz 3448  (0000000099586698)
                  ;;; <@560,#528> load-named-field
00000000995861FF  2271  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@561,#528> gap
0000000099586203  2275  488b9518ffffff REX.W movq rdx,[rbp-0xe8]
                  ;;; <@562,#817> check-smi
000000009958620A  2282  f6c201         testb rdx,0x1
000000009958620D  2285  0f858a040000   jnz 3453  (000000009958669D)
                  ;;; <@563,#817> gap
0000000099586213  2291  488bcb         REX.W movq rcx,rbx
                  ;;; <@564,#530> store-keyed
0000000099586216  2294  4889510f       REX.W movq [rcx+0xf],rdx
                  ;;; <@565,#530> gap
000000009958621A  2298  488bbd38ffffff REX.W movq rdi,[rbp-0xc8]
                  ;;; <@566,#534> store-keyed
0000000099586221  2305  48897b17       REX.W movq [rbx+0x17],rdi
                  ;;; <@567,#534> gap
0000000099586225  2309  488b55c8       REX.W movq rdx,[rbp-0x38]
0000000099586229  2313  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@568,#536> store-keyed-generic
0000000099586230  2320  e80b71faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4309
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@570,#540> lazy-bailout
                  ;;; <@573,#541> goto
0000000099586235  2325  e951000000     jmp 2411  (000000009958628B)
                  ;;; <@578,#511> -------------------- B73 --------------------
                  ;;; <@580,#513> push-argument
000000009958623A  2330  ffb518ffffff   push [rbp-0xe8]
                  ;;; <@581,#513> gap
0000000099586240  2336  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@582,#815> dummy-use
                  ;;; <@584,#514> push-argument
0000000099586247  2343  50             push rax
                  ;;; <@586,#515> call-named
0000000099586248  2344  48b90947e1fc00000000 REX.W movq rcx,00000000FCE14709    ;; object: 00000000FCE14709 <String[4]: push>
0000000099586252  2354  e8094df9ff     call 000000009951AF60    ;; debug: position 4243
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 1
0000000099586257  2359  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@588,#516> lazy-bailout
                  ;;; <@591,#539> goto
000000009958625B  2363  e92b000000     jmp 2411  (000000009958628B)
                  ;;; <@608,#456> -------------------- B78 --------------------
                  ;;; <@609,#456> gap
0000000099586260  2368  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@610,#457> load-context-slot
0000000099586264  2372  488bb887000000 REX.W movq rdi,[rax+0x87]
                  ;;; <@612,#460> push-argument
000000009958626B  2379  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@614,#461> push-argument
0000000099586271  2385  ff75c8         push [rbp-0x38]
                  ;;; <@616,#462> push-argument
0000000099586274  2388  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@617,#462> gap
000000009958627A  2394  488b9d38ffffff REX.W movq rbx,[rbp-0xc8]
                  ;;; <@618,#816> dummy-use
                  ;;; <@620,#463> push-argument
0000000099586281  2401  53             push rbx
                  ;;; <@622,#464> call-function
0000000099586282  2402  e879cbffff     call 0000000099582E00    ;; debug: position 5383
                                                             ;; code: STUB, CallFunctionStub, argc = 3
0000000099586287  2407  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@624,#465> lazy-bailout
                  ;;; <@628,#559> -------------------- B79 --------------------
                  ;;; <@629,#559> gap
000000009958628B  2411  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@630,#567> add-i
000000009958628F  2415  83c001         addl rax,0x1
0000000099586292  2418  0f800a040000   jo 3458  (00000000995866A2)
                  ;;; <@632,#601> gap
0000000099586298  2424  488b5d88       REX.W movq rbx,[rbp-0x78]
000000009958629C  2428  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995862A6  2438  48b9814110f500000000 REX.W movq rcx,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995862B0  2448  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@634,#625> -------------------- B80 --------------------
                  ;;; <@636,#627> gap
00000000995862BA  2458  4c8bc7         REX.W movq r8,rdi
00000000995862BD  2461  488bf9         REX.W movq rdi,rcx
00000000995862C0  2464  488bca         REX.W movq rcx,rdx
00000000995862C3  2467  488bd3         REX.W movq rdx,rbx
00000000995862C6  2470  488bd8         REX.W movq rbx,rax
00000000995862C9  2473  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@637,#627> goto
00000000995862CD  2477  e924000000     jmp 2518  (00000000995862F6)
                  ;;; <@638,#118> -------------------- B81 --------------------
00000000995862D2  2482  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@642,#124> -------------------- B82 --------------------
                  ;;; <@643,#124> gap
00000000995862D6  2486  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@644,#129> add-i
00000000995862DA  2490  83c0ff         addl rax,0xff
                  ;;; <@646,#624> gap
00000000995862DD  2493  4c8b45d8       REX.W movq r8,[rbp-0x28]
00000000995862E1  2497  488b7de0       REX.W movq rdi,[rbp-0x20]
00000000995862E5  2501  488bd3         REX.W movq rdx,rbx
00000000995862E8  2504  488b5db8       REX.W movq rbx,[rbp-0x48]
00000000995862EC  2508  48b9614110f500000000 REX.W movq rcx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@648,#648> -------------------- B83 --------------------
                  ;;; <@650,#650> gap
00000000995862F6  2518  4892           REX.W xchgq rax, rdx
00000000995862F8  2520  4893           REX.W xchgq rax, rbx
                  ;;; <@651,#650> goto
00000000995862FA  2522  e922000000     jmp 2561  (0000000099586321)
                  ;;; <@652,#90> -------------------- B84 --------------------
00000000995862FF  2527  498bdf         REX.W movq rbx,r15
0000000099586302  2530  498bc3         REX.W movq rax,r11
                  ;;; <@656,#96> -------------------- B85 --------------------
                  ;;; <@657,#96> gap
0000000099586305  2533  488bd0         REX.W movq rdx,rax
                  ;;; <@658,#99> add-i
0000000099586308  2536  83c201         addl rdx,0x1
000000009958630B  2539  0f8096030000   jo 3463  (00000000995866A7)
                  ;;; <@660,#647> gap
0000000099586311  2545  4c8b45d8       REX.W movq r8,[rbp-0x28]
0000000099586315  2549  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099586319  2553  488b4da0       REX.W movq rcx,[rbp-0x60]
000000009958631D  2557  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@662,#669> -------------------- B86 --------------------
                  ;;; <@663,#669> gap
0000000099586321  2561  4c8bcb         REX.W movq r9,rbx
                  ;;; <@664,#672> add-i
0000000099586324  2564  4183c101       addl r9,0x1
0000000099586328  2568  0f807e030000   jo 3468  (00000000995866AC)
                  ;;; <@666,#676> gap
000000009958632E  2574  4987f8         REX.W xchgq rdi,r8
0000000099586331  2577  4887cf         REX.W xchgq rcx,rdi
0000000099586334  2580  4887d9         REX.W xchgq rbx,rcx
0000000099586337  2583  4c87cb         REX.W xchgq r9,rbx
000000009958633A  2586  4892           REX.W xchgq rax, rdx
                  ;;; <@668,#695> -------------------- B87 --------------------
                  ;;; <@669,#695> gap
000000009958633C  2588  4c8bd9         REX.W movq r11,rcx
                  ;;; <@670,#697> add-i
000000009958633F  2591  4183c301       addl r11,0x1
0000000099586343  2595  0f8068030000   jo 3473  (00000000995866B1)
                  ;;; <@672,#700> gap
0000000099586349  2601  4c894dd8       REX.W movq [rbp-0x28],r9
000000009958634D  2605  4c8945e0       REX.W movq [rbp-0x20],r8
0000000099586351  2609  4c8bf2         REX.W movq r14,rdx
0000000099586354  2612  488bd7         REX.W movq rdx,rdi
0000000099586357  2615  4d8bfb         REX.W movq r15,r11
000000009958635A  2618  4c8bd8         REX.W movq r11,rax
000000009958635D  2621  488bc3         REX.W movq rax,rbx
0000000099586360  2624  488b4d10       REX.W movq rcx,[rbp+0x10]
0000000099586364  2628  4c8b45c8       REX.W movq r8,[rbp-0x38]
0000000099586368  2632  4c8b4d98       REX.W movq r9,[rbp-0x68]
                  ;;; <@673,#700> goto
000000009958636C  2636  e9a8f6ffff     jmp 249  (0000000099585A19)
                  ;;; <@678,#701> -------------------- B89 --------------------
                  ;;; <@681,#704> compare-numeric-and-branch
0000000099586371  2641  3b45b8         cmpl rax,[rbp-0x48]
0000000099586374  2644  0f8402010000   jz 2908  (000000009958647C)
                  ;;; <@686,#711> -------------------- B91 --------------------
                  ;;; <@688,#716> push-argument
000000009958637A  2650  ff7510         push [rbp+0x10]
                  ;;; <@689,#716> gap
000000009958637D  2653  488b5db8       REX.W movq rbx,[rbp-0x48]
                  ;;; <@690,#800> smi-tag
0000000099586381  2657  48c1e320       REX.W shlq rbx,32
                  ;;; <@692,#717> push-argument
0000000099586385  2661  53             push rbx
                  ;;; <@694,#801> smi-tag
0000000099586386  2662  48c1e020       REX.W shlq rax,32
                  ;;; <@696,#718> push-argument
000000009958638A  2666  50             push rax
                  ;;; <@698,#719> call-named
000000009958638B  2667  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099586395  2677  e8c630f9ff     call 0000000099519460    ;; debug: position 8153
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
000000009958639A  2682  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@700,#720> lazy-bailout
                  ;;; <@702,#723> gap
000000009958639E  2686  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@703,#723> branch
00000000995863A2  2690  493b5da8       REX.W cmpq rbx,[r13-0x58]
00000000995863A6  2694  0f84a0000000   jz 2860  (000000009958644C)
00000000995863AC  2700  493b5dc0       REX.W cmpq rbx,[r13-0x40]
00000000995863B0  2704  0f847b000000   jz 2833  (0000000099586431)
00000000995863B6  2710  493b5dc8       REX.W cmpq rbx,[r13-0x38]
00000000995863BA  2714  0f848c000000   jz 2860  (000000009958644C)
00000000995863C0  2720  493b5db8       REX.W cmpq rbx,[r13-0x48]
00000000995863C4  2724  0f8482000000   jz 2860  (000000009958644C)
00000000995863CA  2730  4885db         REX.W testq rbx,rbx
00000000995863CD  2733  0f8479000000   jz 2860  (000000009958644C)
00000000995863D3  2739  f6c301         testb rbx,0x1
00000000995863D6  2742  0f8455000000   jz 2833  (0000000099586431)
00000000995863DC  2748  4c8b53ff       REX.W movq r10,[rbx-0x1]
00000000995863E0  2752  41f6420d20     testb [r10+0xd],0x20
00000000995863E5  2757  0f8561000000   jnz 2860  (000000009958644C)
00000000995863EB  2763  41807a0bad     cmpb [r10+0xb],0xad
00000000995863F0  2768  0f833b000000   jnc 2833  (0000000099586431)
00000000995863F6  2774  41807a0b80     cmpb [r10+0xb],0x80
00000000995863FB  2779  7310           jnc 2797  (000000009958640D)
00000000995863FD  2781  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099586402  2786  0f8529000000   jnz 2833  (0000000099586431)
0000000099586408  2792  e93f000000     jmp 2860  (000000009958644C)
000000009958640D  2797  41807a0b80     cmpb [r10+0xb],0x80
0000000099586412  2802  0f8419000000   jz 2833  (0000000099586431)
0000000099586418  2808  4d3b55f8       REX.W cmpq r10,[r13-0x8]
000000009958641C  2812  7513           jnz 2833  (0000000099586431)
000000009958641E  2814  0f57c0         xorps xmm0, xmm0
0000000099586421  2817  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099586426  2822  0f8420000000   jz 2860  (000000009958644C)
000000009958642C  2828  e900000000     jmp 2833  (0000000099586431)
                  ;;; <@716,#730> -------------------- B95 --------------------
                  ;;; <@717,#730> gap
0000000099586431  2833  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@718,#731> load-context-slot
0000000099586435  2837  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@720,#732> global-object
0000000099586439  2841  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@722,#733> global-receiver
000000009958643D  2845  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@724,#734> push-argument
0000000099586441  2849  51             push rcx
                  ;;; <@726,#736> push-argument
0000000099586442  2850  50             push rax
                  ;;; <@728,#737> call-function
0000000099586443  2851  e8b8c8ffff     call 0000000099582D00    ;; debug: position 8207
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586448  2856  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@730,#738> lazy-bailout
                  ;;; <@734,#746> -------------------- B96 --------------------
                  ;;; <@735,#746> gap
000000009958644C  2860  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@736,#747> load-context-slot
0000000099586450  2864  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@738,#748> global-object
0000000099586457  2871  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@740,#749> global-receiver
000000009958645B  2875  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@742,#750> push-argument
000000009958645F  2879  52             push rdx
                  ;;; <@744,#752> push-argument
0000000099586460  2880  ff75c8         push [rbp-0x38]
                  ;;; <@746,#754> push-argument
0000000099586463  2883  50             push rax
                  ;;; <@748,#756> push-argument
0000000099586464  2884  49bac160e0fc00000000 REX.W movq r10,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
000000009958646E  2894  4152           push r10
                  ;;; <@750,#758> push-argument
0000000099586470  2896  ff75a0         push [rbp-0x60]
                  ;;; <@752,#759> call-function
0000000099586473  2899  e848e4ffff     call 00000000995848C0    ;; debug: position 8228
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099586478  2904  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@754,#760> lazy-bailout
                  ;;; <@766,#768> -------------------- B99 --------------------
                  ;;; <@767,#768> gap
000000009958647C  2908  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@768,#769> load-context-slot
0000000099586480  2912  488b586f       REX.W movq rbx,[rax+0x6f]
                  ;;; <@771,#770> branch
0000000099586484  2916  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099586488  2920  0f840f000000   jz 2941  (000000009958649D)
000000009958648E  2926  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099586492  2930  0f8421000000   jz 2969  (00000000995864B9)
0000000099586498  2936  e839fdc7ff     call 00000000992061D6    ;; deoptimization bailout 47
                  ;;; <@784,#777> -------------------- B103 --------------------
                  ;;; <@786,#778> load-context-slot
000000009958649D  2941  488bb897000000 REX.W movq rdi,[rax+0x97]
                  ;;; <@788,#779> global-object
00000000995864A4  2948  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@790,#780> global-receiver
00000000995864A8  2952  488b402f       REX.W movq rax,[rax+0x2f]
                  ;;; <@792,#781> push-argument
00000000995864AC  2956  50             push rax
                  ;;; <@794,#783> push-argument
00000000995864AD  2957  ff75c8         push [rbp-0x38]
                  ;;; <@796,#784> call-function
00000000995864B0  2960  e84bc8ffff     call 0000000099582D00    ;; debug: position 8322
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995864B5  2965  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@798,#785> lazy-bailout
                  ;;; <@802,#791> -------------------- B104 --------------------
                  ;;; <@803,#791> gap
00000000995864B9  2969  488b45c8       REX.W movq rax,[rbp-0x38]
                  ;;; <@804,#794> return
00000000995864BD  2973  488be5         REX.W movq rsp,rbp
00000000995864C0  2976  5d             pop rbp
00000000995864C1  2977  c21000         ret 0x10
00000000995864C4  2980  6690           nop
                  ;;; <@24,#28> -------------------- Deferred allocate --------------------
00000000995864C6  2982  4533c0         xorl r8,r8
00000000995864C9  2985  50             push rax
00000000995864CA  2986  51             push rcx
00000000995864CB  2987  52             push rdx
00000000995864CC  2988  53             push rbx
00000000995864CD  2989  56             push rsi
00000000995864CE  2990  57             push rdi
00000000995864CF  2991  4150           push r8
00000000995864D1  2993  4151           push r9
00000000995864D3  2995  4153           push r11
00000000995864D5  2997  4156           push r14
00000000995864D7  2999  4157           push r15
00000000995864D9  3001  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995864DE  3006  49ba0000000018000000 REX.W movq r10,0000001800000000
00000000995864E8  3016  4152           push r10
00000000995864EA  3018  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995864EE  3022  b801000000     movl rax,0000000000000001
00000000995864F3  3027  48bba0c9d43f01000000 REX.W movq rbx,000000013FD4C9A0
00000000995864FD  3037  e89e05f8ff     call 0000000099506AA0    ;; debug: position 6157
                                                             ;; code: STUB, CEntryStub, minor: 1
0000000099586502  3042  4889442448     REX.W movq [rsp+0x48],rax
0000000099586507  3047  488d642428     REX.W leaq rsp,[rsp+0x28]
000000009958650C  3052  415f           pop r15
000000009958650E  3054  415e           pop r14
0000000099586510  3056  415b           pop r11
0000000099586512  3058  4159           pop r9
0000000099586514  3060  4158           pop r8
0000000099586516  3062  5f             pop rdi
0000000099586517  3063  5e             pop rsi
0000000099586518  3064  5b             pop rbx
0000000099586519  3065  5a             pop rdx
000000009958651A  3066  59             pop rcx
000000009958651B  3067  58             pop rax
000000009958651C  3068  e97ff4ffff     jmp 128  (00000000995859A0)
                  ;;; <@48,#79> -------------------- Deferred stack-check --------------------
0000000099586521  3073  50             push rax
0000000099586522  3074  51             push rcx
0000000099586523  3075  52             push rdx
0000000099586524  3076  53             push rbx
0000000099586525  3077  56             push rsi
0000000099586526  3078  57             push rdi
0000000099586527  3079  4150           push r8
0000000099586529  3081  4151           push r9
000000009958652B  3083  4153           push r11
000000009958652D  3085  4156           push r14
000000009958652F  3087  4157           push r15
0000000099586531  3089  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099586536  3094  488b75f8       REX.W movq rsi,[rbp-0x8]
000000009958653A  3098  33c0           xorl rax,rax
000000009958653C  3100  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
0000000099586546  3110  e85505f8ff     call 0000000099506AA0    ;; debug: position 6336
                                                             ;; code: STUB, CEntryStub, minor: 1
000000009958654B  3115  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099586550  3120  415f           pop r15
0000000099586552  3122  415e           pop r14
0000000099586554  3124  415b           pop r11
0000000099586556  3126  4159           pop r9
0000000099586558  3128  4158           pop r8
000000009958655A  3130  5f             pop rdi
000000009958655B  3131  5e             pop rsi
000000009958655C  3132  5b             pop rbx
000000009958655D  3133  5a             pop rdx
000000009958655E  3134  59             pop rcx
000000009958655F  3135  58             pop rax
0000000099586560  3136  e9d7f4ffff     jmp 284  (0000000099585A3C)
                  ;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------
0000000099586565  3141  33ff           xorl rdi,rdi
0000000099586567  3143  50             push rax
0000000099586568  3144  51             push rcx
0000000099586569  3145  52             push rdx
000000009958656A  3146  53             push rbx
000000009958656B  3147  56             push rsi
000000009958656C  3148  57             push rdi
000000009958656D  3149  4150           push r8
000000009958656F  3151  4151           push r9
0000000099586571  3153  4153           push r11
0000000099586573  3155  4156           push r14
0000000099586575  3157  4157           push r15
0000000099586577  3159  488d6424d8     REX.W leaq rsp,[rsp-0x28]
000000009958657C  3164  51             push rcx
000000009958657D  3165  48c1e320       REX.W shlq rbx,32
0000000099586581  3169  53             push rbx
0000000099586582  3170  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099586586  3174  b802000000     movl rax,0000000000000002
000000009958658B  3179  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
0000000099586595  3189  e80605f8ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
000000009958659A  3194  48c1e820       REX.W shrq rax,32
000000009958659E  3198  4889442450     REX.W movq [rsp+0x50],rax
00000000995865A3  3203  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995865A8  3208  415f           pop r15
00000000995865AA  3210  415e           pop r14
00000000995865AC  3212  415b           pop r11
00000000995865AE  3214  4159           pop r9
00000000995865B0  3216  4158           pop r8
00000000995865B2  3218  5f             pop rdi
00000000995865B3  3219  5e             pop rsi
00000000995865B4  3220  5b             pop rbx
00000000995865B5  3221  5a             pop rdx
00000000995865B6  3222  59             pop rcx
00000000995865B7  3223  58             pop rax
00000000995865B8  3224  e90cf5ffff     jmp 425  (0000000099585AC9)
                  ;;; <@172,#197> -------------------- Deferred stack-check --------------------
00000000995865BD  3229  50             push rax
00000000995865BE  3230  51             push rcx
00000000995865BF  3231  52             push rdx
00000000995865C0  3232  53             push rbx
00000000995865C1  3233  56             push rsi
00000000995865C2  3234  57             push rdi
00000000995865C3  3235  4150           push r8
00000000995865C5  3237  4151           push r9
00000000995865C7  3239  4153           push r11
00000000995865C9  3241  4156           push r14
00000000995865CB  3243  4157           push r15
00000000995865CD  3245  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995865D2  3250  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995865D6  3254  33c0           xorl rax,rax
00000000995865D8  3256  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
00000000995865E2  3266  e8b904f8ff     call 0000000099506AA0    ;; debug: position 6707
                                                             ;; code: STUB, CEntryStub, minor: 1
00000000995865E7  3271  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995865EC  3276  415f           pop r15
00000000995865EE  3278  415e           pop r14
00000000995865F0  3280  415b           pop r11
00000000995865F2  3282  4159           pop r9
00000000995865F4  3284  4158           pop r8
00000000995865F6  3286  5f             pop rdi
00000000995865F7  3287  5e             pop rsi
00000000995865F8  3288  5b             pop rbx
00000000995865F9  3289  5a             pop rdx
00000000995865FA  3290  59             pop rcx
00000000995865FB  3291  58             pop rax
00000000995865FC  3292  e9b2f5ffff     jmp 659  (0000000099585BB3)
                  ;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------
0000000099586601  3297  4533db         xorl r11,r11
0000000099586604  3300  50             push rax
0000000099586605  3301  51             push rcx
0000000099586606  3302  52             push rdx
0000000099586607  3303  53             push rbx
0000000099586608  3304  56             push rsi
0000000099586609  3305  57             push rdi
000000009958660A  3306  4150           push r8
000000009958660C  3308  4151           push r9
000000009958660E  3310  4153           push r11
0000000099586610  3312  4156           push r14
0000000099586612  3314  4157           push r15
0000000099586614  3316  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099586619  3321  4151           push r9
000000009958661B  3323  49c1e020       REX.W shlq r8,32
000000009958661F  3327  4150           push r8
0000000099586621  3329  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099586625  3333  b802000000     movl rax,0000000000000002
000000009958662A  3338  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
0000000099586634  3348  e86704f8ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
0000000099586639  3353  48c1e820       REX.W shrq rax,32
000000009958663D  3357  4889442438     REX.W movq [rsp+0x38],rax
0000000099586642  3362  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099586647  3367  415f           pop r15
0000000099586649  3369  415e           pop r14
000000009958664B  3371  415b           pop r11
000000009958664D  3373  4159           pop r9
000000009958664F  3375  4158           pop r8
0000000099586651  3377  5f             pop rdi
0000000099586652  3378  5e             pop rsi
0000000099586653  3379  5b             pop rbx
0000000099586654  3380  5a             pop rdx
0000000099586655  3381  59             pop rcx
0000000099586656  3382  58             pop rax
0000000099586657  3383  e9e4f5ffff     jmp 800  (0000000099585C40)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
000000009958665C  3388  e8a9f9c7ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
0000000099586661  3393  e8aef9c7ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 4.
0000000099586666  3398  e8bdf9c7ff     call 0000000099206028    ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 7.
000000009958666B  3403  e8d6f9c7ff     call 0000000099206046    ;; deoptimization bailout 7
                  ;;; jump table entry 4: deoptimization bailout 9.
0000000099586670  3408  e8e5f9c7ff     call 000000009920605A    ;; deoptimization bailout 9
                  ;;; jump table entry 5: deoptimization bailout 11.
0000000099586675  3413  e8f4f9c7ff     call 000000009920606E    ;; deoptimization bailout 11
                  ;;; jump table entry 6: deoptimization bailout 23.
000000009958667A  3418  e867fac7ff     call 00000000992060E6    ;; deoptimization bailout 23
                  ;;; jump table entry 7: deoptimization bailout 25.
000000009958667F  3423  e876fac7ff     call 00000000992060FA    ;; deoptimization bailout 25
                  ;;; jump table entry 8: deoptimization bailout 26.
0000000099586684  3428  e87bfac7ff     call 0000000099206104    ;; deoptimization bailout 26
                  ;;; jump table entry 9: deoptimization bailout 27.
0000000099586689  3433  e880fac7ff     call 000000009920610E    ;; deoptimization bailout 27
                  ;;; jump table entry 10: deoptimization bailout 28.
000000009958668E  3438  e885fac7ff     call 0000000099206118    ;; deoptimization bailout 28
                  ;;; jump table entry 11: deoptimization bailout 29.
0000000099586693  3443  e88afac7ff     call 0000000099206122    ;; deoptimization bailout 29
                  ;;; jump table entry 12: deoptimization bailout 35.
0000000099586698  3448  e8c1fac7ff     call 000000009920615E    ;; deoptimization bailout 35
                  ;;; jump table entry 13: deoptimization bailout 36.
000000009958669D  3453  e8c6fac7ff     call 0000000099206168    ;; deoptimization bailout 36
                  ;;; jump table entry 14: deoptimization bailout 40.
00000000995866A2  3458  e8e9fac7ff     call 0000000099206190    ;; deoptimization bailout 40
                  ;;; jump table entry 15: deoptimization bailout 41.
00000000995866A7  3463  e8eefac7ff     call 000000009920619A    ;; deoptimization bailout 41
                  ;;; jump table entry 16: deoptimization bailout 42.
00000000995866AC  3468  e8f3fac7ff     call 00000000992061A4    ;; deoptimization bailout 42
                  ;;; jump table entry 17: deoptimization bailout 43.
00000000995866B1  3473  e8f8fac7ff     call 00000000992061AE    ;; deoptimization bailout 43
00000000995866B6  3478  6690           nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 49)
 index  ast id    argc     pc             
     0       3       0     31
     1      10       0     -1
     2      10       0     -1
     3     143       0    284
     4     143       0     -1
     5     207       0     -1
     6     203       0    496
     7     248       0     -1
     8     284       0    659
     9     284       0     -1
    10     507       0     -1
    11     507       0     -1
    12     387       0    932
    13     415       0    985
    14     431       0   1176
    15     448       0   1374
    16     467       0   1416
    17     467       0     -1
    18     551       0   1542
    19     579       0   1595
    20     579       0     -1
    21     595       0   1668
    22     601       0     -1
    23     618       0     -1
    24     612       0   1760
    25     618       0     -1
    26     618       0     -1
    27      27       0     -1
    28       2       0     -1
    29       2       0     -1
    30      15       0   1960
    31      15       0     -1
    32      93       0   2008
    33      28       0   2036
    34      40       0   2060
    35      79       0     -1
    36      79       0     -1
    37      77       0   2325
    38      54       0   2363
    39      20       0   2411
    40     631       0     -1
    41     704       0     -1
    42     703       0     -1
    43     142       0     -1
    44     756       0   2686
    45     772       0   2860
    46     791       0   2908
    47     794       0     -1
    48     805       0   2969

Safepoints (size = 400)
000000009958593F    31  000000000000000000000000001 (sp -> fp)       0
0000000099585B00   480  000000000000000001000010111 (sp -> fp)       6
0000000099585CB9   921  000000000000010001000010101 (sp -> fp)      12
0000000099585CEE   974  000000000010010001000010101 (sp -> fp)      13
0000000099585DB4  1172  000000000100010001000010101 (sp -> fp)      14
0000000099585E7A  1370  000000001000010001000010101 (sp -> fp)      15
0000000099585EA4  1412  000000000000010000000010101 (sp -> fp)      16
0000000099585F1B  1531  000000000000010001000010101 (sp -> fp)      18
0000000099585F50  1584  000000100000010001000010101 (sp -> fp)      19
0000000099585FA0  1664  000000010000010001000010101 (sp -> fp)      21
0000000099585FFC  1756  000001000000010001000010101 (sp -> fp)      24
00000000995860C4  1956  011101000000010001000010101 (sp -> fp)      30
00000000995860F8  2008  011101000000010001000010101 (sp -> fp)      32
000000009958610D  2029  011101000000010001000010101 (sp -> fp)      33
0000000099586128  2056  111101000000010001000010101 (sp -> fp)      34
00000000995861EB  2251  111101000000010001000010101 (sp -> fp)      37
0000000099586235  2325  011101000000010001000010101 (sp -> fp)      37
0000000099586257  2359  011101000000010001000010101 (sp -> fp)      38
0000000099586287  2407  001101000000010001000010101 (sp -> fp)      39
000000009958639A  2682  000000000000000001000010101 (sp -> fp)      44
0000000099586448  2856  000000000000000001000010101 (sp -> fp)      45
0000000099586478  2904  000000000000000000000010101 (sp -> fp)      46
00000000995864B5  2965  000000000000000000000010100 (sp -> fp)      48
0000000099586502  3042  000000000000000000000000001 | rcx | rbx | rsi | r8 (sp -> fp)  <none> argc: 1
000000009958654B  3115  000000000000000001000010111 | rcx | rdx | rsi | r8 (sp -> fp)       3
000000009958659A  3194  000000000000000001000010111 | rdx | rsi | r8 (sp -> fp)  <none> argc: 2
00000000995865E7  3271  000000000000010001000010101 | rsi | rdi (sp -> fp)       8
0000000099586639  3353  000000000000010001000010101 | rsi | rdi (sp -> fp)  <none> argc: 2

RelocInfo (size = 4767)
000000009958592D  comment  (;;; <@0,#0> -------------------- B0 --------------------)
000000009958592D  comment  (;;; <@2,#1> context)
0000000099585930  comment  (;;; <@3,#1> gap)
0000000099585934  comment  (;;; <@10,#8> -------------------- B1 --------------------)
0000000099585934  comment  (;;; <@12,#10> stack-check)
000000009958593B  code target (STUB)  (0000000099515D80)
000000009958593F  comment  (;;; <@14,#11> constant-t)
0000000099585941  embedded object  (00000000F5104181 <false>)
0000000099585949  comment  (;;; <@15,#11> gap)
000000009958594D  comment  (;;; <@16,#12> store-context-slot)
0000000099585951  comment  (;;; <@17,#12> gap)
0000000099585955  comment  (;;; <@18,#21> check-non-smi)
000000009958595E  comment  (;;; <@20,#22> check-instance-type)
000000009958596D  comment  (;;; <@22,#23> load-named-field)
0000000099585971  comment  (;;; <@23,#23> gap)
0000000099585975  comment  (;;; <@24,#28> allocate)
00000000995859A0  comment  (;;; <@25,#28> gap)
00000000995859A4  comment  (;;; <@26,#29> sub-allocated-object)
00000000995859A7  comment  (;;; <@28,#31> store-named-field)
00000000995859A9  embedded object  (00000000DFA06CE1 <Map(elements=3)>)
00000000995859B5  comment  (;;; <@30,#33> store-named-field)
00000000995859B7  embedded object  (00000000FCE04139 <FixedArray[0]>)
00000000995859C3  comment  (;;; <@32,#35> store-named-field)
00000000995859C5  embedded object  (00000000FCE04139 <FixedArray[0]>)
00000000995859D1  comment  (;;; <@33,#35> gap)
00000000995859D4  comment  (;;; <@34,#796> smi-untag)
00000000995859D8  comment  (;;; <@35,#796> gap)
00000000995859DC  comment  (;;; <@36,#66> gap)
00000000995859DE  embedded object  (00000000F5104181 <false>)
00000000995859EC  embedded object  (00000000F5104181 <false>)
00000000995859FA  embedded object  (00000000F5104181 <false>)
0000000099585A19  comment  (;;; <@38,#67> -------------------- B2 (loop header) --------------------)
0000000099585A29  comment  (;;; <@41,#70> compare-numeric-and-branch)
0000000099585A32  comment  (;;; <@46,#77> -------------------- B4 --------------------)
0000000099585A32  comment  (;;; <@48,#79> stack-check)
0000000099585A3C  comment  (;;; <@50,#83> load-named-field)
0000000099585A40  comment  (;;; <@52,#802> smi-untag)
0000000099585A44  comment  (;;; <@53,#802> gap)
0000000099585A48  comment  (;;; <@54,#84> bounds-check)
0000000099585A51  comment  (;;; <@55,#84> gap)
0000000099585A54  comment  (;;; <@56,#85> string-char-code-at)
0000000099585AC9  comment  (;;; <@57,#85> gap)
0000000099585ACD  comment  (;;; <@59,#89> compare-numeric-and-branch)
0000000099585AD6  comment  (;;; <@64,#101> -------------------- B6 --------------------)
0000000099585AD6  comment  (;;; <@67,#104> compare-numeric-and-branch)
0000000099585AE0  comment  (;;; <@76,#111> -------------------- B9 --------------------)
0000000099585AE0  comment  (;;; <@78,#114> deoptimize)
0000000099585AE0  comment  (;;; deoptimize: insufficient type feedback for combined type)
0000000099585AE0  position  (6463)
0000000099585AE1  runtime entry
0000000099585AE5  comment  (;;; <@79,#114> gap)
0000000099585AE8  comment  (;;; <@80,#803> smi-tag)
0000000099585AEC  comment  (;;; <@82,#804> constant-t)
0000000099585AF6  comment  (;;; <@83,#804> gap)
0000000099585AFB  comment  (;;; <@84,#115> cmp-t)
0000000099585AFB  position  (6473)
0000000099585AFC  code target (COMPARE_IC)  (000000009950E020)
0000000099585B10  comment  (;;; <@86,#116> lazy-bailout)
0000000099585B10  comment  (;;; <@89,#117> branch)
0000000099585B1A  comment  (;;; <@94,#131> -------------------- B11 --------------------)
0000000099585B1A  comment  (;;; <@96,#134> gap)
0000000099585B1E  comment  (;;; <@97,#134> compare-numeric-and-branch)
0000000099585B27  comment  (;;; <@98,#138> -------------------- B12 --------------------)
0000000099585B27  comment  (;;; <@100,#140> gap)
0000000099585B2B  comment  (;;; <@101,#140> goto)
0000000099585B30  comment  (;;; <@106,#141> -------------------- B14 --------------------)
0000000099585B30  comment  (;;; <@108,#144> gap)
0000000099585B34  comment  (;;; <@109,#144> compare-numeric-and-branch)
0000000099585B3D  comment  (;;; <@114,#571> -------------------- B16 --------------------)
0000000099585B3D  comment  (;;; <@117,#574> compare-numeric-and-branch)
0000000099585B46  comment  (;;; <@122,#581> -------------------- B18 --------------------)
0000000099585B46  comment  (;;; <@125,#584> compare-numeric-and-branch)
0000000099585B4F  comment  (;;; <@130,#596> -------------------- B20 --------------------)
0000000099585B4F  comment  (;;; <@132,#598> gap)
0000000099585B53  comment  (;;; <@133,#598> goto)
0000000099585B58  comment  (;;; <@142,#591> -------------------- B23 --------------------)
0000000099585B58  comment  (;;; <@144,#595> gap)
0000000099585B5A  embedded object  (00000000F5104161 <true>)
0000000099585B62  comment  (;;; <@146,#602> -------------------- B24 --------------------)
0000000099585B62  comment  (;;; <@148,#604> gap)
0000000099585B75  comment  (;;; <@149,#604> goto)
0000000099585B7A  comment  (;;; <@154,#151> -------------------- B26 --------------------)
0000000099585B7A  comment  (;;; <@155,#151> gap)
0000000099585B7E  comment  (;;; <@156,#154> add-i)
0000000099585B81  comment  (;;; <@157,#154> gap)
0000000099585B88  comment  (;;; <@158,#159> sub-i)
0000000099585B91  comment  (;;; <@160,#184> gap)
0000000099585B98  comment  (;;; <@162,#185> -------------------- B27 (loop header) --------------------)
0000000099585BA0  comment  (;;; <@165,#188> compare-numeric-and-branch)
0000000099585BA9  comment  (;;; <@170,#195> -------------------- B29 --------------------)
0000000099585BA9  comment  (;;; <@172,#197> stack-check)
0000000099585BB3  comment  (;;; <@174,#202> bounds-check)
0000000099585BBD  comment  (;;; <@175,#202> gap)
0000000099585BC4  comment  (;;; <@176,#203> string-char-code-at)
0000000099585C40  comment  (;;; <@177,#203> gap)
0000000099585C47  comment  (;;; <@179,#207> compare-numeric-and-branch)
0000000099585C51  comment  (;;; <@184,#214> -------------------- B31 --------------------)
0000000099585C51  comment  (;;; <@187,#217> compare-numeric-and-branch)
0000000099585C5B  comment  (;;; <@192,#227> -------------------- B33 --------------------)
0000000099585C5B  comment  (;;; <@195,#230> compare-numeric-and-branch)
0000000099585C6A  comment  (;;; <@212,#224> -------------------- B38 --------------------)
0000000099585C6A  comment  (;;; <@214,#347> gap)
0000000099585C6C  embedded object  (00000000F5104161 <true>)
0000000099585C74  comment  (;;; <@216,#352> -------------------- B39 --------------------)
0000000099585C74  comment  (;;; <@218,#354> add-i)
0000000099585C77  comment  (;;; <@221,#357> goto)
0000000099585C7C  comment  (;;; <@226,#237> -------------------- B41 --------------------)
0000000099585C7C  comment  (;;; <@228,#240> deoptimize)
0000000099585C7C  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099585C7C  position  (6894)
0000000099585C7D  runtime entry
0000000099585C81  comment  (;;; <@229,#240> gap)
0000000099585C84  comment  (;;; <@230,#241> sub-i)
0000000099585C8E  comment  (;;; <@231,#241> gap)
0000000099585C95  comment  (;;; <@232,#249> add-i)
0000000099585C98  comment  (;;; <@234,#251> push-argument)
0000000099585C9B  comment  (;;; <@235,#251> gap)
0000000099585C9F  comment  (;;; <@236,#798> smi-tag)
0000000099585CA3  comment  (;;; <@238,#252> push-argument)
0000000099585CA5  comment  (;;; <@240,#808> smi-tag)
0000000099585CA9  comment  (;;; <@242,#253> push-argument)
0000000099585CAA  comment  (;;; <@244,#254> call-named)
0000000099585CAC  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099585CB4  position  (7003)
0000000099585CB5  code target (CALL_IC)  (0000000099519460)
0000000099585CBD  comment  (;;; <@245,#254> gap)
0000000099585CC4  comment  (;;; <@246,#255> lazy-bailout)
0000000099585CC4  comment  (;;; <@247,#255> gap)
0000000099585CCB  comment  (;;; <@248,#260> add-i)
0000000099585CCE  comment  (;;; <@250,#262> push-argument)
0000000099585CD1  comment  (;;; <@251,#262> gap)
0000000099585CD5  comment  (;;; <@252,#805> smi-tag)
0000000099585CD9  comment  (;;; <@254,#263> push-argument)
0000000099585CDA  comment  (;;; <@256,#809> smi-tag)
0000000099585CDE  comment  (;;; <@258,#264> push-argument)
0000000099585CDF  comment  (;;; <@260,#265> call-named)
0000000099585CE1  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099585CE9  position  (7068)
0000000099585CEA  code target (CALL_IC)  (0000000099519460)
0000000099585CF2  comment  (;;; <@261,#265> gap)
0000000099585CF9  comment  (;;; <@262,#266> lazy-bailout)
0000000099585CF9  comment  (;;; <@264,#269> gap)
0000000099585CFD  comment  (;;; <@265,#269> branch)
0000000099585D8C  comment  (;;; <@270,#288> -------------------- B43 --------------------)
0000000099585D8C  comment  (;;; <@272,#290> gap)
0000000099585D93  comment  (;;; <@273,#290> goto)
0000000099585D98  comment  (;;; <@278,#276> -------------------- B45 --------------------)
0000000099585D98  comment  (;;; <@279,#276> gap)
0000000099585D9C  comment  (;;; <@280,#277> load-context-slot)
0000000099585DA0  comment  (;;; <@282,#278> global-object)
0000000099585DA4  comment  (;;; <@284,#279> global-receiver)
0000000099585DA8  comment  (;;; <@286,#280> push-argument)
0000000099585DA9  comment  (;;; <@288,#282> push-argument)
0000000099585DAF  comment  (;;; <@290,#283> call-function)
0000000099585DAF  position  (7142)
0000000099585DB0  code target (STUB)  (0000000099582D00)
0000000099585DB8  comment  (;;; <@292,#284> lazy-bailout)
0000000099585DB8  comment  (;;; <@296,#292> -------------------- B46 --------------------)
0000000099585DBF  comment  (;;; <@298,#294> gap)
0000000099585DC3  comment  (;;; <@299,#294> branch)
0000000099585E52  comment  (;;; <@304,#313> -------------------- B48 --------------------)
0000000099585E52  comment  (;;; <@306,#315> gap)
0000000099585E59  comment  (;;; <@307,#315> goto)
0000000099585E5E  comment  (;;; <@312,#301> -------------------- B50 --------------------)
0000000099585E5E  comment  (;;; <@313,#301> gap)
0000000099585E62  comment  (;;; <@314,#302> load-context-slot)
0000000099585E66  comment  (;;; <@316,#303> global-object)
0000000099585E6A  comment  (;;; <@318,#304> global-receiver)
0000000099585E6E  comment  (;;; <@320,#305> push-argument)
0000000099585E6F  comment  (;;; <@322,#307> push-argument)
0000000099585E75  comment  (;;; <@324,#308> call-function)
0000000099585E75  position  (7200)
0000000099585E76  code target (STUB)  (0000000099582D00)
0000000099585E7E  comment  (;;; <@326,#309> lazy-bailout)
0000000099585E7E  comment  (;;; <@330,#317> -------------------- B51 --------------------)
0000000099585E7E  comment  (;;; <@331,#317> gap)
0000000099585E82  comment  (;;; <@332,#318> load-context-slot)
0000000099585E89  comment  (;;; <@334,#319> global-object)
0000000099585E8D  comment  (;;; <@336,#320> global-receiver)
0000000099585E91  comment  (;;; <@338,#321> push-argument)
0000000099585E92  comment  (;;; <@340,#323> push-argument)
0000000099585E95  comment  (;;; <@342,#325> push-argument)
0000000099585E9B  comment  (;;; <@344,#327> push-argument)
0000000099585E9C  comment  (;;; <@346,#329> push-argument)
0000000099585E9F  comment  (;;; <@348,#330> call-function)
0000000099585E9F  position  (7235)
0000000099585EA0  code target (STUB)  (00000000995848C0)
0000000099585EA8  comment  (;;; <@350,#331> lazy-bailout)
0000000099585EA8  comment  (;;; <@352,#339> deoptimize)
0000000099585EA8  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099585EA9  runtime entry
0000000099585EAD  comment  (;;; <@353,#339> gap)
0000000099585EB1  comment  (;;; <@354,#340> add-i)
0000000099585EB4  comment  (;;; <@356,#345> gap)
0000000099585EC7  embedded object  (00000000F5104181 <false>)
0000000099585ED1  embedded object  (00000000F5104181 <false>)
0000000099585EDB  embedded object  (00000000F5104181 <false>)
0000000099585EE3  comment  (;;; <@357,#345> goto)
0000000099585EE8  comment  (;;; <@358,#192> -------------------- B52 --------------------)
0000000099585EEB  comment  (;;; <@362,#358> -------------------- B53 --------------------)
0000000099585EEB  comment  (;;; <@363,#358> gap)
0000000099585EEE  comment  (;;; <@364,#363> sub-i)
0000000099585EF1  comment  (;;; <@365,#363> gap)
0000000099585EF8  comment  (;;; <@366,#369> add-i)
0000000099585EFB  comment  (;;; <@368,#371> push-argument)
0000000099585EFE  comment  (;;; <@369,#371> gap)
0000000099585F02  comment  (;;; <@370,#799> smi-tag)
0000000099585F06  comment  (;;; <@372,#372> push-argument)
0000000099585F07  comment  (;;; <@374,#810> smi-tag)
0000000099585F0B  comment  (;;; <@376,#373> push-argument)
0000000099585F0C  comment  (;;; <@378,#374> call-named)
0000000099585F0E  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099585F16  position  (7578)
0000000099585F17  code target (CALL_IC)  (0000000099519460)
0000000099585F1F  comment  (;;; <@379,#374> gap)
0000000099585F26  comment  (;;; <@380,#375> lazy-bailout)
0000000099585F26  comment  (;;; <@381,#375> gap)
0000000099585F2D  comment  (;;; <@382,#380> add-i)
0000000099585F30  comment  (;;; <@384,#382> push-argument)
0000000099585F33  comment  (;;; <@385,#382> gap)
0000000099585F37  comment  (;;; <@386,#806> smi-tag)
0000000099585F3B  comment  (;;; <@388,#383> push-argument)
0000000099585F3C  comment  (;;; <@390,#811> smi-tag)
0000000099585F40  comment  (;;; <@392,#384> push-argument)
0000000099585F41  comment  (;;; <@394,#385> call-named)
0000000099585F43  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099585F4B  position  (7635)
0000000099585F4C  code target (CALL_IC)  (0000000099519460)
0000000099585F54  comment  (;;; <@395,#385> gap)
0000000099585F5B  comment  (;;; <@396,#386> lazy-bailout)
0000000099585F5B  comment  (;;; <@398,#389> gap)
0000000099585F5F  comment  (;;; <@399,#389> branch)
0000000099585F74  runtime entry  (deoptimization bailout 20)
0000000099585F78  comment  (;;; <@404,#408> -------------------- B55 --------------------)
0000000099585F78  comment  (;;; <@406,#410> gap)
0000000099585F7F  comment  (;;; <@407,#410> goto)
0000000099585F84  comment  (;;; <@412,#396> -------------------- B57 --------------------)
0000000099585F84  comment  (;;; <@413,#396> gap)
0000000099585F88  comment  (;;; <@414,#397> load-context-slot)
0000000099585F8C  comment  (;;; <@416,#398> global-object)
0000000099585F90  comment  (;;; <@418,#399> global-receiver)
0000000099585F94  comment  (;;; <@420,#400> push-argument)
0000000099585F95  comment  (;;; <@422,#402> push-argument)
0000000099585F9B  comment  (;;; <@424,#403> call-function)
0000000099585F9B  position  (7701)
0000000099585F9C  code target (STUB)  (0000000099582D00)
0000000099585FA4  comment  (;;; <@426,#404> lazy-bailout)
0000000099585FA4  comment  (;;; <@430,#412> -------------------- B58 --------------------)
0000000099585FAB  comment  (;;; <@432,#414> gap)
0000000099585FAF  comment  (;;; <@433,#414> branch)
0000000099585FC4  runtime entry  (deoptimization bailout 22)
0000000099585FC8  comment  (;;; <@438,#433> -------------------- B60 --------------------)
0000000099585FC8  comment  (;;; <@439,#433> gap)
0000000099585FCF  comment  (;;; <@440,#812> check-smi)
0000000099585FD8  comment  (;;; <@442,#435> gap)
0000000099585FDB  comment  (;;; <@443,#435> goto)
0000000099585FE0  comment  (;;; <@448,#421> -------------------- B62 --------------------)
0000000099585FE0  comment  (;;; <@449,#421> gap)
0000000099585FE4  comment  (;;; <@450,#422> load-context-slot)
0000000099585FE8  comment  (;;; <@452,#423> global-object)
0000000099585FEC  comment  (;;; <@454,#424> global-receiver)
0000000099585FF0  comment  (;;; <@456,#425> push-argument)
0000000099585FF1  comment  (;;; <@458,#427> push-argument)
0000000099585FF7  comment  (;;; <@460,#428> call-function)
0000000099585FF7  position  (7751)
0000000099585FF8  code target (STUB)  (0000000099582D00)
0000000099586000  comment  (;;; <@462,#429> lazy-bailout)
0000000099586000  comment  (;;; <@463,#429> gap)
0000000099586003  comment  (;;; <@464,#813> check-smi)
000000009958600C  comment  (;;; <@466,#432> gap)
000000009958600F  comment  (;;; <@468,#437> -------------------- B63 --------------------)
0000000099586016  comment  (;;; <@469,#437> gap)
000000009958601A  comment  (;;; <@470,#438> load-context-slot)
0000000099586021  comment  (;;; <@471,#438> gap)
0000000099586028  comment  (;;; <@472,#439> global-object)
000000009958602C  comment  (;;; <@474,#440> global-receiver)
0000000099586030  comment  (;;; <@475,#440> gap)
0000000099586037  comment  (;;; <@476,#445> check-function)
0000000099586039  property cell
000000009958604A  comment  (;;; <@478,#449> gap)
000000009958604E  comment  (;;; <@479,#449> cmp-object-eq-and-branch)
0000000099586050  embedded object  (00000000F5104161 <true>)
0000000099586061  comment  (;;; <@484,#470> -------------------- B65 --------------------)
0000000099586061  comment  (;;; <@486,#471> load-context-slot)
0000000099586065  comment  (;;; <@487,#471> gap)
000000009958606C  comment  (;;; <@488,#474> check-function)
000000009958606E  property cell
000000009958607F  comment  (;;; <@490,#477> load-context-slot)
0000000099586083  comment  (;;; <@492,#478> check-non-smi)
000000009958608D  comment  (;;; <@494,#479> check-maps)
000000009958608F  embedded object  (00000000DFA05979 <Map(elements=3)>)
00000000995860A1  comment  (;;; <@496,#480> push-argument)
00000000995860A3  comment  (;;; <@498,#481> push-argument)
00000000995860A6  comment  (;;; <@500,#482> push-argument)
00000000995860AC  comment  (;;; <@502,#483> call-constant-function)
00000000995860AE  embedded object  (00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>)
00000000995860C1  position  (4135)
00000000995860C8  comment  (;;; <@504,#484> lazy-bailout)
00000000995860C8  comment  (;;; <@507,#485> branch)
00000000995860DD  runtime entry  (deoptimization bailout 31)
00000000995860E1  comment  (;;; <@512,#542> -------------------- B67 --------------------)
00000000995860E1  comment  (;;; <@513,#542> gap)
00000000995860E8  comment  (;;; <@514,#814> dummy-use)
00000000995860E8  comment  (;;; <@515,#814> gap)
00000000995860F3  comment  (;;; <@516,#543> store-keyed-generic)
00000000995860F3  position  (4377)
00000000995860F4  code target (KEYED_STORE_IC)  (000000009952D340)
00000000995860F8  comment  (;;; <@518,#544> lazy-bailout)
00000000995860F8  comment  (;;; <@521,#549> goto)
00000000995860FD  comment  (;;; <@526,#492> -------------------- B69 --------------------)
00000000995860FD  comment  (;;; <@527,#492> gap)
0000000099586108  comment  (;;; <@528,#493> load-keyed-generic)
0000000099586108  position  (4189)
0000000099586109  code target (KEYED_LOAD_IC)  (000000009951F2A0)
000000009958610D  comment  (;;; <@529,#493> gap)
0000000099586114  comment  (;;; <@530,#494> lazy-bailout)
0000000099586114  comment  (;;; <@531,#494> gap)
0000000099586118  comment  (;;; <@532,#496> load-context-slot)
000000009958611C  comment  (;;; <@534,#499> push-argument)
0000000099586122  comment  (;;; <@536,#501> push-argument)
0000000099586123  comment  (;;; <@538,#502> call-function)
0000000099586123  position  (4208)
0000000099586124  code target (STUB)  (0000000099582D00)
000000009958612C  comment  (;;; <@540,#503> lazy-bailout)
000000009958612C  comment  (;;; <@543,#504> branch)
00000000995861BA  comment  (;;; <@548,#517> -------------------- B71 --------------------)
00000000995861BA  comment  (;;; <@550,#519> push-argument)
00000000995861BC  property cell
00000000995861C9  comment  (;;; <@552,#521> push-argument)
00000000995861CB  comment  (;;; <@554,#523> push-argument)
00000000995861CD  embedded object  (00000000FCE04139 <FixedArray[0]>)
00000000995861D7  comment  (;;; <@556,#524> call-runtime)
00000000995861E7  code target (STUB)  (00000000995072A0)
00000000995861EB  comment  (;;; <@558,#525> check-maps)
00000000995861ED  embedded object  (00000000DFA05ED1 <Map(elements=0)>)
00000000995861FF  comment  (;;; <@560,#528> load-named-field)
0000000099586203  comment  (;;; <@561,#528> gap)
000000009958620A  comment  (;;; <@562,#817> check-smi)
0000000099586213  comment  (;;; <@563,#817> gap)
0000000099586216  comment  (;;; <@564,#530> store-keyed)
000000009958621A  comment  (;;; <@565,#530> gap)
0000000099586221  comment  (;;; <@566,#534> store-keyed)
0000000099586225  comment  (;;; <@567,#534> gap)
0000000099586230  comment  (;;; <@568,#536> store-keyed-generic)
0000000099586230  position  (4309)
0000000099586231  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099586235  comment  (;;; <@570,#540> lazy-bailout)
0000000099586235  comment  (;;; <@573,#541> goto)
000000009958623A  comment  (;;; <@578,#511> -------------------- B73 --------------------)
000000009958623A  comment  (;;; <@580,#513> push-argument)
0000000099586240  comment  (;;; <@581,#513> gap)
0000000099586247  comment  (;;; <@582,#815> dummy-use)
0000000099586247  comment  (;;; <@584,#514> push-argument)
0000000099586248  comment  (;;; <@586,#515> call-named)
000000009958624A  embedded object  (00000000FCE14709 <String[4]: push>)
0000000099586252  position  (4243)
0000000099586253  code target (CALL_IC)  (000000009951AF60)
000000009958625B  comment  (;;; <@588,#516> lazy-bailout)
000000009958625B  comment  (;;; <@591,#539> goto)
0000000099586260  comment  (;;; <@608,#456> -------------------- B78 --------------------)
0000000099586260  comment  (;;; <@609,#456> gap)
0000000099586264  comment  (;;; <@610,#457> load-context-slot)
000000009958626B  comment  (;;; <@612,#460> push-argument)
0000000099586271  comment  (;;; <@614,#461> push-argument)
0000000099586274  comment  (;;; <@616,#462> push-argument)
000000009958627A  comment  (;;; <@617,#462> gap)
0000000099586281  comment  (;;; <@618,#816> dummy-use)
0000000099586281  comment  (;;; <@620,#463> push-argument)
0000000099586282  comment  (;;; <@622,#464> call-function)
0000000099586282  position  (5383)
0000000099586283  code target (STUB)  (0000000099582E00)
000000009958628B  comment  (;;; <@624,#465> lazy-bailout)
000000009958628B  comment  (;;; <@628,#559> -------------------- B79 --------------------)
000000009958628B  comment  (;;; <@629,#559> gap)
000000009958628F  comment  (;;; <@630,#567> add-i)
0000000099586298  comment  (;;; <@632,#601> gap)
000000009958629E  embedded object  (00000000F5104181 <false>)
00000000995862A8  embedded object  (00000000F5104181 <false>)
00000000995862B2  embedded object  (00000000F5104181 <false>)
00000000995862BA  comment  (;;; <@634,#625> -------------------- B80 --------------------)
00000000995862BA  comment  (;;; <@636,#627> gap)
00000000995862CD  comment  (;;; <@637,#627> goto)
00000000995862D2  comment  (;;; <@638,#118> -------------------- B81 --------------------)
00000000995862D6  comment  (;;; <@642,#124> -------------------- B82 --------------------)
00000000995862D6  comment  (;;; <@643,#124> gap)
00000000995862DA  comment  (;;; <@644,#129> add-i)
00000000995862DD  comment  (;;; <@646,#624> gap)
00000000995862EE  embedded object  (00000000F5104161 <true>)
00000000995862F6  comment  (;;; <@648,#648> -------------------- B83 --------------------)
00000000995862F6  comment  (;;; <@650,#650> gap)
00000000995862FA  comment  (;;; <@651,#650> goto)
00000000995862FF  comment  (;;; <@652,#90> -------------------- B84 --------------------)
0000000099586305  comment  (;;; <@656,#96> -------------------- B85 --------------------)
0000000099586305  comment  (;;; <@657,#96> gap)
0000000099586308  comment  (;;; <@658,#99> add-i)
0000000099586311  comment  (;;; <@660,#647> gap)
0000000099586321  comment  (;;; <@662,#669> -------------------- B86 --------------------)
0000000099586321  comment  (;;; <@663,#669> gap)
0000000099586324  comment  (;;; <@664,#672> add-i)
000000009958632E  comment  (;;; <@666,#676> gap)
000000009958633C  comment  (;;; <@668,#695> -------------------- B87 --------------------)
000000009958633C  comment  (;;; <@669,#695> gap)
000000009958633F  comment  (;;; <@670,#697> add-i)
0000000099586349  comment  (;;; <@672,#700> gap)
000000009958636C  comment  (;;; <@673,#700> goto)
0000000099586371  comment  (;;; <@678,#701> -------------------- B89 --------------------)
0000000099586371  comment  (;;; <@681,#704> compare-numeric-and-branch)
000000009958637A  comment  (;;; <@686,#711> -------------------- B91 --------------------)
000000009958637A  comment  (;;; <@688,#716> push-argument)
000000009958637D  comment  (;;; <@689,#716> gap)
0000000099586381  comment  (;;; <@690,#800> smi-tag)
0000000099586385  comment  (;;; <@692,#717> push-argument)
0000000099586386  comment  (;;; <@694,#801> smi-tag)
000000009958638A  comment  (;;; <@696,#718> push-argument)
000000009958638B  comment  (;;; <@698,#719> call-named)
000000009958638D  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099586395  position  (8153)
0000000099586396  code target (CALL_IC)  (0000000099519460)
000000009958639E  comment  (;;; <@700,#720> lazy-bailout)
000000009958639E  comment  (;;; <@702,#723> gap)
00000000995863A2  comment  (;;; <@703,#723> branch)
0000000099586431  comment  (;;; <@716,#730> -------------------- B95 --------------------)
0000000099586431  comment  (;;; <@717,#730> gap)
0000000099586435  comment  (;;; <@718,#731> load-context-slot)
0000000099586439  comment  (;;; <@720,#732> global-object)
000000009958643D  comment  (;;; <@722,#733> global-receiver)
0000000099586441  comment  (;;; <@724,#734> push-argument)
0000000099586442  comment  (;;; <@726,#736> push-argument)
0000000099586443  comment  (;;; <@728,#737> call-function)
0000000099586443  position  (8207)
0000000099586444  code target (STUB)  (0000000099582D00)
000000009958644C  comment  (;;; <@730,#738> lazy-bailout)
000000009958644C  comment  (;;; <@734,#746> -------------------- B96 --------------------)
000000009958644C  comment  (;;; <@735,#746> gap)
0000000099586450  comment  (;;; <@736,#747> load-context-slot)
0000000099586457  comment  (;;; <@738,#748> global-object)
000000009958645B  comment  (;;; <@740,#749> global-receiver)
000000009958645F  comment  (;;; <@742,#750> push-argument)
0000000099586460  comment  (;;; <@744,#752> push-argument)
0000000099586463  comment  (;;; <@746,#754> push-argument)
0000000099586464  comment  (;;; <@748,#756> push-argument)
0000000099586466  embedded object  (00000000FCE060C1 <String[0]: >)
0000000099586470  comment  (;;; <@750,#758> push-argument)
0000000099586473  comment  (;;; <@752,#759> call-function)
0000000099586473  position  (8228)
0000000099586474  code target (STUB)  (00000000995848C0)
000000009958647C  comment  (;;; <@754,#760> lazy-bailout)
000000009958647C  comment  (;;; <@766,#768> -------------------- B99 --------------------)
000000009958647C  comment  (;;; <@767,#768> gap)
0000000099586480  comment  (;;; <@768,#769> load-context-slot)
0000000099586484  comment  (;;; <@771,#770> branch)
0000000099586499  runtime entry  (deoptimization bailout 47)
000000009958649D  comment  (;;; <@784,#777> -------------------- B103 --------------------)
000000009958649D  comment  (;;; <@786,#778> load-context-slot)
00000000995864A4  comment  (;;; <@788,#779> global-object)
00000000995864A8  comment  (;;; <@790,#780> global-receiver)
00000000995864AC  comment  (;;; <@792,#781> push-argument)
00000000995864AD  comment  (;;; <@794,#783> push-argument)
00000000995864B0  comment  (;;; <@796,#784> call-function)
00000000995864B0  position  (8322)
00000000995864B1  code target (STUB)  (0000000099582D00)
00000000995864B9  comment  (;;; <@798,#785> lazy-bailout)
00000000995864B9  comment  (;;; <@802,#791> -------------------- B104 --------------------)
00000000995864B9  comment  (;;; <@803,#791> gap)
00000000995864BD  comment  (;;; <@804,#794> return)
00000000995864C6  comment  (;;; <@24,#28> -------------------- Deferred allocate --------------------)
00000000995864FD  position  (6157)
00000000995864FE  code target (STUB)  (0000000099506AA0)
0000000099586521  comment  (;;; <@48,#79> -------------------- Deferred stack-check --------------------)
0000000099586546  position  (6336)
0000000099586547  code target (STUB)  (0000000099506AA0)
0000000099586565  comment  (;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------)
0000000099586596  code target (STUB)  (0000000099506AA0)
00000000995865BD  comment  (;;; <@172,#197> -------------------- Deferred stack-check --------------------)
00000000995865E2  position  (6707)
00000000995865E3  code target (STUB)  (0000000099506AA0)
0000000099586601  comment  (;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------)
0000000099586635  code target (STUB)  (0000000099506AA0)
000000009958665C  comment  (;;; -------------------- Jump table --------------------)
000000009958665C  comment  (;;; jump table entry 0: deoptimization bailout 1.)
000000009958665D  runtime entry  (deoptimization bailout 1)
0000000099586661  comment  (;;; jump table entry 1: deoptimization bailout 2.)
0000000099586662  runtime entry  (deoptimization bailout 2)
0000000099586666  comment  (;;; jump table entry 2: deoptimization bailout 4.)
0000000099586667  runtime entry  (deoptimization bailout 4)
000000009958666B  comment  (;;; jump table entry 3: deoptimization bailout 7.)
000000009958666C  runtime entry  (deoptimization bailout 7)
0000000099586670  comment  (;;; jump table entry 4: deoptimization bailout 9.)
0000000099586671  runtime entry  (deoptimization bailout 9)
0000000099586675  comment  (;;; jump table entry 5: deoptimization bailout 11.)
0000000099586676  runtime entry  (deoptimization bailout 11)
000000009958667A  comment  (;;; jump table entry 6: deoptimization bailout 23.)
000000009958667B  runtime entry  (deoptimization bailout 23)
000000009958667F  comment  (;;; jump table entry 7: deoptimization bailout 25.)
0000000099586680  runtime entry  (deoptimization bailout 25)
0000000099586684  comment  (;;; jump table entry 8: deoptimization bailout 26.)
0000000099586685  runtime entry  (deoptimization bailout 26)
0000000099586689  comment  (;;; jump table entry 9: deoptimization bailout 27.)
000000009958668A  runtime entry  (deoptimization bailout 27)
000000009958668E  comment  (;;; jump table entry 10: deoptimization bailout 28.)
000000009958668F  runtime entry  (deoptimization bailout 28)
0000000099586693  comment  (;;; jump table entry 11: deoptimization bailout 29.)
0000000099586694  runtime entry  (deoptimization bailout 29)
0000000099586698  comment  (;;; jump table entry 12: deoptimization bailout 35.)
0000000099586699  runtime entry  (deoptimization bailout 35)
000000009958669D  comment  (;;; jump table entry 13: deoptimization bailout 36.)
000000009958669E  runtime entry  (deoptimization bailout 36)
00000000995866A2  comment  (;;; jump table entry 14: deoptimization bailout 40.)
00000000995866A3  runtime entry  (deoptimization bailout 40)
00000000995866A7  comment  (;;; jump table entry 15: deoptimization bailout 41.)
00000000995866A8  runtime entry  (deoptimization bailout 41)
00000000995866AC  comment  (;;; jump table entry 16: deoptimization bailout 42.)
00000000995866AD  runtime entry  (deoptimization bailout 42)
00000000995866B1  comment  (;;; jump table entry 17: deoptimization bailout 43.)
00000000995866B2  runtime entry  (deoptimization bailout 43)
00000000995866B8  comment  (;;; Safepoint table.)

[deoptimizing (DEOPT eager): begin 0xf3f89bf1 parseString @23, FP to SP delta: 232]
            ;;; jump table entry 6: deoptimization bailout 23.
  translating parseString => node=618, height=120
    0x002cef60: [top + 160] <- 0xf515fca9 ; [sp + 256] 00000000F515FCA9 <JS Global Object>
    0x002cef58: [top + 152] <- 0x88aec121 ; [sp + 248] 0000000088AEC121 <String[7]: foo=bar>
    0x002cef50: [top + 144] <- 0x99582838 ; caller's pc
    0x002cef48: [top + 136] <- 0x002cef80 ; caller's fp
    0x002cef40: [top + 128] <- 0xf3f89839; context
    0x002cef38: [top + 120] <- 0xf3f89bf1; function
    0x002cef30: [top + 112] <- 0xf5104181 ; [sp + 192] 00000000F5104181 <false>
    0x002cef28: [top + 104] <- 0xf5104181 ; rbx 00000000F5104181 <false>
    0x002cef20: [top + 96] <- 0xf5104181 ; [sp + 136] 00000000F5104181 <false>
    0x002cef18: [top + 88] <- 0x700000000 ; [sp + 184] 7
    0x002cef10: [top + 80] <- 7 ; [sp + 112] (smi)
    0x002cef08: [top + 72] <- 0xf3f9b621 ; [sp + 176] 00000000F3F9B621 <an Object with map 00000000DFA06CE1>
    0x002cef00: [top + 64] <- 00000000F5104121 <undefined> ; literal
    0x002ceef8: [top + 56] <- 00000000F5104121 <undefined> ; literal
    0x002ceef0: [top + 48] <- 00000000F5104121 <undefined> ; literal
    0x002ceee8: [top + 40] <- 00000000F5104121 <undefined> ; literal
    0x002ceee0: [top + 32] <- 0 ; [sp + 168] (smi)
    0x002ceed8: [top + 24] <- 00000000F5104121 <undefined> ; literal
    0x002ceed0: [top + 16] <- 7 ; [sp + 112] (smi)
    0x002ceec8: [top + 8] <- 0xf3f9b639 ; rax 00000000F3F9B639 <String[3]: foo>
    0x002ceec0: [top + 0] <- 0xf3f9b659 ; [sp + 56] 00000000F3F9B659 <String[3]: bar>
[deoptimizing (eager): end 0xf3f89bf1 parseString @23 => node=618, pc=0x99581572, state=NO_REGISTERS, alignment=no padding, took 1.000 ms]
[removing optimized code for: parseString]
-----------------------------------------------------------
Compiling method parseString using hydrogen
--- Raw source ---
(str) {
    containsSparse = false;
    var decodeKey = false;
    var decodeValue = false;
    var possiblyNested = false;
    var len = str.length;
    var i = 0;
    var dictionary = {};
    var keyStart = 0;
    var keyEnd = 0;
    var valueStart = 0;
    var valueEnd = 0;
    var left = 0;

    mainloop: for (; i < len; ++i) {
        var ch = str.charCodeAt(i);
        if (ch === 91) {
            left++;
        }
        else if (left > 0 && ch === 93) {
            possiblyNested = true;
            left--;
        }
        else if (left === 0 && ch === 61) {
            var j = i + 1;
            keyEnd = i - 1;
            valueEnd = valueStart = j;
            for (; j < len; ++j) {
                ch = str.charCodeAt(j);

                if (ch === 43 || ch === 37) {
                    decodeValue = true;
                }
                else if (ch === 38) {
                    i = j - 1;
                    valueEnd = i;
                    var key = str.slice(keyStart, keyEnd + 1);
                    var value = str.slice(valueStart, valueEnd + 1);
                    if (decodeKey) key = decode(key);
                    if (decodeValue) value = decode(value);
                    placeValue(dictionary, key, value, possiblyNested);

                    decodeValue = decodeKey = false;
                    possiblyNested = false;
                    keyEnd = keyStart = j + 1;
                    continue mainloop;
                }
            }
            i = j;
            valueEnd = j - 1;
            var key = str.slice(keyStart, keyEnd + 1);
            var value = str.slice(valueStart, valueEnd + 1);
            if (decodeKey) key = decode(key);
            if (decodeValue) value = decode(value);
            placeValue(dictionary, key, value, possiblyNested);
            decodeValue = decodeKey = false;
            possiblyNested = false;
            keyEnd = keyStart = j + 1;
        }
        else if (ch === 43 || ch === 37) {
            decodeKey = true;
        }
        keyEnd = i + 1;

    }

    if (keyEnd !== keyStart) {

        var value = "";
        var key = str.slice(keyStart, keyEnd);
        if (decodeKey) key = decode(key);
        placeValue(dictionary, key, value, possiblyNested);
    }


    if (containsSparse) {
        compact(dictionary);
    }

    return dictionary;
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = parseString
stack_slots = 27
Instructions (size = 3880)
00000000995868C0     0  55             push rbp
00000000995868C1     1  4889e5         REX.W movq rbp,rsp
00000000995868C4     4  56             push rsi
00000000995868C5     5  57             push rdi
00000000995868C6     6  4881ecd8000000 REX.W subq rsp,0xd8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
00000000995868CD    13  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
00000000995868D0    16  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@12,#10> stack-check
00000000995868D4    20  493b6558       REX.W cmpq rsp,[r13+0x58]
00000000995868D8    24  7305           jnc 31  (00000000995868DF)
00000000995868DA    26  e8a1f4f8ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@14,#11> constant-t
00000000995868DF    31  48b8814110f500000000 REX.W movq rax,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@15,#11> gap
00000000995868E9    41  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@16,#12> store-context-slot
00000000995868ED    45  4889436f       REX.W movq [rbx+0x6f],rax
                  ;;; <@17,#12> gap
00000000995868F1    49  488b4d10       REX.W movq rcx,[rbp+0x10]
                  ;;; <@18,#21> check-non-smi
00000000995868F5    53  f6c101         testb rcx,0x1
00000000995868F8    56  0f84fe0c0000   jz 3388  (00000000995875FC)
                  ;;; <@20,#22> check-instance-type
00000000995868FE    62  4c8b51ff       REX.W movq r10,[rcx-0x1]
0000000099586902    66  41f6420b80     testb [r10+0xb],0x80
0000000099586907    71  0f85f40c0000   jnz 3393  (0000000099587601)
                  ;;; <@22,#23> load-named-field
000000009958690D    77  488b790f       REX.W movq rdi,[rcx+0xf]
                  ;;; <@23,#23> gap
0000000099586911    81  48897dd0       REX.W movq [rbp-0x30],rdi
                  ;;; <@24,#28> allocate
0000000099586915    85  4d8b85c8090000 REX.W movq r8,[r13+0x9c8]
000000009958691C    92  498bc0         REX.W movq rax,r8
000000009958691F    95  4883c018       REX.W addq rax,0x18
0000000099586923    99  0f823d0b0000   jc 2982  (0000000099587466)
0000000099586929   105  493b85d0090000 REX.W cmpq rax,[r13+0x9d0]
0000000099586930   112  0f87300b0000   ja 2982  (0000000099587466)
0000000099586936   118  498985c8090000 REX.W movq [r13+0x9c8],rax
000000009958693D   125  49ffc0         REX.W incq r8
                  ;;; <@25,#28> gap
0000000099586940   128  4c8945c8       REX.W movq [rbp-0x38],r8
                  ;;; <@26,#29> sub-allocated-object
0000000099586944   132  498d00         REX.W leaq rax,[r8]
                  ;;; <@28,#31> store-named-field
0000000099586947   135  49bae16ca0df00000000 REX.W movq r10,00000000DFA06CE1    ;; object: 00000000DFA06CE1 <Map(elements=3)>
0000000099586951   145  4c8950ff       REX.W movq [rax-0x1],r10
                  ;;; <@30,#33> store-named-field
0000000099586955   149  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
000000009958695F   159  4c89500f       REX.W movq [rax+0xf],r10
                  ;;; <@32,#35> store-named-field
0000000099586963   163  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
000000009958696D   173  4c895007       REX.W movq [rax+0x7],r10
                  ;;; <@33,#35> gap
0000000099586971   177  4c8bcf         REX.W movq r9,rdi
                  ;;; <@34,#796> smi-untag
0000000099586974   180  49c1e920       REX.W shrq r9,32
                  ;;; <@35,#796> gap
0000000099586978   184  4c894d98       REX.W movq [rbp-0x68],r9
                  ;;; <@36,#66> gap
000000009958697C   188  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099586986   198  4c8955d8       REX.W movq [rbp-0x28],r10
000000009958698A   202  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099586994   212  4c8955e0       REX.W movq [rbp-0x20],r10
0000000099586998   216  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995869A2   226  41bf00000000   movl r15,0000000000000000
00000000995869A8   232  41be00000000   movl r14,0000000000000000
00000000995869AE   238  b800000000     movl rax,0000000000000000
00000000995869B3   243  41bb00000000   movl r11,0000000000000000
                  ;;; <@38,#67> -------------------- B2 (loop header) --------------------
00000000995869B9   249  488955a0       REX.W movq [rbp-0x60],rdx
00000000995869BD   253  4c897db0       REX.W movq [rbp-0x50],r15
00000000995869C1   257  4c8975b8       REX.W movq [rbp-0x48],r14
00000000995869C5   261  4c895dc0       REX.W movq [rbp-0x40],r11
                  ;;; <@41,#70> compare-numeric-and-branch
00000000995869C9   265  453bf9         cmpl r15,r9
00000000995869CC   268  0f8d3f090000   jge 2641  (0000000099587311)
                  ;;; <@46,#77> -------------------- B4 --------------------
                  ;;; <@48,#79> stack-check
00000000995869D2   274  493b6558       REX.W cmpq rsp,[r13+0x58]
00000000995869D6   278  0f82e50a0000   jc 3073  (00000000995874C1)
                  ;;; <@50,#83> load-named-field
00000000995869DC   284  488b410f       REX.W movq rax,[rcx+0xf]
                  ;;; <@52,#802> smi-untag
00000000995869E0   288  48c1e820       REX.W shrq rax,32
                  ;;; <@53,#802> gap
00000000995869E4   292  48894590       REX.W movq [rbp-0x70],rax
                  ;;; <@54,#84> bounds-check
00000000995869E8   296  493bc7         REX.W cmpq rax,r15
00000000995869EB   299  0f86150c0000   jna 3398  (0000000099587606)
                  ;;; <@55,#84> gap
00000000995869F1   305  498bdf         REX.W movq rbx,r15
                  ;;; <@56,#85> string-char-code-at
00000000995869F4   308  488b79ff       REX.W movq rdi,[rcx-0x1]
00000000995869F8   312  0fb67f0b       movzxbl rdi,[rdi+0xb]
00000000995869FC   316  40f6c701       testb rdi,0x1
0000000099586A00   320  742f           jz 369  (0000000099586A31)
0000000099586A02   322  40f6c702       testb rdi,0x2
0000000099586A06   326  740c           jz 340  (0000000099586A14)
0000000099586A08   328  8b7923         movl rdi,[rcx+0x23]
0000000099586A0B   331  4803df         REX.W addq rbx,rdi
0000000099586A0E   334  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099586A12   338  eb15           jmp 361  (0000000099586A29)
0000000099586A14   340  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099586A1B   347  4c39511f       REX.W cmpq [rcx+0x1f],r10
0000000099586A1F   351  0f85e00a0000   jnz 3141  (0000000099587505)
0000000099586A25   357  488b4917       REX.W movq rcx,[rcx+0x17]
0000000099586A29   361  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099586A2D   365  0fb67f0b       movzxbl rdi,[rdi+0xb]
0000000099586A31   369  40f6c703       testb rdi,0x3
0000000099586A35   373  7420           jz 407  (0000000099586A57)
0000000099586A37   375  40f6c710       testb rdi,0x10
0000000099586A3B   379  0f85c40a0000   jnz 3141  (0000000099587505)
0000000099586A41   385  40f6c704       testb rdi,0x4
0000000099586A45   389  488b791f       REX.W movq rdi,[rcx+0x1f]
0000000099586A49   393  7506           jnz 401  (0000000099586A51)
0000000099586A4B   395  0fb73c5f       movzxwl rdi,[rdi+rbx*2]
0000000099586A4F   399  eb18           jmp 425  (0000000099586A69)
0000000099586A51   401  0fb63c1f       movzxbl rdi,[rdi+rbx*1]
0000000099586A55   405  eb12           jmp 425  (0000000099586A69)
0000000099586A57   407  40f6c704       testb rdi,0x4
0000000099586A5B   411  7507           jnz 420  (0000000099586A64)
0000000099586A5D   413  0fb77c5917     movzxwl rdi,[rcx+rbx*2+0x17]
0000000099586A62   418  eb05           jmp 425  (0000000099586A69)
0000000099586A64   420  0fb67c1917     movzxbl rdi,[rcx+rbx*1+0x17]
                  ;;; <@57,#85> gap
0000000099586A69   425  48897da8       REX.W movq [rbp-0x58],rdi
                  ;;; <@59,#89> compare-numeric-and-branch
0000000099586A6D   429  83ff5b         cmpl rdi,0x5b
0000000099586A70   432  0f8429080000   jz 2527  (000000009958729F)
                  ;;; <@64,#101> -------------------- B6 --------------------
                  ;;; <@67,#104> compare-numeric-and-branch
0000000099586A76   438  4183fb00       cmpl r11,0x0
0000000099586A7A   442  0f8e3a000000   jle 506  (0000000099586ABA)
                  ;;; <@76,#111> -------------------- B9 --------------------
                  ;;; <@78,#114> deoptimize
                  ;;; deoptimize: insufficient type feedback for combined type
0000000099586A80   448  e8adf5e7ff     call 0000000099406032    ;; debug: position 6463
                                                             ;; soft deoptimization bailout 5
                  ;;; <@79,#114> gap
0000000099586A85   453  488bdf         REX.W movq rbx,rdi
                  ;;; <@80,#803> smi-tag
0000000099586A88   456  48c1e320       REX.W shlq rbx,32
                  ;;; <@82,#804> constant-t
0000000099586A8C   460  48b9000000005d000000 REX.W movq rcx,0000005D00000000
                  ;;; <@83,#804> gap
0000000099586A96   470  4887d3         REX.W xchgq rdx,rbx
0000000099586A99   473  4891           REX.W xchgq rax, rcx
                  ;;; <@84,#115> cmp-t
0000000099586A9B   475  e88075f8ff     call 000000009950E020    ;; debug: position 6473
                                                             ;; code: COMPARE_IC, UNINITIALIZED
0000000099586AA0   480  90             nop
0000000099586AA1   481  4885c0         REX.W testq rax,rax
0000000099586AA4   484  7406           jz 492  (0000000099586AAC)
0000000099586AA6   486  498b45c8       REX.W movq rax,[r13-0x38]
0000000099586AAA   490  eb04           jmp 496  (0000000099586AB0)
0000000099586AAC   492  498b45c0       REX.W movq rax,[r13-0x40]
                  ;;; <@86,#116> lazy-bailout
                  ;;; <@89,#117> branch
0000000099586AB0   496  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099586AB4   500  0f84b8070000   jz 2482  (0000000099587272)
                  ;;; <@94,#131> -------------------- B11 --------------------
                  ;;; <@96,#134> gap
0000000099586ABA   506  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@97,#134> compare-numeric-and-branch
0000000099586ABE   510  83f800         cmpl rax,0x0
0000000099586AC1   513  0f8409000000   jz 528  (0000000099586AD0)
                  ;;; <@98,#138> -------------------- B12 --------------------
                  ;;; <@100,#140> gap
0000000099586AC7   519  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@101,#140> goto
0000000099586ACB   523  e90d000000     jmp 541  (0000000099586ADD)
                  ;;; <@106,#141> -------------------- B14 --------------------
                  ;;; <@108,#144> gap
0000000099586AD0   528  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@109,#144> compare-numeric-and-branch
0000000099586AD4   532  83fb3d         cmpl rbx,0x3d
0000000099586AD7   535  0f843d000000   jz 602  (0000000099586B1A)
                  ;;; <@114,#571> -------------------- B16 --------------------
                  ;;; <@117,#574> compare-numeric-and-branch
0000000099586ADD   541  83fb2b         cmpl rbx,0x2b
0000000099586AE0   544  0f8412000000   jz 568  (0000000099586AF8)
                  ;;; <@122,#581> -------------------- B18 --------------------
                  ;;; <@125,#584> compare-numeric-and-branch
0000000099586AE6   550  83fb25         cmpl rbx,0x25
0000000099586AE9   553  0f8409000000   jz 568  (0000000099586AF8)
                  ;;; <@130,#596> -------------------- B20 --------------------
                  ;;; <@132,#598> gap
0000000099586AEF   559  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@133,#598> goto
0000000099586AF3   563  e90a000000     jmp 578  (0000000099586B02)
                  ;;; <@142,#591> -------------------- B23 --------------------
                  ;;; <@144,#595> gap
0000000099586AF8   568  48bb614110f500000000 REX.W movq rbx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@146,#602> -------------------- B24 --------------------
                  ;;; <@148,#604> gap
0000000099586B02   578  488bfb         REX.W movq rdi,rbx
0000000099586B05   581  488b4de0       REX.W movq rcx,[rbp-0x20]
0000000099586B09   585  488b55a0       REX.W movq rdx,[rbp-0x60]
0000000099586B0D   589  488b5db0       REX.W movq rbx,[rbp-0x50]
0000000099586B11   593  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@149,#604> goto
0000000099586B15   597  e940070000     jmp 2458  (000000009958725A)
                  ;;; <@154,#151> -------------------- B26 --------------------
                  ;;; <@155,#151> gap
0000000099586B1A   602  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@156,#154> add-i
0000000099586B1E   606  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@157,#154> gap
0000000099586B21   609  488955a8       REX.W movq [rbp-0x58],rdx
0000000099586B25   613  488bcb         REX.W movq rcx,rbx
                  ;;; <@158,#159> sub-i
0000000099586B28   616  83e901         subl rcx,0x1
0000000099586B2B   619  0f80da0a0000   jo 3403  (000000009958760B)
                  ;;; <@160,#184> gap
0000000099586B31   625  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099586B35   629  488bda         REX.W movq rbx,rdx
                  ;;; <@162,#185> -------------------- B27 (loop header) --------------------
0000000099586B38   632  48897d80       REX.W movq [rbp-0x80],rdi
0000000099586B3C   636  48895d88       REX.W movq [rbp-0x78],rbx
                  ;;; <@165,#188> compare-numeric-and-branch
0000000099586B40   640  3b5d98         cmpl rbx,[rbp-0x68]
0000000099586B43   643  0f8d3f030000   jge 1480  (0000000099586E88)
                  ;;; <@170,#195> -------------------- B29 --------------------
                  ;;; <@172,#197> stack-check
0000000099586B49   649  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099586B4D   653  0f820a0a0000   jc 3229  (000000009958755D)
                  ;;; <@174,#202> bounds-check
0000000099586B53   659  48395d90       REX.W cmpq [rbp-0x70],rbx
0000000099586B57   663  0f86b30a0000   jna 3408  (0000000099587610)
                  ;;; <@175,#202> gap
0000000099586B5D   669  4c8b4d10       REX.W movq r9,[rbp+0x10]
0000000099586B61   673  4c8bc3         REX.W movq r8,rbx
                  ;;; <@176,#203> string-char-code-at
0000000099586B64   676  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099586B68   680  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099586B6D   685  41f6c301       testb r11,0x1
0000000099586B71   689  7431           jz 740  (0000000099586BA4)
0000000099586B73   691  41f6c302       testb r11,0x2
0000000099586B77   695  740d           jz 710  (0000000099586B86)
0000000099586B79   697  458b5923       movl r11,[r9+0x23]
0000000099586B7D   701  4d03c3         REX.W addq r8,r11
0000000099586B80   704  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099586B84   708  eb15           jmp 731  (0000000099586B9B)
0000000099586B86   710  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099586B8D   717  4d39511f       REX.W cmpq [r9+0x1f],r10
0000000099586B91   721  0f850a0a0000   jnz 3297  (00000000995875A1)
0000000099586B97   727  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099586B9B   731  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099586B9F   735  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099586BA4   740  41f6c303       testb r11,0x3
0000000099586BA8   744  7422           jz 780  (0000000099586BCC)
0000000099586BAA   746  41f6c310       testb r11,0x10
0000000099586BAE   750  0f85ed090000   jnz 3297  (00000000995875A1)
0000000099586BB4   756  41f6c304       testb r11,0x4
0000000099586BB8   760  4d8b591f       REX.W movq r11,[r9+0x1f]
0000000099586BBC   764  7507           jnz 773  (0000000099586BC5)
0000000099586BBE   766  470fb71c43     movzxwl r11,[r11+r8*2]
0000000099586BC3   771  eb1b           jmp 800  (0000000099586BE0)
0000000099586BC5   773  470fb61c03     movzxbl r11,[r11+r8*1]
0000000099586BCA   778  eb14           jmp 800  (0000000099586BE0)
0000000099586BCC   780  41f6c304       testb r11,0x4
0000000099586BD0   784  7508           jnz 794  (0000000099586BDA)
0000000099586BD2   786  470fb75c4117   movzxwl r11,[r9+r8*2+0x17]
0000000099586BD8   792  eb06           jmp 800  (0000000099586BE0)
0000000099586BDA   794  470fb65c0117   movzxbl r11,[r9+r8*1+0x17]
                  ;;; <@177,#203> gap
0000000099586BE0   800  4c899d78ffffff REX.W movq [rbp-0x88],r11
                  ;;; <@179,#207> compare-numeric-and-branch
0000000099586BE7   807  4183fb2b       cmpl r11,0x2b
0000000099586BEB   811  0f8419000000   jz 842  (0000000099586C0A)
                  ;;; <@184,#214> -------------------- B31 --------------------
                  ;;; <@187,#217> compare-numeric-and-branch
0000000099586BF1   817  4183fb25       cmpl r11,0x25
0000000099586BF5   821  0f840f000000   jz 842  (0000000099586C0A)
                  ;;; <@192,#227> -------------------- B33 --------------------
                  ;;; <@195,#230> compare-numeric-and-branch
0000000099586BFB   827  4183fb26       cmpl r11,0x26
0000000099586BFF   831  0f8417000000   jz 860  (0000000099586C1C)
0000000099586C05   837  e90a000000     jmp 852  (0000000099586C14)
                  ;;; <@212,#224> -------------------- B38 --------------------
                  ;;; <@214,#347> gap
0000000099586C0A   842  48bf614110f500000000 REX.W movq rdi,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@216,#352> -------------------- B39 --------------------
                  ;;; <@218,#354> add-i
0000000099586C14   852  83c301         addl rbx,0x1
                  ;;; <@221,#357> goto
0000000099586C17   855  e91cffffff     jmp 632  (0000000099586B38)
                  ;;; <@226,#237> -------------------- B41 --------------------
                  ;;; <@228,#240> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099586C1C   860  e843f4e7ff     call 0000000099406064    ;; debug: position 6894
                                                             ;; soft deoptimization bailout 10
                  ;;; <@229,#240> gap
0000000099586C21   865  4c8bc3         REX.W movq r8,rbx
                  ;;; <@230,#241> sub-i
0000000099586C24   868  4183e801       subl r8,0x1
0000000099586C28   872  0f80e7090000   jo 3413  (0000000099587615)
                  ;;; <@231,#241> gap
0000000099586C2E   878  4c898570ffffff REX.W movq [rbp-0x90],r8
                  ;;; <@232,#249> add-i
0000000099586C35   885  83c101         addl rcx,0x1
                  ;;; <@234,#251> push-argument
0000000099586C38   888  ff7510         push [rbp+0x10]
                  ;;; <@235,#251> gap
0000000099586C3B   891  4c8b4db8       REX.W movq r9,[rbp-0x48]
                  ;;; <@236,#798> smi-tag
0000000099586C3F   895  49c1e120       REX.W shlq r9,32
                  ;;; <@238,#252> push-argument
0000000099586C43   899  4151           push r9
                  ;;; <@240,#808> smi-tag
0000000099586C45   901  48c1e120       REX.W shlq rcx,32
                  ;;; <@242,#253> push-argument
0000000099586C49   905  51             push rcx
                  ;;; <@244,#254> call-named
0000000099586C4A   906  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099586C54   916  e80728f9ff     call 0000000099519460    ;; debug: position 7003
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099586C59   921  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@245,#254> gap
0000000099586C5D   925  48898568ffffff REX.W movq [rbp-0x98],rax
                  ;;; <@246,#255> lazy-bailout
                  ;;; <@247,#255> gap
0000000099586C64   932  488b9d70ffffff REX.W movq rbx,[rbp-0x90]
                  ;;; <@248,#260> add-i
0000000099586C6B   939  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@250,#262> push-argument
0000000099586C6E   942  ff7510         push [rbp+0x10]
                  ;;; <@251,#262> gap
0000000099586C71   945  488b4da8       REX.W movq rcx,[rbp-0x58]
                  ;;; <@252,#805> smi-tag
0000000099586C75   949  48c1e120       REX.W shlq rcx,32
                  ;;; <@254,#263> push-argument
0000000099586C79   953  51             push rcx
                  ;;; <@256,#809> smi-tag
0000000099586C7A   954  48c1e220       REX.W shlq rdx,32
                  ;;; <@258,#264> push-argument
0000000099586C7E   958  52             push rdx
                  ;;; <@260,#265> call-named
0000000099586C7F   959  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099586C89   969  e8d227f9ff     call 0000000099519460    ;; debug: position 7068
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099586C8E   974  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@261,#265> gap
0000000099586C92   978  48898560ffffff REX.W movq [rbp-0xa0],rax
                  ;;; <@262,#266> lazy-bailout
                  ;;; <@264,#269> gap
0000000099586C99   985  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@265,#269> branch
0000000099586C9D   989  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099586CA1   993  0f8485000000   jz 1132  (0000000099586D2C)
0000000099586CA7   999  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099586CAB  1003  0f8487000000   jz 1144  (0000000099586D38)
0000000099586CB1  1009  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099586CB5  1013  0f8471000000   jz 1132  (0000000099586D2C)
0000000099586CBB  1019  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099586CBF  1023  0f8467000000   jz 1132  (0000000099586D2C)
0000000099586CC5  1029  4885db         REX.W testq rbx,rbx
0000000099586CC8  1032  0f845e000000   jz 1132  (0000000099586D2C)
0000000099586CCE  1038  f6c301         testb rbx,0x1
0000000099586CD1  1041  0f8461000000   jz 1144  (0000000099586D38)
0000000099586CD7  1047  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099586CDB  1051  41f6420d20     testb [r10+0xd],0x20
0000000099586CE0  1056  0f8546000000   jnz 1132  (0000000099586D2C)
0000000099586CE6  1062  41807a0bad     cmpb [r10+0xb],0xad
0000000099586CEB  1067  0f8347000000   jnc 1144  (0000000099586D38)
0000000099586CF1  1073  41807a0b80     cmpb [r10+0xb],0x80
0000000099586CF6  1078  7310           jnc 1096  (0000000099586D08)
0000000099586CF8  1080  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099586CFD  1085  0f8535000000   jnz 1144  (0000000099586D38)
0000000099586D03  1091  e924000000     jmp 1132  (0000000099586D2C)
0000000099586D08  1096  41807a0b80     cmpb [r10+0xb],0x80
0000000099586D0D  1101  0f8425000000   jz 1144  (0000000099586D38)
0000000099586D13  1107  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099586D17  1111  7513           jnz 1132  (0000000099586D2C)
0000000099586D19  1113  0f57c0         xorps xmm0, xmm0
0000000099586D1C  1116  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099586D21  1121  0f8405000000   jz 1132  (0000000099586D2C)
0000000099586D27  1127  e90c000000     jmp 1144  (0000000099586D38)
                  ;;; <@270,#288> -------------------- B43 --------------------
                  ;;; <@272,#290> gap
0000000099586D2C  1132  488b8568ffffff REX.W movq rax,[rbp-0x98]
                  ;;; <@273,#290> goto
0000000099586D33  1139  e920000000     jmp 1176  (0000000099586D58)
                  ;;; <@278,#276> -------------------- B45 --------------------
                  ;;; <@279,#276> gap
0000000099586D38  1144  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@280,#277> load-context-slot
0000000099586D3C  1148  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@282,#278> global-object
0000000099586D40  1152  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@284,#279> global-receiver
0000000099586D44  1156  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@286,#280> push-argument
0000000099586D48  1160  51             push rcx
                  ;;; <@288,#282> push-argument
0000000099586D49  1161  ffb568ffffff   push [rbp-0x98]
                  ;;; <@290,#283> call-function
0000000099586D4F  1167  e8acbfffff     call 0000000099582D00    ;; debug: position 7142
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586D54  1172  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@292,#284> lazy-bailout
                  ;;; <@296,#292> -------------------- B46 --------------------
0000000099586D58  1176  48898558ffffff REX.W movq [rbp-0xa8],rax
                  ;;; <@298,#294> gap
0000000099586D5F  1183  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@299,#294> branch
0000000099586D63  1187  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099586D67  1191  0f8485000000   jz 1330  (0000000099586DF2)
0000000099586D6D  1197  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099586D71  1201  0f8487000000   jz 1342  (0000000099586DFE)
0000000099586D77  1207  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099586D7B  1211  0f8471000000   jz 1330  (0000000099586DF2)
0000000099586D81  1217  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099586D85  1221  0f8467000000   jz 1330  (0000000099586DF2)
0000000099586D8B  1227  4885db         REX.W testq rbx,rbx
0000000099586D8E  1230  0f845e000000   jz 1330  (0000000099586DF2)
0000000099586D94  1236  f6c301         testb rbx,0x1
0000000099586D97  1239  0f8461000000   jz 1342  (0000000099586DFE)
0000000099586D9D  1245  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099586DA1  1249  41f6420d20     testb [r10+0xd],0x20
0000000099586DA6  1254  0f8546000000   jnz 1330  (0000000099586DF2)
0000000099586DAC  1260  41807a0bad     cmpb [r10+0xb],0xad
0000000099586DB1  1265  0f8347000000   jnc 1342  (0000000099586DFE)
0000000099586DB7  1271  41807a0b80     cmpb [r10+0xb],0x80
0000000099586DBC  1276  7310           jnc 1294  (0000000099586DCE)
0000000099586DBE  1278  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099586DC3  1283  0f8535000000   jnz 1342  (0000000099586DFE)
0000000099586DC9  1289  e924000000     jmp 1330  (0000000099586DF2)
0000000099586DCE  1294  41807a0b80     cmpb [r10+0xb],0x80
0000000099586DD3  1299  0f8425000000   jz 1342  (0000000099586DFE)
0000000099586DD9  1305  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099586DDD  1309  7513           jnz 1330  (0000000099586DF2)
0000000099586DDF  1311  0f57c0         xorps xmm0, xmm0
0000000099586DE2  1314  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099586DE7  1319  0f8405000000   jz 1330  (0000000099586DF2)
0000000099586DED  1325  e90c000000     jmp 1342  (0000000099586DFE)
                  ;;; <@304,#313> -------------------- B48 --------------------
                  ;;; <@306,#315> gap
0000000099586DF2  1330  488b8560ffffff REX.W movq rax,[rbp-0xa0]
                  ;;; <@307,#315> goto
0000000099586DF9  1337  e920000000     jmp 1374  (0000000099586E1E)
                  ;;; <@312,#301> -------------------- B50 --------------------
                  ;;; <@313,#301> gap
0000000099586DFE  1342  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@314,#302> load-context-slot
0000000099586E02  1346  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@316,#303> global-object
0000000099586E06  1350  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@318,#304> global-receiver
0000000099586E0A  1354  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@320,#305> push-argument
0000000099586E0E  1358  51             push rcx
                  ;;; <@322,#307> push-argument
0000000099586E0F  1359  ffb560ffffff   push [rbp-0xa0]
                  ;;; <@324,#308> call-function
0000000099586E15  1365  e8e6beffff     call 0000000099582D00    ;; debug: position 7200
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586E1A  1370  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@326,#309> lazy-bailout
                  ;;; <@330,#317> -------------------- B51 --------------------
                  ;;; <@331,#317> gap
0000000099586E1E  1374  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@332,#318> load-context-slot
0000000099586E22  1378  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@334,#319> global-object
0000000099586E29  1385  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@336,#320> global-receiver
0000000099586E2D  1389  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@338,#321> push-argument
0000000099586E31  1393  52             push rdx
                  ;;; <@340,#323> push-argument
0000000099586E32  1394  ff75c8         push [rbp-0x38]
                  ;;; <@342,#325> push-argument
0000000099586E35  1397  ffb558ffffff   push [rbp-0xa8]
                  ;;; <@344,#327> push-argument
0000000099586E3B  1403  50             push rax
                  ;;; <@346,#329> push-argument
0000000099586E3C  1404  ff75a0         push [rbp-0x60]
                  ;;; <@348,#330> call-function
0000000099586E3F  1407  e87cdaffff     call 00000000995848C0    ;; debug: position 7235
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099586E44  1412  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@350,#331> lazy-bailout
                  ;;; <@352,#339> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099586E48  1416  e85df2e7ff     call 00000000994060AA    ;; soft deoptimization bailout 17
                  ;;; <@353,#339> gap
0000000099586E4D  1421  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@354,#340> add-i
0000000099586E51  1425  83c001         addl rax,0x1
                  ;;; <@356,#345> gap
0000000099586E54  1428  488b8d70ffffff REX.W movq rcx,[rbp-0x90]
0000000099586E5B  1435  488bd0         REX.W movq rdx,rax
0000000099586E5E  1438  488bd8         REX.W movq rbx,rax
0000000099586E61  1441  488b45c0       REX.W movq rax,[rbp-0x40]
0000000099586E65  1445  49b9814110f500000000 REX.W movq r9,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099586E6F  1455  49b8814110f500000000 REX.W movq r8,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099586E79  1465  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@357,#345> goto
0000000099586E83  1475  e954040000     jmp 2588  (00000000995872DC)
                  ;;; <@358,#192> -------------------- B52 --------------------
0000000099586E88  1480  488bc3         REX.W movq rax,rbx
                  ;;; <@362,#358> -------------------- B53 --------------------
                  ;;; <@363,#358> gap
0000000099586E8B  1483  488bd8         REX.W movq rbx,rax
                  ;;; <@364,#363> sub-i
0000000099586E8E  1486  83eb01         subl rbx,0x1
                  ;;; <@365,#363> gap
0000000099586E91  1489  48899d50ffffff REX.W movq [rbp-0xb0],rbx
                  ;;; <@366,#369> add-i
0000000099586E98  1496  8d5101         leal rdx,[rcx+0x1]
                  ;;; <@368,#371> push-argument
0000000099586E9B  1499  ff7510         push [rbp+0x10]
                  ;;; <@369,#371> gap
0000000099586E9E  1502  488b4db8       REX.W movq rcx,[rbp-0x48]
                  ;;; <@370,#799> smi-tag
0000000099586EA2  1506  48c1e120       REX.W shlq rcx,32
                  ;;; <@372,#372> push-argument
0000000099586EA6  1510  51             push rcx
                  ;;; <@374,#810> smi-tag
0000000099586EA7  1511  48c1e220       REX.W shlq rdx,32
                  ;;; <@376,#373> push-argument
0000000099586EAB  1515  52             push rdx
                  ;;; <@378,#374> call-named
0000000099586EAC  1516  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099586EB6  1526  e8a525f9ff     call 0000000099519460    ;; debug: position 7578
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099586EBB  1531  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@379,#374> gap
0000000099586EBF  1535  48898548ffffff REX.W movq [rbp-0xb8],rax
                  ;;; <@380,#375> lazy-bailout
                  ;;; <@381,#375> gap
0000000099586EC6  1542  488b9d50ffffff REX.W movq rbx,[rbp-0xb0]
                  ;;; <@382,#380> add-i
0000000099586ECD  1549  83c301         addl rbx,0x1
                  ;;; <@384,#382> push-argument
0000000099586ED0  1552  ff7510         push [rbp+0x10]
                  ;;; <@385,#382> gap
0000000099586ED3  1555  488b55a8       REX.W movq rdx,[rbp-0x58]
                  ;;; <@386,#806> smi-tag
0000000099586ED7  1559  48c1e220       REX.W shlq rdx,32
                  ;;; <@388,#383> push-argument
0000000099586EDB  1563  52             push rdx
                  ;;; <@390,#811> smi-tag
0000000099586EDC  1564  48c1e320       REX.W shlq rbx,32
                  ;;; <@392,#384> push-argument
0000000099586EE0  1568  53             push rbx
                  ;;; <@394,#385> call-named
0000000099586EE1  1569  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099586EEB  1579  e87025f9ff     call 0000000099519460    ;; debug: position 7635
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099586EF0  1584  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@395,#385> gap
0000000099586EF4  1588  48898550ffffff REX.W movq [rbp-0xb0],rax
                  ;;; <@396,#386> lazy-bailout
                  ;;; <@398,#389> gap
0000000099586EFB  1595  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@399,#389> branch
0000000099586EFF  1599  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099586F03  1603  0f841b000000   jz 1636  (0000000099586F24)
0000000099586F09  1609  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099586F0D  1613  0f8405000000   jz 1624  (0000000099586F18)
0000000099586F13  1619  e8b0f1c7ff     call 00000000992060C8    ;; deoptimization bailout 20
                  ;;; <@404,#408> -------------------- B55 --------------------
                  ;;; <@406,#410> gap
0000000099586F18  1624  488b8548ffffff REX.W movq rax,[rbp-0xb8]
                  ;;; <@407,#410> goto
0000000099586F1F  1631  e920000000     jmp 1668  (0000000099586F44)
                  ;;; <@412,#396> -------------------- B57 --------------------
                  ;;; <@413,#396> gap
0000000099586F24  1636  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@414,#397> load-context-slot
0000000099586F28  1640  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@416,#398> global-object
0000000099586F2C  1644  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@418,#399> global-receiver
0000000099586F30  1648  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@420,#400> push-argument
0000000099586F34  1652  51             push rcx
                  ;;; <@422,#402> push-argument
0000000099586F35  1653  ffb548ffffff   push [rbp-0xb8]
                  ;;; <@424,#403> call-function
0000000099586F3B  1659  e8c0bdffff     call 0000000099582D00    ;; debug: position 7701
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586F40  1664  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@426,#404> lazy-bailout
                  ;;; <@430,#412> -------------------- B58 --------------------
0000000099586F44  1668  48898540ffffff REX.W movq [rbp-0xc0],rax
                  ;;; <@432,#414> gap
0000000099586F4B  1675  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@433,#414> branch
0000000099586F4F  1679  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099586F53  1683  0f8427000000   jz 1728  (0000000099586F80)
0000000099586F59  1689  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099586F5D  1693  0f8405000000   jz 1704  (0000000099586F68)
0000000099586F63  1699  e874f1c7ff     call 00000000992060DC    ;; deoptimization bailout 22
                  ;;; <@438,#433> -------------------- B60 --------------------
                  ;;; <@439,#433> gap
0000000099586F68  1704  488b9550ffffff REX.W movq rdx,[rbp-0xb0]
                  ;;; <@440,#812> check-smi
0000000099586F6F  1711  f6c201         testb rdx,0x1
0000000099586F72  1714  0f85a2060000   jnz 3418  (000000009958761A)
                  ;;; <@442,#435> gap
0000000099586F78  1720  488bc2         REX.W movq rax,rdx
                  ;;; <@443,#435> goto
0000000099586F7B  1723  e92f000000     jmp 1775  (0000000099586FAF)
                  ;;; <@448,#421> -------------------- B62 --------------------
                  ;;; <@449,#421> gap
0000000099586F80  1728  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@450,#422> load-context-slot
0000000099586F84  1732  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@452,#423> global-object
0000000099586F88  1736  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@454,#424> global-receiver
0000000099586F8C  1740  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@456,#425> push-argument
0000000099586F90  1744  51             push rcx
                  ;;; <@458,#427> push-argument
0000000099586F91  1745  ffb550ffffff   push [rbp-0xb0]
                  ;;; <@460,#428> call-function
0000000099586F97  1751  e864bdffff     call 0000000099582D00    ;; debug: position 7751
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099586F9C  1756  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@462,#429> lazy-bailout
                  ;;; <@463,#429> gap
0000000099586FA0  1760  488bd8         REX.W movq rbx,rax
                  ;;; <@464,#813> check-smi
0000000099586FA3  1763  f6c301         testb rbx,0x1
0000000099586FA6  1766  0f8573060000   jnz 3423  (000000009958761F)
                  ;;; <@466,#432> gap
0000000099586FAC  1772  488bc3         REX.W movq rax,rbx
                  ;;; <@468,#437> -------------------- B63 --------------------
0000000099586FAF  1775  48898538ffffff REX.W movq [rbp-0xc8],rax
                  ;;; <@469,#437> gap
0000000099586FB6  1782  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@470,#438> load-context-slot
0000000099586FBA  1786  488b938f000000 REX.W movq rdx,[rbx+0x8f]
                  ;;; <@471,#438> gap
0000000099586FC1  1793  48899530ffffff REX.W movq [rbp-0xd0],rdx
                  ;;; <@472,#439> global-object
0000000099586FC8  1800  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@474,#440> global-receiver
0000000099586FCC  1804  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@475,#440> gap
0000000099586FD0  1808  48898d28ffffff REX.W movq [rbp-0xd8],rcx
                  ;;; <@476,#445> check-function
0000000099586FD7  1815  49ba3861d0e400000000 REX.W movq r10,00000000E4D06138    ;; property cell
0000000099586FE1  1825  493b12         REX.W cmpq rdx,[r10]
0000000099586FE4  1828  0f853a060000   jnz 3428  (0000000099587624)
                  ;;; <@478,#449> gap
0000000099586FEA  1834  488b7da0       REX.W movq rdi,[rbp-0x60]
                  ;;; <@479,#449> cmp-object-eq-and-branch
0000000099586FEE  1838  49ba614110f500000000 REX.W movq r10,00000000F5104161    ;; object: 00000000F5104161 <true>
0000000099586FF8  1848  493bfa         REX.W cmpq rdi,r10
0000000099586FFB  1851  0f84ff010000   jz 2368  (0000000099587200)
                  ;;; <@484,#470> -------------------- B65 --------------------
                  ;;; <@486,#471> load-context-slot
0000000099587001  1857  4c8b437f       REX.W movq r8,[rbx+0x7f]
                  ;;; <@487,#471> gap
0000000099587005  1861  4c898520ffffff REX.W movq [rbp-0xe0],r8
                  ;;; <@488,#474> check-function
000000009958700C  1868  49ba4861d0e400000000 REX.W movq r10,00000000E4D06148    ;; property cell
0000000099587016  1878  4d3b02         REX.W cmpq r8,[r10]
0000000099587019  1881  0f850a060000   jnz 3433  (0000000099587629)
                  ;;; <@490,#477> load-context-slot
000000009958701F  1887  4c8b4b3f       REX.W movq r9,[rbx+0x3f]
                  ;;; <@492,#478> check-non-smi
0000000099587023  1891  41f6c101       testb r9,0x1
0000000099587027  1895  0f8401060000   jz 3438  (000000009958762E)
                  ;;; <@494,#479> check-maps
000000009958702D  1901  49ba7959a0df00000000 REX.W movq r10,00000000DFA05979    ;; object: 00000000DFA05979 <Map(elements=3)>
0000000099587037  1911  4d3951ff       REX.W cmpq [r9-0x1],r10
000000009958703B  1915  0f85f2050000   jnz 3443  (0000000099587633)
                  ;;; <@496,#480> push-argument
0000000099587041  1921  4151           push r9
                  ;;; <@498,#481> push-argument
0000000099587043  1923  ff75c8         push [rbp-0x38]
                  ;;; <@500,#482> push-argument
0000000099587046  1926  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@502,#483> call-constant-function
000000009958704C  1932  48bff9e615f500000000 REX.W movq rdi,00000000F515E6F9    ;; object: 00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>
0000000099587056  1942  488b772f       REX.W movq rsi,[rdi+0x2f]
000000009958705A  1946  b802000000     movl rax,0000000000000002
000000009958705F  1951  33c9           xorl rcx,rcx
0000000099587061  1953  ff5717         call [rdi+0x17]       ;; debug: position 4135
0000000099587064  1956  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@504,#484> lazy-bailout
                  ;;; <@507,#485> branch
0000000099587068  1960  493b45c0       REX.W cmpq rax,[r13-0x40]
000000009958706C  1964  0f842b000000   jz 2013  (000000009958709D)
0000000099587072  1970  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099587076  1974  0f8405000000   jz 1985  (0000000099587081)
000000009958707C  1980  e8b5f0c7ff     call 0000000099206136    ;; deoptimization bailout 31
                  ;;; <@512,#542> -------------------- B67 --------------------
                  ;;; <@513,#542> gap
0000000099587081  1985  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@514,#814> dummy-use
                  ;;; <@515,#814> gap
0000000099587088  1992  488b55c8       REX.W movq rdx,[rbp-0x38]
000000009958708C  1996  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@516,#543> store-keyed-generic
0000000099587093  2003  e8a862faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4377
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@518,#544> lazy-bailout
                  ;;; <@521,#549> goto
0000000099587098  2008  e98e010000     jmp 2411  (000000009958722B)
                  ;;; <@526,#492> -------------------- B69 --------------------
                  ;;; <@527,#492> gap
000000009958709D  2013  488b55c8       REX.W movq rdx,[rbp-0x38]
00000000995870A1  2017  488b8540ffffff REX.W movq rax,[rbp-0xc0]
                  ;;; <@528,#493> load-keyed-generic
00000000995870A8  2024  e8f381f9ff     call KeyedLoadIC_Initialize  (000000009951F2A0)    ;; debug: position 4189
                                                             ;; code: KEYED_LOAD_IC, UNINITIALIZED
                  ;;; <@529,#493> gap
00000000995870AD  2029  48898518ffffff REX.W movq [rbp-0xe8],rax
                  ;;; <@530,#494> lazy-bailout
                  ;;; <@531,#494> gap
00000000995870B4  2036  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@532,#496> load-context-slot
00000000995870B8  2040  488b7b37       REX.W movq rdi,[rbx+0x37]
                  ;;; <@534,#499> push-argument
00000000995870BC  2044  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@536,#501> push-argument
00000000995870C2  2050  50             push rax
                  ;;; <@538,#502> call-function
00000000995870C3  2051  e838bcffff     call 0000000099582D00    ;; debug: position 4208
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995870C8  2056  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@540,#503> lazy-bailout
                  ;;; <@543,#504> branch
00000000995870CC  2060  493b45a8       REX.W cmpq rax,[r13-0x58]
00000000995870D0  2064  0f8484000000   jz 2202  (000000009958715A)
00000000995870D6  2070  493b45c0       REX.W cmpq rax,[r13-0x40]
00000000995870DA  2074  0f84fa000000   jz 2330  (00000000995871DA)
00000000995870E0  2080  493b45c8       REX.W cmpq rax,[r13-0x38]
00000000995870E4  2084  0f8470000000   jz 2202  (000000009958715A)
00000000995870EA  2090  493b45b8       REX.W cmpq rax,[r13-0x48]
00000000995870EE  2094  0f8466000000   jz 2202  (000000009958715A)
00000000995870F4  2100  4885c0         REX.W testq rax,rax
00000000995870F7  2103  0f845d000000   jz 2202  (000000009958715A)
00000000995870FD  2109  a801           test al,0x1
00000000995870FF  2111  0f84d5000000   jz 2330  (00000000995871DA)
0000000099587105  2117  4c8b50ff       REX.W movq r10,[rax-0x1]
0000000099587109  2121  41f6420d20     testb [r10+0xd],0x20
000000009958710E  2126  0f8546000000   jnz 2202  (000000009958715A)
0000000099587114  2132  41807a0bad     cmpb [r10+0xb],0xad
0000000099587119  2137  0f83bb000000   jnc 2330  (00000000995871DA)
000000009958711F  2143  41807a0b80     cmpb [r10+0xb],0x80
0000000099587124  2148  7310           jnc 2166  (0000000099587136)
0000000099587126  2150  4883780f00     REX.W cmpq [rax+0xf],0x0
000000009958712B  2155  0f85a9000000   jnz 2330  (00000000995871DA)
0000000099587131  2161  e924000000     jmp 2202  (000000009958715A)
0000000099587136  2166  41807a0b80     cmpb [r10+0xb],0x80
000000009958713B  2171  0f8499000000   jz 2330  (00000000995871DA)
0000000099587141  2177  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099587145  2181  7513           jnz 2202  (000000009958715A)
0000000099587147  2183  0f57c0         xorps xmm0, xmm0
000000009958714A  2186  660f2e4007     ucomisd xmm0,[rax+0x7]
000000009958714F  2191  0f8405000000   jz 2202  (000000009958715A)
0000000099587155  2197  e980000000     jmp 2330  (00000000995871DA)
                  ;;; <@548,#517> -------------------- B71 --------------------
                  ;;; <@550,#519> push-argument
000000009958715A  2202  49ba5861d0e400000000 REX.W movq r10,00000000E4D06158    ;; property cell
0000000099587164  2212  4d8b12         REX.W movq r10,[r10]
0000000099587167  2215  4152           push r10
                  ;;; <@552,#521> push-argument
0000000099587169  2217  4154           push r12
                  ;;; <@554,#523> push-argument
000000009958716B  2219  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099587175  2229  4152           push r10
                  ;;; <@556,#524> call-runtime
0000000099587177  2231  b803000000     movl rax,0000000000000003
000000009958717C  2236  48bbd09ed03f01000000 REX.W movq rbx,000000013FD09ED0
0000000099587186  2246  e81501f8ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@558,#525> check-maps
000000009958718B  2251  49bad15ea0df00000000 REX.W movq r10,00000000DFA05ED1    ;; object: 00000000DFA05ED1 <Map(elements=0)>
0000000099587195  2261  4c3950ff       REX.W cmpq [rax-0x1],r10
0000000099587199  2265  0f8599040000   jnz 3448  (0000000099587638)
                  ;;; <@560,#528> load-named-field
000000009958719F  2271  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@561,#528> gap
00000000995871A3  2275  488b9518ffffff REX.W movq rdx,[rbp-0xe8]
                  ;;; <@562,#817> check-smi
00000000995871AA  2282  f6c201         testb rdx,0x1
00000000995871AD  2285  0f858a040000   jnz 3453  (000000009958763D)
                  ;;; <@563,#817> gap
00000000995871B3  2291  488bcb         REX.W movq rcx,rbx
                  ;;; <@564,#530> store-keyed
00000000995871B6  2294  4889510f       REX.W movq [rcx+0xf],rdx
                  ;;; <@565,#530> gap
00000000995871BA  2298  488bbd38ffffff REX.W movq rdi,[rbp-0xc8]
                  ;;; <@566,#534> store-keyed
00000000995871C1  2305  48897b17       REX.W movq [rbx+0x17],rdi
                  ;;; <@567,#534> gap
00000000995871C5  2309  488b55c8       REX.W movq rdx,[rbp-0x38]
00000000995871C9  2313  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@568,#536> store-keyed-generic
00000000995871D0  2320  e86b61faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4309
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@570,#540> lazy-bailout
                  ;;; <@573,#541> goto
00000000995871D5  2325  e951000000     jmp 2411  (000000009958722B)
                  ;;; <@578,#511> -------------------- B73 --------------------
                  ;;; <@580,#513> push-argument
00000000995871DA  2330  ffb518ffffff   push [rbp-0xe8]
                  ;;; <@581,#513> gap
00000000995871E0  2336  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@582,#815> dummy-use
                  ;;; <@584,#514> push-argument
00000000995871E7  2343  50             push rax
                  ;;; <@586,#515> call-named
00000000995871E8  2344  48b90947e1fc00000000 REX.W movq rcx,00000000FCE14709    ;; object: 00000000FCE14709 <String[4]: push>
00000000995871F2  2354  e8693df9ff     call 000000009951AF60    ;; debug: position 4243
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 1
00000000995871F7  2359  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@588,#516> lazy-bailout
                  ;;; <@591,#539> goto
00000000995871FB  2363  e92b000000     jmp 2411  (000000009958722B)
                  ;;; <@608,#456> -------------------- B78 --------------------
                  ;;; <@609,#456> gap
0000000099587200  2368  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@610,#457> load-context-slot
0000000099587204  2372  488bb887000000 REX.W movq rdi,[rax+0x87]
                  ;;; <@612,#460> push-argument
000000009958720B  2379  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@614,#461> push-argument
0000000099587211  2385  ff75c8         push [rbp-0x38]
                  ;;; <@616,#462> push-argument
0000000099587214  2388  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@617,#462> gap
000000009958721A  2394  488b9d38ffffff REX.W movq rbx,[rbp-0xc8]
                  ;;; <@618,#816> dummy-use
                  ;;; <@620,#463> push-argument
0000000099587221  2401  53             push rbx
                  ;;; <@622,#464> call-function
0000000099587222  2402  e8d9bbffff     call 0000000099582E00    ;; debug: position 5383
                                                             ;; code: STUB, CallFunctionStub, argc = 3
0000000099587227  2407  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@624,#465> lazy-bailout
                  ;;; <@628,#559> -------------------- B79 --------------------
                  ;;; <@629,#559> gap
000000009958722B  2411  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@630,#567> add-i
000000009958722F  2415  83c001         addl rax,0x1
0000000099587232  2418  0f800a040000   jo 3458  (0000000099587642)
                  ;;; <@632,#601> gap
0000000099587238  2424  488b5d88       REX.W movq rbx,[rbp-0x78]
000000009958723C  2428  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587246  2438  48b9814110f500000000 REX.W movq rcx,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587250  2448  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@634,#625> -------------------- B80 --------------------
                  ;;; <@636,#627> gap
000000009958725A  2458  4c8bc7         REX.W movq r8,rdi
000000009958725D  2461  488bf9         REX.W movq rdi,rcx
0000000099587260  2464  488bca         REX.W movq rcx,rdx
0000000099587263  2467  488bd3         REX.W movq rdx,rbx
0000000099587266  2470  488bd8         REX.W movq rbx,rax
0000000099587269  2473  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@637,#627> goto
000000009958726D  2477  e924000000     jmp 2518  (0000000099587296)
                  ;;; <@638,#118> -------------------- B81 --------------------
0000000099587272  2482  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@642,#124> -------------------- B82 --------------------
                  ;;; <@643,#124> gap
0000000099587276  2486  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@644,#129> add-i
000000009958727A  2490  83c0ff         addl rax,0xff
                  ;;; <@646,#624> gap
000000009958727D  2493  4c8b45d8       REX.W movq r8,[rbp-0x28]
0000000099587281  2497  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099587285  2501  488bd3         REX.W movq rdx,rbx
0000000099587288  2504  488b5db8       REX.W movq rbx,[rbp-0x48]
000000009958728C  2508  48b9614110f500000000 REX.W movq rcx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@648,#648> -------------------- B83 --------------------
                  ;;; <@650,#650> gap
0000000099587296  2518  4892           REX.W xchgq rax, rdx
0000000099587298  2520  4893           REX.W xchgq rax, rbx
                  ;;; <@651,#650> goto
000000009958729A  2522  e922000000     jmp 2561  (00000000995872C1)
                  ;;; <@652,#90> -------------------- B84 --------------------
000000009958729F  2527  498bdf         REX.W movq rbx,r15
00000000995872A2  2530  498bc3         REX.W movq rax,r11
                  ;;; <@656,#96> -------------------- B85 --------------------
                  ;;; <@657,#96> gap
00000000995872A5  2533  488bd0         REX.W movq rdx,rax
                  ;;; <@658,#99> add-i
00000000995872A8  2536  83c201         addl rdx,0x1
00000000995872AB  2539  0f8096030000   jo 3463  (0000000099587647)
                  ;;; <@660,#647> gap
00000000995872B1  2545  4c8b45d8       REX.W movq r8,[rbp-0x28]
00000000995872B5  2549  488b7de0       REX.W movq rdi,[rbp-0x20]
00000000995872B9  2553  488b4da0       REX.W movq rcx,[rbp-0x60]
00000000995872BD  2557  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@662,#669> -------------------- B86 --------------------
                  ;;; <@663,#669> gap
00000000995872C1  2561  4c8bcb         REX.W movq r9,rbx
                  ;;; <@664,#672> add-i
00000000995872C4  2564  4183c101       addl r9,0x1
00000000995872C8  2568  0f807e030000   jo 3468  (000000009958764C)
                  ;;; <@666,#676> gap
00000000995872CE  2574  4987f8         REX.W xchgq rdi,r8
00000000995872D1  2577  4887cf         REX.W xchgq rcx,rdi
00000000995872D4  2580  4887d9         REX.W xchgq rbx,rcx
00000000995872D7  2583  4c87cb         REX.W xchgq r9,rbx
00000000995872DA  2586  4892           REX.W xchgq rax, rdx
                  ;;; <@668,#695> -------------------- B87 --------------------
                  ;;; <@669,#695> gap
00000000995872DC  2588  4c8bd9         REX.W movq r11,rcx
                  ;;; <@670,#697> add-i
00000000995872DF  2591  4183c301       addl r11,0x1
00000000995872E3  2595  0f8068030000   jo 3473  (0000000099587651)
                  ;;; <@672,#700> gap
00000000995872E9  2601  4c894dd8       REX.W movq [rbp-0x28],r9
00000000995872ED  2605  4c8945e0       REX.W movq [rbp-0x20],r8
00000000995872F1  2609  4c8bf2         REX.W movq r14,rdx
00000000995872F4  2612  488bd7         REX.W movq rdx,rdi
00000000995872F7  2615  4d8bfb         REX.W movq r15,r11
00000000995872FA  2618  4c8bd8         REX.W movq r11,rax
00000000995872FD  2621  488bc3         REX.W movq rax,rbx
0000000099587300  2624  488b4d10       REX.W movq rcx,[rbp+0x10]
0000000099587304  2628  4c8b45c8       REX.W movq r8,[rbp-0x38]
0000000099587308  2632  4c8b4d98       REX.W movq r9,[rbp-0x68]
                  ;;; <@673,#700> goto
000000009958730C  2636  e9a8f6ffff     jmp 249  (00000000995869B9)
                  ;;; <@678,#701> -------------------- B89 --------------------
                  ;;; <@681,#704> compare-numeric-and-branch
0000000099587311  2641  3b45b8         cmpl rax,[rbp-0x48]
0000000099587314  2644  0f8402010000   jz 2908  (000000009958741C)
                  ;;; <@686,#711> -------------------- B91 --------------------
                  ;;; <@688,#716> push-argument
000000009958731A  2650  ff7510         push [rbp+0x10]
                  ;;; <@689,#716> gap
000000009958731D  2653  488b5db8       REX.W movq rbx,[rbp-0x48]
                  ;;; <@690,#800> smi-tag
0000000099587321  2657  48c1e320       REX.W shlq rbx,32
                  ;;; <@692,#717> push-argument
0000000099587325  2661  53             push rbx
                  ;;; <@694,#801> smi-tag
0000000099587326  2662  48c1e020       REX.W shlq rax,32
                  ;;; <@696,#718> push-argument
000000009958732A  2666  50             push rax
                  ;;; <@698,#719> call-named
000000009958732B  2667  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099587335  2677  e82621f9ff     call 0000000099519460    ;; debug: position 8153
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
000000009958733A  2682  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@700,#720> lazy-bailout
                  ;;; <@702,#723> gap
000000009958733E  2686  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@703,#723> branch
0000000099587342  2690  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099587346  2694  0f84a0000000   jz 2860  (00000000995873EC)
000000009958734C  2700  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587350  2704  0f847b000000   jz 2833  (00000000995873D1)
0000000099587356  2710  493b5dc8       REX.W cmpq rbx,[r13-0x38]
000000009958735A  2714  0f848c000000   jz 2860  (00000000995873EC)
0000000099587360  2720  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099587364  2724  0f8482000000   jz 2860  (00000000995873EC)
000000009958736A  2730  4885db         REX.W testq rbx,rbx
000000009958736D  2733  0f8479000000   jz 2860  (00000000995873EC)
0000000099587373  2739  f6c301         testb rbx,0x1
0000000099587376  2742  0f8455000000   jz 2833  (00000000995873D1)
000000009958737C  2748  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099587380  2752  41f6420d20     testb [r10+0xd],0x20
0000000099587385  2757  0f8561000000   jnz 2860  (00000000995873EC)
000000009958738B  2763  41807a0bad     cmpb [r10+0xb],0xad
0000000099587390  2768  0f833b000000   jnc 2833  (00000000995873D1)
0000000099587396  2774  41807a0b80     cmpb [r10+0xb],0x80
000000009958739B  2779  7310           jnc 2797  (00000000995873AD)
000000009958739D  2781  48837b0f00     REX.W cmpq [rbx+0xf],0x0
00000000995873A2  2786  0f8529000000   jnz 2833  (00000000995873D1)
00000000995873A8  2792  e93f000000     jmp 2860  (00000000995873EC)
00000000995873AD  2797  41807a0b80     cmpb [r10+0xb],0x80
00000000995873B2  2802  0f8419000000   jz 2833  (00000000995873D1)
00000000995873B8  2808  4d3b55f8       REX.W cmpq r10,[r13-0x8]
00000000995873BC  2812  7513           jnz 2833  (00000000995873D1)
00000000995873BE  2814  0f57c0         xorps xmm0, xmm0
00000000995873C1  2817  660f2e4307     ucomisd xmm0,[rbx+0x7]
00000000995873C6  2822  0f8420000000   jz 2860  (00000000995873EC)
00000000995873CC  2828  e900000000     jmp 2833  (00000000995873D1)
                  ;;; <@716,#730> -------------------- B95 --------------------
                  ;;; <@717,#730> gap
00000000995873D1  2833  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@718,#731> load-context-slot
00000000995873D5  2837  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@720,#732> global-object
00000000995873D9  2841  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@722,#733> global-receiver
00000000995873DD  2845  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@724,#734> push-argument
00000000995873E1  2849  51             push rcx
                  ;;; <@726,#736> push-argument
00000000995873E2  2850  50             push rax
                  ;;; <@728,#737> call-function
00000000995873E3  2851  e818b9ffff     call 0000000099582D00    ;; debug: position 8207
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995873E8  2856  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@730,#738> lazy-bailout
                  ;;; <@734,#746> -------------------- B96 --------------------
                  ;;; <@735,#746> gap
00000000995873EC  2860  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@736,#747> load-context-slot
00000000995873F0  2864  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@738,#748> global-object
00000000995873F7  2871  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@740,#749> global-receiver
00000000995873FB  2875  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@742,#750> push-argument
00000000995873FF  2879  52             push rdx
                  ;;; <@744,#752> push-argument
0000000099587400  2880  ff75c8         push [rbp-0x38]
                  ;;; <@746,#754> push-argument
0000000099587403  2883  50             push rax
                  ;;; <@748,#756> push-argument
0000000099587404  2884  49bac160e0fc00000000 REX.W movq r10,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
000000009958740E  2894  4152           push r10
                  ;;; <@750,#758> push-argument
0000000099587410  2896  ff75a0         push [rbp-0x60]
                  ;;; <@752,#759> call-function
0000000099587413  2899  e8a8d4ffff     call 00000000995848C0    ;; debug: position 8228
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099587418  2904  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@754,#760> lazy-bailout
                  ;;; <@766,#768> -------------------- B99 --------------------
                  ;;; <@767,#768> gap
000000009958741C  2908  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@768,#769> load-context-slot
0000000099587420  2912  488b586f       REX.W movq rbx,[rax+0x6f]
                  ;;; <@771,#770> branch
0000000099587424  2916  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587428  2920  0f840f000000   jz 2941  (000000009958743D)
000000009958742E  2926  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099587432  2930  0f8421000000   jz 2969  (0000000099587459)
0000000099587438  2936  e899edc7ff     call 00000000992061D6    ;; deoptimization bailout 47
                  ;;; <@784,#777> -------------------- B103 --------------------
                  ;;; <@786,#778> load-context-slot
000000009958743D  2941  488bb897000000 REX.W movq rdi,[rax+0x97]
                  ;;; <@788,#779> global-object
0000000099587444  2948  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@790,#780> global-receiver
0000000099587448  2952  488b402f       REX.W movq rax,[rax+0x2f]
                  ;;; <@792,#781> push-argument
000000009958744C  2956  50             push rax
                  ;;; <@794,#783> push-argument
000000009958744D  2957  ff75c8         push [rbp-0x38]
                  ;;; <@796,#784> call-function
0000000099587450  2960  e8abb8ffff     call 0000000099582D00    ;; debug: position 8322
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099587455  2965  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@798,#785> lazy-bailout
                  ;;; <@802,#791> -------------------- B104 --------------------
                  ;;; <@803,#791> gap
0000000099587459  2969  488b45c8       REX.W movq rax,[rbp-0x38]
                  ;;; <@804,#794> return
000000009958745D  2973  488be5         REX.W movq rsp,rbp
0000000099587460  2976  5d             pop rbp
0000000099587461  2977  c21000         ret 0x10
0000000099587464  2980  6690           nop
                  ;;; <@24,#28> -------------------- Deferred allocate --------------------
0000000099587466  2982  4533c0         xorl r8,r8
0000000099587469  2985  50             push rax
000000009958746A  2986  51             push rcx
000000009958746B  2987  52             push rdx
000000009958746C  2988  53             push rbx
000000009958746D  2989  56             push rsi
000000009958746E  2990  57             push rdi
000000009958746F  2991  4150           push r8
0000000099587471  2993  4151           push r9
0000000099587473  2995  4153           push r11
0000000099587475  2997  4156           push r14
0000000099587477  2999  4157           push r15
0000000099587479  3001  488d6424d8     REX.W leaq rsp,[rsp-0x28]
000000009958747E  3006  49ba0000000018000000 REX.W movq r10,0000001800000000
0000000099587488  3016  4152           push r10
000000009958748A  3018  488b75f8       REX.W movq rsi,[rbp-0x8]
000000009958748E  3022  b801000000     movl rax,0000000000000001
0000000099587493  3027  48bba0c9d43f01000000 REX.W movq rbx,000000013FD4C9A0
000000009958749D  3037  e8fef5f7ff     call 0000000099506AA0    ;; debug: position 6157
                                                             ;; code: STUB, CEntryStub, minor: 1
00000000995874A2  3042  4889442448     REX.W movq [rsp+0x48],rax
00000000995874A7  3047  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995874AC  3052  415f           pop r15
00000000995874AE  3054  415e           pop r14
00000000995874B0  3056  415b           pop r11
00000000995874B2  3058  4159           pop r9
00000000995874B4  3060  4158           pop r8
00000000995874B6  3062  5f             pop rdi
00000000995874B7  3063  5e             pop rsi
00000000995874B8  3064  5b             pop rbx
00000000995874B9  3065  5a             pop rdx
00000000995874BA  3066  59             pop rcx
00000000995874BB  3067  58             pop rax
00000000995874BC  3068  e97ff4ffff     jmp 128  (0000000099586940)
                  ;;; <@48,#79> -------------------- Deferred stack-check --------------------
00000000995874C1  3073  50             push rax
00000000995874C2  3074  51             push rcx
00000000995874C3  3075  52             push rdx
00000000995874C4  3076  53             push rbx
00000000995874C5  3077  56             push rsi
00000000995874C6  3078  57             push rdi
00000000995874C7  3079  4150           push r8
00000000995874C9  3081  4151           push r9
00000000995874CB  3083  4153           push r11
00000000995874CD  3085  4156           push r14
00000000995874CF  3087  4157           push r15
00000000995874D1  3089  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995874D6  3094  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995874DA  3098  33c0           xorl rax,rax
00000000995874DC  3100  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
00000000995874E6  3110  e8b5f5f7ff     call 0000000099506AA0    ;; debug: position 6336
                                                             ;; code: STUB, CEntryStub, minor: 1
00000000995874EB  3115  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995874F0  3120  415f           pop r15
00000000995874F2  3122  415e           pop r14
00000000995874F4  3124  415b           pop r11
00000000995874F6  3126  4159           pop r9
00000000995874F8  3128  4158           pop r8
00000000995874FA  3130  5f             pop rdi
00000000995874FB  3131  5e             pop rsi
00000000995874FC  3132  5b             pop rbx
00000000995874FD  3133  5a             pop rdx
00000000995874FE  3134  59             pop rcx
00000000995874FF  3135  58             pop rax
0000000099587500  3136  e9d7f4ffff     jmp 284  (00000000995869DC)
                  ;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------
0000000099587505  3141  33ff           xorl rdi,rdi
0000000099587507  3143  50             push rax
0000000099587508  3144  51             push rcx
0000000099587509  3145  52             push rdx
000000009958750A  3146  53             push rbx
000000009958750B  3147  56             push rsi
000000009958750C  3148  57             push rdi
000000009958750D  3149  4150           push r8
000000009958750F  3151  4151           push r9
0000000099587511  3153  4153           push r11
0000000099587513  3155  4156           push r14
0000000099587515  3157  4157           push r15
0000000099587517  3159  488d6424d8     REX.W leaq rsp,[rsp-0x28]
000000009958751C  3164  51             push rcx
000000009958751D  3165  48c1e320       REX.W shlq rbx,32
0000000099587521  3169  53             push rbx
0000000099587522  3170  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099587526  3174  b802000000     movl rax,0000000000000002
000000009958752B  3179  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
0000000099587535  3189  e866f5f7ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
000000009958753A  3194  48c1e820       REX.W shrq rax,32
000000009958753E  3198  4889442450     REX.W movq [rsp+0x50],rax
0000000099587543  3203  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099587548  3208  415f           pop r15
000000009958754A  3210  415e           pop r14
000000009958754C  3212  415b           pop r11
000000009958754E  3214  4159           pop r9
0000000099587550  3216  4158           pop r8
0000000099587552  3218  5f             pop rdi
0000000099587553  3219  5e             pop rsi
0000000099587554  3220  5b             pop rbx
0000000099587555  3221  5a             pop rdx
0000000099587556  3222  59             pop rcx
0000000099587557  3223  58             pop rax
0000000099587558  3224  e90cf5ffff     jmp 425  (0000000099586A69)
                  ;;; <@172,#197> -------------------- Deferred stack-check --------------------
000000009958755D  3229  50             push rax
000000009958755E  3230  51             push rcx
000000009958755F  3231  52             push rdx
0000000099587560  3232  53             push rbx
0000000099587561  3233  56             push rsi
0000000099587562  3234  57             push rdi
0000000099587563  3235  4150           push r8
0000000099587565  3237  4151           push r9
0000000099587567  3239  4153           push r11
0000000099587569  3241  4156           push r14
000000009958756B  3243  4157           push r15
000000009958756D  3245  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099587572  3250  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099587576  3254  33c0           xorl rax,rax
0000000099587578  3256  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
0000000099587582  3266  e819f5f7ff     call 0000000099506AA0    ;; debug: position 6707
                                                             ;; code: STUB, CEntryStub, minor: 1
0000000099587587  3271  488d642428     REX.W leaq rsp,[rsp+0x28]
000000009958758C  3276  415f           pop r15
000000009958758E  3278  415e           pop r14
0000000099587590  3280  415b           pop r11
0000000099587592  3282  4159           pop r9
0000000099587594  3284  4158           pop r8
0000000099587596  3286  5f             pop rdi
0000000099587597  3287  5e             pop rsi
0000000099587598  3288  5b             pop rbx
0000000099587599  3289  5a             pop rdx
000000009958759A  3290  59             pop rcx
000000009958759B  3291  58             pop rax
000000009958759C  3292  e9b2f5ffff     jmp 659  (0000000099586B53)
                  ;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------
00000000995875A1  3297  4533db         xorl r11,r11
00000000995875A4  3300  50             push rax
00000000995875A5  3301  51             push rcx
00000000995875A6  3302  52             push rdx
00000000995875A7  3303  53             push rbx
00000000995875A8  3304  56             push rsi
00000000995875A9  3305  57             push rdi
00000000995875AA  3306  4150           push r8
00000000995875AC  3308  4151           push r9
00000000995875AE  3310  4153           push r11
00000000995875B0  3312  4156           push r14
00000000995875B2  3314  4157           push r15
00000000995875B4  3316  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995875B9  3321  4151           push r9
00000000995875BB  3323  49c1e020       REX.W shlq r8,32
00000000995875BF  3327  4150           push r8
00000000995875C1  3329  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995875C5  3333  b802000000     movl rax,0000000000000002
00000000995875CA  3338  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
00000000995875D4  3348  e8c7f4f7ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
00000000995875D9  3353  48c1e820       REX.W shrq rax,32
00000000995875DD  3357  4889442438     REX.W movq [rsp+0x38],rax
00000000995875E2  3362  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995875E7  3367  415f           pop r15
00000000995875E9  3369  415e           pop r14
00000000995875EB  3371  415b           pop r11
00000000995875ED  3373  4159           pop r9
00000000995875EF  3375  4158           pop r8
00000000995875F1  3377  5f             pop rdi
00000000995875F2  3378  5e             pop rsi
00000000995875F3  3379  5b             pop rbx
00000000995875F4  3380  5a             pop rdx
00000000995875F5  3381  59             pop rcx
00000000995875F6  3382  58             pop rax
00000000995875F7  3383  e9e4f5ffff     jmp 800  (0000000099586BE0)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
00000000995875FC  3388  e809eac7ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
0000000099587601  3393  e80eeac7ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 4.
0000000099587606  3398  e81deac7ff     call 0000000099206028    ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 7.
000000009958760B  3403  e836eac7ff     call 0000000099206046    ;; deoptimization bailout 7
                  ;;; jump table entry 4: deoptimization bailout 9.
0000000099587610  3408  e845eac7ff     call 000000009920605A    ;; deoptimization bailout 9
                  ;;; jump table entry 5: deoptimization bailout 11.
0000000099587615  3413  e854eac7ff     call 000000009920606E    ;; deoptimization bailout 11
                  ;;; jump table entry 6: deoptimization bailout 23.
000000009958761A  3418  e8c7eac7ff     call 00000000992060E6    ;; deoptimization bailout 23
                  ;;; jump table entry 7: deoptimization bailout 25.
000000009958761F  3423  e8d6eac7ff     call 00000000992060FA    ;; deoptimization bailout 25
                  ;;; jump table entry 8: deoptimization bailout 26.
0000000099587624  3428  e8dbeac7ff     call 0000000099206104    ;; deoptimization bailout 26
                  ;;; jump table entry 9: deoptimization bailout 27.
0000000099587629  3433  e8e0eac7ff     call 000000009920610E    ;; deoptimization bailout 27
                  ;;; jump table entry 10: deoptimization bailout 28.
000000009958762E  3438  e8e5eac7ff     call 0000000099206118    ;; deoptimization bailout 28
                  ;;; jump table entry 11: deoptimization bailout 29.
0000000099587633  3443  e8eaeac7ff     call 0000000099206122    ;; deoptimization bailout 29
                  ;;; jump table entry 12: deoptimization bailout 35.
0000000099587638  3448  e821ebc7ff     call 000000009920615E    ;; deoptimization bailout 35
                  ;;; jump table entry 13: deoptimization bailout 36.
000000009958763D  3453  e826ebc7ff     call 0000000099206168    ;; deoptimization bailout 36
                  ;;; jump table entry 14: deoptimization bailout 40.
0000000099587642  3458  e849ebc7ff     call 0000000099206190    ;; deoptimization bailout 40
                  ;;; jump table entry 15: deoptimization bailout 41.
0000000099587647  3463  e84eebc7ff     call 000000009920619A    ;; deoptimization bailout 41
                  ;;; jump table entry 16: deoptimization bailout 42.
000000009958764C  3468  e853ebc7ff     call 00000000992061A4    ;; deoptimization bailout 42
                  ;;; jump table entry 17: deoptimization bailout 43.
0000000099587651  3473  e858ebc7ff     call 00000000992061AE    ;; deoptimization bailout 43
0000000099587656  3478  6690           nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 49)
 index  ast id    argc     pc             
     0       3       0     31
     1      10       0     -1
     2      10       0     -1
     3     143       0    284
     4     143       0     -1
     5     207       0     -1
     6     203       0    496
     7     248       0     -1
     8     284       0    659
     9     284       0     -1
    10     507       0     -1
    11     507       0     -1
    12     387       0    932
    13     415       0    985
    14     431       0   1176
    15     448       0   1374
    16     467       0   1416
    17     467       0     -1
    18     551       0   1542
    19     579       0   1595
    20     579       0     -1
    21     595       0   1668
    22     601       0     -1
    23     618       0     -1
    24     612       0   1760
    25     618       0     -1
    26     618       0     -1
    27      27       0     -1
    28       2       0     -1
    29       2       0     -1
    30      15       0   1960
    31      15       0     -1
    32      93       0   2008
    33      28       0   2036
    34      40       0   2060
    35      79       0     -1
    36      79       0     -1
    37      77       0   2325
    38      54       0   2363
    39      20       0   2411
    40     631       0     -1
    41     704       0     -1
    42     703       0     -1
    43     142       0     -1
    44     756       0   2686
    45     772       0   2860
    46     791       0   2908
    47     794       0     -1
    48     805       0   2969

Safepoints (size = 400)
00000000995868DF    31  000000000000000000000000001 (sp -> fp)       0
0000000099586AA0   480  000000000000000001000010111 (sp -> fp)       6
0000000099586C59   921  000000000000010001000010101 (sp -> fp)      12
0000000099586C8E   974  000000000010010001000010101 (sp -> fp)      13
0000000099586D54  1172  000000000100010001000010101 (sp -> fp)      14
0000000099586E1A  1370  000000001000010001000010101 (sp -> fp)      15
0000000099586E44  1412  000000000000010000000010101 (sp -> fp)      16
0000000099586EBB  1531  000000000000010001000010101 (sp -> fp)      18
0000000099586EF0  1584  000000100000010001000010101 (sp -> fp)      19
0000000099586F40  1664  000000010000010001000010101 (sp -> fp)      21
0000000099586F9C  1756  000001000000010001000010101 (sp -> fp)      24
0000000099587064  1956  011101000000010001000010101 (sp -> fp)      30
0000000099587098  2008  011101000000010001000010101 (sp -> fp)      32
00000000995870AD  2029  011101000000010001000010101 (sp -> fp)      33
00000000995870C8  2056  111101000000010001000010101 (sp -> fp)      34
000000009958718B  2251  111101000000010001000010101 (sp -> fp)      37
00000000995871D5  2325  011101000000010001000010101 (sp -> fp)      37
00000000995871F7  2359  011101000000010001000010101 (sp -> fp)      38
0000000099587227  2407  001101000000010001000010101 (sp -> fp)      39
000000009958733A  2682  000000000000000001000010101 (sp -> fp)      44
00000000995873E8  2856  000000000000000001000010101 (sp -> fp)      45
0000000099587418  2904  000000000000000000000010101 (sp -> fp)      46
0000000099587455  2965  000000000000000000000010100 (sp -> fp)      48
00000000995874A2  3042  000000000000000000000000001 | rcx | rbx | rsi | r8 (sp -> fp)  <none> argc: 1
00000000995874EB  3115  000000000000000001000010111 | rcx | rdx | rsi | r8 (sp -> fp)       3
000000009958753A  3194  000000000000000001000010111 | rdx | rsi | r8 (sp -> fp)  <none> argc: 2
0000000099587587  3271  000000000000010001000010101 | rsi | rdi (sp -> fp)       8
00000000995875D9  3353  000000000000010001000010101 | rsi | rdi (sp -> fp)  <none> argc: 2

RelocInfo (size = 4767)
00000000995868CD  comment  (;;; <@0,#0> -------------------- B0 --------------------)
00000000995868CD  comment  (;;; <@2,#1> context)
00000000995868D0  comment  (;;; <@3,#1> gap)
00000000995868D4  comment  (;;; <@10,#8> -------------------- B1 --------------------)
00000000995868D4  comment  (;;; <@12,#10> stack-check)
00000000995868DB  code target (STUB)  (0000000099515D80)
00000000995868DF  comment  (;;; <@14,#11> constant-t)
00000000995868E1  embedded object  (00000000F5104181 <false>)
00000000995868E9  comment  (;;; <@15,#11> gap)
00000000995868ED  comment  (;;; <@16,#12> store-context-slot)
00000000995868F1  comment  (;;; <@17,#12> gap)
00000000995868F5  comment  (;;; <@18,#21> check-non-smi)
00000000995868FE  comment  (;;; <@20,#22> check-instance-type)
000000009958690D  comment  (;;; <@22,#23> load-named-field)
0000000099586911  comment  (;;; <@23,#23> gap)
0000000099586915  comment  (;;; <@24,#28> allocate)
0000000099586940  comment  (;;; <@25,#28> gap)
0000000099586944  comment  (;;; <@26,#29> sub-allocated-object)
0000000099586947  comment  (;;; <@28,#31> store-named-field)
0000000099586949  embedded object  (00000000DFA06CE1 <Map(elements=3)>)
0000000099586955  comment  (;;; <@30,#33> store-named-field)
0000000099586957  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099586963  comment  (;;; <@32,#35> store-named-field)
0000000099586965  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099586971  comment  (;;; <@33,#35> gap)
0000000099586974  comment  (;;; <@34,#796> smi-untag)
0000000099586978  comment  (;;; <@35,#796> gap)
000000009958697C  comment  (;;; <@36,#66> gap)
000000009958697E  embedded object  (00000000F5104181 <false>)
000000009958698C  embedded object  (00000000F5104181 <false>)
000000009958699A  embedded object  (00000000F5104181 <false>)
00000000995869B9  comment  (;;; <@38,#67> -------------------- B2 (loop header) --------------------)
00000000995869C9  comment  (;;; <@41,#70> compare-numeric-and-branch)
00000000995869D2  comment  (;;; <@46,#77> -------------------- B4 --------------------)
00000000995869D2  comment  (;;; <@48,#79> stack-check)
00000000995869DC  comment  (;;; <@50,#83> load-named-field)
00000000995869E0  comment  (;;; <@52,#802> smi-untag)
00000000995869E4  comment  (;;; <@53,#802> gap)
00000000995869E8  comment  (;;; <@54,#84> bounds-check)
00000000995869F1  comment  (;;; <@55,#84> gap)
00000000995869F4  comment  (;;; <@56,#85> string-char-code-at)
0000000099586A69  comment  (;;; <@57,#85> gap)
0000000099586A6D  comment  (;;; <@59,#89> compare-numeric-and-branch)
0000000099586A76  comment  (;;; <@64,#101> -------------------- B6 --------------------)
0000000099586A76  comment  (;;; <@67,#104> compare-numeric-and-branch)
0000000099586A80  comment  (;;; <@76,#111> -------------------- B9 --------------------)
0000000099586A80  comment  (;;; <@78,#114> deoptimize)
0000000099586A80  comment  (;;; deoptimize: insufficient type feedback for combined type)
0000000099586A80  position  (6463)
0000000099586A81  runtime entry
0000000099586A85  comment  (;;; <@79,#114> gap)
0000000099586A88  comment  (;;; <@80,#803> smi-tag)
0000000099586A8C  comment  (;;; <@82,#804> constant-t)
0000000099586A96  comment  (;;; <@83,#804> gap)
0000000099586A9B  comment  (;;; <@84,#115> cmp-t)
0000000099586A9B  position  (6473)
0000000099586A9C  code target (COMPARE_IC)  (000000009950E020)
0000000099586AB0  comment  (;;; <@86,#116> lazy-bailout)
0000000099586AB0  comment  (;;; <@89,#117> branch)
0000000099586ABA  comment  (;;; <@94,#131> -------------------- B11 --------------------)
0000000099586ABA  comment  (;;; <@96,#134> gap)
0000000099586ABE  comment  (;;; <@97,#134> compare-numeric-and-branch)
0000000099586AC7  comment  (;;; <@98,#138> -------------------- B12 --------------------)
0000000099586AC7  comment  (;;; <@100,#140> gap)
0000000099586ACB  comment  (;;; <@101,#140> goto)
0000000099586AD0  comment  (;;; <@106,#141> -------------------- B14 --------------------)
0000000099586AD0  comment  (;;; <@108,#144> gap)
0000000099586AD4  comment  (;;; <@109,#144> compare-numeric-and-branch)
0000000099586ADD  comment  (;;; <@114,#571> -------------------- B16 --------------------)
0000000099586ADD  comment  (;;; <@117,#574> compare-numeric-and-branch)
0000000099586AE6  comment  (;;; <@122,#581> -------------------- B18 --------------------)
0000000099586AE6  comment  (;;; <@125,#584> compare-numeric-and-branch)
0000000099586AEF  comment  (;;; <@130,#596> -------------------- B20 --------------------)
0000000099586AEF  comment  (;;; <@132,#598> gap)
0000000099586AF3  comment  (;;; <@133,#598> goto)
0000000099586AF8  comment  (;;; <@142,#591> -------------------- B23 --------------------)
0000000099586AF8  comment  (;;; <@144,#595> gap)
0000000099586AFA  embedded object  (00000000F5104161 <true>)
0000000099586B02  comment  (;;; <@146,#602> -------------------- B24 --------------------)
0000000099586B02  comment  (;;; <@148,#604> gap)
0000000099586B15  comment  (;;; <@149,#604> goto)
0000000099586B1A  comment  (;;; <@154,#151> -------------------- B26 --------------------)
0000000099586B1A  comment  (;;; <@155,#151> gap)
0000000099586B1E  comment  (;;; <@156,#154> add-i)
0000000099586B21  comment  (;;; <@157,#154> gap)
0000000099586B28  comment  (;;; <@158,#159> sub-i)
0000000099586B31  comment  (;;; <@160,#184> gap)
0000000099586B38  comment  (;;; <@162,#185> -------------------- B27 (loop header) --------------------)
0000000099586B40  comment  (;;; <@165,#188> compare-numeric-and-branch)
0000000099586B49  comment  (;;; <@170,#195> -------------------- B29 --------------------)
0000000099586B49  comment  (;;; <@172,#197> stack-check)
0000000099586B53  comment  (;;; <@174,#202> bounds-check)
0000000099586B5D  comment  (;;; <@175,#202> gap)
0000000099586B64  comment  (;;; <@176,#203> string-char-code-at)
0000000099586BE0  comment  (;;; <@177,#203> gap)
0000000099586BE7  comment  (;;; <@179,#207> compare-numeric-and-branch)
0000000099586BF1  comment  (;;; <@184,#214> -------------------- B31 --------------------)
0000000099586BF1  comment  (;;; <@187,#217> compare-numeric-and-branch)
0000000099586BFB  comment  (;;; <@192,#227> -------------------- B33 --------------------)
0000000099586BFB  comment  (;;; <@195,#230> compare-numeric-and-branch)
0000000099586C0A  comment  (;;; <@212,#224> -------------------- B38 --------------------)
0000000099586C0A  comment  (;;; <@214,#347> gap)
0000000099586C0C  embedded object  (00000000F5104161 <true>)
0000000099586C14  comment  (;;; <@216,#352> -------------------- B39 --------------------)
0000000099586C14  comment  (;;; <@218,#354> add-i)
0000000099586C17  comment  (;;; <@221,#357> goto)
0000000099586C1C  comment  (;;; <@226,#237> -------------------- B41 --------------------)
0000000099586C1C  comment  (;;; <@228,#240> deoptimize)
0000000099586C1C  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099586C1C  position  (6894)
0000000099586C1D  runtime entry
0000000099586C21  comment  (;;; <@229,#240> gap)
0000000099586C24  comment  (;;; <@230,#241> sub-i)
0000000099586C2E  comment  (;;; <@231,#241> gap)
0000000099586C35  comment  (;;; <@232,#249> add-i)
0000000099586C38  comment  (;;; <@234,#251> push-argument)
0000000099586C3B  comment  (;;; <@235,#251> gap)
0000000099586C3F  comment  (;;; <@236,#798> smi-tag)
0000000099586C43  comment  (;;; <@238,#252> push-argument)
0000000099586C45  comment  (;;; <@240,#808> smi-tag)
0000000099586C49  comment  (;;; <@242,#253> push-argument)
0000000099586C4A  comment  (;;; <@244,#254> call-named)
0000000099586C4C  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099586C54  position  (7003)
0000000099586C55  code target (CALL_IC)  (0000000099519460)
0000000099586C5D  comment  (;;; <@245,#254> gap)
0000000099586C64  comment  (;;; <@246,#255> lazy-bailout)
0000000099586C64  comment  (;;; <@247,#255> gap)
0000000099586C6B  comment  (;;; <@248,#260> add-i)
0000000099586C6E  comment  (;;; <@250,#262> push-argument)
0000000099586C71  comment  (;;; <@251,#262> gap)
0000000099586C75  comment  (;;; <@252,#805> smi-tag)
0000000099586C79  comment  (;;; <@254,#263> push-argument)
0000000099586C7A  comment  (;;; <@256,#809> smi-tag)
0000000099586C7E  comment  (;;; <@258,#264> push-argument)
0000000099586C7F  comment  (;;; <@260,#265> call-named)
0000000099586C81  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099586C89  position  (7068)
0000000099586C8A  code target (CALL_IC)  (0000000099519460)
0000000099586C92  comment  (;;; <@261,#265> gap)
0000000099586C99  comment  (;;; <@262,#266> lazy-bailout)
0000000099586C99  comment  (;;; <@264,#269> gap)
0000000099586C9D  comment  (;;; <@265,#269> branch)
0000000099586D2C  comment  (;;; <@270,#288> -------------------- B43 --------------------)
0000000099586D2C  comment  (;;; <@272,#290> gap)
0000000099586D33  comment  (;;; <@273,#290> goto)
0000000099586D38  comment  (;;; <@278,#276> -------------------- B45 --------------------)
0000000099586D38  comment  (;;; <@279,#276> gap)
0000000099586D3C  comment  (;;; <@280,#277> load-context-slot)
0000000099586D40  comment  (;;; <@282,#278> global-object)
0000000099586D44  comment  (;;; <@284,#279> global-receiver)
0000000099586D48  comment  (;;; <@286,#280> push-argument)
0000000099586D49  comment  (;;; <@288,#282> push-argument)
0000000099586D4F  comment  (;;; <@290,#283> call-function)
0000000099586D4F  position  (7142)
0000000099586D50  code target (STUB)  (0000000099582D00)
0000000099586D58  comment  (;;; <@292,#284> lazy-bailout)
0000000099586D58  comment  (;;; <@296,#292> -------------------- B46 --------------------)
0000000099586D5F  comment  (;;; <@298,#294> gap)
0000000099586D63  comment  (;;; <@299,#294> branch)
0000000099586DF2  comment  (;;; <@304,#313> -------------------- B48 --------------------)
0000000099586DF2  comment  (;;; <@306,#315> gap)
0000000099586DF9  comment  (;;; <@307,#315> goto)
0000000099586DFE  comment  (;;; <@312,#301> -------------------- B50 --------------------)
0000000099586DFE  comment  (;;; <@313,#301> gap)
0000000099586E02  comment  (;;; <@314,#302> load-context-slot)
0000000099586E06  comment  (;;; <@316,#303> global-object)
0000000099586E0A  comment  (;;; <@318,#304> global-receiver)
0000000099586E0E  comment  (;;; <@320,#305> push-argument)
0000000099586E0F  comment  (;;; <@322,#307> push-argument)
0000000099586E15  comment  (;;; <@324,#308> call-function)
0000000099586E15  position  (7200)
0000000099586E16  code target (STUB)  (0000000099582D00)
0000000099586E1E  comment  (;;; <@326,#309> lazy-bailout)
0000000099586E1E  comment  (;;; <@330,#317> -------------------- B51 --------------------)
0000000099586E1E  comment  (;;; <@331,#317> gap)
0000000099586E22  comment  (;;; <@332,#318> load-context-slot)
0000000099586E29  comment  (;;; <@334,#319> global-object)
0000000099586E2D  comment  (;;; <@336,#320> global-receiver)
0000000099586E31  comment  (;;; <@338,#321> push-argument)
0000000099586E32  comment  (;;; <@340,#323> push-argument)
0000000099586E35  comment  (;;; <@342,#325> push-argument)
0000000099586E3B  comment  (;;; <@344,#327> push-argument)
0000000099586E3C  comment  (;;; <@346,#329> push-argument)
0000000099586E3F  comment  (;;; <@348,#330> call-function)
0000000099586E3F  position  (7235)
0000000099586E40  code target (STUB)  (00000000995848C0)
0000000099586E48  comment  (;;; <@350,#331> lazy-bailout)
0000000099586E48  comment  (;;; <@352,#339> deoptimize)
0000000099586E48  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099586E49  runtime entry
0000000099586E4D  comment  (;;; <@353,#339> gap)
0000000099586E51  comment  (;;; <@354,#340> add-i)
0000000099586E54  comment  (;;; <@356,#345> gap)
0000000099586E67  embedded object  (00000000F5104181 <false>)
0000000099586E71  embedded object  (00000000F5104181 <false>)
0000000099586E7B  embedded object  (00000000F5104181 <false>)
0000000099586E83  comment  (;;; <@357,#345> goto)
0000000099586E88  comment  (;;; <@358,#192> -------------------- B52 --------------------)
0000000099586E8B  comment  (;;; <@362,#358> -------------------- B53 --------------------)
0000000099586E8B  comment  (;;; <@363,#358> gap)
0000000099586E8E  comment  (;;; <@364,#363> sub-i)
0000000099586E91  comment  (;;; <@365,#363> gap)
0000000099586E98  comment  (;;; <@366,#369> add-i)
0000000099586E9B  comment  (;;; <@368,#371> push-argument)
0000000099586E9E  comment  (;;; <@369,#371> gap)
0000000099586EA2  comment  (;;; <@370,#799> smi-tag)
0000000099586EA6  comment  (;;; <@372,#372> push-argument)
0000000099586EA7  comment  (;;; <@374,#810> smi-tag)
0000000099586EAB  comment  (;;; <@376,#373> push-argument)
0000000099586EAC  comment  (;;; <@378,#374> call-named)
0000000099586EAE  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099586EB6  position  (7578)
0000000099586EB7  code target (CALL_IC)  (0000000099519460)
0000000099586EBF  comment  (;;; <@379,#374> gap)
0000000099586EC6  comment  (;;; <@380,#375> lazy-bailout)
0000000099586EC6  comment  (;;; <@381,#375> gap)
0000000099586ECD  comment  (;;; <@382,#380> add-i)
0000000099586ED0  comment  (;;; <@384,#382> push-argument)
0000000099586ED3  comment  (;;; <@385,#382> gap)
0000000099586ED7  comment  (;;; <@386,#806> smi-tag)
0000000099586EDB  comment  (;;; <@388,#383> push-argument)
0000000099586EDC  comment  (;;; <@390,#811> smi-tag)
0000000099586EE0  comment  (;;; <@392,#384> push-argument)
0000000099586EE1  comment  (;;; <@394,#385> call-named)
0000000099586EE3  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099586EEB  position  (7635)
0000000099586EEC  code target (CALL_IC)  (0000000099519460)
0000000099586EF4  comment  (;;; <@395,#385> gap)
0000000099586EFB  comment  (;;; <@396,#386> lazy-bailout)
0000000099586EFB  comment  (;;; <@398,#389> gap)
0000000099586EFF  comment  (;;; <@399,#389> branch)
0000000099586F14  runtime entry  (deoptimization bailout 20)
0000000099586F18  comment  (;;; <@404,#408> -------------------- B55 --------------------)
0000000099586F18  comment  (;;; <@406,#410> gap)
0000000099586F1F  comment  (;;; <@407,#410> goto)
0000000099586F24  comment  (;;; <@412,#396> -------------------- B57 --------------------)
0000000099586F24  comment  (;;; <@413,#396> gap)
0000000099586F28  comment  (;;; <@414,#397> load-context-slot)
0000000099586F2C  comment  (;;; <@416,#398> global-object)
0000000099586F30  comment  (;;; <@418,#399> global-receiver)
0000000099586F34  comment  (;;; <@420,#400> push-argument)
0000000099586F35  comment  (;;; <@422,#402> push-argument)
0000000099586F3B  comment  (;;; <@424,#403> call-function)
0000000099586F3B  position  (7701)
0000000099586F3C  code target (STUB)  (0000000099582D00)
0000000099586F44  comment  (;;; <@426,#404> lazy-bailout)
0000000099586F44  comment  (;;; <@430,#412> -------------------- B58 --------------------)
0000000099586F4B  comment  (;;; <@432,#414> gap)
0000000099586F4F  comment  (;;; <@433,#414> branch)
0000000099586F64  runtime entry  (deoptimization bailout 22)
0000000099586F68  comment  (;;; <@438,#433> -------------------- B60 --------------------)
0000000099586F68  comment  (;;; <@439,#433> gap)
0000000099586F6F  comment  (;;; <@440,#812> check-smi)
0000000099586F78  comment  (;;; <@442,#435> gap)
0000000099586F7B  comment  (;;; <@443,#435> goto)
0000000099586F80  comment  (;;; <@448,#421> -------------------- B62 --------------------)
0000000099586F80  comment  (;;; <@449,#421> gap)
0000000099586F84  comment  (;;; <@450,#422> load-context-slot)
0000000099586F88  comment  (;;; <@452,#423> global-object)
0000000099586F8C  comment  (;;; <@454,#424> global-receiver)
0000000099586F90  comment  (;;; <@456,#425> push-argument)
0000000099586F91  comment  (;;; <@458,#427> push-argument)
0000000099586F97  comment  (;;; <@460,#428> call-function)
0000000099586F97  position  (7751)
0000000099586F98  code target (STUB)  (0000000099582D00)
0000000099586FA0  comment  (;;; <@462,#429> lazy-bailout)
0000000099586FA0  comment  (;;; <@463,#429> gap)
0000000099586FA3  comment  (;;; <@464,#813> check-smi)
0000000099586FAC  comment  (;;; <@466,#432> gap)
0000000099586FAF  comment  (;;; <@468,#437> -------------------- B63 --------------------)
0000000099586FB6  comment  (;;; <@469,#437> gap)
0000000099586FBA  comment  (;;; <@470,#438> load-context-slot)
0000000099586FC1  comment  (;;; <@471,#438> gap)
0000000099586FC8  comment  (;;; <@472,#439> global-object)
0000000099586FCC  comment  (;;; <@474,#440> global-receiver)
0000000099586FD0  comment  (;;; <@475,#440> gap)
0000000099586FD7  comment  (;;; <@476,#445> check-function)
0000000099586FD9  property cell
0000000099586FEA  comment  (;;; <@478,#449> gap)
0000000099586FEE  comment  (;;; <@479,#449> cmp-object-eq-and-branch)
0000000099586FF0  embedded object  (00000000F5104161 <true>)
0000000099587001  comment  (;;; <@484,#470> -------------------- B65 --------------------)
0000000099587001  comment  (;;; <@486,#471> load-context-slot)
0000000099587005  comment  (;;; <@487,#471> gap)
000000009958700C  comment  (;;; <@488,#474> check-function)
000000009958700E  property cell
000000009958701F  comment  (;;; <@490,#477> load-context-slot)
0000000099587023  comment  (;;; <@492,#478> check-non-smi)
000000009958702D  comment  (;;; <@494,#479> check-maps)
000000009958702F  embedded object  (00000000DFA05979 <Map(elements=3)>)
0000000099587041  comment  (;;; <@496,#480> push-argument)
0000000099587043  comment  (;;; <@498,#481> push-argument)
0000000099587046  comment  (;;; <@500,#482> push-argument)
000000009958704C  comment  (;;; <@502,#483> call-constant-function)
000000009958704E  embedded object  (00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>)
0000000099587061  position  (4135)
0000000099587068  comment  (;;; <@504,#484> lazy-bailout)
0000000099587068  comment  (;;; <@507,#485> branch)
000000009958707D  runtime entry  (deoptimization bailout 31)
0000000099587081  comment  (;;; <@512,#542> -------------------- B67 --------------------)
0000000099587081  comment  (;;; <@513,#542> gap)
0000000099587088  comment  (;;; <@514,#814> dummy-use)
0000000099587088  comment  (;;; <@515,#814> gap)
0000000099587093  comment  (;;; <@516,#543> store-keyed-generic)
0000000099587093  position  (4377)
0000000099587094  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099587098  comment  (;;; <@518,#544> lazy-bailout)
0000000099587098  comment  (;;; <@521,#549> goto)
000000009958709D  comment  (;;; <@526,#492> -------------------- B69 --------------------)
000000009958709D  comment  (;;; <@527,#492> gap)
00000000995870A8  comment  (;;; <@528,#493> load-keyed-generic)
00000000995870A8  position  (4189)
00000000995870A9  code target (KEYED_LOAD_IC)  (000000009951F2A0)
00000000995870AD  comment  (;;; <@529,#493> gap)
00000000995870B4  comment  (;;; <@530,#494> lazy-bailout)
00000000995870B4  comment  (;;; <@531,#494> gap)
00000000995870B8  comment  (;;; <@532,#496> load-context-slot)
00000000995870BC  comment  (;;; <@534,#499> push-argument)
00000000995870C2  comment  (;;; <@536,#501> push-argument)
00000000995870C3  comment  (;;; <@538,#502> call-function)
00000000995870C3  position  (4208)
00000000995870C4  code target (STUB)  (0000000099582D00)
00000000995870CC  comment  (;;; <@540,#503> lazy-bailout)
00000000995870CC  comment  (;;; <@543,#504> branch)
000000009958715A  comment  (;;; <@548,#517> -------------------- B71 --------------------)
000000009958715A  comment  (;;; <@550,#519> push-argument)
000000009958715C  property cell
0000000099587169  comment  (;;; <@552,#521> push-argument)
000000009958716B  comment  (;;; <@554,#523> push-argument)
000000009958716D  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099587177  comment  (;;; <@556,#524> call-runtime)
0000000099587187  code target (STUB)  (00000000995072A0)
000000009958718B  comment  (;;; <@558,#525> check-maps)
000000009958718D  embedded object  (00000000DFA05ED1 <Map(elements=0)>)
000000009958719F  comment  (;;; <@560,#528> load-named-field)
00000000995871A3  comment  (;;; <@561,#528> gap)
00000000995871AA  comment  (;;; <@562,#817> check-smi)
00000000995871B3  comment  (;;; <@563,#817> gap)
00000000995871B6  comment  (;;; <@564,#530> store-keyed)
00000000995871BA  comment  (;;; <@565,#530> gap)
00000000995871C1  comment  (;;; <@566,#534> store-keyed)
00000000995871C5  comment  (;;; <@567,#534> gap)
00000000995871D0  comment  (;;; <@568,#536> store-keyed-generic)
00000000995871D0  position  (4309)
00000000995871D1  code target (KEYED_STORE_IC)  (000000009952D340)
00000000995871D5  comment  (;;; <@570,#540> lazy-bailout)
00000000995871D5  comment  (;;; <@573,#541> goto)
00000000995871DA  comment  (;;; <@578,#511> -------------------- B73 --------------------)
00000000995871DA  comment  (;;; <@580,#513> push-argument)
00000000995871E0  comment  (;;; <@581,#513> gap)
00000000995871E7  comment  (;;; <@582,#815> dummy-use)
00000000995871E7  comment  (;;; <@584,#514> push-argument)
00000000995871E8  comment  (;;; <@586,#515> call-named)
00000000995871EA  embedded object  (00000000FCE14709 <String[4]: push>)
00000000995871F2  position  (4243)
00000000995871F3  code target (CALL_IC)  (000000009951AF60)
00000000995871FB  comment  (;;; <@588,#516> lazy-bailout)
00000000995871FB  comment  (;;; <@591,#539> goto)
0000000099587200  comment  (;;; <@608,#456> -------------------- B78 --------------------)
0000000099587200  comment  (;;; <@609,#456> gap)
0000000099587204  comment  (;;; <@610,#457> load-context-slot)
000000009958720B  comment  (;;; <@612,#460> push-argument)
0000000099587211  comment  (;;; <@614,#461> push-argument)
0000000099587214  comment  (;;; <@616,#462> push-argument)
000000009958721A  comment  (;;; <@617,#462> gap)
0000000099587221  comment  (;;; <@618,#816> dummy-use)
0000000099587221  comment  (;;; <@620,#463> push-argument)
0000000099587222  comment  (;;; <@622,#464> call-function)
0000000099587222  position  (5383)
0000000099587223  code target (STUB)  (0000000099582E00)
000000009958722B  comment  (;;; <@624,#465> lazy-bailout)
000000009958722B  comment  (;;; <@628,#559> -------------------- B79 --------------------)
000000009958722B  comment  (;;; <@629,#559> gap)
000000009958722F  comment  (;;; <@630,#567> add-i)
0000000099587238  comment  (;;; <@632,#601> gap)
000000009958723E  embedded object  (00000000F5104181 <false>)
0000000099587248  embedded object  (00000000F5104181 <false>)
0000000099587252  embedded object  (00000000F5104181 <false>)
000000009958725A  comment  (;;; <@634,#625> -------------------- B80 --------------------)
000000009958725A  comment  (;;; <@636,#627> gap)
000000009958726D  comment  (;;; <@637,#627> goto)
0000000099587272  comment  (;;; <@638,#118> -------------------- B81 --------------------)
0000000099587276  comment  (;;; <@642,#124> -------------------- B82 --------------------)
0000000099587276  comment  (;;; <@643,#124> gap)
000000009958727A  comment  (;;; <@644,#129> add-i)
000000009958727D  comment  (;;; <@646,#624> gap)
000000009958728E  embedded object  (00000000F5104161 <true>)
0000000099587296  comment  (;;; <@648,#648> -------------------- B83 --------------------)
0000000099587296  comment  (;;; <@650,#650> gap)
000000009958729A  comment  (;;; <@651,#650> goto)
000000009958729F  comment  (;;; <@652,#90> -------------------- B84 --------------------)
00000000995872A5  comment  (;;; <@656,#96> -------------------- B85 --------------------)
00000000995872A5  comment  (;;; <@657,#96> gap)
00000000995872A8  comment  (;;; <@658,#99> add-i)
00000000995872B1  comment  (;;; <@660,#647> gap)
00000000995872C1  comment  (;;; <@662,#669> -------------------- B86 --------------------)
00000000995872C1  comment  (;;; <@663,#669> gap)
00000000995872C4  comment  (;;; <@664,#672> add-i)
00000000995872CE  comment  (;;; <@666,#676> gap)
00000000995872DC  comment  (;;; <@668,#695> -------------------- B87 --------------------)
00000000995872DC  comment  (;;; <@669,#695> gap)
00000000995872DF  comment  (;;; <@670,#697> add-i)
00000000995872E9  comment  (;;; <@672,#700> gap)
000000009958730C  comment  (;;; <@673,#700> goto)
0000000099587311  comment  (;;; <@678,#701> -------------------- B89 --------------------)
0000000099587311  comment  (;;; <@681,#704> compare-numeric-and-branch)
000000009958731A  comment  (;;; <@686,#711> -------------------- B91 --------------------)
000000009958731A  comment  (;;; <@688,#716> push-argument)
000000009958731D  comment  (;;; <@689,#716> gap)
0000000099587321  comment  (;;; <@690,#800> smi-tag)
0000000099587325  comment  (;;; <@692,#717> push-argument)
0000000099587326  comment  (;;; <@694,#801> smi-tag)
000000009958732A  comment  (;;; <@696,#718> push-argument)
000000009958732B  comment  (;;; <@698,#719> call-named)
000000009958732D  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099587335  position  (8153)
0000000099587336  code target (CALL_IC)  (0000000099519460)
000000009958733E  comment  (;;; <@700,#720> lazy-bailout)
000000009958733E  comment  (;;; <@702,#723> gap)
0000000099587342  comment  (;;; <@703,#723> branch)
00000000995873D1  comment  (;;; <@716,#730> -------------------- B95 --------------------)
00000000995873D1  comment  (;;; <@717,#730> gap)
00000000995873D5  comment  (;;; <@718,#731> load-context-slot)
00000000995873D9  comment  (;;; <@720,#732> global-object)
00000000995873DD  comment  (;;; <@722,#733> global-receiver)
00000000995873E1  comment  (;;; <@724,#734> push-argument)
00000000995873E2  comment  (;;; <@726,#736> push-argument)
00000000995873E3  comment  (;;; <@728,#737> call-function)
00000000995873E3  position  (8207)
00000000995873E4  code target (STUB)  (0000000099582D00)
00000000995873EC  comment  (;;; <@730,#738> lazy-bailout)
00000000995873EC  comment  (;;; <@734,#746> -------------------- B96 --------------------)
00000000995873EC  comment  (;;; <@735,#746> gap)
00000000995873F0  comment  (;;; <@736,#747> load-context-slot)
00000000995873F7  comment  (;;; <@738,#748> global-object)
00000000995873FB  comment  (;;; <@740,#749> global-receiver)
00000000995873FF  comment  (;;; <@742,#750> push-argument)
0000000099587400  comment  (;;; <@744,#752> push-argument)
0000000099587403  comment  (;;; <@746,#754> push-argument)
0000000099587404  comment  (;;; <@748,#756> push-argument)
0000000099587406  embedded object  (00000000FCE060C1 <String[0]: >)
0000000099587410  comment  (;;; <@750,#758> push-argument)
0000000099587413  comment  (;;; <@752,#759> call-function)
0000000099587413  position  (8228)
0000000099587414  code target (STUB)  (00000000995848C0)
000000009958741C  comment  (;;; <@754,#760> lazy-bailout)
000000009958741C  comment  (;;; <@766,#768> -------------------- B99 --------------------)
000000009958741C  comment  (;;; <@767,#768> gap)
0000000099587420  comment  (;;; <@768,#769> load-context-slot)
0000000099587424  comment  (;;; <@771,#770> branch)
0000000099587439  runtime entry  (deoptimization bailout 47)
000000009958743D  comment  (;;; <@784,#777> -------------------- B103 --------------------)
000000009958743D  comment  (;;; <@786,#778> load-context-slot)
0000000099587444  comment  (;;; <@788,#779> global-object)
0000000099587448  comment  (;;; <@790,#780> global-receiver)
000000009958744C  comment  (;;; <@792,#781> push-argument)
000000009958744D  comment  (;;; <@794,#783> push-argument)
0000000099587450  comment  (;;; <@796,#784> call-function)
0000000099587450  position  (8322)
0000000099587451  code target (STUB)  (0000000099582D00)
0000000099587459  comment  (;;; <@798,#785> lazy-bailout)
0000000099587459  comment  (;;; <@802,#791> -------------------- B104 --------------------)
0000000099587459  comment  (;;; <@803,#791> gap)
000000009958745D  comment  (;;; <@804,#794> return)
0000000099587466  comment  (;;; <@24,#28> -------------------- Deferred allocate --------------------)
000000009958749D  position  (6157)
000000009958749E  code target (STUB)  (0000000099506AA0)
00000000995874C1  comment  (;;; <@48,#79> -------------------- Deferred stack-check --------------------)
00000000995874E6  position  (6336)
00000000995874E7  code target (STUB)  (0000000099506AA0)
0000000099587505  comment  (;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------)
0000000099587536  code target (STUB)  (0000000099506AA0)
000000009958755D  comment  (;;; <@172,#197> -------------------- Deferred stack-check --------------------)
0000000099587582  position  (6707)
0000000099587583  code target (STUB)  (0000000099506AA0)
00000000995875A1  comment  (;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------)
00000000995875D5  code target (STUB)  (0000000099506AA0)
00000000995875FC  comment  (;;; -------------------- Jump table --------------------)
00000000995875FC  comment  (;;; jump table entry 0: deoptimization bailout 1.)
00000000995875FD  runtime entry  (deoptimization bailout 1)
0000000099587601  comment  (;;; jump table entry 1: deoptimization bailout 2.)
0000000099587602  runtime entry  (deoptimization bailout 2)
0000000099587606  comment  (;;; jump table entry 2: deoptimization bailout 4.)
0000000099587607  runtime entry  (deoptimization bailout 4)
000000009958760B  comment  (;;; jump table entry 3: deoptimization bailout 7.)
000000009958760C  runtime entry  (deoptimization bailout 7)
0000000099587610  comment  (;;; jump table entry 4: deoptimization bailout 9.)
0000000099587611  runtime entry  (deoptimization bailout 9)
0000000099587615  comment  (;;; jump table entry 5: deoptimization bailout 11.)
0000000099587616  runtime entry  (deoptimization bailout 11)
000000009958761A  comment  (;;; jump table entry 6: deoptimization bailout 23.)
000000009958761B  runtime entry  (deoptimization bailout 23)
000000009958761F  comment  (;;; jump table entry 7: deoptimization bailout 25.)
0000000099587620  runtime entry  (deoptimization bailout 25)
0000000099587624  comment  (;;; jump table entry 8: deoptimization bailout 26.)
0000000099587625  runtime entry  (deoptimization bailout 26)
0000000099587629  comment  (;;; jump table entry 9: deoptimization bailout 27.)
000000009958762A  runtime entry  (deoptimization bailout 27)
000000009958762E  comment  (;;; jump table entry 10: deoptimization bailout 28.)
000000009958762F  runtime entry  (deoptimization bailout 28)
0000000099587633  comment  (;;; jump table entry 11: deoptimization bailout 29.)
0000000099587634  runtime entry  (deoptimization bailout 29)
0000000099587638  comment  (;;; jump table entry 12: deoptimization bailout 35.)
0000000099587639  runtime entry  (deoptimization bailout 35)
000000009958763D  comment  (;;; jump table entry 13: deoptimization bailout 36.)
000000009958763E  runtime entry  (deoptimization bailout 36)
0000000099587642  comment  (;;; jump table entry 14: deoptimization bailout 40.)
0000000099587643  runtime entry  (deoptimization bailout 40)
0000000099587647  comment  (;;; jump table entry 15: deoptimization bailout 41.)
0000000099587648  runtime entry  (deoptimization bailout 41)
000000009958764C  comment  (;;; jump table entry 16: deoptimization bailout 42.)
000000009958764D  runtime entry  (deoptimization bailout 42)
0000000099587651  comment  (;;; jump table entry 17: deoptimization bailout 43.)
0000000099587652  runtime entry  (deoptimization bailout 43)
0000000099587658  comment  (;;; Safepoint table.)

[deoptimizing (DEOPT eager): begin 0xf3f89bf1 parseString @23, FP to SP delta: 232]
            ;;; jump table entry 6: deoptimization bailout 23.
  translating parseString => node=618, height=120
    0x002cef60: [top + 160] <- 0xf515fca9 ; [sp + 256] 00000000F515FCA9 <JS Global Object>
    0x002cef58: [top + 152] <- 0x88aec121 ; [sp + 248] 0000000088AEC121 <String[7]: foo=bar>
    0x002cef50: [top + 144] <- 0x99582838 ; caller's pc
    0x002cef48: [top + 136] <- 0x002cef80 ; caller's fp
    0x002cef40: [top + 128] <- 0xf3f89839; context
    0x002cef38: [top + 120] <- 0xf3f89bf1; function
    0x002cef30: [top + 112] <- 0xf5104181 ; [sp + 192] 00000000F5104181 <false>
    0x002cef28: [top + 104] <- 0xf5104181 ; rbx 00000000F5104181 <false>
    0x002cef20: [top + 96] <- 0xf5104181 ; [sp + 136] 00000000F5104181 <false>
    0x002cef18: [top + 88] <- 0x700000000 ; [sp + 184] 7
    0x002cef10: [top + 80] <- 7 ; [sp + 112] (smi)
    0x002cef08: [top + 72] <- 0xf3fa3771 ; [sp + 176] 00000000F3FA3771 <an Object with map 00000000DFA06CE1>
    0x002cef00: [top + 64] <- 00000000F5104121 <undefined> ; literal
    0x002ceef8: [top + 56] <- 00000000F5104121 <undefined> ; literal
    0x002ceef0: [top + 48] <- 00000000F5104121 <undefined> ; literal
    0x002ceee8: [top + 40] <- 00000000F5104121 <undefined> ; literal
    0x002ceee0: [top + 32] <- 0 ; [sp + 168] (smi)
    0x002ceed8: [top + 24] <- 00000000F5104121 <undefined> ; literal
    0x002ceed0: [top + 16] <- 7 ; [sp + 112] (smi)
    0x002ceec8: [top + 8] <- 0xf3fa3789 ; rax 00000000F3FA3789 <String[3]: foo>
    0x002ceec0: [top + 0] <- 0xf3fa37a9 ; [sp + 56] 00000000F3FA37A9 <String[3]: bar>
[deoptimizing (eager): end 0xf3f89bf1 parseString @23 => node=618, pc=0x99581572, state=NO_REGISTERS, alignment=no padding, took 0.000 ms]
[removing optimized code for: parseString]
-----------------------------------------------------------
Compiling method parseString using hydrogen
--- Raw source ---
(str) {
    containsSparse = false;
    var decodeKey = false;
    var decodeValue = false;
    var possiblyNested = false;
    var len = str.length;
    var i = 0;
    var dictionary = {};
    var keyStart = 0;
    var keyEnd = 0;
    var valueStart = 0;
    var valueEnd = 0;
    var left = 0;

    mainloop: for (; i < len; ++i) {
        var ch = str.charCodeAt(i);
        if (ch === 91) {
            left++;
        }
        else if (left > 0 && ch === 93) {
            possiblyNested = true;
            left--;
        }
        else if (left === 0 && ch === 61) {
            var j = i + 1;
            keyEnd = i - 1;
            valueEnd = valueStart = j;
            for (; j < len; ++j) {
                ch = str.charCodeAt(j);

                if (ch === 43 || ch === 37) {
                    decodeValue = true;
                }
                else if (ch === 38) {
                    i = j - 1;
                    valueEnd = i;
                    var key = str.slice(keyStart, keyEnd + 1);
                    var value = str.slice(valueStart, valueEnd + 1);
                    if (decodeKey) key = decode(key);
                    if (decodeValue) value = decode(value);
                    placeValue(dictionary, key, value, possiblyNested);

                    decodeValue = decodeKey = false;
                    possiblyNested = false;
                    keyEnd = keyStart = j + 1;
                    continue mainloop;
                }
            }
            i = j;
            valueEnd = j - 1;
            var key = str.slice(keyStart, keyEnd + 1);
            var value = str.slice(valueStart, valueEnd + 1);
            if (decodeKey) key = decode(key);
            if (decodeValue) value = decode(value);
            placeValue(dictionary, key, value, possiblyNested);
            decodeValue = decodeKey = false;
            possiblyNested = false;
            keyEnd = keyStart = j + 1;
        }
        else if (ch === 43 || ch === 37) {
            decodeKey = true;
        }
        keyEnd = i + 1;

    }

    if (keyEnd !== keyStart) {

        var value = "";
        var key = str.slice(keyStart, keyEnd);
        if (decodeKey) key = decode(key);
        placeValue(dictionary, key, value, possiblyNested);
    }


    if (containsSparse) {
        compact(dictionary);
    }

    return dictionary;
}


--- Optimized code ---
kind = OPTIMIZED_FUNCTION
name = parseString
stack_slots = 27
Instructions (size = 3880)
0000000099587860     0  55             push rbp
0000000099587861     1  4889e5         REX.W movq rbp,rsp
0000000099587864     4  56             push rsi
0000000099587865     5  57             push rdi
0000000099587866     6  4881ecd8000000 REX.W subq rsp,0xd8
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
000000009958786D    13  488bc6         REX.W movq rax,rsi
                  ;;; <@3,#1> gap
0000000099587870    16  488945e8       REX.W movq [rbp-0x18],rax
                  ;;; <@10,#8> -------------------- B1 --------------------
                  ;;; <@12,#10> stack-check
0000000099587874    20  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099587878    24  7305           jnc 31  (000000009958787F)
000000009958787A    26  e801e5f8ff     call 0000000099515D80    ;; code: STUB, StackCheckStub, minor: 0
                  ;;; <@14,#11> constant-t
000000009958787F    31  48b8814110f500000000 REX.W movq rax,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@15,#11> gap
0000000099587889    41  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@16,#12> store-context-slot
000000009958788D    45  4889436f       REX.W movq [rbx+0x6f],rax
                  ;;; <@17,#12> gap
0000000099587891    49  488b4d10       REX.W movq rcx,[rbp+0x10]
                  ;;; <@18,#21> check-non-smi
0000000099587895    53  f6c101         testb rcx,0x1
0000000099587898    56  0f84fe0c0000   jz 3388  (000000009958859C)
                  ;;; <@20,#22> check-instance-type
000000009958789E    62  4c8b51ff       REX.W movq r10,[rcx-0x1]
00000000995878A2    66  41f6420b80     testb [r10+0xb],0x80
00000000995878A7    71  0f85f40c0000   jnz 3393  (00000000995885A1)
                  ;;; <@22,#23> load-named-field
00000000995878AD    77  488b790f       REX.W movq rdi,[rcx+0xf]
                  ;;; <@23,#23> gap
00000000995878B1    81  48897dd0       REX.W movq [rbp-0x30],rdi
                  ;;; <@24,#28> allocate
00000000995878B5    85  4d8b85c8090000 REX.W movq r8,[r13+0x9c8]
00000000995878BC    92  498bc0         REX.W movq rax,r8
00000000995878BF    95  4883c018       REX.W addq rax,0x18
00000000995878C3    99  0f823d0b0000   jc 2982  (0000000099588406)
00000000995878C9   105  493b85d0090000 REX.W cmpq rax,[r13+0x9d0]
00000000995878D0   112  0f87300b0000   ja 2982  (0000000099588406)
00000000995878D6   118  498985c8090000 REX.W movq [r13+0x9c8],rax
00000000995878DD   125  49ffc0         REX.W incq r8
                  ;;; <@25,#28> gap
00000000995878E0   128  4c8945c8       REX.W movq [rbp-0x38],r8
                  ;;; <@26,#29> sub-allocated-object
00000000995878E4   132  498d00         REX.W leaq rax,[r8]
                  ;;; <@28,#31> store-named-field
00000000995878E7   135  49bae16ca0df00000000 REX.W movq r10,00000000DFA06CE1    ;; object: 00000000DFA06CE1 <Map(elements=3)>
00000000995878F1   145  4c8950ff       REX.W movq [rax-0x1],r10
                  ;;; <@30,#33> store-named-field
00000000995878F5   149  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
00000000995878FF   159  4c89500f       REX.W movq [rax+0xf],r10
                  ;;; <@32,#35> store-named-field
0000000099587903   163  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
000000009958790D   173  4c895007       REX.W movq [rax+0x7],r10
                  ;;; <@33,#35> gap
0000000099587911   177  4c8bcf         REX.W movq r9,rdi
                  ;;; <@34,#796> smi-untag
0000000099587914   180  49c1e920       REX.W shrq r9,32
                  ;;; <@35,#796> gap
0000000099587918   184  4c894d98       REX.W movq [rbp-0x68],r9
                  ;;; <@36,#66> gap
000000009958791C   188  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587926   198  4c8955d8       REX.W movq [rbp-0x28],r10
000000009958792A   202  49ba814110f500000000 REX.W movq r10,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587934   212  4c8955e0       REX.W movq [rbp-0x20],r10
0000000099587938   216  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587942   226  41bf00000000   movl r15,0000000000000000
0000000099587948   232  41be00000000   movl r14,0000000000000000
000000009958794E   238  b800000000     movl rax,0000000000000000
0000000099587953   243  41bb00000000   movl r11,0000000000000000
                  ;;; <@38,#67> -------------------- B2 (loop header) --------------------
0000000099587959   249  488955a0       REX.W movq [rbp-0x60],rdx
000000009958795D   253  4c897db0       REX.W movq [rbp-0x50],r15
0000000099587961   257  4c8975b8       REX.W movq [rbp-0x48],r14
0000000099587965   261  4c895dc0       REX.W movq [rbp-0x40],r11
                  ;;; <@41,#70> compare-numeric-and-branch
0000000099587969   265  453bf9         cmpl r15,r9
000000009958796C   268  0f8d3f090000   jge 2641  (00000000995882B1)
                  ;;; <@46,#77> -------------------- B4 --------------------
                  ;;; <@48,#79> stack-check
0000000099587972   274  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099587976   278  0f82e50a0000   jc 3073  (0000000099588461)
                  ;;; <@50,#83> load-named-field
000000009958797C   284  488b410f       REX.W movq rax,[rcx+0xf]
                  ;;; <@52,#802> smi-untag
0000000099587980   288  48c1e820       REX.W shrq rax,32
                  ;;; <@53,#802> gap
0000000099587984   292  48894590       REX.W movq [rbp-0x70],rax
                  ;;; <@54,#84> bounds-check
0000000099587988   296  493bc7         REX.W cmpq rax,r15
000000009958798B   299  0f86150c0000   jna 3398  (00000000995885A6)
                  ;;; <@55,#84> gap
0000000099587991   305  498bdf         REX.W movq rbx,r15
                  ;;; <@56,#85> string-char-code-at
0000000099587994   308  488b79ff       REX.W movq rdi,[rcx-0x1]
0000000099587998   312  0fb67f0b       movzxbl rdi,[rdi+0xb]
000000009958799C   316  40f6c701       testb rdi,0x1
00000000995879A0   320  742f           jz 369  (00000000995879D1)
00000000995879A2   322  40f6c702       testb rdi,0x2
00000000995879A6   326  740c           jz 340  (00000000995879B4)
00000000995879A8   328  8b7923         movl rdi,[rcx+0x23]
00000000995879AB   331  4803df         REX.W addq rbx,rdi
00000000995879AE   334  488b4917       REX.W movq rcx,[rcx+0x17]
00000000995879B2   338  eb15           jmp 361  (00000000995879C9)
00000000995879B4   340  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
00000000995879BB   347  4c39511f       REX.W cmpq [rcx+0x1f],r10
00000000995879BF   351  0f85e00a0000   jnz 3141  (00000000995884A5)
00000000995879C5   357  488b4917       REX.W movq rcx,[rcx+0x17]
00000000995879C9   361  488b79ff       REX.W movq rdi,[rcx-0x1]
00000000995879CD   365  0fb67f0b       movzxbl rdi,[rdi+0xb]
00000000995879D1   369  40f6c703       testb rdi,0x3
00000000995879D5   373  7420           jz 407  (00000000995879F7)
00000000995879D7   375  40f6c710       testb rdi,0x10
00000000995879DB   379  0f85c40a0000   jnz 3141  (00000000995884A5)
00000000995879E1   385  40f6c704       testb rdi,0x4
00000000995879E5   389  488b791f       REX.W movq rdi,[rcx+0x1f]
00000000995879E9   393  7506           jnz 401  (00000000995879F1)
00000000995879EB   395  0fb73c5f       movzxwl rdi,[rdi+rbx*2]
00000000995879EF   399  eb18           jmp 425  (0000000099587A09)
00000000995879F1   401  0fb63c1f       movzxbl rdi,[rdi+rbx*1]
00000000995879F5   405  eb12           jmp 425  (0000000099587A09)
00000000995879F7   407  40f6c704       testb rdi,0x4
00000000995879FB   411  7507           jnz 420  (0000000099587A04)
00000000995879FD   413  0fb77c5917     movzxwl rdi,[rcx+rbx*2+0x17]
0000000099587A02   418  eb05           jmp 425  (0000000099587A09)
0000000099587A04   420  0fb67c1917     movzxbl rdi,[rcx+rbx*1+0x17]
                  ;;; <@57,#85> gap
0000000099587A09   425  48897da8       REX.W movq [rbp-0x58],rdi
                  ;;; <@59,#89> compare-numeric-and-branch
0000000099587A0D   429  83ff5b         cmpl rdi,0x5b
0000000099587A10   432  0f8429080000   jz 2527  (000000009958823F)
                  ;;; <@64,#101> -------------------- B6 --------------------
                  ;;; <@67,#104> compare-numeric-and-branch
0000000099587A16   438  4183fb00       cmpl r11,0x0
0000000099587A1A   442  0f8e3a000000   jle 506  (0000000099587A5A)
                  ;;; <@76,#111> -------------------- B9 --------------------
                  ;;; <@78,#114> deoptimize
                  ;;; deoptimize: insufficient type feedback for combined type
0000000099587A20   448  e80de6e7ff     call 0000000099406032    ;; debug: position 6463
                                                             ;; soft deoptimization bailout 5
                  ;;; <@79,#114> gap
0000000099587A25   453  488bdf         REX.W movq rbx,rdi
                  ;;; <@80,#803> smi-tag
0000000099587A28   456  48c1e320       REX.W shlq rbx,32
                  ;;; <@82,#804> constant-t
0000000099587A2C   460  48b9000000005d000000 REX.W movq rcx,0000005D00000000
                  ;;; <@83,#804> gap
0000000099587A36   470  4887d3         REX.W xchgq rdx,rbx
0000000099587A39   473  4891           REX.W xchgq rax, rcx
                  ;;; <@84,#115> cmp-t
0000000099587A3B   475  e8e065f8ff     call 000000009950E020    ;; debug: position 6473
                                                             ;; code: COMPARE_IC, UNINITIALIZED
0000000099587A40   480  90             nop
0000000099587A41   481  4885c0         REX.W testq rax,rax
0000000099587A44   484  7406           jz 492  (0000000099587A4C)
0000000099587A46   486  498b45c8       REX.W movq rax,[r13-0x38]
0000000099587A4A   490  eb04           jmp 496  (0000000099587A50)
0000000099587A4C   492  498b45c0       REX.W movq rax,[r13-0x40]
                  ;;; <@86,#116> lazy-bailout
                  ;;; <@89,#117> branch
0000000099587A50   496  493b45c0       REX.W cmpq rax,[r13-0x40]
0000000099587A54   500  0f84b8070000   jz 2482  (0000000099588212)
                  ;;; <@94,#131> -------------------- B11 --------------------
                  ;;; <@96,#134> gap
0000000099587A5A   506  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@97,#134> compare-numeric-and-branch
0000000099587A5E   510  83f800         cmpl rax,0x0
0000000099587A61   513  0f8409000000   jz 528  (0000000099587A70)
                  ;;; <@98,#138> -------------------- B12 --------------------
                  ;;; <@100,#140> gap
0000000099587A67   519  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@101,#140> goto
0000000099587A6B   523  e90d000000     jmp 541  (0000000099587A7D)
                  ;;; <@106,#141> -------------------- B14 --------------------
                  ;;; <@108,#144> gap
0000000099587A70   528  488b5da8       REX.W movq rbx,[rbp-0x58]
                  ;;; <@109,#144> compare-numeric-and-branch
0000000099587A74   532  83fb3d         cmpl rbx,0x3d
0000000099587A77   535  0f843d000000   jz 602  (0000000099587ABA)
                  ;;; <@114,#571> -------------------- B16 --------------------
                  ;;; <@117,#574> compare-numeric-and-branch
0000000099587A7D   541  83fb2b         cmpl rbx,0x2b
0000000099587A80   544  0f8412000000   jz 568  (0000000099587A98)
                  ;;; <@122,#581> -------------------- B18 --------------------
                  ;;; <@125,#584> compare-numeric-and-branch
0000000099587A86   550  83fb25         cmpl rbx,0x25
0000000099587A89   553  0f8409000000   jz 568  (0000000099587A98)
                  ;;; <@130,#596> -------------------- B20 --------------------
                  ;;; <@132,#598> gap
0000000099587A8F   559  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@133,#598> goto
0000000099587A93   563  e90a000000     jmp 578  (0000000099587AA2)
                  ;;; <@142,#591> -------------------- B23 --------------------
                  ;;; <@144,#595> gap
0000000099587A98   568  48bb614110f500000000 REX.W movq rbx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@146,#602> -------------------- B24 --------------------
                  ;;; <@148,#604> gap
0000000099587AA2   578  488bfb         REX.W movq rdi,rbx
0000000099587AA5   581  488b4de0       REX.W movq rcx,[rbp-0x20]
0000000099587AA9   585  488b55a0       REX.W movq rdx,[rbp-0x60]
0000000099587AAD   589  488b5db0       REX.W movq rbx,[rbp-0x50]
0000000099587AB1   593  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@149,#604> goto
0000000099587AB5   597  e940070000     jmp 2458  (00000000995881FA)
                  ;;; <@154,#151> -------------------- B26 --------------------
                  ;;; <@155,#151> gap
0000000099587ABA   602  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@156,#154> add-i
0000000099587ABE   606  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@157,#154> gap
0000000099587AC1   609  488955a8       REX.W movq [rbp-0x58],rdx
0000000099587AC5   613  488bcb         REX.W movq rcx,rbx
                  ;;; <@158,#159> sub-i
0000000099587AC8   616  83e901         subl rcx,0x1
0000000099587ACB   619  0f80da0a0000   jo 3403  (00000000995885AB)
                  ;;; <@160,#184> gap
0000000099587AD1   625  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099587AD5   629  488bda         REX.W movq rbx,rdx
                  ;;; <@162,#185> -------------------- B27 (loop header) --------------------
0000000099587AD8   632  48897d80       REX.W movq [rbp-0x80],rdi
0000000099587ADC   636  48895d88       REX.W movq [rbp-0x78],rbx
                  ;;; <@165,#188> compare-numeric-and-branch
0000000099587AE0   640  3b5d98         cmpl rbx,[rbp-0x68]
0000000099587AE3   643  0f8d3f030000   jge 1480  (0000000099587E28)
                  ;;; <@170,#195> -------------------- B29 --------------------
                  ;;; <@172,#197> stack-check
0000000099587AE9   649  493b6558       REX.W cmpq rsp,[r13+0x58]
0000000099587AED   653  0f820a0a0000   jc 3229  (00000000995884FD)
                  ;;; <@174,#202> bounds-check
0000000099587AF3   659  48395d90       REX.W cmpq [rbp-0x70],rbx
0000000099587AF7   663  0f86b30a0000   jna 3408  (00000000995885B0)
                  ;;; <@175,#202> gap
0000000099587AFD   669  4c8b4d10       REX.W movq r9,[rbp+0x10]
0000000099587B01   673  4c8bc3         REX.W movq r8,rbx
                  ;;; <@176,#203> string-char-code-at
0000000099587B04   676  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099587B08   680  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099587B0D   685  41f6c301       testb r11,0x1
0000000099587B11   689  7431           jz 740  (0000000099587B44)
0000000099587B13   691  41f6c302       testb r11,0x2
0000000099587B17   695  740d           jz 710  (0000000099587B26)
0000000099587B19   697  458b5923       movl r11,[r9+0x23]
0000000099587B1D   701  4d03c3         REX.W addq r8,r11
0000000099587B20   704  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099587B24   708  eb15           jmp 731  (0000000099587B3B)
0000000099587B26   710  4d8b95a8030000 REX.W movq r10,[r13+0x3a8]
0000000099587B2D   717  4d39511f       REX.W cmpq [r9+0x1f],r10
0000000099587B31   721  0f850a0a0000   jnz 3297  (0000000099588541)
0000000099587B37   727  4d8b4917       REX.W movq r9,[r9+0x17]
0000000099587B3B   731  4d8b59ff       REX.W movq r11,[r9-0x1]
0000000099587B3F   735  450fb65b0b     movzxbl r11,[r11+0xb]
0000000099587B44   740  41f6c303       testb r11,0x3
0000000099587B48   744  7422           jz 780  (0000000099587B6C)
0000000099587B4A   746  41f6c310       testb r11,0x10
0000000099587B4E   750  0f85ed090000   jnz 3297  (0000000099588541)
0000000099587B54   756  41f6c304       testb r11,0x4
0000000099587B58   760  4d8b591f       REX.W movq r11,[r9+0x1f]
0000000099587B5C   764  7507           jnz 773  (0000000099587B65)
0000000099587B5E   766  470fb71c43     movzxwl r11,[r11+r8*2]
0000000099587B63   771  eb1b           jmp 800  (0000000099587B80)
0000000099587B65   773  470fb61c03     movzxbl r11,[r11+r8*1]
0000000099587B6A   778  eb14           jmp 800  (0000000099587B80)
0000000099587B6C   780  41f6c304       testb r11,0x4
0000000099587B70   784  7508           jnz 794  (0000000099587B7A)
0000000099587B72   786  470fb75c4117   movzxwl r11,[r9+r8*2+0x17]
0000000099587B78   792  eb06           jmp 800  (0000000099587B80)
0000000099587B7A   794  470fb65c0117   movzxbl r11,[r9+r8*1+0x17]
                  ;;; <@177,#203> gap
0000000099587B80   800  4c899d78ffffff REX.W movq [rbp-0x88],r11
                  ;;; <@179,#207> compare-numeric-and-branch
0000000099587B87   807  4183fb2b       cmpl r11,0x2b
0000000099587B8B   811  0f8419000000   jz 842  (0000000099587BAA)
                  ;;; <@184,#214> -------------------- B31 --------------------
                  ;;; <@187,#217> compare-numeric-and-branch
0000000099587B91   817  4183fb25       cmpl r11,0x25
0000000099587B95   821  0f840f000000   jz 842  (0000000099587BAA)
                  ;;; <@192,#227> -------------------- B33 --------------------
                  ;;; <@195,#230> compare-numeric-and-branch
0000000099587B9B   827  4183fb26       cmpl r11,0x26
0000000099587B9F   831  0f8417000000   jz 860  (0000000099587BBC)
0000000099587BA5   837  e90a000000     jmp 852  (0000000099587BB4)
                  ;;; <@212,#224> -------------------- B38 --------------------
                  ;;; <@214,#347> gap
0000000099587BAA   842  48bf614110f500000000 REX.W movq rdi,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@216,#352> -------------------- B39 --------------------
                  ;;; <@218,#354> add-i
0000000099587BB4   852  83c301         addl rbx,0x1
                  ;;; <@221,#357> goto
0000000099587BB7   855  e91cffffff     jmp 632  (0000000099587AD8)
                  ;;; <@226,#237> -------------------- B41 --------------------
                  ;;; <@228,#240> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099587BBC   860  e8a3e4e7ff     call 0000000099406064    ;; debug: position 6894
                                                             ;; soft deoptimization bailout 10
                  ;;; <@229,#240> gap
0000000099587BC1   865  4c8bc3         REX.W movq r8,rbx
                  ;;; <@230,#241> sub-i
0000000099587BC4   868  4183e801       subl r8,0x1
0000000099587BC8   872  0f80e7090000   jo 3413  (00000000995885B5)
                  ;;; <@231,#241> gap
0000000099587BCE   878  4c898570ffffff REX.W movq [rbp-0x90],r8
                  ;;; <@232,#249> add-i
0000000099587BD5   885  83c101         addl rcx,0x1
                  ;;; <@234,#251> push-argument
0000000099587BD8   888  ff7510         push [rbp+0x10]
                  ;;; <@235,#251> gap
0000000099587BDB   891  4c8b4db8       REX.W movq r9,[rbp-0x48]
                  ;;; <@236,#798> smi-tag
0000000099587BDF   895  49c1e120       REX.W shlq r9,32
                  ;;; <@238,#252> push-argument
0000000099587BE3   899  4151           push r9
                  ;;; <@240,#808> smi-tag
0000000099587BE5   901  48c1e120       REX.W shlq rcx,32
                  ;;; <@242,#253> push-argument
0000000099587BE9   905  51             push rcx
                  ;;; <@244,#254> call-named
0000000099587BEA   906  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099587BF4   916  e86718f9ff     call 0000000099519460    ;; debug: position 7003
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099587BF9   921  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@245,#254> gap
0000000099587BFD   925  48898568ffffff REX.W movq [rbp-0x98],rax
                  ;;; <@246,#255> lazy-bailout
                  ;;; <@247,#255> gap
0000000099587C04   932  488b9d70ffffff REX.W movq rbx,[rbp-0x90]
                  ;;; <@248,#260> add-i
0000000099587C0B   939  8d5301         leal rdx,[rbx+0x1]
                  ;;; <@250,#262> push-argument
0000000099587C0E   942  ff7510         push [rbp+0x10]
                  ;;; <@251,#262> gap
0000000099587C11   945  488b4da8       REX.W movq rcx,[rbp-0x58]
                  ;;; <@252,#805> smi-tag
0000000099587C15   949  48c1e120       REX.W shlq rcx,32
                  ;;; <@254,#263> push-argument
0000000099587C19   953  51             push rcx
                  ;;; <@256,#809> smi-tag
0000000099587C1A   954  48c1e220       REX.W shlq rdx,32
                  ;;; <@258,#264> push-argument
0000000099587C1E   958  52             push rdx
                  ;;; <@260,#265> call-named
0000000099587C1F   959  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099587C29   969  e83218f9ff     call 0000000099519460    ;; debug: position 7068
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099587C2E   974  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@261,#265> gap
0000000099587C32   978  48898560ffffff REX.W movq [rbp-0xa0],rax
                  ;;; <@262,#266> lazy-bailout
                  ;;; <@264,#269> gap
0000000099587C39   985  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@265,#269> branch
0000000099587C3D   989  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099587C41   993  0f8485000000   jz 1132  (0000000099587CCC)
0000000099587C47   999  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587C4B  1003  0f8487000000   jz 1144  (0000000099587CD8)
0000000099587C51  1009  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099587C55  1013  0f8471000000   jz 1132  (0000000099587CCC)
0000000099587C5B  1019  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099587C5F  1023  0f8467000000   jz 1132  (0000000099587CCC)
0000000099587C65  1029  4885db         REX.W testq rbx,rbx
0000000099587C68  1032  0f845e000000   jz 1132  (0000000099587CCC)
0000000099587C6E  1038  f6c301         testb rbx,0x1
0000000099587C71  1041  0f8461000000   jz 1144  (0000000099587CD8)
0000000099587C77  1047  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099587C7B  1051  41f6420d20     testb [r10+0xd],0x20
0000000099587C80  1056  0f8546000000   jnz 1132  (0000000099587CCC)
0000000099587C86  1062  41807a0bad     cmpb [r10+0xb],0xad
0000000099587C8B  1067  0f8347000000   jnc 1144  (0000000099587CD8)
0000000099587C91  1073  41807a0b80     cmpb [r10+0xb],0x80
0000000099587C96  1078  7310           jnc 1096  (0000000099587CA8)
0000000099587C98  1080  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099587C9D  1085  0f8535000000   jnz 1144  (0000000099587CD8)
0000000099587CA3  1091  e924000000     jmp 1132  (0000000099587CCC)
0000000099587CA8  1096  41807a0b80     cmpb [r10+0xb],0x80
0000000099587CAD  1101  0f8425000000   jz 1144  (0000000099587CD8)
0000000099587CB3  1107  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099587CB7  1111  7513           jnz 1132  (0000000099587CCC)
0000000099587CB9  1113  0f57c0         xorps xmm0, xmm0
0000000099587CBC  1116  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099587CC1  1121  0f8405000000   jz 1132  (0000000099587CCC)
0000000099587CC7  1127  e90c000000     jmp 1144  (0000000099587CD8)
                  ;;; <@270,#288> -------------------- B43 --------------------
                  ;;; <@272,#290> gap
0000000099587CCC  1132  488b8568ffffff REX.W movq rax,[rbp-0x98]
                  ;;; <@273,#290> goto
0000000099587CD3  1139  e920000000     jmp 1176  (0000000099587CF8)
                  ;;; <@278,#276> -------------------- B45 --------------------
                  ;;; <@279,#276> gap
0000000099587CD8  1144  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@280,#277> load-context-slot
0000000099587CDC  1148  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@282,#278> global-object
0000000099587CE0  1152  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@284,#279> global-receiver
0000000099587CE4  1156  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@286,#280> push-argument
0000000099587CE8  1160  51             push rcx
                  ;;; <@288,#282> push-argument
0000000099587CE9  1161  ffb568ffffff   push [rbp-0x98]
                  ;;; <@290,#283> call-function
0000000099587CEF  1167  e80cb0ffff     call 0000000099582D00    ;; debug: position 7142
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099587CF4  1172  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@292,#284> lazy-bailout
                  ;;; <@296,#292> -------------------- B46 --------------------
0000000099587CF8  1176  48898558ffffff REX.W movq [rbp-0xa8],rax
                  ;;; <@298,#294> gap
0000000099587CFF  1183  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@299,#294> branch
0000000099587D03  1187  493b5da8       REX.W cmpq rbx,[r13-0x58]
0000000099587D07  1191  0f8485000000   jz 1330  (0000000099587D92)
0000000099587D0D  1197  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587D11  1201  0f8487000000   jz 1342  (0000000099587D9E)
0000000099587D17  1207  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099587D1B  1211  0f8471000000   jz 1330  (0000000099587D92)
0000000099587D21  1217  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099587D25  1221  0f8467000000   jz 1330  (0000000099587D92)
0000000099587D2B  1227  4885db         REX.W testq rbx,rbx
0000000099587D2E  1230  0f845e000000   jz 1330  (0000000099587D92)
0000000099587D34  1236  f6c301         testb rbx,0x1
0000000099587D37  1239  0f8461000000   jz 1342  (0000000099587D9E)
0000000099587D3D  1245  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099587D41  1249  41f6420d20     testb [r10+0xd],0x20
0000000099587D46  1254  0f8546000000   jnz 1330  (0000000099587D92)
0000000099587D4C  1260  41807a0bad     cmpb [r10+0xb],0xad
0000000099587D51  1265  0f8347000000   jnc 1342  (0000000099587D9E)
0000000099587D57  1271  41807a0b80     cmpb [r10+0xb],0x80
0000000099587D5C  1276  7310           jnc 1294  (0000000099587D6E)
0000000099587D5E  1278  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099587D63  1283  0f8535000000   jnz 1342  (0000000099587D9E)
0000000099587D69  1289  e924000000     jmp 1330  (0000000099587D92)
0000000099587D6E  1294  41807a0b80     cmpb [r10+0xb],0x80
0000000099587D73  1299  0f8425000000   jz 1342  (0000000099587D9E)
0000000099587D79  1305  4d3b55f8       REX.W cmpq r10,[r13-0x8]
0000000099587D7D  1309  7513           jnz 1330  (0000000099587D92)
0000000099587D7F  1311  0f57c0         xorps xmm0, xmm0
0000000099587D82  1314  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099587D87  1319  0f8405000000   jz 1330  (0000000099587D92)
0000000099587D8D  1325  e90c000000     jmp 1342  (0000000099587D9E)
                  ;;; <@304,#313> -------------------- B48 --------------------
                  ;;; <@306,#315> gap
0000000099587D92  1330  488b8560ffffff REX.W movq rax,[rbp-0xa0]
                  ;;; <@307,#315> goto
0000000099587D99  1337  e920000000     jmp 1374  (0000000099587DBE)
                  ;;; <@312,#301> -------------------- B50 --------------------
                  ;;; <@313,#301> gap
0000000099587D9E  1342  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@314,#302> load-context-slot
0000000099587DA2  1346  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@316,#303> global-object
0000000099587DA6  1350  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@318,#304> global-receiver
0000000099587DAA  1354  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@320,#305> push-argument
0000000099587DAE  1358  51             push rcx
                  ;;; <@322,#307> push-argument
0000000099587DAF  1359  ffb560ffffff   push [rbp-0xa0]
                  ;;; <@324,#308> call-function
0000000099587DB5  1365  e846afffff     call 0000000099582D00    ;; debug: position 7200
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099587DBA  1370  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@326,#309> lazy-bailout
                  ;;; <@330,#317> -------------------- B51 --------------------
                  ;;; <@331,#317> gap
0000000099587DBE  1374  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@332,#318> load-context-slot
0000000099587DC2  1378  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@334,#319> global-object
0000000099587DC9  1385  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@336,#320> global-receiver
0000000099587DCD  1389  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@338,#321> push-argument
0000000099587DD1  1393  52             push rdx
                  ;;; <@340,#323> push-argument
0000000099587DD2  1394  ff75c8         push [rbp-0x38]
                  ;;; <@342,#325> push-argument
0000000099587DD5  1397  ffb558ffffff   push [rbp-0xa8]
                  ;;; <@344,#327> push-argument
0000000099587DDB  1403  50             push rax
                  ;;; <@346,#329> push-argument
0000000099587DDC  1404  ff75a0         push [rbp-0x60]
                  ;;; <@348,#330> call-function
0000000099587DDF  1407  e8dccaffff     call 00000000995848C0    ;; debug: position 7235
                                                             ;; code: STUB, CallFunctionStub, argc = 4
0000000099587DE4  1412  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@350,#331> lazy-bailout
                  ;;; <@352,#339> deoptimize
                  ;;; deoptimize: Insufficient type feedback for left side
0000000099587DE8  1416  e8bde2e7ff     call 00000000994060AA    ;; soft deoptimization bailout 17
                  ;;; <@353,#339> gap
0000000099587DED  1421  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@354,#340> add-i
0000000099587DF1  1425  83c001         addl rax,0x1
                  ;;; <@356,#345> gap
0000000099587DF4  1428  488b8d70ffffff REX.W movq rcx,[rbp-0x90]
0000000099587DFB  1435  488bd0         REX.W movq rdx,rax
0000000099587DFE  1438  488bd8         REX.W movq rbx,rax
0000000099587E01  1441  488b45c0       REX.W movq rax,[rbp-0x40]
0000000099587E05  1445  49b9814110f500000000 REX.W movq r9,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587E0F  1455  49b8814110f500000000 REX.W movq r8,00000000F5104181    ;; object: 00000000F5104181 <false>
0000000099587E19  1465  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@357,#345> goto
0000000099587E23  1475  e954040000     jmp 2588  (000000009958827C)
                  ;;; <@358,#192> -------------------- B52 --------------------
0000000099587E28  1480  488bc3         REX.W movq rax,rbx
                  ;;; <@362,#358> -------------------- B53 --------------------
                  ;;; <@363,#358> gap
0000000099587E2B  1483  488bd8         REX.W movq rbx,rax
                  ;;; <@364,#363> sub-i
0000000099587E2E  1486  83eb01         subl rbx,0x1
                  ;;; <@365,#363> gap
0000000099587E31  1489  48899d50ffffff REX.W movq [rbp-0xb0],rbx
                  ;;; <@366,#369> add-i
0000000099587E38  1496  8d5101         leal rdx,[rcx+0x1]
                  ;;; <@368,#371> push-argument
0000000099587E3B  1499  ff7510         push [rbp+0x10]
                  ;;; <@369,#371> gap
0000000099587E3E  1502  488b4db8       REX.W movq rcx,[rbp-0x48]
                  ;;; <@370,#799> smi-tag
0000000099587E42  1506  48c1e120       REX.W shlq rcx,32
                  ;;; <@372,#372> push-argument
0000000099587E46  1510  51             push rcx
                  ;;; <@374,#810> smi-tag
0000000099587E47  1511  48c1e220       REX.W shlq rdx,32
                  ;;; <@376,#373> push-argument
0000000099587E4B  1515  52             push rdx
                  ;;; <@378,#374> call-named
0000000099587E4C  1516  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099587E56  1526  e80516f9ff     call 0000000099519460    ;; debug: position 7578
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099587E5B  1531  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@379,#374> gap
0000000099587E5F  1535  48898548ffffff REX.W movq [rbp-0xb8],rax
                  ;;; <@380,#375> lazy-bailout
                  ;;; <@381,#375> gap
0000000099587E66  1542  488b9d50ffffff REX.W movq rbx,[rbp-0xb0]
                  ;;; <@382,#380> add-i
0000000099587E6D  1549  83c301         addl rbx,0x1
                  ;;; <@384,#382> push-argument
0000000099587E70  1552  ff7510         push [rbp+0x10]
                  ;;; <@385,#382> gap
0000000099587E73  1555  488b55a8       REX.W movq rdx,[rbp-0x58]
                  ;;; <@386,#806> smi-tag
0000000099587E77  1559  48c1e220       REX.W shlq rdx,32
                  ;;; <@388,#383> push-argument
0000000099587E7B  1563  52             push rdx
                  ;;; <@390,#811> smi-tag
0000000099587E7C  1564  48c1e320       REX.W shlq rbx,32
                  ;;; <@392,#384> push-argument
0000000099587E80  1568  53             push rbx
                  ;;; <@394,#385> call-named
0000000099587E81  1569  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
0000000099587E8B  1579  e8d015f9ff     call 0000000099519460    ;; debug: position 7635
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
0000000099587E90  1584  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@395,#385> gap
0000000099587E94  1588  48898550ffffff REX.W movq [rbp-0xb0],rax
                  ;;; <@396,#386> lazy-bailout
                  ;;; <@398,#389> gap
0000000099587E9B  1595  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@399,#389> branch
0000000099587E9F  1599  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587EA3  1603  0f841b000000   jz 1636  (0000000099587EC4)
0000000099587EA9  1609  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099587EAD  1613  0f8405000000   jz 1624  (0000000099587EB8)
0000000099587EB3  1619  e810e2c7ff     call 00000000992060C8    ;; deoptimization bailout 20
                  ;;; <@404,#408> -------------------- B55 --------------------
                  ;;; <@406,#410> gap
0000000099587EB8  1624  488b8548ffffff REX.W movq rax,[rbp-0xb8]
                  ;;; <@407,#410> goto
0000000099587EBF  1631  e920000000     jmp 1668  (0000000099587EE4)
                  ;;; <@412,#396> -------------------- B57 --------------------
                  ;;; <@413,#396> gap
0000000099587EC4  1636  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@414,#397> load-context-slot
0000000099587EC8  1640  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@416,#398> global-object
0000000099587ECC  1644  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@418,#399> global-receiver
0000000099587ED0  1648  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@420,#400> push-argument
0000000099587ED4  1652  51             push rcx
                  ;;; <@422,#402> push-argument
0000000099587ED5  1653  ffb548ffffff   push [rbp-0xb8]
                  ;;; <@424,#403> call-function
0000000099587EDB  1659  e820aeffff     call 0000000099582D00    ;; debug: position 7701
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099587EE0  1664  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@426,#404> lazy-bailout
                  ;;; <@430,#412> -------------------- B58 --------------------
0000000099587EE4  1668  48898540ffffff REX.W movq [rbp-0xc0],rax
                  ;;; <@432,#414> gap
0000000099587EEB  1675  488b5d80       REX.W movq rbx,[rbp-0x80]
                  ;;; <@433,#414> branch
0000000099587EEF  1679  493b5dc0       REX.W cmpq rbx,[r13-0x40]
0000000099587EF3  1683  0f8427000000   jz 1728  (0000000099587F20)
0000000099587EF9  1689  493b5dc8       REX.W cmpq rbx,[r13-0x38]
0000000099587EFD  1693  0f8405000000   jz 1704  (0000000099587F08)
0000000099587F03  1699  e8d4e1c7ff     call 00000000992060DC    ;; deoptimization bailout 22
                  ;;; <@438,#433> -------------------- B60 --------------------
                  ;;; <@439,#433> gap
0000000099587F08  1704  488b9550ffffff REX.W movq rdx,[rbp-0xb0]
                  ;;; <@440,#812> check-smi
0000000099587F0F  1711  f6c201         testb rdx,0x1
0000000099587F12  1714  0f85a2060000   jnz 3418  (00000000995885BA)
                  ;;; <@442,#435> gap
0000000099587F18  1720  488bc2         REX.W movq rax,rdx
                  ;;; <@443,#435> goto
0000000099587F1B  1723  e92f000000     jmp 1775  (0000000099587F4F)
                  ;;; <@448,#421> -------------------- B62 --------------------
                  ;;; <@449,#421> gap
0000000099587F20  1728  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@450,#422> load-context-slot
0000000099587F24  1732  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@452,#423> global-object
0000000099587F28  1736  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@454,#424> global-receiver
0000000099587F2C  1740  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@456,#425> push-argument
0000000099587F30  1744  51             push rcx
                  ;;; <@458,#427> push-argument
0000000099587F31  1745  ffb550ffffff   push [rbp-0xb0]
                  ;;; <@460,#428> call-function
0000000099587F37  1751  e8c4adffff     call 0000000099582D00    ;; debug: position 7751
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099587F3C  1756  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@462,#429> lazy-bailout
                  ;;; <@463,#429> gap
0000000099587F40  1760  488bd8         REX.W movq rbx,rax
                  ;;; <@464,#813> check-smi
0000000099587F43  1763  f6c301         testb rbx,0x1
0000000099587F46  1766  0f8573060000   jnz 3423  (00000000995885BF)
                  ;;; <@466,#432> gap
0000000099587F4C  1772  488bc3         REX.W movq rax,rbx
                  ;;; <@468,#437> -------------------- B63 --------------------
0000000099587F4F  1775  48898538ffffff REX.W movq [rbp-0xc8],rax
                  ;;; <@469,#437> gap
0000000099587F56  1782  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@470,#438> load-context-slot
0000000099587F5A  1786  488b938f000000 REX.W movq rdx,[rbx+0x8f]
                  ;;; <@471,#438> gap
0000000099587F61  1793  48899530ffffff REX.W movq [rbp-0xd0],rdx
                  ;;; <@472,#439> global-object
0000000099587F68  1800  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@474,#440> global-receiver
0000000099587F6C  1804  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@475,#440> gap
0000000099587F70  1808  48898d28ffffff REX.W movq [rbp-0xd8],rcx
                  ;;; <@476,#445> check-function
0000000099587F77  1815  49ba6861d0e400000000 REX.W movq r10,00000000E4D06168    ;; property cell
0000000099587F81  1825  493b12         REX.W cmpq rdx,[r10]
0000000099587F84  1828  0f853a060000   jnz 3428  (00000000995885C4)
                  ;;; <@478,#449> gap
0000000099587F8A  1834  488b7da0       REX.W movq rdi,[rbp-0x60]
                  ;;; <@479,#449> cmp-object-eq-and-branch
0000000099587F8E  1838  49ba614110f500000000 REX.W movq r10,00000000F5104161    ;; object: 00000000F5104161 <true>
0000000099587F98  1848  493bfa         REX.W cmpq rdi,r10
0000000099587F9B  1851  0f84ff010000   jz 2368  (00000000995881A0)
                  ;;; <@484,#470> -------------------- B65 --------------------
                  ;;; <@486,#471> load-context-slot
0000000099587FA1  1857  4c8b437f       REX.W movq r8,[rbx+0x7f]
                  ;;; <@487,#471> gap
0000000099587FA5  1861  4c898520ffffff REX.W movq [rbp-0xe0],r8
                  ;;; <@488,#474> check-function
0000000099587FAC  1868  49ba7861d0e400000000 REX.W movq r10,00000000E4D06178    ;; property cell
0000000099587FB6  1878  4d3b02         REX.W cmpq r8,[r10]
0000000099587FB9  1881  0f850a060000   jnz 3433  (00000000995885C9)
                  ;;; <@490,#477> load-context-slot
0000000099587FBF  1887  4c8b4b3f       REX.W movq r9,[rbx+0x3f]
                  ;;; <@492,#478> check-non-smi
0000000099587FC3  1891  41f6c101       testb r9,0x1
0000000099587FC7  1895  0f8401060000   jz 3438  (00000000995885CE)
                  ;;; <@494,#479> check-maps
0000000099587FCD  1901  49ba7959a0df00000000 REX.W movq r10,00000000DFA05979    ;; object: 00000000DFA05979 <Map(elements=3)>
0000000099587FD7  1911  4d3951ff       REX.W cmpq [r9-0x1],r10
0000000099587FDB  1915  0f85f2050000   jnz 3443  (00000000995885D3)
                  ;;; <@496,#480> push-argument
0000000099587FE1  1921  4151           push r9
                  ;;; <@498,#481> push-argument
0000000099587FE3  1923  ff75c8         push [rbp-0x38]
                  ;;; <@500,#482> push-argument
0000000099587FE6  1926  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@502,#483> call-constant-function
0000000099587FEC  1932  48bff9e615f500000000 REX.W movq rdi,00000000F515E6F9    ;; object: 00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>
0000000099587FF6  1942  488b772f       REX.W movq rsi,[rdi+0x2f]
0000000099587FFA  1946  b802000000     movl rax,0000000000000002
0000000099587FFF  1951  33c9           xorl rcx,rcx
0000000099588001  1953  ff5717         call [rdi+0x17]       ;; debug: position 4135
0000000099588004  1956  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@504,#484> lazy-bailout
                  ;;; <@507,#485> branch
0000000099588008  1960  493b45c0       REX.W cmpq rax,[r13-0x40]
000000009958800C  1964  0f842b000000   jz 2013  (000000009958803D)
0000000099588012  1970  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099588016  1974  0f8405000000   jz 1985  (0000000099588021)
000000009958801C  1980  e815e1c7ff     call 0000000099206136    ;; deoptimization bailout 31
                  ;;; <@512,#542> -------------------- B67 --------------------
                  ;;; <@513,#542> gap
0000000099588021  1985  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@514,#814> dummy-use
                  ;;; <@515,#814> gap
0000000099588028  1992  488b55c8       REX.W movq rdx,[rbp-0x38]
000000009958802C  1996  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@516,#543> store-keyed-generic
0000000099588033  2003  e80853faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4377
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@518,#544> lazy-bailout
                  ;;; <@521,#549> goto
0000000099588038  2008  e98e010000     jmp 2411  (00000000995881CB)
                  ;;; <@526,#492> -------------------- B69 --------------------
                  ;;; <@527,#492> gap
000000009958803D  2013  488b55c8       REX.W movq rdx,[rbp-0x38]
0000000099588041  2017  488b8540ffffff REX.W movq rax,[rbp-0xc0]
                  ;;; <@528,#493> load-keyed-generic
0000000099588048  2024  e85372f9ff     call KeyedLoadIC_Initialize  (000000009951F2A0)    ;; debug: position 4189
                                                             ;; code: KEYED_LOAD_IC, UNINITIALIZED
                  ;;; <@529,#493> gap
000000009958804D  2029  48898518ffffff REX.W movq [rbp-0xe8],rax
                  ;;; <@530,#494> lazy-bailout
                  ;;; <@531,#494> gap
0000000099588054  2036  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@532,#496> load-context-slot
0000000099588058  2040  488b7b37       REX.W movq rdi,[rbx+0x37]
                  ;;; <@534,#499> push-argument
000000009958805C  2044  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@536,#501> push-argument
0000000099588062  2050  50             push rax
                  ;;; <@538,#502> call-function
0000000099588063  2051  e898acffff     call 0000000099582D00    ;; debug: position 4208
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099588068  2056  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@540,#503> lazy-bailout
                  ;;; <@543,#504> branch
000000009958806C  2060  493b45a8       REX.W cmpq rax,[r13-0x58]
0000000099588070  2064  0f8484000000   jz 2202  (00000000995880FA)
0000000099588076  2070  493b45c0       REX.W cmpq rax,[r13-0x40]
000000009958807A  2074  0f84fa000000   jz 2330  (000000009958817A)
0000000099588080  2080  493b45c8       REX.W cmpq rax,[r13-0x38]
0000000099588084  2084  0f8470000000   jz 2202  (00000000995880FA)
000000009958808A  2090  493b45b8       REX.W cmpq rax,[r13-0x48]
000000009958808E  2094  0f8466000000   jz 2202  (00000000995880FA)
0000000099588094  2100  4885c0         REX.W testq rax,rax
0000000099588097  2103  0f845d000000   jz 2202  (00000000995880FA)
000000009958809D  2109  a801           test al,0x1
000000009958809F  2111  0f84d5000000   jz 2330  (000000009958817A)
00000000995880A5  2117  4c8b50ff       REX.W movq r10,[rax-0x1]
00000000995880A9  2121  41f6420d20     testb [r10+0xd],0x20
00000000995880AE  2126  0f8546000000   jnz 2202  (00000000995880FA)
00000000995880B4  2132  41807a0bad     cmpb [r10+0xb],0xad
00000000995880B9  2137  0f83bb000000   jnc 2330  (000000009958817A)
00000000995880BF  2143  41807a0b80     cmpb [r10+0xb],0x80
00000000995880C4  2148  7310           jnc 2166  (00000000995880D6)
00000000995880C6  2150  4883780f00     REX.W cmpq [rax+0xf],0x0
00000000995880CB  2155  0f85a9000000   jnz 2330  (000000009958817A)
00000000995880D1  2161  e924000000     jmp 2202  (00000000995880FA)
00000000995880D6  2166  41807a0b80     cmpb [r10+0xb],0x80
00000000995880DB  2171  0f8499000000   jz 2330  (000000009958817A)
00000000995880E1  2177  4d3b55f8       REX.W cmpq r10,[r13-0x8]
00000000995880E5  2181  7513           jnz 2202  (00000000995880FA)
00000000995880E7  2183  0f57c0         xorps xmm0, xmm0
00000000995880EA  2186  660f2e4007     ucomisd xmm0,[rax+0x7]
00000000995880EF  2191  0f8405000000   jz 2202  (00000000995880FA)
00000000995880F5  2197  e980000000     jmp 2330  (000000009958817A)
                  ;;; <@548,#517> -------------------- B71 --------------------
                  ;;; <@550,#519> push-argument
00000000995880FA  2202  49ba8861d0e400000000 REX.W movq r10,00000000E4D06188    ;; property cell
0000000099588104  2212  4d8b12         REX.W movq r10,[r10]
0000000099588107  2215  4152           push r10
                  ;;; <@552,#521> push-argument
0000000099588109  2217  4154           push r12
                  ;;; <@554,#523> push-argument
000000009958810B  2219  49ba3941e0fc00000000 REX.W movq r10,00000000FCE04139    ;; object: 00000000FCE04139 <FixedArray[0]>
0000000099588115  2229  4152           push r10
                  ;;; <@556,#524> call-runtime
0000000099588117  2231  b803000000     movl rax,0000000000000003
000000009958811C  2236  48bbd09ed03f01000000 REX.W movq rbx,000000013FD09ED0
0000000099588126  2246  e875f1f7ff     call 00000000995072A0    ;; code: STUB, CEntryStub, minor: 0
                  ;;; <@558,#525> check-maps
000000009958812B  2251  49bad15ea0df00000000 REX.W movq r10,00000000DFA05ED1    ;; object: 00000000DFA05ED1 <Map(elements=0)>
0000000099588135  2261  4c3950ff       REX.W cmpq [rax-0x1],r10
0000000099588139  2265  0f8599040000   jnz 3448  (00000000995885D8)
                  ;;; <@560,#528> load-named-field
000000009958813F  2271  488b580f       REX.W movq rbx,[rax+0xf]
                  ;;; <@561,#528> gap
0000000099588143  2275  488b9518ffffff REX.W movq rdx,[rbp-0xe8]
                  ;;; <@562,#817> check-smi
000000009958814A  2282  f6c201         testb rdx,0x1
000000009958814D  2285  0f858a040000   jnz 3453  (00000000995885DD)
                  ;;; <@563,#817> gap
0000000099588153  2291  488bcb         REX.W movq rcx,rbx
                  ;;; <@564,#530> store-keyed
0000000099588156  2294  4889510f       REX.W movq [rcx+0xf],rdx
                  ;;; <@565,#530> gap
000000009958815A  2298  488bbd38ffffff REX.W movq rdi,[rbp-0xc8]
                  ;;; <@566,#534> store-keyed
0000000099588161  2305  48897b17       REX.W movq [rbx+0x17],rdi
                  ;;; <@567,#534> gap
0000000099588165  2309  488b55c8       REX.W movq rdx,[rbp-0x38]
0000000099588169  2313  488b8d40ffffff REX.W movq rcx,[rbp-0xc0]
                  ;;; <@568,#536> store-keyed-generic
0000000099588170  2320  e8cb51faff     call KeyedStoreIC_Initialize  (000000009952D340)    ;; debug: position 4309
                                                             ;; code: KEYED_STORE_IC, UNINITIALIZED
                  ;;; <@570,#540> lazy-bailout
                  ;;; <@573,#541> goto
0000000099588175  2325  e951000000     jmp 2411  (00000000995881CB)
                  ;;; <@578,#511> -------------------- B73 --------------------
                  ;;; <@580,#513> push-argument
000000009958817A  2330  ffb518ffffff   push [rbp-0xe8]
                  ;;; <@581,#513> gap
0000000099588180  2336  488b8538ffffff REX.W movq rax,[rbp-0xc8]
                  ;;; <@582,#815> dummy-use
                  ;;; <@584,#514> push-argument
0000000099588187  2343  50             push rax
                  ;;; <@586,#515> call-named
0000000099588188  2344  48b90947e1fc00000000 REX.W movq rcx,00000000FCE14709    ;; object: 00000000FCE14709 <String[4]: push>
0000000099588192  2354  e8c92df9ff     call 000000009951AF60    ;; debug: position 4243
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 1
0000000099588197  2359  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@588,#516> lazy-bailout
                  ;;; <@591,#539> goto
000000009958819B  2363  e92b000000     jmp 2411  (00000000995881CB)
                  ;;; <@608,#456> -------------------- B78 --------------------
                  ;;; <@609,#456> gap
00000000995881A0  2368  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@610,#457> load-context-slot
00000000995881A4  2372  488bb887000000 REX.W movq rdi,[rax+0x87]
                  ;;; <@612,#460> push-argument
00000000995881AB  2379  ffb528ffffff   push [rbp-0xd8]
                  ;;; <@614,#461> push-argument
00000000995881B1  2385  ff75c8         push [rbp-0x38]
                  ;;; <@616,#462> push-argument
00000000995881B4  2388  ffb540ffffff   push [rbp-0xc0]
                  ;;; <@617,#462> gap
00000000995881BA  2394  488b9d38ffffff REX.W movq rbx,[rbp-0xc8]
                  ;;; <@618,#816> dummy-use
                  ;;; <@620,#463> push-argument
00000000995881C1  2401  53             push rbx
                  ;;; <@622,#464> call-function
00000000995881C2  2402  e839acffff     call 0000000099582E00    ;; debug: position 5383
                                                             ;; code: STUB, CallFunctionStub, argc = 3
00000000995881C7  2407  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@624,#465> lazy-bailout
                  ;;; <@628,#559> -------------------- B79 --------------------
                  ;;; <@629,#559> gap
00000000995881CB  2411  488b4588       REX.W movq rax,[rbp-0x78]
                  ;;; <@630,#567> add-i
00000000995881CF  2415  83c001         addl rax,0x1
00000000995881D2  2418  0f800a040000   jo 3458  (00000000995885E2)
                  ;;; <@632,#601> gap
00000000995881D8  2424  488b5d88       REX.W movq rbx,[rbp-0x78]
00000000995881DC  2428  48bf814110f500000000 REX.W movq rdi,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995881E6  2438  48b9814110f500000000 REX.W movq rcx,00000000F5104181    ;; object: 00000000F5104181 <false>
00000000995881F0  2448  48ba814110f500000000 REX.W movq rdx,00000000F5104181    ;; object: 00000000F5104181 <false>
                  ;;; <@634,#625> -------------------- B80 --------------------
                  ;;; <@636,#627> gap
00000000995881FA  2458  4c8bc7         REX.W movq r8,rdi
00000000995881FD  2461  488bf9         REX.W movq rdi,rcx
0000000099588200  2464  488bca         REX.W movq rcx,rdx
0000000099588203  2467  488bd3         REX.W movq rdx,rbx
0000000099588206  2470  488bd8         REX.W movq rbx,rax
0000000099588209  2473  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@637,#627> goto
000000009958820D  2477  e924000000     jmp 2518  (0000000099588236)
                  ;;; <@638,#118> -------------------- B81 --------------------
0000000099588212  2482  488b5db0       REX.W movq rbx,[rbp-0x50]
                  ;;; <@642,#124> -------------------- B82 --------------------
                  ;;; <@643,#124> gap
0000000099588216  2486  488b45c0       REX.W movq rax,[rbp-0x40]
                  ;;; <@644,#129> add-i
000000009958821A  2490  83c0ff         addl rax,0xff
                  ;;; <@646,#624> gap
000000009958821D  2493  4c8b45d8       REX.W movq r8,[rbp-0x28]
0000000099588221  2497  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099588225  2501  488bd3         REX.W movq rdx,rbx
0000000099588228  2504  488b5db8       REX.W movq rbx,[rbp-0x48]
000000009958822C  2508  48b9614110f500000000 REX.W movq rcx,00000000F5104161    ;; object: 00000000F5104161 <true>
                  ;;; <@648,#648> -------------------- B83 --------------------
                  ;;; <@650,#650> gap
0000000099588236  2518  4892           REX.W xchgq rax, rdx
0000000099588238  2520  4893           REX.W xchgq rax, rbx
                  ;;; <@651,#650> goto
000000009958823A  2522  e922000000     jmp 2561  (0000000099588261)
                  ;;; <@652,#90> -------------------- B84 --------------------
000000009958823F  2527  498bdf         REX.W movq rbx,r15
0000000099588242  2530  498bc3         REX.W movq rax,r11
                  ;;; <@656,#96> -------------------- B85 --------------------
                  ;;; <@657,#96> gap
0000000099588245  2533  488bd0         REX.W movq rdx,rax
                  ;;; <@658,#99> add-i
0000000099588248  2536  83c201         addl rdx,0x1
000000009958824B  2539  0f8096030000   jo 3463  (00000000995885E7)
                  ;;; <@660,#647> gap
0000000099588251  2545  4c8b45d8       REX.W movq r8,[rbp-0x28]
0000000099588255  2549  488b7de0       REX.W movq rdi,[rbp-0x20]
0000000099588259  2553  488b4da0       REX.W movq rcx,[rbp-0x60]
000000009958825D  2557  488b45b8       REX.W movq rax,[rbp-0x48]
                  ;;; <@662,#669> -------------------- B86 --------------------
                  ;;; <@663,#669> gap
0000000099588261  2561  4c8bcb         REX.W movq r9,rbx
                  ;;; <@664,#672> add-i
0000000099588264  2564  4183c101       addl r9,0x1
0000000099588268  2568  0f807e030000   jo 3468  (00000000995885EC)
                  ;;; <@666,#676> gap
000000009958826E  2574  4987f8         REX.W xchgq rdi,r8
0000000099588271  2577  4887cf         REX.W xchgq rcx,rdi
0000000099588274  2580  4887d9         REX.W xchgq rbx,rcx
0000000099588277  2583  4c87cb         REX.W xchgq r9,rbx
000000009958827A  2586  4892           REX.W xchgq rax, rdx
                  ;;; <@668,#695> -------------------- B87 --------------------
                  ;;; <@669,#695> gap
000000009958827C  2588  4c8bd9         REX.W movq r11,rcx
                  ;;; <@670,#697> add-i
000000009958827F  2591  4183c301       addl r11,0x1
0000000099588283  2595  0f8068030000   jo 3473  (00000000995885F1)
                  ;;; <@672,#700> gap
0000000099588289  2601  4c894dd8       REX.W movq [rbp-0x28],r9
000000009958828D  2605  4c8945e0       REX.W movq [rbp-0x20],r8
0000000099588291  2609  4c8bf2         REX.W movq r14,rdx
0000000099588294  2612  488bd7         REX.W movq rdx,rdi
0000000099588297  2615  4d8bfb         REX.W movq r15,r11
000000009958829A  2618  4c8bd8         REX.W movq r11,rax
000000009958829D  2621  488bc3         REX.W movq rax,rbx
00000000995882A0  2624  488b4d10       REX.W movq rcx,[rbp+0x10]
00000000995882A4  2628  4c8b45c8       REX.W movq r8,[rbp-0x38]
00000000995882A8  2632  4c8b4d98       REX.W movq r9,[rbp-0x68]
                  ;;; <@673,#700> goto
00000000995882AC  2636  e9a8f6ffff     jmp 249  (0000000099587959)
                  ;;; <@678,#701> -------------------- B89 --------------------
                  ;;; <@681,#704> compare-numeric-and-branch
00000000995882B1  2641  3b45b8         cmpl rax,[rbp-0x48]
00000000995882B4  2644  0f8402010000   jz 2908  (00000000995883BC)
                  ;;; <@686,#711> -------------------- B91 --------------------
                  ;;; <@688,#716> push-argument
00000000995882BA  2650  ff7510         push [rbp+0x10]
                  ;;; <@689,#716> gap
00000000995882BD  2653  488b5db8       REX.W movq rbx,[rbp-0x48]
                  ;;; <@690,#800> smi-tag
00000000995882C1  2657  48c1e320       REX.W shlq rbx,32
                  ;;; <@692,#717> push-argument
00000000995882C5  2661  53             push rbx
                  ;;; <@694,#801> smi-tag
00000000995882C6  2662  48c1e020       REX.W shlq rax,32
                  ;;; <@696,#718> push-argument
00000000995882CA  2666  50             push rax
                  ;;; <@698,#719> call-named
00000000995882CB  2667  48b9213ee1fc00000000 REX.W movq rcx,00000000FCE13E21    ;; object: 00000000FCE13E21 <String[5]: slice>
00000000995882D5  2677  e88611f9ff     call 0000000099519460    ;; debug: position 8153
                                                             ;; code: CALL_IC, UNINITIALIZED, argc = 2
00000000995882DA  2682  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@700,#720> lazy-bailout
                  ;;; <@702,#723> gap
00000000995882DE  2686  488b5dd8       REX.W movq rbx,[rbp-0x28]
                  ;;; <@703,#723> branch
00000000995882E2  2690  493b5da8       REX.W cmpq rbx,[r13-0x58]
00000000995882E6  2694  0f84a0000000   jz 2860  (000000009958838C)
00000000995882EC  2700  493b5dc0       REX.W cmpq rbx,[r13-0x40]
00000000995882F0  2704  0f847b000000   jz 2833  (0000000099588371)
00000000995882F6  2710  493b5dc8       REX.W cmpq rbx,[r13-0x38]
00000000995882FA  2714  0f848c000000   jz 2860  (000000009958838C)
0000000099588300  2720  493b5db8       REX.W cmpq rbx,[r13-0x48]
0000000099588304  2724  0f8482000000   jz 2860  (000000009958838C)
000000009958830A  2730  4885db         REX.W testq rbx,rbx
000000009958830D  2733  0f8479000000   jz 2860  (000000009958838C)
0000000099588313  2739  f6c301         testb rbx,0x1
0000000099588316  2742  0f8455000000   jz 2833  (0000000099588371)
000000009958831C  2748  4c8b53ff       REX.W movq r10,[rbx-0x1]
0000000099588320  2752  41f6420d20     testb [r10+0xd],0x20
0000000099588325  2757  0f8561000000   jnz 2860  (000000009958838C)
000000009958832B  2763  41807a0bad     cmpb [r10+0xb],0xad
0000000099588330  2768  0f833b000000   jnc 2833  (0000000099588371)
0000000099588336  2774  41807a0b80     cmpb [r10+0xb],0x80
000000009958833B  2779  7310           jnc 2797  (000000009958834D)
000000009958833D  2781  48837b0f00     REX.W cmpq [rbx+0xf],0x0
0000000099588342  2786  0f8529000000   jnz 2833  (0000000099588371)
0000000099588348  2792  e93f000000     jmp 2860  (000000009958838C)
000000009958834D  2797  41807a0b80     cmpb [r10+0xb],0x80
0000000099588352  2802  0f8419000000   jz 2833  (0000000099588371)
0000000099588358  2808  4d3b55f8       REX.W cmpq r10,[r13-0x8]
000000009958835C  2812  7513           jnz 2833  (0000000099588371)
000000009958835E  2814  0f57c0         xorps xmm0, xmm0
0000000099588361  2817  660f2e4307     ucomisd xmm0,[rbx+0x7]
0000000099588366  2822  0f8420000000   jz 2860  (000000009958838C)
000000009958836C  2828  e900000000     jmp 2833  (0000000099588371)
                  ;;; <@716,#730> -------------------- B95 --------------------
                  ;;; <@717,#730> gap
0000000099588371  2833  488b55e8       REX.W movq rdx,[rbp-0x18]
                  ;;; <@718,#731> load-context-slot
0000000099588375  2837  488b7a4f       REX.W movq rdi,[rdx+0x4f]
                  ;;; <@720,#732> global-object
0000000099588379  2841  488b4e27       REX.W movq rcx,[rsi+0x27]
                  ;;; <@722,#733> global-receiver
000000009958837D  2845  488b492f       REX.W movq rcx,[rcx+0x2f]
                  ;;; <@724,#734> push-argument
0000000099588381  2849  51             push rcx
                  ;;; <@726,#736> push-argument
0000000099588382  2850  50             push rax
                  ;;; <@728,#737> call-function
0000000099588383  2851  e878a9ffff     call 0000000099582D00    ;; debug: position 8207
                                                             ;; code: STUB, CallFunctionStub, argc = 1
0000000099588388  2856  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@730,#738> lazy-bailout
                  ;;; <@734,#746> -------------------- B96 --------------------
                  ;;; <@735,#746> gap
000000009958838C  2860  488b5de8       REX.W movq rbx,[rbp-0x18]
                  ;;; <@736,#747> load-context-slot
0000000099588390  2864  488bbb8f000000 REX.W movq rdi,[rbx+0x8f]
                  ;;; <@738,#748> global-object
0000000099588397  2871  488b5627       REX.W movq rdx,[rsi+0x27]
                  ;;; <@740,#749> global-receiver
000000009958839B  2875  488b522f       REX.W movq rdx,[rdx+0x2f]
                  ;;; <@742,#750> push-argument
000000009958839F  2879  52             push rdx
                  ;;; <@744,#752> push-argument
00000000995883A0  2880  ff75c8         push [rbp-0x38]
                  ;;; <@746,#754> push-argument
00000000995883A3  2883  50             push rax
                  ;;; <@748,#756> push-argument
00000000995883A4  2884  49bac160e0fc00000000 REX.W movq r10,00000000FCE060C1    ;; object: 00000000FCE060C1 <String[0]: >
00000000995883AE  2894  4152           push r10
                  ;;; <@750,#758> push-argument
00000000995883B0  2896  ff75a0         push [rbp-0x60]
                  ;;; <@752,#759> call-function
00000000995883B3  2899  e808c5ffff     call 00000000995848C0    ;; debug: position 8228
                                                             ;; code: STUB, CallFunctionStub, argc = 4
00000000995883B8  2904  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@754,#760> lazy-bailout
                  ;;; <@766,#768> -------------------- B99 --------------------
                  ;;; <@767,#768> gap
00000000995883BC  2908  488b45e8       REX.W movq rax,[rbp-0x18]
                  ;;; <@768,#769> load-context-slot
00000000995883C0  2912  488b586f       REX.W movq rbx,[rax+0x6f]
                  ;;; <@771,#770> branch
00000000995883C4  2916  493b5dc0       REX.W cmpq rbx,[r13-0x40]
00000000995883C8  2920  0f840f000000   jz 2941  (00000000995883DD)
00000000995883CE  2926  493b5dc8       REX.W cmpq rbx,[r13-0x38]
00000000995883D2  2930  0f8421000000   jz 2969  (00000000995883F9)
00000000995883D8  2936  e8f9ddc7ff     call 00000000992061D6    ;; deoptimization bailout 47
                  ;;; <@784,#777> -------------------- B103 --------------------
                  ;;; <@786,#778> load-context-slot
00000000995883DD  2941  488bb897000000 REX.W movq rdi,[rax+0x97]
                  ;;; <@788,#779> global-object
00000000995883E4  2948  488b4627       REX.W movq rax,[rsi+0x27]
                  ;;; <@790,#780> global-receiver
00000000995883E8  2952  488b402f       REX.W movq rax,[rax+0x2f]
                  ;;; <@792,#781> push-argument
00000000995883EC  2956  50             push rax
                  ;;; <@794,#783> push-argument
00000000995883ED  2957  ff75c8         push [rbp-0x38]
                  ;;; <@796,#784> call-function
00000000995883F0  2960  e80ba9ffff     call 0000000099582D00    ;; debug: position 8322
                                                             ;; code: STUB, CallFunctionStub, argc = 1
00000000995883F5  2965  488b75f8       REX.W movq rsi,[rbp-0x8]
                  ;;; <@798,#785> lazy-bailout
                  ;;; <@802,#791> -------------------- B104 --------------------
                  ;;; <@803,#791> gap
00000000995883F9  2969  488b45c8       REX.W movq rax,[rbp-0x38]
                  ;;; <@804,#794> return
00000000995883FD  2973  488be5         REX.W movq rsp,rbp
0000000099588400  2976  5d             pop rbp
0000000099588401  2977  c21000         ret 0x10
0000000099588404  2980  6690           nop
                  ;;; <@24,#28> -------------------- Deferred allocate --------------------
0000000099588406  2982  4533c0         xorl r8,r8
0000000099588409  2985  50             push rax
000000009958840A  2986  51             push rcx
000000009958840B  2987  52             push rdx
000000009958840C  2988  53             push rbx
000000009958840D  2989  56             push rsi
000000009958840E  2990  57             push rdi
000000009958840F  2991  4150           push r8
0000000099588411  2993  4151           push r9
0000000099588413  2995  4153           push r11
0000000099588415  2997  4156           push r14
0000000099588417  2999  4157           push r15
0000000099588419  3001  488d6424d8     REX.W leaq rsp,[rsp-0x28]
000000009958841E  3006  49ba0000000018000000 REX.W movq r10,0000001800000000
0000000099588428  3016  4152           push r10
000000009958842A  3018  488b75f8       REX.W movq rsi,[rbp-0x8]
000000009958842E  3022  b801000000     movl rax,0000000000000001
0000000099588433  3027  48bba0c9d43f01000000 REX.W movq rbx,000000013FD4C9A0
000000009958843D  3037  e85ee6f7ff     call 0000000099506AA0    ;; debug: position 6157
                                                             ;; code: STUB, CEntryStub, minor: 1
0000000099588442  3042  4889442448     REX.W movq [rsp+0x48],rax
0000000099588447  3047  488d642428     REX.W leaq rsp,[rsp+0x28]
000000009958844C  3052  415f           pop r15
000000009958844E  3054  415e           pop r14
0000000099588450  3056  415b           pop r11
0000000099588452  3058  4159           pop r9
0000000099588454  3060  4158           pop r8
0000000099588456  3062  5f             pop rdi
0000000099588457  3063  5e             pop rsi
0000000099588458  3064  5b             pop rbx
0000000099588459  3065  5a             pop rdx
000000009958845A  3066  59             pop rcx
000000009958845B  3067  58             pop rax
000000009958845C  3068  e97ff4ffff     jmp 128  (00000000995878E0)
                  ;;; <@48,#79> -------------------- Deferred stack-check --------------------
0000000099588461  3073  50             push rax
0000000099588462  3074  51             push rcx
0000000099588463  3075  52             push rdx
0000000099588464  3076  53             push rbx
0000000099588465  3077  56             push rsi
0000000099588466  3078  57             push rdi
0000000099588467  3079  4150           push r8
0000000099588469  3081  4151           push r9
000000009958846B  3083  4153           push r11
000000009958846D  3085  4156           push r14
000000009958846F  3087  4157           push r15
0000000099588471  3089  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099588476  3094  488b75f8       REX.W movq rsi,[rbp-0x8]
000000009958847A  3098  33c0           xorl rax,rax
000000009958847C  3100  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
0000000099588486  3110  e815e6f7ff     call 0000000099506AA0    ;; debug: position 6336
                                                             ;; code: STUB, CEntryStub, minor: 1
000000009958848B  3115  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099588490  3120  415f           pop r15
0000000099588492  3122  415e           pop r14
0000000099588494  3124  415b           pop r11
0000000099588496  3126  4159           pop r9
0000000099588498  3128  4158           pop r8
000000009958849A  3130  5f             pop rdi
000000009958849B  3131  5e             pop rsi
000000009958849C  3132  5b             pop rbx
000000009958849D  3133  5a             pop rdx
000000009958849E  3134  59             pop rcx
000000009958849F  3135  58             pop rax
00000000995884A0  3136  e9d7f4ffff     jmp 284  (000000009958797C)
                  ;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------
00000000995884A5  3141  33ff           xorl rdi,rdi
00000000995884A7  3143  50             push rax
00000000995884A8  3144  51             push rcx
00000000995884A9  3145  52             push rdx
00000000995884AA  3146  53             push rbx
00000000995884AB  3147  56             push rsi
00000000995884AC  3148  57             push rdi
00000000995884AD  3149  4150           push r8
00000000995884AF  3151  4151           push r9
00000000995884B1  3153  4153           push r11
00000000995884B3  3155  4156           push r14
00000000995884B5  3157  4157           push r15
00000000995884B7  3159  488d6424d8     REX.W leaq rsp,[rsp-0x28]
00000000995884BC  3164  51             push rcx
00000000995884BD  3165  48c1e320       REX.W shlq rbx,32
00000000995884C1  3169  53             push rbx
00000000995884C2  3170  488b75f8       REX.W movq rsi,[rbp-0x8]
00000000995884C6  3174  b802000000     movl rax,0000000000000002
00000000995884CB  3179  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
00000000995884D5  3189  e8c6e5f7ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
00000000995884DA  3194  48c1e820       REX.W shrq rax,32
00000000995884DE  3198  4889442450     REX.W movq [rsp+0x50],rax
00000000995884E3  3203  488d642428     REX.W leaq rsp,[rsp+0x28]
00000000995884E8  3208  415f           pop r15
00000000995884EA  3210  415e           pop r14
00000000995884EC  3212  415b           pop r11
00000000995884EE  3214  4159           pop r9
00000000995884F0  3216  4158           pop r8
00000000995884F2  3218  5f             pop rdi
00000000995884F3  3219  5e             pop rsi
00000000995884F4  3220  5b             pop rbx
00000000995884F5  3221  5a             pop rdx
00000000995884F6  3222  59             pop rcx
00000000995884F7  3223  58             pop rax
00000000995884F8  3224  e90cf5ffff     jmp 425  (0000000099587A09)
                  ;;; <@172,#197> -------------------- Deferred stack-check --------------------
00000000995884FD  3229  50             push rax
00000000995884FE  3230  51             push rcx
00000000995884FF  3231  52             push rdx
0000000099588500  3232  53             push rbx
0000000099588501  3233  56             push rsi
0000000099588502  3234  57             push rdi
0000000099588503  3235  4150           push r8
0000000099588505  3237  4151           push r9
0000000099588507  3239  4153           push r11
0000000099588509  3241  4156           push r14
000000009958850B  3243  4157           push r15
000000009958850D  3245  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099588512  3250  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099588516  3254  33c0           xorl rax,rax
0000000099588518  3256  48bb10a0d43f01000000 REX.W movq rbx,000000013FD4A010
0000000099588522  3266  e879e5f7ff     call 0000000099506AA0    ;; debug: position 6707
                                                             ;; code: STUB, CEntryStub, minor: 1
0000000099588527  3271  488d642428     REX.W leaq rsp,[rsp+0x28]
000000009958852C  3276  415f           pop r15
000000009958852E  3278  415e           pop r14
0000000099588530  3280  415b           pop r11
0000000099588532  3282  4159           pop r9
0000000099588534  3284  4158           pop r8
0000000099588536  3286  5f             pop rdi
0000000099588537  3287  5e             pop rsi
0000000099588538  3288  5b             pop rbx
0000000099588539  3289  5a             pop rdx
000000009958853A  3290  59             pop rcx
000000009958853B  3291  58             pop rax
000000009958853C  3292  e9b2f5ffff     jmp 659  (0000000099587AF3)
                  ;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------
0000000099588541  3297  4533db         xorl r11,r11
0000000099588544  3300  50             push rax
0000000099588545  3301  51             push rcx
0000000099588546  3302  52             push rdx
0000000099588547  3303  53             push rbx
0000000099588548  3304  56             push rsi
0000000099588549  3305  57             push rdi
000000009958854A  3306  4150           push r8
000000009958854C  3308  4151           push r9
000000009958854E  3310  4153           push r11
0000000099588550  3312  4156           push r14
0000000099588552  3314  4157           push r15
0000000099588554  3316  488d6424d8     REX.W leaq rsp,[rsp-0x28]
0000000099588559  3321  4151           push r9
000000009958855B  3323  49c1e020       REX.W shlq r8,32
000000009958855F  3327  4150           push r8
0000000099588561  3329  488b75f8       REX.W movq rsi,[rbp-0x8]
0000000099588565  3333  b802000000     movl rax,0000000000000002
000000009958856A  3338  48bbe02fd23f01000000 REX.W movq rbx,000000013FD22FE0
0000000099588574  3348  e827e5f7ff     call 0000000099506AA0    ;; code: STUB, CEntryStub, minor: 1
0000000099588579  3353  48c1e820       REX.W shrq rax,32
000000009958857D  3357  4889442438     REX.W movq [rsp+0x38],rax
0000000099588582  3362  488d642428     REX.W leaq rsp,[rsp+0x28]
0000000099588587  3367  415f           pop r15
0000000099588589  3369  415e           pop r14
000000009958858B  3371  415b           pop r11
000000009958858D  3373  4159           pop r9
000000009958858F  3375  4158           pop r8
0000000099588591  3377  5f             pop rdi
0000000099588592  3378  5e             pop rsi
0000000099588593  3379  5b             pop rbx
0000000099588594  3380  5a             pop rdx
0000000099588595  3381  59             pop rcx
0000000099588596  3382  58             pop rax
0000000099588597  3383  e9e4f5ffff     jmp 800  (0000000099587B80)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
000000009958859C  3388  e869dac7ff     call 000000009920600A    ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
00000000995885A1  3393  e86edac7ff     call 0000000099206014    ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 4.
00000000995885A6  3398  e87ddac7ff     call 0000000099206028    ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 7.
00000000995885AB  3403  e896dac7ff     call 0000000099206046    ;; deoptimization bailout 7
                  ;;; jump table entry 4: deoptimization bailout 9.
00000000995885B0  3408  e8a5dac7ff     call 000000009920605A    ;; deoptimization bailout 9
                  ;;; jump table entry 5: deoptimization bailout 11.
00000000995885B5  3413  e8b4dac7ff     call 000000009920606E    ;; deoptimization bailout 11
                  ;;; jump table entry 6: deoptimization bailout 23.
00000000995885BA  3418  e827dbc7ff     call 00000000992060E6    ;; deoptimization bailout 23
                  ;;; jump table entry 7: deoptimization bailout 25.
00000000995885BF  3423  e836dbc7ff     call 00000000992060FA    ;; deoptimization bailout 25
                  ;;; jump table entry 8: deoptimization bailout 26.
00000000995885C4  3428  e83bdbc7ff     call 0000000099206104    ;; deoptimization bailout 26
                  ;;; jump table entry 9: deoptimization bailout 27.
00000000995885C9  3433  e840dbc7ff     call 000000009920610E    ;; deoptimization bailout 27
                  ;;; jump table entry 10: deoptimization bailout 28.
00000000995885CE  3438  e845dbc7ff     call 0000000099206118    ;; deoptimization bailout 28
                  ;;; jump table entry 11: deoptimization bailout 29.
00000000995885D3  3443  e84adbc7ff     call 0000000099206122    ;; deoptimization bailout 29
                  ;;; jump table entry 12: deoptimization bailout 35.
00000000995885D8  3448  e881dbc7ff     call 000000009920615E    ;; deoptimization bailout 35
                  ;;; jump table entry 13: deoptimization bailout 36.
00000000995885DD  3453  e886dbc7ff     call 0000000099206168    ;; deoptimization bailout 36
                  ;;; jump table entry 14: deoptimization bailout 40.
00000000995885E2  3458  e8a9dbc7ff     call 0000000099206190    ;; deoptimization bailout 40
                  ;;; jump table entry 15: deoptimization bailout 41.
00000000995885E7  3463  e8aedbc7ff     call 000000009920619A    ;; deoptimization bailout 41
                  ;;; jump table entry 16: deoptimization bailout 42.
00000000995885EC  3468  e8b3dbc7ff     call 00000000992061A4    ;; deoptimization bailout 42
                  ;;; jump table entry 17: deoptimization bailout 43.
00000000995885F1  3473  e8b8dbc7ff     call 00000000992061AE    ;; deoptimization bailout 43
00000000995885F6  3478  6690           nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 49)
 index  ast id    argc     pc             
     0       3       0     31
     1      10       0     -1
     2      10       0     -1
     3     143       0    284
     4     143       0     -1
     5     207       0     -1
     6     203       0    496
     7     248       0     -1
     8     284       0    659
     9     284       0     -1
    10     507       0     -1
    11     507       0     -1
    12     387       0    932
    13     415       0    985
    14     431       0   1176
    15     448       0   1374
    16     467       0   1416
    17     467       0     -1
    18     551       0   1542
    19     579       0   1595
    20     579       0     -1
    21     595       0   1668
    22     601       0     -1
    23     618       0     -1
    24     612       0   1760
    25     618       0     -1
    26     618       0     -1
    27      27       0     -1
    28       2       0     -1
    29       2       0     -1
    30      15       0   1960
    31      15       0     -1
    32      93       0   2008
    33      28       0   2036
    34      40       0   2060
    35      79       0     -1
    36      79       0     -1
    37      77       0   2325
    38      54       0   2363
    39      20       0   2411
    40     631       0     -1
    41     704       0     -1
    42     703       0     -1
    43     142       0     -1
    44     756       0   2686
    45     772       0   2860
    46     791       0   2908
    47     794       0     -1
    48     805       0   2969

Safepoints (size = 400)
000000009958787F    31  000000000000000000000000001 (sp -> fp)       0
0000000099587A40   480  000000000000000001000010111 (sp -> fp)       6
0000000099587BF9   921  000000000000010001000010101 (sp -> fp)      12
0000000099587C2E   974  000000000010010001000010101 (sp -> fp)      13
0000000099587CF4  1172  000000000100010001000010101 (sp -> fp)      14
0000000099587DBA  1370  000000001000010001000010101 (sp -> fp)      15
0000000099587DE4  1412  000000000000010000000010101 (sp -> fp)      16
0000000099587E5B  1531  000000000000010001000010101 (sp -> fp)      18
0000000099587E90  1584  000000100000010001000010101 (sp -> fp)      19
0000000099587EE0  1664  000000010000010001000010101 (sp -> fp)      21
0000000099587F3C  1756  000001000000010001000010101 (sp -> fp)      24
0000000099588004  1956  011101000000010001000010101 (sp -> fp)      30
0000000099588038  2008  011101000000010001000010101 (sp -> fp)      32
000000009958804D  2029  011101000000010001000010101 (sp -> fp)      33
0000000099588068  2056  111101000000010001000010101 (sp -> fp)      34
000000009958812B  2251  111101000000010001000010101 (sp -> fp)      37
0000000099588175  2325  011101000000010001000010101 (sp -> fp)      37
0000000099588197  2359  011101000000010001000010101 (sp -> fp)      38
00000000995881C7  2407  001101000000010001000010101 (sp -> fp)      39
00000000995882DA  2682  000000000000000001000010101 (sp -> fp)      44
0000000099588388  2856  000000000000000001000010101 (sp -> fp)      45
00000000995883B8  2904  000000000000000000000010101 (sp -> fp)      46
00000000995883F5  2965  000000000000000000000010100 (sp -> fp)      48
0000000099588442  3042  000000000000000000000000001 | rcx | rbx | rsi | r8 (sp -> fp)  <none> argc: 1
000000009958848B  3115  000000000000000001000010111 | rcx | rdx | rsi | r8 (sp -> fp)       3
00000000995884DA  3194  000000000000000001000010111 | rdx | rsi | r8 (sp -> fp)  <none> argc: 2
0000000099588527  3271  000000000000010001000010101 | rsi | rdi (sp -> fp)       8
0000000099588579  3353  000000000000010001000010101 | rsi | rdi (sp -> fp)  <none> argc: 2

RelocInfo (size = 4767)
000000009958786D  comment  (;;; <@0,#0> -------------------- B0 --------------------)
000000009958786D  comment  (;;; <@2,#1> context)
0000000099587870  comment  (;;; <@3,#1> gap)
0000000099587874  comment  (;;; <@10,#8> -------------------- B1 --------------------)
0000000099587874  comment  (;;; <@12,#10> stack-check)
000000009958787B  code target (STUB)  (0000000099515D80)
000000009958787F  comment  (;;; <@14,#11> constant-t)
0000000099587881  embedded object  (00000000F5104181 <false>)
0000000099587889  comment  (;;; <@15,#11> gap)
000000009958788D  comment  (;;; <@16,#12> store-context-slot)
0000000099587891  comment  (;;; <@17,#12> gap)
0000000099587895  comment  (;;; <@18,#21> check-non-smi)
000000009958789E  comment  (;;; <@20,#22> check-instance-type)
00000000995878AD  comment  (;;; <@22,#23> load-named-field)
00000000995878B1  comment  (;;; <@23,#23> gap)
00000000995878B5  comment  (;;; <@24,#28> allocate)
00000000995878E0  comment  (;;; <@25,#28> gap)
00000000995878E4  comment  (;;; <@26,#29> sub-allocated-object)
00000000995878E7  comment  (;;; <@28,#31> store-named-field)
00000000995878E9  embedded object  (00000000DFA06CE1 <Map(elements=3)>)
00000000995878F5  comment  (;;; <@30,#33> store-named-field)
00000000995878F7  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099587903  comment  (;;; <@32,#35> store-named-field)
0000000099587905  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099587911  comment  (;;; <@33,#35> gap)
0000000099587914  comment  (;;; <@34,#796> smi-untag)
0000000099587918  comment  (;;; <@35,#796> gap)
000000009958791C  comment  (;;; <@36,#66> gap)
000000009958791E  embedded object  (00000000F5104181 <false>)
000000009958792C  embedded object  (00000000F5104181 <false>)
000000009958793A  embedded object  (00000000F5104181 <false>)
0000000099587959  comment  (;;; <@38,#67> -------------------- B2 (loop header) --------------------)
0000000099587969  comment  (;;; <@41,#70> compare-numeric-and-branch)
0000000099587972  comment  (;;; <@46,#77> -------------------- B4 --------------------)
0000000099587972  comment  (;;; <@48,#79> stack-check)
000000009958797C  comment  (;;; <@50,#83> load-named-field)
0000000099587980  comment  (;;; <@52,#802> smi-untag)
0000000099587984  comment  (;;; <@53,#802> gap)
0000000099587988  comment  (;;; <@54,#84> bounds-check)
0000000099587991  comment  (;;; <@55,#84> gap)
0000000099587994  comment  (;;; <@56,#85> string-char-code-at)
0000000099587A09  comment  (;;; <@57,#85> gap)
0000000099587A0D  comment  (;;; <@59,#89> compare-numeric-and-branch)
0000000099587A16  comment  (;;; <@64,#101> -------------------- B6 --------------------)
0000000099587A16  comment  (;;; <@67,#104> compare-numeric-and-branch)
0000000099587A20  comment  (;;; <@76,#111> -------------------- B9 --------------------)
0000000099587A20  comment  (;;; <@78,#114> deoptimize)
0000000099587A20  comment  (;;; deoptimize: insufficient type feedback for combined type)
0000000099587A20  position  (6463)
0000000099587A21  runtime entry
0000000099587A25  comment  (;;; <@79,#114> gap)
0000000099587A28  comment  (;;; <@80,#803> smi-tag)
0000000099587A2C  comment  (;;; <@82,#804> constant-t)
0000000099587A36  comment  (;;; <@83,#804> gap)
0000000099587A3B  comment  (;;; <@84,#115> cmp-t)
0000000099587A3B  position  (6473)
0000000099587A3C  code target (COMPARE_IC)  (000000009950E020)
0000000099587A50  comment  (;;; <@86,#116> lazy-bailout)
0000000099587A50  comment  (;;; <@89,#117> branch)
0000000099587A5A  comment  (;;; <@94,#131> -------------------- B11 --------------------)
0000000099587A5A  comment  (;;; <@96,#134> gap)
0000000099587A5E  comment  (;;; <@97,#134> compare-numeric-and-branch)
0000000099587A67  comment  (;;; <@98,#138> -------------------- B12 --------------------)
0000000099587A67  comment  (;;; <@100,#140> gap)
0000000099587A6B  comment  (;;; <@101,#140> goto)
0000000099587A70  comment  (;;; <@106,#141> -------------------- B14 --------------------)
0000000099587A70  comment  (;;; <@108,#144> gap)
0000000099587A74  comment  (;;; <@109,#144> compare-numeric-and-branch)
0000000099587A7D  comment  (;;; <@114,#571> -------------------- B16 --------------------)
0000000099587A7D  comment  (;;; <@117,#574> compare-numeric-and-branch)
0000000099587A86  comment  (;;; <@122,#581> -------------------- B18 --------------------)
0000000099587A86  comment  (;;; <@125,#584> compare-numeric-and-branch)
0000000099587A8F  comment  (;;; <@130,#596> -------------------- B20 --------------------)
0000000099587A8F  comment  (;;; <@132,#598> gap)
0000000099587A93  comment  (;;; <@133,#598> goto)
0000000099587A98  comment  (;;; <@142,#591> -------------------- B23 --------------------)
0000000099587A98  comment  (;;; <@144,#595> gap)
0000000099587A9A  embedded object  (00000000F5104161 <true>)
0000000099587AA2  comment  (;;; <@146,#602> -------------------- B24 --------------------)
0000000099587AA2  comment  (;;; <@148,#604> gap)
0000000099587AB5  comment  (;;; <@149,#604> goto)
0000000099587ABA  comment  (;;; <@154,#151> -------------------- B26 --------------------)
0000000099587ABA  comment  (;;; <@155,#151> gap)
0000000099587ABE  comment  (;;; <@156,#154> add-i)
0000000099587AC1  comment  (;;; <@157,#154> gap)
0000000099587AC8  comment  (;;; <@158,#159> sub-i)
0000000099587AD1  comment  (;;; <@160,#184> gap)
0000000099587AD8  comment  (;;; <@162,#185> -------------------- B27 (loop header) --------------------)
0000000099587AE0  comment  (;;; <@165,#188> compare-numeric-and-branch)
0000000099587AE9  comment  (;;; <@170,#195> -------------------- B29 --------------------)
0000000099587AE9  comment  (;;; <@172,#197> stack-check)
0000000099587AF3  comment  (;;; <@174,#202> bounds-check)
0000000099587AFD  comment  (;;; <@175,#202> gap)
0000000099587B04  comment  (;;; <@176,#203> string-char-code-at)
0000000099587B80  comment  (;;; <@177,#203> gap)
0000000099587B87  comment  (;;; <@179,#207> compare-numeric-and-branch)
0000000099587B91  comment  (;;; <@184,#214> -------------------- B31 --------------------)
0000000099587B91  comment  (;;; <@187,#217> compare-numeric-and-branch)
0000000099587B9B  comment  (;;; <@192,#227> -------------------- B33 --------------------)
0000000099587B9B  comment  (;;; <@195,#230> compare-numeric-and-branch)
0000000099587BAA  comment  (;;; <@212,#224> -------------------- B38 --------------------)
0000000099587BAA  comment  (;;; <@214,#347> gap)
0000000099587BAC  embedded object  (00000000F5104161 <true>)
0000000099587BB4  comment  (;;; <@216,#352> -------------------- B39 --------------------)
0000000099587BB4  comment  (;;; <@218,#354> add-i)
0000000099587BB7  comment  (;;; <@221,#357> goto)
0000000099587BBC  comment  (;;; <@226,#237> -------------------- B41 --------------------)
0000000099587BBC  comment  (;;; <@228,#240> deoptimize)
0000000099587BBC  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099587BBC  position  (6894)
0000000099587BBD  runtime entry
0000000099587BC1  comment  (;;; <@229,#240> gap)
0000000099587BC4  comment  (;;; <@230,#241> sub-i)
0000000099587BCE  comment  (;;; <@231,#241> gap)
0000000099587BD5  comment  (;;; <@232,#249> add-i)
0000000099587BD8  comment  (;;; <@234,#251> push-argument)
0000000099587BDB  comment  (;;; <@235,#251> gap)
0000000099587BDF  comment  (;;; <@236,#798> smi-tag)
0000000099587BE3  comment  (;;; <@238,#252> push-argument)
0000000099587BE5  comment  (;;; <@240,#808> smi-tag)
0000000099587BE9  comment  (;;; <@242,#253> push-argument)
0000000099587BEA  comment  (;;; <@244,#254> call-named)
0000000099587BEC  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099587BF4  position  (7003)
0000000099587BF5  code target (CALL_IC)  (0000000099519460)
0000000099587BFD  comment  (;;; <@245,#254> gap)
0000000099587C04  comment  (;;; <@246,#255> lazy-bailout)
0000000099587C04  comment  (;;; <@247,#255> gap)
0000000099587C0B  comment  (;;; <@248,#260> add-i)
0000000099587C0E  comment  (;;; <@250,#262> push-argument)
0000000099587C11  comment  (;;; <@251,#262> gap)
0000000099587C15  comment  (;;; <@252,#805> smi-tag)
0000000099587C19  comment  (;;; <@254,#263> push-argument)
0000000099587C1A  comment  (;;; <@256,#809> smi-tag)
0000000099587C1E  comment  (;;; <@258,#264> push-argument)
0000000099587C1F  comment  (;;; <@260,#265> call-named)
0000000099587C21  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099587C29  position  (7068)
0000000099587C2A  code target (CALL_IC)  (0000000099519460)
0000000099587C32  comment  (;;; <@261,#265> gap)
0000000099587C39  comment  (;;; <@262,#266> lazy-bailout)
0000000099587C39  comment  (;;; <@264,#269> gap)
0000000099587C3D  comment  (;;; <@265,#269> branch)
0000000099587CCC  comment  (;;; <@270,#288> -------------------- B43 --------------------)
0000000099587CCC  comment  (;;; <@272,#290> gap)
0000000099587CD3  comment  (;;; <@273,#290> goto)
0000000099587CD8  comment  (;;; <@278,#276> -------------------- B45 --------------------)
0000000099587CD8  comment  (;;; <@279,#276> gap)
0000000099587CDC  comment  (;;; <@280,#277> load-context-slot)
0000000099587CE0  comment  (;;; <@282,#278> global-object)
0000000099587CE4  comment  (;;; <@284,#279> global-receiver)
0000000099587CE8  comment  (;;; <@286,#280> push-argument)
0000000099587CE9  comment  (;;; <@288,#282> push-argument)
0000000099587CEF  comment  (;;; <@290,#283> call-function)
0000000099587CEF  position  (7142)
0000000099587CF0  code target (STUB)  (0000000099582D00)
0000000099587CF8  comment  (;;; <@292,#284> lazy-bailout)
0000000099587CF8  comment  (;;; <@296,#292> -------------------- B46 --------------------)
0000000099587CFF  comment  (;;; <@298,#294> gap)
0000000099587D03  comment  (;;; <@299,#294> branch)
0000000099587D92  comment  (;;; <@304,#313> -------------------- B48 --------------------)
0000000099587D92  comment  (;;; <@306,#315> gap)
0000000099587D99  comment  (;;; <@307,#315> goto)
0000000099587D9E  comment  (;;; <@312,#301> -------------------- B50 --------------------)
0000000099587D9E  comment  (;;; <@313,#301> gap)
0000000099587DA2  comment  (;;; <@314,#302> load-context-slot)
0000000099587DA6  comment  (;;; <@316,#303> global-object)
0000000099587DAA  comment  (;;; <@318,#304> global-receiver)
0000000099587DAE  comment  (;;; <@320,#305> push-argument)
0000000099587DAF  comment  (;;; <@322,#307> push-argument)
0000000099587DB5  comment  (;;; <@324,#308> call-function)
0000000099587DB5  position  (7200)
0000000099587DB6  code target (STUB)  (0000000099582D00)
0000000099587DBE  comment  (;;; <@326,#309> lazy-bailout)
0000000099587DBE  comment  (;;; <@330,#317> -------------------- B51 --------------------)
0000000099587DBE  comment  (;;; <@331,#317> gap)
0000000099587DC2  comment  (;;; <@332,#318> load-context-slot)
0000000099587DC9  comment  (;;; <@334,#319> global-object)
0000000099587DCD  comment  (;;; <@336,#320> global-receiver)
0000000099587DD1  comment  (;;; <@338,#321> push-argument)
0000000099587DD2  comment  (;;; <@340,#323> push-argument)
0000000099587DD5  comment  (;;; <@342,#325> push-argument)
0000000099587DDB  comment  (;;; <@344,#327> push-argument)
0000000099587DDC  comment  (;;; <@346,#329> push-argument)
0000000099587DDF  comment  (;;; <@348,#330> call-function)
0000000099587DDF  position  (7235)
0000000099587DE0  code target (STUB)  (00000000995848C0)
0000000099587DE8  comment  (;;; <@350,#331> lazy-bailout)
0000000099587DE8  comment  (;;; <@352,#339> deoptimize)
0000000099587DE8  comment  (;;; deoptimize: Insufficient type feedback for left side)
0000000099587DE9  runtime entry
0000000099587DED  comment  (;;; <@353,#339> gap)
0000000099587DF1  comment  (;;; <@354,#340> add-i)
0000000099587DF4  comment  (;;; <@356,#345> gap)
0000000099587E07  embedded object  (00000000F5104181 <false>)
0000000099587E11  embedded object  (00000000F5104181 <false>)
0000000099587E1B  embedded object  (00000000F5104181 <false>)
0000000099587E23  comment  (;;; <@357,#345> goto)
0000000099587E28  comment  (;;; <@358,#192> -------------------- B52 --------------------)
0000000099587E2B  comment  (;;; <@362,#358> -------------------- B53 --------------------)
0000000099587E2B  comment  (;;; <@363,#358> gap)
0000000099587E2E  comment  (;;; <@364,#363> sub-i)
0000000099587E31  comment  (;;; <@365,#363> gap)
0000000099587E38  comment  (;;; <@366,#369> add-i)
0000000099587E3B  comment  (;;; <@368,#371> push-argument)
0000000099587E3E  comment  (;;; <@369,#371> gap)
0000000099587E42  comment  (;;; <@370,#799> smi-tag)
0000000099587E46  comment  (;;; <@372,#372> push-argument)
0000000099587E47  comment  (;;; <@374,#810> smi-tag)
0000000099587E4B  comment  (;;; <@376,#373> push-argument)
0000000099587E4C  comment  (;;; <@378,#374> call-named)
0000000099587E4E  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099587E56  position  (7578)
0000000099587E57  code target (CALL_IC)  (0000000099519460)
0000000099587E5F  comment  (;;; <@379,#374> gap)
0000000099587E66  comment  (;;; <@380,#375> lazy-bailout)
0000000099587E66  comment  (;;; <@381,#375> gap)
0000000099587E6D  comment  (;;; <@382,#380> add-i)
0000000099587E70  comment  (;;; <@384,#382> push-argument)
0000000099587E73  comment  (;;; <@385,#382> gap)
0000000099587E77  comment  (;;; <@386,#806> smi-tag)
0000000099587E7B  comment  (;;; <@388,#383> push-argument)
0000000099587E7C  comment  (;;; <@390,#811> smi-tag)
0000000099587E80  comment  (;;; <@392,#384> push-argument)
0000000099587E81  comment  (;;; <@394,#385> call-named)
0000000099587E83  embedded object  (00000000FCE13E21 <String[5]: slice>)
0000000099587E8B  position  (7635)
0000000099587E8C  code target (CALL_IC)  (0000000099519460)
0000000099587E94  comment  (;;; <@395,#385> gap)
0000000099587E9B  comment  (;;; <@396,#386> lazy-bailout)
0000000099587E9B  comment  (;;; <@398,#389> gap)
0000000099587E9F  comment  (;;; <@399,#389> branch)
0000000099587EB4  runtime entry  (deoptimization bailout 20)
0000000099587EB8  comment  (;;; <@404,#408> -------------------- B55 --------------------)
0000000099587EB8  comment  (;;; <@406,#410> gap)
0000000099587EBF  comment  (;;; <@407,#410> goto)
0000000099587EC4  comment  (;;; <@412,#396> -------------------- B57 --------------------)
0000000099587EC4  comment  (;;; <@413,#396> gap)
0000000099587EC8  comment  (;;; <@414,#397> load-context-slot)
0000000099587ECC  comment  (;;; <@416,#398> global-object)
0000000099587ED0  comment  (;;; <@418,#399> global-receiver)
0000000099587ED4  comment  (;;; <@420,#400> push-argument)
0000000099587ED5  comment  (;;; <@422,#402> push-argument)
0000000099587EDB  comment  (;;; <@424,#403> call-function)
0000000099587EDB  position  (7701)
0000000099587EDC  code target (STUB)  (0000000099582D00)
0000000099587EE4  comment  (;;; <@426,#404> lazy-bailout)
0000000099587EE4  comment  (;;; <@430,#412> -------------------- B58 --------------------)
0000000099587EEB  comment  (;;; <@432,#414> gap)
0000000099587EEF  comment  (;;; <@433,#414> branch)
0000000099587F04  runtime entry  (deoptimization bailout 22)
0000000099587F08  comment  (;;; <@438,#433> -------------------- B60 --------------------)
0000000099587F08  comment  (;;; <@439,#433> gap)
0000000099587F0F  comment  (;;; <@440,#812> check-smi)
0000000099587F18  comment  (;;; <@442,#435> gap)
0000000099587F1B  comment  (;;; <@443,#435> goto)
0000000099587F20  comment  (;;; <@448,#421> -------------------- B62 --------------------)
0000000099587F20  comment  (;;; <@449,#421> gap)
0000000099587F24  comment  (;;; <@450,#422> load-context-slot)
0000000099587F28  comment  (;;; <@452,#423> global-object)
0000000099587F2C  comment  (;;; <@454,#424> global-receiver)
0000000099587F30  comment  (;;; <@456,#425> push-argument)
0000000099587F31  comment  (;;; <@458,#427> push-argument)
0000000099587F37  comment  (;;; <@460,#428> call-function)
0000000099587F37  position  (7751)
0000000099587F38  code target (STUB)  (0000000099582D00)
0000000099587F40  comment  (;;; <@462,#429> lazy-bailout)
0000000099587F40  comment  (;;; <@463,#429> gap)
0000000099587F43  comment  (;;; <@464,#813> check-smi)
0000000099587F4C  comment  (;;; <@466,#432> gap)
0000000099587F4F  comment  (;;; <@468,#437> -------------------- B63 --------------------)
0000000099587F56  comment  (;;; <@469,#437> gap)
0000000099587F5A  comment  (;;; <@470,#438> load-context-slot)
0000000099587F61  comment  (;;; <@471,#438> gap)
0000000099587F68  comment  (;;; <@472,#439> global-object)
0000000099587F6C  comment  (;;; <@474,#440> global-receiver)
0000000099587F70  comment  (;;; <@475,#440> gap)
0000000099587F77  comment  (;;; <@476,#445> check-function)
0000000099587F79  property cell
0000000099587F8A  comment  (;;; <@478,#449> gap)
0000000099587F8E  comment  (;;; <@479,#449> cmp-object-eq-and-branch)
0000000099587F90  embedded object  (00000000F5104161 <true>)
0000000099587FA1  comment  (;;; <@484,#470> -------------------- B65 --------------------)
0000000099587FA1  comment  (;;; <@486,#471> load-context-slot)
0000000099587FA5  comment  (;;; <@487,#471> gap)
0000000099587FAC  comment  (;;; <@488,#474> check-function)
0000000099587FAE  property cell
0000000099587FBF  comment  (;;; <@490,#477> load-context-slot)
0000000099587FC3  comment  (;;; <@492,#478> check-non-smi)
0000000099587FCD  comment  (;;; <@494,#479> check-maps)
0000000099587FCF  embedded object  (00000000DFA05979 <Map(elements=3)>)
0000000099587FE1  comment  (;;; <@496,#480> push-argument)
0000000099587FE3  comment  (;;; <@498,#481> push-argument)
0000000099587FE6  comment  (;;; <@500,#482> push-argument)
0000000099587FEC  comment  (;;; <@502,#483> call-constant-function)
0000000099587FEE  embedded object  (00000000F515E6F9 <JS Function call (SharedFunctionInfo 00000000F513D6D1)>)
0000000099588001  position  (4135)
0000000099588008  comment  (;;; <@504,#484> lazy-bailout)
0000000099588008  comment  (;;; <@507,#485> branch)
000000009958801D  runtime entry  (deoptimization bailout 31)
0000000099588021  comment  (;;; <@512,#542> -------------------- B67 --------------------)
0000000099588021  comment  (;;; <@513,#542> gap)
0000000099588028  comment  (;;; <@514,#814> dummy-use)
0000000099588028  comment  (;;; <@515,#814> gap)
0000000099588033  comment  (;;; <@516,#543> store-keyed-generic)
0000000099588033  position  (4377)
0000000099588034  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099588038  comment  (;;; <@518,#544> lazy-bailout)
0000000099588038  comment  (;;; <@521,#549> goto)
000000009958803D  comment  (;;; <@526,#492> -------------------- B69 --------------------)
000000009958803D  comment  (;;; <@527,#492> gap)
0000000099588048  comment  (;;; <@528,#493> load-keyed-generic)
0000000099588048  position  (4189)
0000000099588049  code target (KEYED_LOAD_IC)  (000000009951F2A0)
000000009958804D  comment  (;;; <@529,#493> gap)
0000000099588054  comment  (;;; <@530,#494> lazy-bailout)
0000000099588054  comment  (;;; <@531,#494> gap)
0000000099588058  comment  (;;; <@532,#496> load-context-slot)
000000009958805C  comment  (;;; <@534,#499> push-argument)
0000000099588062  comment  (;;; <@536,#501> push-argument)
0000000099588063  comment  (;;; <@538,#502> call-function)
0000000099588063  position  (4208)
0000000099588064  code target (STUB)  (0000000099582D00)
000000009958806C  comment  (;;; <@540,#503> lazy-bailout)
000000009958806C  comment  (;;; <@543,#504> branch)
00000000995880FA  comment  (;;; <@548,#517> -------------------- B71 --------------------)
00000000995880FA  comment  (;;; <@550,#519> push-argument)
00000000995880FC  property cell
0000000099588109  comment  (;;; <@552,#521> push-argument)
000000009958810B  comment  (;;; <@554,#523> push-argument)
000000009958810D  embedded object  (00000000FCE04139 <FixedArray[0]>)
0000000099588117  comment  (;;; <@556,#524> call-runtime)
0000000099588127  code target (STUB)  (00000000995072A0)
000000009958812B  comment  (;;; <@558,#525> check-maps)
000000009958812D  embedded object  (00000000DFA05ED1 <Map(elements=0)>)
000000009958813F  comment  (;;; <@560,#528> load-named-field)
0000000099588143  comment  (;;; <@561,#528> gap)
000000009958814A  comment  (;;; <@562,#817> check-smi)
0000000099588153  comment  (;;; <@563,#817> gap)
0000000099588156  comment  (;;; <@564,#530> store-keyed)
000000009958815A  comment  (;;; <@565,#530> gap)
0000000099588161  comment  (;;; <@566,#534> store-keyed)
0000000099588165  comment  (;;; <@567,#534> gap)
0000000099588170  comment  (;;; <@568,#536> store-keyed-generic)
0000000099588170  position  (4309)
0000000099588171  code target (KEYED_STORE_IC)  (000000009952D340)
0000000099588175  comment  (;;; <@570,#540> lazy-bailout)
0000000099588175  comment  (;;; <@573,#541> goto)
000000009958817A  comment  (;;; <@578,#511> -------------------- B73 --------------------)
000000009958817A  comment  (;;; <@580,#513> push-argument)
0000000099588180  comment  (;;; <@581,#513> gap)
0000000099588187  comment  (;;; <@582,#815> dummy-use)
0000000099588187  comment  (;;; <@584,#514> push-argument)
0000000099588188  comment  (;;; <@586,#515> call-named)
000000009958818A  embedded object  (00000000FCE14709 <String[4]: push>)
0000000099588192  position  (4243)
0000000099588193  code target (CALL_IC)  (000000009951AF60)
000000009958819B  comment  (;;; <@588,#516> lazy-bailout)
000000009958819B  comment  (;;; <@591,#539> goto)
00000000995881A0  comment  (;;; <@608,#456> -------------------- B78 --------------------)
00000000995881A0  comment  (;;; <@609,#456> gap)
00000000995881A4  comment  (;;; <@610,#457> load-context-slot)
00000000995881AB  comment  (;;; <@612,#460> push-argument)
00000000995881B1  comment  (;;; <@614,#461> push-argument)
00000000995881B4  comment  (;;; <@616,#462> push-argument)
00000000995881BA  comment  (;;; <@617,#462> gap)
00000000995881C1  comment  (;;; <@618,#816> dummy-use)
00000000995881C1  comment  (;;; <@620,#463> push-argument)
00000000995881C2  comment  (;;; <@622,#464> call-function)
00000000995881C2  position  (5383)
00000000995881C3  code target (STUB)  (0000000099582E00)
00000000995881CB  comment  (;;; <@624,#465> lazy-bailout)
00000000995881CB  comment  (;;; <@628,#559> -------------------- B79 --------------------)
00000000995881CB  comment  (;;; <@629,#559> gap)
00000000995881CF  comment  (;;; <@630,#567> add-i)
00000000995881D8  comment  (;;; <@632,#601> gap)
00000000995881DE  embedded object  (00000000F5104181 <false>)
00000000995881E8  embedded object  (00000000F5104181 <false>)
00000000995881F2  embedded object  (00000000F5104181 <false>)
00000000995881FA  comment  (;;; <@634,#625> -------------------- B80 --------------------)
00000000995881FA  comment  (;;; <@636,#627> gap)
000000009958820D  comment  (;;; <@637,#627> goto)
0000000099588212  comment  (;;; <@638,#118> -------------------- B81 --------------------)
0000000099588216  comment  (;;; <@642,#124> -------------------- B82 --------------------)
0000000099588216  comment  (;;; <@643,#124> gap)
000000009958821A  comment  (;;; <@644,#129> add-i)
000000009958821D  comment  (;;; <@646,#624> gap)
000000009958822E  embedded object  (00000000F5104161 <true>)
0000000099588236  comment  (;;; <@648,#648> -------------------- B83 --------------------)
0000000099588236  comment  (;;; <@650,#650> gap)
000000009958823A  comment  (;;; <@651,#650> goto)
000000009958823F  comment  (;;; <@652,#90> -------------------- B84 --------------------)
0000000099588245  comment  (;;; <@656,#96> -------------------- B85 --------------------)
0000000099588245  comment  (;;; <@657,#96> gap)
0000000099588248  comment  (;;; <@658,#99> add-i)
0000000099588251  comment  (;;; <@660,#647> gap)
0000000099588261  comment  (;;; <@662,#669> -------------------- B86 --------------------)
0000000099588261  comment  (;;; <@663,#669> gap)
0000000099588264  comment  (;;; <@664,#672> add-i)
000000009958826E  comment  (;;; <@666,#676> gap)
000000009958827C  comment  (;;; <@668,#695> -------------------- B87 --------------------)
000000009958827C  comment  (;;; <@669,#695> gap)
000000009958827F  comment  (;;; <@670,#697> add-i)
0000000099588289  comment  (;;; <@672,#700> gap)
00000000995882AC  comment  (;;; <@673,#700> goto)
00000000995882B1  comment  (;;; <@678,#701> -------------------- B89 --------------------)
00000000995882B1  comment  (;;; <@681,#704> compare-numeric-and-branch)
00000000995882BA  comment  (;;; <@686,#711> -------------------- B91 --------------------)
00000000995882BA  comment  (;;; <@688,#716> push-argument)
00000000995882BD  comment  (;;; <@689,#716> gap)
00000000995882C1  comment  (;;; <@690,#800> smi-tag)
00000000995882C5  comment  (;;; <@692,#717> push-argument)
00000000995882C6  comment  (;;; <@694,#801> smi-tag)
00000000995882CA  comment  (;;; <@696,#718> push-argument)
00000000995882CB  comment  (;;; <@698,#719> call-named)
00000000995882CD  embedded object  (00000000FCE13E21 <String[5]: slice>)
00000000995882D5  position  (8153)
00000000995882D6  code target (CALL_IC)  (0000000099519460)
00000000995882DE  comment  (;;; <@700,#720> lazy-bailout)
00000000995882DE  comment  (;;; <@702,#723> gap)
00000000995882E2  comment  (;;; <@703,#723> branch)
0000000099588371  comment  (;;; <@716,#730> -------------------- B95 --------------------)
0000000099588371  comment  (;;; <@717,#730> gap)
0000000099588375  comment  (;;; <@718,#731> load-context-slot)
0000000099588379  comment  (;;; <@720,#732> global-object)
000000009958837D  comment  (;;; <@722,#733> global-receiver)
0000000099588381  comment  (;;; <@724,#734> push-argument)
0000000099588382  comment  (;;; <@726,#736> push-argument)
0000000099588383  comment  (;;; <@728,#737> call-function)
0000000099588383  position  (8207)
0000000099588384  code target (STUB)  (0000000099582D00)
000000009958838C  comment  (;;; <@730,#738> lazy-bailout)
000000009958838C  comment  (;;; <@734,#746> -------------------- B96 --------------------)
000000009958838C  comment  (;;; <@735,#746> gap)
0000000099588390  comment  (;;; <@736,#747> load-context-slot)
0000000099588397  comment  (;;; <@738,#748> global-object)
000000009958839B  comment  (;;; <@740,#749> global-receiver)
000000009958839F  comment  (;;; <@742,#750> push-argument)
00000000995883A0  comment  (;;; <@744,#752> push-argument)
00000000995883A3  comment  (;;; <@746,#754> push-argument)
00000000995883A4  comment  (;;; <@748,#756> push-argument)
00000000995883A6  embedded object  (00000000FCE060C1 <String[0]: >)
00000000995883B0  comment  (;;; <@750,#758> push-argument)
00000000995883B3  comment  (;;; <@752,#759> call-function)
00000000995883B3  position  (8228)
00000000995883B4  code target (STUB)  (00000000995848C0)
00000000995883BC  comment  (;;; <@754,#760> lazy-bailout)
00000000995883BC  comment  (;;; <@766,#768> -------------------- B99 --------------------)
00000000995883BC  comment  (;;; <@767,#768> gap)
00000000995883C0  comment  (;;; <@768,#769> load-context-slot)
00000000995883C4  comment  (;;; <@771,#770> branch)
00000000995883D9  runtime entry  (deoptimization bailout 47)
00000000995883DD  comment  (;;; <@784,#777> -------------------- B103 --------------------)
00000000995883DD  comment  (;;; <@786,#778> load-context-slot)
00000000995883E4  comment  (;;; <@788,#779> global-object)
00000000995883E8  comment  (;;; <@790,#780> global-receiver)
00000000995883EC  comment  (;;; <@792,#781> push-argument)
00000000995883ED  comment  (;;; <@794,#783> push-argument)
00000000995883F0  comment  (;;; <@796,#784> call-function)
00000000995883F0  position  (8322)
00000000995883F1  code target (STUB)  (0000000099582D00)
00000000995883F9  comment  (;;; <@798,#785> lazy-bailout)
00000000995883F9  comment  (;;; <@802,#791> -------------------- B104 --------------------)
00000000995883F9  comment  (;;; <@803,#791> gap)
00000000995883FD  comment  (;;; <@804,#794> return)
0000000099588406  comment  (;;; <@24,#28> -------------------- Deferred allocate --------------------)
000000009958843D  position  (6157)
000000009958843E  code target (STUB)  (0000000099506AA0)
0000000099588461  comment  (;;; <@48,#79> -------------------- Deferred stack-check --------------------)
0000000099588486  position  (6336)
0000000099588487  code target (STUB)  (0000000099506AA0)
00000000995884A5  comment  (;;; <@56,#85> -------------------- Deferred string-char-code-at --------------------)
00000000995884D6  code target (STUB)  (0000000099506AA0)
00000000995884FD  comment  (;;; <@172,#197> -------------------- Deferred stack-check --------------------)
0000000099588522  position  (6707)
0000000099588523  code target (STUB)  (0000000099506AA0)
0000000099588541  comment  (;;; <@176,#203> -------------------- Deferred string-char-code-at --------------------)
0000000099588575  code target (STUB)  (0000000099506AA0)
000000009958859C  comment  (;;; -------------------- Jump table --------------------)
000000009958859C  comment  (;;; jump table entry 0: deoptimization bailout 1.)
000000009958859D  runtime entry  (deoptimization bailout 1)
00000000995885A1  comment  (;;; jump table entry 1: deoptimization bailout 2.)
00000000995885A2  runtime entry  (deoptimization bailout 2)
00000000995885A6  comment  (;;; jump table entry 2: deoptimization bailout 4.)
00000000995885A7  runtime entry  (deoptimization bailout 4)
00000000995885AB  comment  (;;; jump table entry 3: deoptimization bailout 7.)
00000000995885AC  runtime entry  (deoptimization bailout 7)
00000000995885B0  comment  (;;; jump table entry 4: deoptimization bailout 9.)
00000000995885B1  runtime entry  (deoptimization bailout 9)
00000000995885B5  comment  (;;; jump table entry 5: deoptimization bailout 11.)
00000000995885B6  runtime entry  (deoptimization bailout 11)
00000000995885BA  comment  (;;; jump table entry 6: deoptimization bailout 23.)
00000000995885BB  runtime entry  (deoptimization bailout 23)
00000000995885BF  comment  (;;; jump table entry 7: deoptimization bailout 25.)
00000000995885C0  runtime entry  (deoptimization bailout 25)
00000000995885C4  comme