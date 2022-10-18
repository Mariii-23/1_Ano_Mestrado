Loaded disassembler from hsdis-amd64.so
Decoding compiled method 0x00007f194911f2d0:
Code:
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f194911f460: mov    0x8(%rsi),%r10d
  0x00007f194911f464: shl    $0x3,%r10
  0x00007f194911f468: cmp    %rax,%r10
  0x00007f194911f46b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f194911f471: nopw   0x0(%rax,%rax,1)
  0x00007f194911f47c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f194911f480: mov    %eax,-0x14000(%rsp)
  0x00007f194911f487: push   %rbp
  0x00007f194911f488: sub    $0x30,%rsp
  0x00007f194911f48c: mov    $0x7f1921d36d98,%rax  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f496: mov    0xdc(%rax),%edi
  0x00007f194911f49c: add    $0x8,%edi
  0x00007f194911f49f: mov    %edi,0xdc(%rax)
  0x00007f194911f4a5: mov    $0x7f1921b5f5e8,%rax  ;   {metadata({method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f4af: and    $0x1ff8,%edi
  0x00007f194911f4b5: cmp    $0x0,%edi
  0x00007f194911f4b8: je     0x00007f194911f886  ;*aload_0
                                                ; - java.lang.String::equals@0 (line 965)

  0x00007f194911f4be: cmp    %rdx,%rsi
  0x00007f194911f4c1: mov    $0x7f1921d36d98,%rax  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f4cb: mov    $0x108,%rdi
  0x00007f194911f4d5: jne    0x00007f194911f4e5
  0x00007f194911f4db: mov    $0x118,%rdi
  0x00007f194911f4e5: mov    (%rax,%rdi,1),%rbx
  0x00007f194911f4e9: lea    0x1(%rbx),%rbx
  0x00007f194911f4ed: mov    %rbx,(%rax,%rdi,1)
  0x00007f194911f4f1: je     0x00007f194911f875  ;*if_acmpne
                                                ; - java.lang.String::equals@2 (line 965)

  0x00007f194911f4f7: cmp    $0x0,%rdx
  0x00007f194911f4fb: jne    0x00007f194911f516
  0x00007f194911f4fd: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f507: orl    $0x100,0x120(%rbx)
  0x00007f194911f511: jmpq   0x00007f194911f5d6
  0x00007f194911f516: mov    $0x7c00016d0,%rcx  ;   {metadata('java/lang/String')}
  0x00007f194911f520: mov    0x8(%rdx),%edi
  0x00007f194911f523: shl    $0x3,%rdi
  0x00007f194911f527: cmp    %rdi,%rcx
  0x00007f194911f52a: jne    0x00007f194911f5ba
  0x00007f194911f530: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f53a: mov    0x8(%rdx),%ecx
  0x00007f194911f53d: shl    $0x3,%rcx
  0x00007f194911f541: cmp    0x130(%rbx),%rcx
  0x00007f194911f548: jne    0x00007f194911f557
  0x00007f194911f54a: addq   $0x1,0x138(%rbx)
  0x00007f194911f552: jmpq   0x00007f194911f5db
  0x00007f194911f557: cmp    0x140(%rbx),%rcx
  0x00007f194911f55e: jne    0x00007f194911f56d
  0x00007f194911f560: addq   $0x1,0x148(%rbx)
  0x00007f194911f568: jmpq   0x00007f194911f5db
  0x00007f194911f56d: cmpq   $0x0,0x130(%rbx)
  0x00007f194911f578: jne    0x00007f194911f591
  0x00007f194911f57a: mov    %rcx,0x130(%rbx)
  0x00007f194911f581: movq   $0x1,0x138(%rbx)
  0x00007f194911f58c: jmpq   0x00007f194911f5db
  0x00007f194911f591: cmpq   $0x0,0x140(%rbx)
  0x00007f194911f59c: jne    0x00007f194911f5b5
  0x00007f194911f59e: mov    %rcx,0x140(%rbx)
  0x00007f194911f5a5: movq   $0x1,0x148(%rbx)
  0x00007f194911f5b0: jmpq   0x00007f194911f5db
  0x00007f194911f5b5: jmpq   0x00007f194911f5db
  0x00007f194911f5ba: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f5c4: subq   $0x1,0x128(%rbx)
  0x00007f194911f5cc: jmpq   0x00007f194911f5d6
  0x00007f194911f5d1: jmpq   0x00007f194911f5db
  0x00007f194911f5d6: xor    %rax,%rax
  0x00007f194911f5d9: jmp    0x00007f194911f5e5
  0x00007f194911f5db: mov    $0x1,%rax          ;*instanceof
                                                ; - java.lang.String::equals@8 (line 968)

  0x00007f194911f5e5: cmp    $0x0,%eax
  0x00007f194911f5e8: mov    $0x7f1921d36d98,%rax  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f5f2: mov    $0x158,%rdi
  0x00007f194911f5fc: je     0x00007f194911f60c
  0x00007f194911f602: mov    $0x168,%rdi
  0x00007f194911f60c: mov    (%rax,%rdi,1),%rbx
  0x00007f194911f610: lea    0x1(%rbx),%rbx
  0x00007f194911f614: mov    %rbx,(%rax,%rdi,1)
  0x00007f194911f618: je     0x00007f194911f864  ;*ifeq
                                                ; - java.lang.String::equals@11 (line 968)

  0x00007f194911f61e: cmp    $0x0,%rdx
  0x00007f194911f622: jne    0x00007f194911f63d
  0x00007f194911f624: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f62e: orl    $0x100,0x170(%rbx)
  0x00007f194911f638: jmpq   0x00007f194911f6fd
  0x00007f194911f63d: mov    $0x7c00016d0,%rax  ;   {metadata('java/lang/String')}
  0x00007f194911f647: mov    0x8(%rdx),%edi
  0x00007f194911f64a: shl    $0x3,%rdi
  0x00007f194911f64e: cmp    %rdi,%rax
  0x00007f194911f651: jne    0x00007f194911f6e1
  0x00007f194911f657: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f661: mov    0x8(%rdx),%eax
  0x00007f194911f664: shl    $0x3,%rax
  0x00007f194911f668: cmp    0x180(%rbx),%rax
  0x00007f194911f66f: jne    0x00007f194911f67e
  0x00007f194911f671: addq   $0x1,0x188(%rbx)
  0x00007f194911f679: jmpq   0x00007f194911f6fd
  0x00007f194911f67e: cmp    0x190(%rbx),%rax
  0x00007f194911f685: jne    0x00007f194911f694
  0x00007f194911f687: addq   $0x1,0x198(%rbx)
  0x00007f194911f68f: jmpq   0x00007f194911f6fd
  0x00007f194911f694: cmpq   $0x0,0x180(%rbx)
  0x00007f194911f69f: jne    0x00007f194911f6b8
  0x00007f194911f6a1: mov    %rax,0x180(%rbx)
  0x00007f194911f6a8: movq   $0x1,0x188(%rbx)
  0x00007f194911f6b3: jmpq   0x00007f194911f6fd
  0x00007f194911f6b8: cmpq   $0x0,0x190(%rbx)
  0x00007f194911f6c3: jne    0x00007f194911f6dc
  0x00007f194911f6c5: mov    %rax,0x190(%rbx)
  0x00007f194911f6cc: movq   $0x1,0x198(%rbx)
  0x00007f194911f6d7: jmpq   0x00007f194911f6fd
  0x00007f194911f6dc: jmpq   0x00007f194911f6fd
  0x00007f194911f6e1: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f6eb: subq   $0x1,0x178(%rbx)
  0x00007f194911f6f3: jmpq   0x00007f194911f89d
  0x00007f194911f6f8: jmpq   0x00007f194911f6fd
  0x00007f194911f6fd: mov    %rdx,%rax          ;*checkcast
                                                ; - java.lang.String::equals@15 (line 969)

  0x00007f194911f700: mov    0xc(%rsi),%esi
  0x00007f194911f703: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::equals@20 (line 970)

  0x00007f194911f707: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::equals@23 (line 970)
                                                ; implicit exception: dispatches to 0x00007f194911f8a6
  0x00007f194911f70a: mov    0xc(%rax),%eax     ; implicit exception: dispatches to 0x00007f194911f8ab
  0x00007f194911f70d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::equals@27 (line 971)

  0x00007f194911f711: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::equals@30 (line 971)
                                                ; implicit exception: dispatches to 0x00007f194911f8b0
  0x00007f194911f714: cmp    %ebx,%edi
  0x00007f194911f716: mov    $0x7f1921d36d98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f720: mov    $0x1a8,%rdx
  0x00007f194911f72a: jne    0x00007f194911f73a
  0x00007f194911f730: mov    $0x1b8,%rdx
  0x00007f194911f73a: mov    (%rbx,%rdx,1),%rcx
  0x00007f194911f73e: lea    0x1(%rcx),%rcx
  0x00007f194911f742: mov    %rcx,(%rbx,%rdx,1)
  0x00007f194911f746: jne    0x00007f194911f864  ;*if_icmpne
                                                ; - java.lang.String::equals@31 (line 971)

  0x00007f194911f74c: mov    $0x0,%ebx
  0x00007f194911f751: jmpq   0x00007f194911f7ff  ;*iload_3
                                                ; - java.lang.String::equals@49 (line 975)

  0x00007f194911f756: xchg   %ax,%ax
  0x00007f194911f758: movslq %ebx,%rdi
  0x00007f194911f75b: cmp    0xc(%rsi),%ebx
  0x00007f194911f75e: jae    0x00007f194911f8b5
  0x00007f194911f764: movzwl 0x10(%rsi,%rdi,2),%edi  ;*caload
                                                ; - java.lang.String::equals@60 (line 976)

  0x00007f194911f769: movslq %ebx,%rcx
  0x00007f194911f76c: cmp    0xc(%rax),%ebx
  0x00007f194911f76f: jae    0x00007f194911f8be
  0x00007f194911f775: movzwl 0x10(%rax,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::equals@65 (line 976)

  0x00007f194911f77a: cmp    %ecx,%edi
  0x00007f194911f77c: mov    $0x7f1921d36d98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f786: mov    $0x1e8,%rcx
  0x00007f194911f790: je     0x00007f194911f7a0
  0x00007f194911f796: mov    $0x1f8,%rcx
  0x00007f194911f7a0: mov    (%rdi,%rcx,1),%r8
  0x00007f194911f7a4: lea    0x1(%r8),%r8
  0x00007f194911f7a8: mov    %r8,(%rdi,%rcx,1)
  0x00007f194911f7ac: jne    0x00007f194911f842  ;*if_icmpeq
                                                ; - java.lang.String::equals@66 (line 976)

  0x00007f194911f7b2: inc    %ebx
  0x00007f194911f7b4: mov    $0x7f1921d36d98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f7be: mov    0xe0(%rdi),%ecx
  0x00007f194911f7c4: add    $0x8,%ecx
  0x00007f194911f7c7: mov    %ecx,0xe0(%rdi)
  0x00007f194911f7cd: mov    $0x7f1921b5f5e8,%rdi  ;   {metadata({method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f7d7: and    $0xfff8,%ecx
  0x00007f194911f7dd: cmp    $0x0,%ecx
  0x00007f194911f7e0: je     0x00007f194911f8c7  ; OopMap{rax=Oop rsi=Oop off=902}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 978)

  0x00007f194911f7e6: test   %eax,0x15607914(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194911f7ec: mov    $0x7f1921d36d98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f7f6: incl   0x208(%rdi)
  0x00007f194911f7fc: mov    %rdx,%rdi          ;*goto
                                                ; - java.lang.String::equals@74 (line 978)

  0x00007f194911f7ff: mov    %rdi,%rdx
  0x00007f194911f802: dec    %edx
  0x00007f194911f804: cmp    $0x0,%edi
  0x00007f194911f807: mov    $0x7f1921d36d98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5f5e8} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x00007f194911f811: mov    $0x1c8,%rcx
  0x00007f194911f81b: je     0x00007f194911f82b
  0x00007f194911f821: mov    $0x1d8,%rcx
  0x00007f194911f82b: mov    (%rdi,%rcx,1),%r8
  0x00007f194911f82f: lea    0x1(%r8),%r8
  0x00007f194911f833: mov    %r8,(%rdi,%rcx,1)
  0x00007f194911f837: je     0x00007f194911f853
  0x00007f194911f83d: jmpq   0x00007f194911f758  ;*ifeq
                                                ; - java.lang.String::equals@53 (line 975)

  0x00007f194911f842: mov    $0x0,%eax
  0x00007f194911f847: add    $0x30,%rsp
  0x00007f194911f84b: pop    %rbp
  0x00007f194911f84c: test   %eax,0x156078ae(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194911f852: retq                      ;*ireturn
                                                ; - java.lang.String::equals@70 (line 977)

  0x00007f194911f853: mov    $0x1,%eax
  0x00007f194911f858: add    $0x30,%rsp
  0x00007f194911f85c: pop    %rbp
  0x00007f194911f85d: test   %eax,0x1560789d(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194911f863: retq                      ;*ireturn
                                                ; - java.lang.String::equals@78 (line 980)

  0x00007f194911f864: mov    $0x0,%eax
  0x00007f194911f869: add    $0x30,%rsp
  0x00007f194911f86d: pop    %rbp
  0x00007f194911f86e: test   %eax,0x1560788c(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194911f874: retq                      ;*ireturn
                                                ; - java.lang.String::equals@80 (line 983)

  0x00007f194911f875: mov    $0x1,%eax
  0x00007f194911f87a: add    $0x30,%rsp
  0x00007f194911f87e: pop    %rbp
  0x00007f194911f87f: test   %eax,0x1560787b(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194911f885: retq
  0x00007f194911f886: mov    %rax,0x8(%rsp)
  0x00007f194911f88b: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194911f893: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rdx=Oop off=1080}
                                                ;*synchronization entry
                                                ; - java.lang.String::equals@-1 (line 965)
                                                ;   {runtime_call}
  0x00007f194911f898: jmpq   0x00007f194911f4be
  0x00007f194911f89d: mov    %rdx,(%rsp)
  0x00007f194911f8a1: callq  0x00007f1948ee1100  ; OopMap{rsi=Oop off=1094}
                                                ;*checkcast
                                                ; - java.lang.String::equals@15 (line 969)
                                                ;   {runtime_call}
  0x00007f194911f8a6: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rsi=Oop off=1099}
                                                ;*arraylength
                                                ; - java.lang.String::equals@23 (line 970)
                                                ;   {runtime_call}
  0x00007f194911f8ab: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop off=1104}
                                                ;*getfield value
                                                ; - java.lang.String::equals@27 (line 971)
                                                ;   {runtime_call}
  0x00007f194911f8b0: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop rax=Oop off=1109}
                                                ;*arraylength
                                                ; - java.lang.String::equals@30 (line 971)
                                                ;   {runtime_call}
  0x00007f194911f8b5: mov    %rbx,(%rsp)
  0x00007f194911f8b9: callq  0x00007f1948e53780  ; OopMap{rax=Oop rsi=Oop off=1118}
                                                ;*caload
                                                ; - java.lang.String::equals@60 (line 976)
                                                ;   {runtime_call}
  0x00007f194911f8be: mov    %rbx,(%rsp)
  0x00007f194911f8c2: callq  0x00007f1948e53780  ; OopMap{rax=Oop rsi=Oop off=1127}
                                                ;*caload
                                                ; - java.lang.String::equals@65 (line 976)
                                                ;   {runtime_call}
  0x00007f194911f8c7: mov    %rdi,0x8(%rsp)
  0x00007f194911f8cc: movq   $0x4a,(%rsp)
  0x00007f194911f8d4: callq  0x00007f1948ee3420  ; OopMap{rax=Oop rsi=Oop off=1145}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 978)
                                                ;   {runtime_call}
  0x00007f194911f8d9: jmpq   0x00007f194911f7e6
  0x00007f194911f8de: nop
  0x00007f194911f8df: nop
  0x00007f194911f8e0: mov    0x298(%r15),%rax
  0x00007f194911f8e7: mov    $0x0,%r10
  0x00007f194911f8f1: mov    %r10,0x298(%r15)
  0x00007f194911f8f8: mov    $0x0,%r10
  0x00007f194911f902: mov    %r10,0x2a0(%r15)
  0x00007f194911f909: add    $0x30,%rsp
  0x00007f194911f90d: pop    %rbp
  0x00007f194911f90e: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194911f913: hlt
  0x00007f194911f914: hlt
  0x00007f194911f915: hlt
  0x00007f194911f916: hlt
  0x00007f194911f917: hlt
  0x00007f194911f918: hlt
  0x00007f194911f919: hlt
  0x00007f194911f91a: hlt
  0x00007f194911f91b: hlt
  0x00007f194911f91c: hlt
  0x00007f194911f91d: hlt
  0x00007f194911f91e: hlt
  0x00007f194911f91f: hlt
[Exception Handler]
[Stub Code]
  0x00007f194911f920: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194911f925: mov    %rsp,-0x28(%rsp)
  0x00007f194911f92a: sub    $0x80,%rsp
  0x00007f194911f931: mov    %rax,0x78(%rsp)
  0x00007f194911f936: mov    %rcx,0x70(%rsp)
  0x00007f194911f93b: mov    %rdx,0x68(%rsp)
  0x00007f194911f940: mov    %rbx,0x60(%rsp)
  0x00007f194911f945: mov    %rbp,0x50(%rsp)
  0x00007f194911f94a: mov    %rsi,0x48(%rsp)
  0x00007f194911f94f: mov    %rdi,0x40(%rsp)
  0x00007f194911f954: mov    %r8,0x38(%rsp)
  0x00007f194911f959: mov    %r9,0x30(%rsp)
  0x00007f194911f95e: mov    %r10,0x28(%rsp)
  0x00007f194911f963: mov    %r11,0x20(%rsp)
  0x00007f194911f968: mov    %r12,0x18(%rsp)
  0x00007f194911f96d: mov    %r13,0x10(%rsp)
  0x00007f194911f972: mov    %r14,0x8(%rsp)
  0x00007f194911f977: mov    %r15,(%rsp)
  0x00007f194911f97b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194911f985: mov    $0x7f194911f925,%rsi  ;   {internal_word}
  0x00007f194911f98f: mov    %rsp,%rdx
  0x00007f194911f992: and    $0xfffffffffffffff0,%rsp
  0x00007f194911f996: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194911f99b: hlt
[Deopt Handler Code]
  0x00007f194911f99c: mov    $0x7f194911f99c,%r10  ;   {section_word}
  0x00007f194911f9a6: push   %r10
  0x00007f194911f9a8: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194911f9ad: hlt
  0x00007f194911f9ae: hlt
  0x00007f194911f9af: hlt
Decoding compiled method 0x00007f19491200d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f1949120240: mov    0x8(%rsi),%r10d
  0x00007f1949120244: shl    $0x3,%r10
  0x00007f1949120248: cmp    %rax,%r10
  0x00007f194912024b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949120251: nopw   0x0(%rax,%rax,1)
  0x00007f194912025c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949120260: mov    %eax,-0x14000(%rsp)
  0x00007f1949120267: push   %rbp
  0x00007f1949120268: sub    $0x30,%rsp
  0x00007f194912026c: mov    %rdx,%rdi
  0x00007f194912026f: mov    $0x7f1921ccf890,%rax  ;   {metadata(method data for {method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f1949120279: mov    0xdc(%rax),%edx
  0x00007f194912027f: add    $0x8,%edx
  0x00007f1949120282: mov    %edx,0xdc(%rax)
  0x00007f1949120288: mov    $0x7f1921b5ed80,%rax  ;   {metadata({method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f1949120292: and    $0x1ff8,%edx
  0x00007f1949120298: cmp    $0x0,%edx
  0x00007f194912029b: je     0x00007f194912036e  ;*iload_1
                                                ; - java.lang.String::charAt@0 (line 645)

  0x00007f19491202a1: cmp    $0x0,%edi
  0x00007f19491202a4: mov    $0x7f1921ccf890,%rax  ;   {metadata(method data for {method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f19491202ae: mov    $0x108,%rdx
  0x00007f19491202b8: jl     0x00007f19491202c8
  0x00007f19491202be: mov    $0x118,%rdx
  0x00007f19491202c8: mov    (%rax,%rdx,1),%rbx
  0x00007f19491202cc: lea    0x1(%rbx),%rbx
  0x00007f19491202d0: mov    %rbx,(%rax,%rdx,1)
  0x00007f19491202d4: jl     0x00007f1949120330  ;*iflt
                                                ; - java.lang.String::charAt@1 (line 645)

  0x00007f19491202da: mov    0xc(%rsi),%eax
  0x00007f19491202dd: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::charAt@6 (line 645)

  0x00007f19491202e1: mov    0xc(%rax),%edx     ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 645)
                                                ; implicit exception: dispatches to 0x00007f1949120385
  0x00007f19491202e4: cmp    %edx,%edi
  0x00007f19491202e6: mov    $0x7f1921ccf890,%rdx  ;   {metadata(method data for {method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f19491202f0: mov    $0x128,%rsi
  0x00007f19491202fa: jl     0x00007f194912030a
  0x00007f1949120300: mov    $0x138,%rsi
  0x00007f194912030a: mov    (%rdx,%rsi,1),%rbx
  0x00007f194912030e: lea    0x1(%rbx),%rbx
  0x00007f1949120312: mov    %rbx,(%rdx,%rsi,1)
  0x00007f1949120316: jge    0x00007f1949120330  ;*if_icmplt
                                                ; - java.lang.String::charAt@10 (line 645)

  0x00007f194912031c: movslq %edi,%rdi
  0x00007f194912031f: movzwl 0x10(%rax,%rdi,2),%eax  ;*caload
                                                ; - java.lang.String::charAt@27 (line 648)

  0x00007f1949120324: add    $0x30,%rsp
  0x00007f1949120328: pop    %rbp
  0x00007f1949120329: test   %eax,0x15606dd1(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912032f: retq                      ;*ireturn
                                                ; - java.lang.String::charAt@28 (line 648)

  0x00007f1949120330: jmpq   0x00007f1949120399  ;   {no_reloc}
  0x00007f1949120335: add    %al,(%rax)
  0x00007f1949120337: add    %al,(%rax)
  0x00007f1949120339: add    %ch,%cl
  0x00007f194912033b: add    %al,%fs:(%rax)
  0x00007f194912033e: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::charAt@13 (line 646)

  0x00007f1949120341: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x00007f1921b5ed80} 'charAt' '(I)C' in 'java/lang/String')}
  0x00007f1949120344: nop
  0x00007f1949120345: clc
  0x00007f1949120346: int3
  0x00007f1949120347: and    %ebx,(%rcx)
  0x00007f1949120349: jg     0x00007f194912034b
  0x00007f194912034b: add    %cl,-0x7d(%rax)
  0x00007f194912034e: xchg   %cl,0x1(%rax)
  0x00007f1949120351: add    %al,(%rax)
  0x00007f1949120353: add    %ecx,-0x75(%rax)
  0x00007f1949120356: xlat   %ds:(%rbx)
  0x00007f1949120357: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 646)

  0x00007f194912035a: mov    %rax,0x20(%rsp)
  0x00007f194912035f: callq  0x00007f1948e2ad60  ; OopMap{[32]=Oop off=292}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 646)
                                                ;   {optimized virtual_call}
  0x00007f1949120364: mov    0x20(%rsp),%rax
  0x00007f1949120369: jmpq   0x00007f19491203d8
  0x00007f194912036e: mov    %rax,0x8(%rsp)
  0x00007f1949120373: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912037b: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=320}
                                                ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 645)
                                                ;   {runtime_call}
  0x00007f1949120380: jmpq   0x00007f19491202a1
  0x00007f1949120385: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=330}
                                                ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 645)
                                                ;   {runtime_call}
  0x00007f194912038a: mov    $0x0,%rdx          ;   {metadata(NULL)}
  0x00007f1949120394: mov    $0xa050f00,%eax
  0x00007f1949120399: callq  0x00007f1948ee2420  ; OopMap{off=350}
                                                ;*new  ; - java.lang.String::charAt@13 (line 646)
                                                ;   {runtime_call}
  0x00007f194912039e: jmp    0x00007f1949120330
  0x00007f19491203a0: nop
  0x00007f19491203a1: nop
  0x00007f19491203a2: nop
  0x00007f19491203a3: mov    %rdx,%rdx
  0x00007f19491203a6: callq  0x00007f1948e52ba0  ; OopMap{off=363}
                                                ;*new  ; - java.lang.String::charAt@13 (line 646)
                                                ;   {runtime_call}
  0x00007f19491203ab: jmp    0x00007f194912033f
  0x00007f19491203ad: nop
  0x00007f19491203ae: nop
  0x00007f19491203af: mov    0x298(%r15),%rax
  0x00007f19491203b6: mov    $0x0,%r10
  0x00007f19491203c0: mov    %r10,0x298(%r15)
  0x00007f19491203c7: mov    $0x0,%r10
  0x00007f19491203d1: mov    %r10,0x2a0(%r15)
  0x00007f19491203d8: add    $0x30,%rsp
  0x00007f19491203dc: pop    %rbp
  0x00007f19491203dd: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f19491203e2: hlt
  0x00007f19491203e3: hlt
  0x00007f19491203e4: hlt
  0x00007f19491203e5: hlt
  0x00007f19491203e6: hlt
  0x00007f19491203e7: hlt
  0x00007f19491203e8: hlt
  0x00007f19491203e9: hlt
  0x00007f19491203ea: hlt
  0x00007f19491203eb: hlt
  0x00007f19491203ec: hlt
  0x00007f19491203ed: hlt
  0x00007f19491203ee: hlt
  0x00007f19491203ef: hlt
  0x00007f19491203f0: hlt
  0x00007f19491203f1: hlt
  0x00007f19491203f2: hlt
  0x00007f19491203f3: hlt
  0x00007f19491203f4: hlt
  0x00007f19491203f5: hlt
  0x00007f19491203f6: hlt
  0x00007f19491203f7: hlt
  0x00007f19491203f8: hlt
  0x00007f19491203f9: hlt
  0x00007f19491203fa: hlt
  0x00007f19491203fb: hlt
  0x00007f19491203fc: hlt
  0x00007f19491203fd: hlt
  0x00007f19491203fe: hlt
  0x00007f19491203ff: hlt
[Stub Code]
  0x00007f1949120400: nop                       ;   {no_reloc}
  0x00007f1949120401: nop
  0x00007f1949120402: nop
  0x00007f1949120403: nop
  0x00007f1949120404: nop
  0x00007f1949120405: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912040f: jmpq   0x00007f194912040f  ;   {runtime_call}
[Exception Handler]
  0x00007f1949120414: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f1949120419: mov    %rsp,-0x28(%rsp)
  0x00007f194912041e: sub    $0x80,%rsp
  0x00007f1949120425: mov    %rax,0x78(%rsp)
  0x00007f194912042a: mov    %rcx,0x70(%rsp)
  0x00007f194912042f: mov    %rdx,0x68(%rsp)
  0x00007f1949120434: mov    %rbx,0x60(%rsp)
  0x00007f1949120439: mov    %rbp,0x50(%rsp)
  0x00007f194912043e: mov    %rsi,0x48(%rsp)
  0x00007f1949120443: mov    %rdi,0x40(%rsp)
  0x00007f1949120448: mov    %r8,0x38(%rsp)
  0x00007f194912044d: mov    %r9,0x30(%rsp)
  0x00007f1949120452: mov    %r10,0x28(%rsp)
  0x00007f1949120457: mov    %r11,0x20(%rsp)
  0x00007f194912045c: mov    %r12,0x18(%rsp)
  0x00007f1949120461: mov    %r13,0x10(%rsp)
  0x00007f1949120466: mov    %r14,0x8(%rsp)
  0x00007f194912046b: mov    %r15,(%rsp)
  0x00007f194912046f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949120479: mov    $0x7f1949120419,%rsi  ;   {internal_word}
  0x00007f1949120483: mov    %rsp,%rdx
  0x00007f1949120486: and    $0xfffffffffffffff0,%rsp
  0x00007f194912048a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912048f: hlt
[Deopt Handler Code]
  0x00007f1949120490: mov    $0x7f1949120490,%r10  ;   {section_word}
  0x00007f194912049a: push   %r10
  0x00007f194912049c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491204a1: hlt
  0x00007f19491204a2: hlt
  0x00007f19491204a3: hlt
  0x00007f19491204a4: hlt
  0x00007f19491204a5: hlt
  0x00007f19491204a6: hlt
  0x00007f19491204a7: hlt
Decoding compiled method 0x00007f1949120a50:
Code:
[Entry Point]
  # {method} {0x00007f1921b747e8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x60]  (sp of caller)
  0x00007f1949120bc0: mov    0x8(%rsi),%r10d
  0x00007f1949120bc4: shl    $0x3,%r10
  0x00007f1949120bc8: cmp    %r10,%rax
  0x00007f1949120bcb: je     0x00007f1949120bd8
  0x00007f1949120bd1: jmpq   0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949120bd6: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949120bd8: mov    %eax,-0x14000(%rsp)
  0x00007f1949120bdf: push   %rbp
  0x00007f1949120be0: mov    %rsp,%rbp
  0x00007f1949120be3: sub    $0x50,%rsp
  0x00007f1949120be7: mov    %r9,(%rsp)
  0x00007f1949120beb: mov    %r8,%r9
  0x00007f1949120bee: mov    %rcx,0x18(%rsp)
  0x00007f1949120bf3: cmp    $0x0,%rcx
  0x00007f1949120bf7: lea    0x18(%rsp),%r8
  0x00007f1949120bfc: cmove  0x18(%rsp),%r8
  0x00007f1949120c02: mov    %rdx,%rcx
  0x00007f1949120c05: mov    %rsi,0x8(%rsp)
  0x00007f1949120c0a: cmp    $0x0,%rsi
  0x00007f1949120c0e: lea    0x8(%rsp),%rdx
  0x00007f1949120c13: cmove  0x8(%rsp),%rdx
  0x00007f1949120c19: mov    $0x671780b98,%r14  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x00007f1949120c23: mov    %r14,0x38(%rsp)
  0x00007f1949120c28: lea    0x38(%rsp),%r14
  0x00007f1949120c2d: mov    %r14,%rsi          ; OopMap{[24]=Oop [8]=Oop [56]=Oop off=112}
  0x00007f1949120c30: mov    $0x7f1949120c30,%r10  ;   {section_word}
  0x00007f1949120c3a: mov    %r10,0x1d0(%r15)
  0x00007f1949120c41: mov    %rsp,0x1c8(%r15)
  0x00007f1949120c48: cmpb   $0x0,0x149ac353(%rip)        # 0x00007f195daccfa2
                                                ;   {external_word}
  0x00007f1949120c4f: je     0x00007f1949120c93
  0x00007f1949120c55: push   %rsi
  0x00007f1949120c56: push   %rdx
  0x00007f1949120c57: push   %rcx
  0x00007f1949120c58: push   %r8
  0x00007f1949120c5a: push   %r9
  0x00007f1949120c5c: mov    $0x7f1921b747e8,%rsi  ;   {metadata({method} {0x00007f1921b747e8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007f1949120c66: mov    %r15,%rdi
  0x00007f1949120c69: test   $0xf,%esp
  0x00007f1949120c6f: je     0x00007f1949120c87
  0x00007f1949120c75: sub    $0x8,%rsp
  0x00007f1949120c79: callq  0x00007f195d4feef0  ;   {runtime_call}
  0x00007f1949120c7e: add    $0x8,%rsp
  0x00007f1949120c82: jmpq   0x00007f1949120c8c
  0x00007f1949120c87: callq  0x00007f195d4feef0  ;   {runtime_call}
  0x00007f1949120c8c: pop    %r9
  0x00007f1949120c8e: pop    %r8
  0x00007f1949120c90: pop    %rcx
  0x00007f1949120c91: pop    %rdx
  0x00007f1949120c92: pop    %rsi
  0x00007f1949120c93: lea    0x1e8(%r15),%rdi
  0x00007f1949120c9a: movl   $0x4,0x260(%r15)
  0x00007f1949120ca5: callq  0x00007f195d2750c0  ;   {runtime_call}
  0x00007f1949120caa: vzeroupper
  0x00007f1949120cad: movl   $0x5,0x260(%r15)
  0x00007f1949120cb8: mov    %r15d,%ecx
  0x00007f1949120cbb: shr    $0x4,%ecx
  0x00007f1949120cbe: and    $0xffc,%ecx
  0x00007f1949120cc4: mov    $0x7f195e726000,%r10  ;   {external_word}
  0x00007f1949120cce: mov    %ecx,(%r10,%rcx,1)
  0x00007f1949120cd2: cmpl   $0x0,0x149ba304(%rip)        # 0x00007f195dadafe0
                                                ;   {external_word}
  0x00007f1949120cdc: jne    0x00007f1949120cf0
  0x00007f1949120ce2: cmpl   $0x0,0x30(%r15)
  0x00007f1949120cea: je     0x00007f1949120d09
  0x00007f1949120cf0: mov    %r15,%rdi
  0x00007f1949120cf3: mov    %rsp,%r12
  0x00007f1949120cf6: sub    $0x0,%rsp
  0x00007f1949120cfa: and    $0xfffffffffffffff0,%rsp
  0x00007f1949120cfe: callq  0x00007f195d5aade0  ;   {runtime_call}
  0x00007f1949120d03: mov    %r12,%rsp
  0x00007f1949120d06: xor    %r12,%r12
  0x00007f1949120d09: movl   $0x8,0x260(%r15)
  0x00007f1949120d14: cmpl   $0x1,0x28c(%r15)
  0x00007f1949120d1f: je     0x00007f1949120da7
  0x00007f1949120d25: cmpb   $0x0,0x149ac276(%rip)        # 0x00007f195daccfa2
                                                ;   {external_word}
  0x00007f1949120d2c: je     0x00007f1949120d62
  0x00007f1949120d32: mov    $0x7f1921b747e8,%rsi  ;   {metadata({method} {0x00007f1921b747e8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x00007f1949120d3c: mov    %r15,%rdi
  0x00007f1949120d3f: test   $0xf,%esp
  0x00007f1949120d45: je     0x00007f1949120d5d
  0x00007f1949120d4b: sub    $0x8,%rsp
  0x00007f1949120d4f: callq  0x00007f195d4feee0  ;   {runtime_call}
  0x00007f1949120d54: add    $0x8,%rsp
  0x00007f1949120d58: jmpq   0x00007f1949120d62
  0x00007f1949120d5d: callq  0x00007f195d4feee0  ;   {runtime_call}
  0x00007f1949120d62: mov    $0x0,%r10
  0x00007f1949120d6c: mov    %r10,0x1c8(%r15)
  0x00007f1949120d73: mov    $0x0,%r10
  0x00007f1949120d7d: mov    %r10,0x1d0(%r15)
  0x00007f1949120d84: mov    0x38(%r15),%rcx
  0x00007f1949120d88: movl   $0x0,0x100(%rcx)
  0x00007f1949120d92: leaveq
  0x00007f1949120d93: cmpq   $0x0,0x8(%r15)
  0x00007f1949120d9b: jne    0x00007f1949120da2
  0x00007f1949120da1: retq
  0x00007f1949120da2: jmpq   Stub::forward exception  ;   {runtime_call}
  0x00007f1949120da7: mov    %rsp,%r12
  0x00007f1949120daa: sub    $0x0,%rsp
  0x00007f1949120dae: and    $0xfffffffffffffff0,%rsp
  0x00007f1949120db2: callq  0x00007f195d4feec0  ;   {runtime_call}
  0x00007f1949120db7: mov    %r12,%rsp
  0x00007f1949120dba: xor    %r12,%r12
  0x00007f1949120dbd: jmpq   0x00007f1949120d25
  0x00007f1949120dc2: hlt
  0x00007f1949120dc3: hlt
  0x00007f1949120dc4: hlt
  0x00007f1949120dc5: hlt
  0x00007f1949120dc6: hlt
  0x00007f1949120dc7: hlt
Decoding compiled method 0x00007f1949120e10:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f1949120f80: mov    0x8(%rsi),%r10d
  0x00007f1949120f84: shl    $0x3,%r10
  0x00007f1949120f88: cmp    %rax,%r10
  0x00007f1949120f8b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949120f91: nopw   0x0(%rax,%rax,1)
  0x00007f1949120f9c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949120fa0: mov    %eax,-0x14000(%rsp)
  0x00007f1949120fa7: push   %rbp
  0x00007f1949120fa8: sub    $0x30,%rsp
  0x00007f1949120fac: mov    $0x7f1921d208a8,%rax  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f1949120fb6: mov    0xdc(%rax),%edi
  0x00007f1949120fbc: add    $0x8,%edi
  0x00007f1949120fbf: mov    %edi,0xdc(%rax)
  0x00007f1949120fc5: mov    $0x7f1921b5ffc8,%rax  ;   {metadata({method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f1949120fcf: and    $0x1ff8,%edi
  0x00007f1949120fd5: cmp    $0x0,%edi
  0x00007f1949120fd8: je     0x00007f1949121111  ;*aload_0
                                                ; - java.lang.String::hashCode@0 (line 1453)

  0x00007f1949120fde: mov    0x10(%rsi),%eax    ;*getfield hash
                                                ; - java.lang.String::hashCode@1 (line 1453)

  0x00007f1949120fe1: cmp    $0x0,%eax
  0x00007f1949120fe4: mov    $0x7f1921d208a8,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f1949120fee: mov    $0x108,%rbx
  0x00007f1949120ff8: jne    0x00007f1949121008
  0x00007f1949120ffe: mov    $0x118,%rbx
  0x00007f1949121008: mov    (%rdi,%rbx,1),%rdx
  0x00007f194912100c: lea    0x1(%rdx),%rdx
  0x00007f1949121010: mov    %rdx,(%rdi,%rbx,1)
  0x00007f1949121014: jne    0x00007f1949121105  ;*ifne
                                                ; - java.lang.String::hashCode@6 (line 1454)

  0x00007f194912101a: mov    0xc(%rsi),%edi
  0x00007f194912101d: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::hashCode@10 (line 1454)

  0x00007f1949121021: mov    0xc(%rdi),%ebx     ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1454)
                                                ; implicit exception: dispatches to 0x00007f1949121128
  0x00007f1949121024: cmp    $0x0,%ebx
  0x00007f1949121027: mov    $0x7f1921d208a8,%rdx  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f1949121031: mov    $0x128,%rcx
  0x00007f194912103b: jle    0x00007f194912104b
  0x00007f1949121041: mov    $0x138,%rcx
  0x00007f194912104b: mov    (%rdx,%rcx,1),%r8
  0x00007f194912104f: lea    0x1(%r8),%r8
  0x00007f1949121053: mov    %r8,(%rdx,%rcx,1)
  0x00007f1949121057: jle    0x00007f1949121105  ;*ifle
                                                ; - java.lang.String::hashCode@14 (line 1454)

  0x00007f194912105d: mov    $0x0,%edx
  0x00007f1949121062: jmpq   0x00007f19491210ca  ;*iload_3
                                                ; - java.lang.String::hashCode@24 (line 1457)

  0x00007f1949121067: nop
  0x00007f1949121068: movslq %edx,%rcx
  0x00007f194912106b: movzwl 0x10(%rdi,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::hashCode@39 (line 1458)

  0x00007f1949121070: mov    %rax,%r8
  0x00007f1949121073: shl    $0x5,%eax
  0x00007f1949121076: sub    %r8d,%eax
  0x00007f1949121079: add    %ecx,%eax
  0x00007f194912107b: inc    %edx
  0x00007f194912107d: mov    $0x7f1921d208a8,%rcx  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f1949121087: mov    0xe0(%rcx),%r8d
  0x00007f194912108e: add    $0x8,%r8d
  0x00007f1949121092: mov    %r8d,0xe0(%rcx)
  0x00007f1949121099: mov    $0x7f1921b5ffc8,%rcx  ;   {metadata({method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f19491210a3: and    $0xfff8,%r8d
  0x00007f19491210aa: cmp    $0x0,%r8d
  0x00007f19491210ae: je     0x00007f194912112d  ; OopMap{rdi=Oop rsi=Oop off=308}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1457)

  0x00007f19491210b4: test   %eax,0x15606046(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f19491210ba: mov    $0x7f1921d208a8,%rcx  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f19491210c4: incl   0x168(%rcx)        ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1457)

  0x00007f19491210ca: cmp    %ebx,%edx
  0x00007f19491210cc: mov    $0x7f1921d208a8,%rcx  ;   {metadata(method data for {method} {0x00007f1921b5ffc8} 'hashCode' '()I' in 'java/lang/String')}
  0x00007f19491210d6: mov    $0x148,%r8
  0x00007f19491210e0: jge    0x00007f19491210f0
  0x00007f19491210e6: mov    $0x158,%r8
  0x00007f19491210f0: mov    (%rcx,%r8,1),%r9
  0x00007f19491210f4: lea    0x1(%r9),%r9
  0x00007f19491210f8: mov    %r9,(%rcx,%r8,1)
  0x00007f19491210fc: jl     0x00007f1949121068  ;*if_icmpge
                                                ; - java.lang.String::hashCode@30 (line 1457)

  0x00007f1949121102: mov    %eax,0x10(%rsi)    ;*putfield hash
                                                ; - java.lang.String::hashCode@50 (line 1460)

  0x00007f1949121105: add    $0x30,%rsp
  0x00007f1949121109: pop    %rbp
  0x00007f194912110a: test   %eax,0x15605ff0(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949121110: retq
  0x00007f1949121111: mov    %rax,0x8(%rsp)
  0x00007f1949121116: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912111e: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=419}
                                                ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1453)
                                                ;   {runtime_call}
  0x00007f1949121123: jmpq   0x00007f1949120fde
  0x00007f1949121128: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop rdi=Oop off=429}
                                                ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1454)
                                                ;   {runtime_call}
  0x00007f194912112d: mov    %rcx,0x8(%rsp)
  0x00007f1949121132: movq   $0x2d,(%rsp)
  0x00007f194912113a: callq  0x00007f1948ee3420  ; OopMap{rdi=Oop rsi=Oop off=447}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1457)
                                                ;   {runtime_call}
  0x00007f194912113f: jmpq   0x00007f19491210b4
  0x00007f1949121144: nop
  0x00007f1949121145: nop
  0x00007f1949121146: mov    0x298(%r15),%rax
  0x00007f194912114d: mov    $0x0,%r10
  0x00007f1949121157: mov    %r10,0x298(%r15)
  0x00007f194912115e: mov    $0x0,%r10
  0x00007f1949121168: mov    %r10,0x2a0(%r15)
  0x00007f194912116f: add    $0x30,%rsp
  0x00007f1949121173: pop    %rbp
  0x00007f1949121174: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949121179: hlt
  0x00007f194912117a: hlt
  0x00007f194912117b: hlt
  0x00007f194912117c: hlt
  0x00007f194912117d: hlt
  0x00007f194912117e: hlt
  0x00007f194912117f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949121180: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949121185: mov    %rsp,-0x28(%rsp)
  0x00007f194912118a: sub    $0x80,%rsp
  0x00007f1949121191: mov    %rax,0x78(%rsp)
  0x00007f1949121196: mov    %rcx,0x70(%rsp)
  0x00007f194912119b: mov    %rdx,0x68(%rsp)
  0x00007f19491211a0: mov    %rbx,0x60(%rsp)
  0x00007f19491211a5: mov    %rbp,0x50(%rsp)
  0x00007f19491211aa: mov    %rsi,0x48(%rsp)
  0x00007f19491211af: mov    %rdi,0x40(%rsp)
  0x00007f19491211b4: mov    %r8,0x38(%rsp)
  0x00007f19491211b9: mov    %r9,0x30(%rsp)
  0x00007f19491211be: mov    %r10,0x28(%rsp)
  0x00007f19491211c3: mov    %r11,0x20(%rsp)
  0x00007f19491211c8: mov    %r12,0x18(%rsp)
  0x00007f19491211cd: mov    %r13,0x10(%rsp)
  0x00007f19491211d2: mov    %r14,0x8(%rsp)
  0x00007f19491211d7: mov    %r15,(%rsp)
  0x00007f19491211db: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f19491211e5: mov    $0x7f1949121185,%rsi  ;   {internal_word}
  0x00007f19491211ef: mov    %rsp,%rdx
  0x00007f19491211f2: and    $0xfffffffffffffff0,%rsp
  0x00007f19491211f6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491211fb: hlt
[Deopt Handler Code]
  0x00007f19491211fc: mov    $0x7f19491211fc,%r10  ;   {section_word}
  0x00007f1949121206: push   %r10
  0x00007f1949121208: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912120d: hlt
  0x00007f194912120e: hlt
  0x00007f194912120f: hlt
Decoding compiled method 0x00007f19491213d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f1949121560: mov    0x8(%rsi),%r10d
  0x00007f1949121564: shl    $0x3,%r10
  0x00007f1949121568: cmp    %rax,%r10
  0x00007f194912156b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949121571: nopw   0x0(%rax,%rax,1)
  0x00007f194912157c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949121580: mov    %eax,-0x14000(%rsp)
  0x00007f1949121587: push   %rbp
  0x00007f1949121588: sub    $0x30,%rsp
  0x00007f194912158c: mov    $0x7f1921d49860,%rax  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121596: mov    0xdc(%rax),%edi
  0x00007f194912159c: add    $0x8,%edi
  0x00007f194912159f: mov    %edi,0xdc(%rax)
  0x00007f19491215a5: mov    $0x7f1921b60148,%rax  ;   {metadata({method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f19491215af: and    $0x1ff8,%edi
  0x00007f19491215b5: cmp    $0x0,%edi
  0x00007f19491215b8: je     0x00007f19491217c1  ;*aload_0
                                                ; - java.lang.String::indexOf@0 (line 1533)

  0x00007f19491215be: mov    0xc(%rsi),%eax
  0x00007f19491215c1: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::indexOf@1 (line 1533)

  0x00007f19491215c5: mov    0xc(%rax),%edi     ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1533)
                                                ; implicit exception: dispatches to 0x00007f19491217d8
  0x00007f19491215c8: cmp    $0x0,%ecx
  0x00007f19491215cb: mov    $0x7f1921d49860,%rbx  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f19491215d5: mov    $0x108,%r8
  0x00007f19491215df: jge    0x00007f19491215ef
  0x00007f19491215e5: mov    $0x118,%r8
  0x00007f19491215ef: mov    (%rbx,%r8,1),%r9
  0x00007f19491215f3: lea    0x1(%r9),%r9
  0x00007f19491215f7: mov    %r9,(%rbx,%r8,1)
  0x00007f19491215fb: jge    0x00007f194912161b  ;*ifge
                                                ; - java.lang.String::indexOf@7 (line 1534)

  0x00007f1949121601: mov    $0x7f1921d49860,%rcx  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f194912160b: incl   0x128(%rcx)
  0x00007f1949121611: mov    $0x0,%ecx
  0x00007f1949121616: jmpq   0x00007f1949121653  ;*goto
                                                ; - java.lang.String::indexOf@12 (line 1535)

  0x00007f194912161b: cmp    %edi,%ecx
  0x00007f194912161d: mov    $0x7f1921d49860,%rbx  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121627: mov    $0x140,%r8
  0x00007f1949121631: jl     0x00007f1949121641
  0x00007f1949121637: mov    $0x150,%r8
  0x00007f1949121641: mov    (%rbx,%r8,1),%r9
  0x00007f1949121645: lea    0x1(%r9),%r9
  0x00007f1949121649: mov    %r9,(%rbx,%r8,1)
  0x00007f194912164d: jge    0x00007f19491217b0  ;*if_icmplt
                                                ; - java.lang.String::indexOf@17 (line 1536)

  0x00007f1949121653: cmp    $0x10000,%edx
  0x00007f1949121659: mov    $0x7f1921d49860,%rbx  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121663: mov    $0x160,%r8
  0x00007f194912166d: jge    0x00007f194912167d
  0x00007f1949121673: mov    $0x170,%r8
  0x00007f194912167d: mov    (%rbx,%r8,1),%r9
  0x00007f1949121681: lea    0x1(%r9),%r9
  0x00007f1949121685: mov    %r9,(%rbx,%r8,1)
  0x00007f1949121689: jge    0x00007f1949121788
  0x00007f194912168f: jmpq   0x00007f194912172b  ;*if_icmpge
                                                ; - java.lang.String::indexOf@25 (line 1541)

  0x00007f1949121694: nopl   0x0(%rax)
  0x00007f1949121698: movslq %ecx,%rsi
  0x00007f194912169b: cmp    0xc(%rax),%ecx
  0x00007f194912169e: jae    0x00007f19491217dd
  0x00007f19491216a4: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1546)

  0x00007f19491216a9: cmp    %edx,%esi
  0x00007f19491216ab: mov    $0x7f1921d49860,%rsi  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f19491216b5: mov    $0x1a0,%rbx
  0x00007f19491216bf: jne    0x00007f19491216cf
  0x00007f19491216c5: mov    $0x1b0,%rbx
  0x00007f19491216cf: mov    (%rsi,%rbx,1),%r8
  0x00007f19491216d3: lea    0x1(%r8),%r8
  0x00007f19491216d7: mov    %r8,(%rsi,%rbx,1)
  0x00007f19491216db: je     0x00007f1949121768  ;*if_icmpne
                                                ; - java.lang.String::indexOf@49 (line 1546)

  0x00007f19491216e1: inc    %ecx
  0x00007f19491216e3: mov    $0x7f1921d49860,%rsi  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f19491216ed: mov    0xe0(%rsi),%ebx
  0x00007f19491216f3: add    $0x8,%ebx
  0x00007f19491216f6: mov    %ebx,0xe0(%rsi)
  0x00007f19491216fc: mov    $0x7f1921b60148,%rsi  ;   {metadata({method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121706: and    $0xfff8,%ebx
  0x00007f194912170c: cmp    $0x0,%ebx
  0x00007f194912170f: je     0x00007f19491217e6  ; OopMap{rax=Oop off=437}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1545)

  0x00007f1949121715: test   %eax,0x156059e5(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912171b: mov    $0x7f1921d49860,%rsi  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121725: incl   0x1c0(%rsi)        ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1545)

  0x00007f194912172b: cmp    %edi,%ecx
  0x00007f194912172d: mov    $0x7f1921d49860,%rsi  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121737: mov    $0x180,%rbx
  0x00007f1949121741: jge    0x00007f1949121751
  0x00007f1949121747: mov    $0x190,%rbx
  0x00007f1949121751: mov    (%rsi,%rbx,1),%r8
  0x00007f1949121755: lea    0x1(%r8),%r8
  0x00007f1949121759: mov    %r8,(%rsi,%rbx,1)
  0x00007f194912175d: jge    0x00007f1949121777
  0x00007f1949121763: jmpq   0x00007f1949121698  ;*if_icmpge
                                                ; - java.lang.String::indexOf@40 (line 1545)

  0x00007f1949121768: mov    %rcx,%rax
  0x00007f194912176b: add    $0x30,%rsp
  0x00007f194912176f: pop    %rbp
  0x00007f1949121770: test   %eax,0x1560598a(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949121776: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@54 (line 1547)

  0x00007f1949121777: mov    $0xffffffff,%eax
  0x00007f194912177c: add    $0x30,%rsp
  0x00007f1949121780: pop    %rbp
  0x00007f1949121781: test   %eax,0x15605979(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949121787: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@62 (line 1550)

  0x00007f1949121788: mov    %rsi,%rdi
  0x00007f194912178b: mov    $0x7f1921d49860,%rbx  ;   {metadata(method data for {method} {0x00007f1921b60148} 'indexOf' '(II)I' in 'java/lang/String')}
  0x00007f1949121795: addq   $0x1,0x1d8(%rbx)
  0x00007f194912179d: nop
  0x00007f194912179e: nop
  0x00007f194912179f: callq  0x00007f1948e2ad60  ; OopMap{off=580}
                                                ;*invokespecial indexOfSupplementary
                                                ; - java.lang.String::indexOf@66 (line 1552)
                                                ;   {optimized virtual_call}
  0x00007f19491217a4: add    $0x30,%rsp
  0x00007f19491217a8: pop    %rbp
  0x00007f19491217a9: test   %eax,0x15605951(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f19491217af: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@69 (line 1552)

  0x00007f19491217b0: mov    $0xffffffff,%eax
  0x00007f19491217b5: add    $0x30,%rsp
  0x00007f19491217b9: pop    %rbp
  0x00007f19491217ba: test   %eax,0x15605940(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f19491217c0: retq
  0x00007f19491217c1: mov    %rax,0x8(%rsp)
  0x00007f19491217c6: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491217ce: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=627}
                                                ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1533)
                                                ;   {runtime_call}
  0x00007f19491217d3: jmpq   0x00007f19491215be
  0x00007f19491217d8: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop rax=Oop off=637}
                                                ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1533)
                                                ;   {runtime_call}
  0x00007f19491217dd: mov    %rcx,(%rsp)
  0x00007f19491217e1: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=646}
                                                ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1546)
                                                ;   {runtime_call}
  0x00007f19491217e6: mov    %rsi,0x8(%rsp)
  0x00007f19491217eb: movq   $0x3a,(%rsp)
  0x00007f19491217f3: callq  0x00007f1948ee3420  ; OopMap{rax=Oop off=664}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1545)
                                                ;   {runtime_call}
  0x00007f19491217f8: jmpq   0x00007f1949121715
  0x00007f19491217fd: nop
  0x00007f19491217fe: nop
  0x00007f19491217ff: mov    0x298(%r15),%rax
  0x00007f1949121806: mov    $0x0,%r10
  0x00007f1949121810: mov    %r10,0x298(%r15)
  0x00007f1949121817: mov    $0x0,%r10
  0x00007f1949121821: mov    %r10,0x2a0(%r15)
  0x00007f1949121828: add    $0x30,%rsp
  0x00007f194912182c: pop    %rbp
  0x00007f194912182d: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949121832: hlt
  0x00007f1949121833: hlt
  0x00007f1949121834: hlt
  0x00007f1949121835: hlt
  0x00007f1949121836: hlt
  0x00007f1949121837: hlt
  0x00007f1949121838: hlt
  0x00007f1949121839: hlt
  0x00007f194912183a: hlt
  0x00007f194912183b: hlt
  0x00007f194912183c: hlt
  0x00007f194912183d: hlt
  0x00007f194912183e: hlt
  0x00007f194912183f: hlt
[Stub Code]
  0x00007f1949121840: nop                       ;   {no_reloc}
  0x00007f1949121841: nop
  0x00007f1949121842: nop
  0x00007f1949121843: nop
  0x00007f1949121844: nop
  0x00007f1949121845: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912184f: jmpq   0x00007f194912184f  ;   {runtime_call}
[Exception Handler]
  0x00007f1949121854: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f1949121859: mov    %rsp,-0x28(%rsp)
  0x00007f194912185e: sub    $0x80,%rsp
  0x00007f1949121865: mov    %rax,0x78(%rsp)
  0x00007f194912186a: mov    %rcx,0x70(%rsp)
  0x00007f194912186f: mov    %rdx,0x68(%rsp)
  0x00007f1949121874: mov    %rbx,0x60(%rsp)
  0x00007f1949121879: mov    %rbp,0x50(%rsp)
  0x00007f194912187e: mov    %rsi,0x48(%rsp)
  0x00007f1949121883: mov    %rdi,0x40(%rsp)
  0x00007f1949121888: mov    %r8,0x38(%rsp)
  0x00007f194912188d: mov    %r9,0x30(%rsp)
  0x00007f1949121892: mov    %r10,0x28(%rsp)
  0x00007f1949121897: mov    %r11,0x20(%rsp)
  0x00007f194912189c: mov    %r12,0x18(%rsp)
  0x00007f19491218a1: mov    %r13,0x10(%rsp)
  0x00007f19491218a6: mov    %r14,0x8(%rsp)
  0x00007f19491218ab: mov    %r15,(%rsp)
  0x00007f19491218af: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f19491218b9: mov    $0x7f1949121859,%rsi  ;   {internal_word}
  0x00007f19491218c3: mov    %rsp,%rdx
  0x00007f19491218c6: and    $0xfffffffffffffff0,%rsp
  0x00007f19491218ca: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491218cf: hlt
[Deopt Handler Code]
  0x00007f19491218d0: mov    $0x7f19491218d0,%r10  ;   {section_word}
  0x00007f19491218da: push   %r10
  0x00007f19491218dc: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491218e1: hlt
  0x00007f19491218e2: hlt
  0x00007f19491218e3: hlt
  0x00007f19491218e4: hlt
  0x00007f19491218e5: hlt
  0x00007f19491218e6: hlt
  0x00007f19491218e7: hlt
Decoding compiled method 0x00007f1949121b50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5ec30} 'length' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00007f1949121cc0: mov    0x8(%rsi),%r10d
  0x00007f1949121cc4: shl    $0x3,%r10
  0x00007f1949121cc8: cmp    %rax,%r10
  0x00007f1949121ccb: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949121cd1: nopw   0x0(%rax,%rax,1)
  0x00007f1949121cdc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949121ce0: mov    %eax,-0x14000(%rsp)
  0x00007f1949121ce7: push   %rbp
  0x00007f1949121ce8: sub    $0x30,%rsp
  0x00007f1949121cec: mov    $0x7f1921d496e0,%rax  ;   {metadata(method data for {method} {0x00007f1921b5ec30} 'length' '()I' in 'java/lang/String')}
  0x00007f1949121cf6: mov    0xdc(%rax),%edi
  0x00007f1949121cfc: add    $0x8,%edi
  0x00007f1949121cff: mov    %edi,0xdc(%rax)
  0x00007f1949121d05: mov    $0x7f1921b5ec30,%rax  ;   {metadata({method} {0x00007f1921b5ec30} 'length' '()I' in 'java/lang/String')}
  0x00007f1949121d0f: and    $0x1ff8,%edi
  0x00007f1949121d15: cmp    $0x0,%edi
  0x00007f1949121d18: je     0x00007f1949121d34  ;*aload_0
                                                ; - java.lang.String::length@0 (line 611)

  0x00007f1949121d1e: mov    0xc(%rsi),%eax
  0x00007f1949121d21: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::length@1 (line 611)

  0x00007f1949121d25: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.String::length@4 (line 611)
                                                ; implicit exception: dispatches to 0x00007f1949121d48
  0x00007f1949121d28: add    $0x30,%rsp
  0x00007f1949121d2c: pop    %rbp
  0x00007f1949121d2d: test   %eax,0x156053cd(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949121d33: retq
  0x00007f1949121d34: mov    %rax,0x8(%rsp)
  0x00007f1949121d39: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949121d41: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=134}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 611)
                                                ;   {runtime_call}
  0x00007f1949121d46: jmp    0x00007f1949121d1e
  0x00007f1949121d48: callq  0x00007f1948e530c0  ; OopMap{off=141}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 611)
                                                ;   {runtime_call}
  0x00007f1949121d4d: nop
  0x00007f1949121d4e: nop
  0x00007f1949121d4f: mov    0x298(%r15),%rax
  0x00007f1949121d56: mov    $0x0,%r10
  0x00007f1949121d60: mov    %r10,0x298(%r15)
  0x00007f1949121d67: mov    $0x0,%r10
  0x00007f1949121d71: mov    %r10,0x2a0(%r15)
  0x00007f1949121d78: add    $0x30,%rsp
  0x00007f1949121d7c: pop    %rbp
  0x00007f1949121d7d: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949121d82: hlt
  0x00007f1949121d83: hlt
  0x00007f1949121d84: hlt
  0x00007f1949121d85: hlt
  0x00007f1949121d86: hlt
  0x00007f1949121d87: hlt
  0x00007f1949121d88: hlt
  0x00007f1949121d89: hlt
  0x00007f1949121d8a: hlt
  0x00007f1949121d8b: hlt
  0x00007f1949121d8c: hlt
  0x00007f1949121d8d: hlt
  0x00007f1949121d8e: hlt
  0x00007f1949121d8f: hlt
  0x00007f1949121d90: hlt
  0x00007f1949121d91: hlt
  0x00007f1949121d92: hlt
  0x00007f1949121d93: hlt
  0x00007f1949121d94: hlt
  0x00007f1949121d95: hlt
  0x00007f1949121d96: hlt
  0x00007f1949121d97: hlt
  0x00007f1949121d98: hlt
  0x00007f1949121d99: hlt
  0x00007f1949121d9a: hlt
  0x00007f1949121d9b: hlt
  0x00007f1949121d9c: hlt
  0x00007f1949121d9d: hlt
  0x00007f1949121d9e: hlt
  0x00007f1949121d9f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949121da0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949121da5: mov    %rsp,-0x28(%rsp)
  0x00007f1949121daa: sub    $0x80,%rsp
  0x00007f1949121db1: mov    %rax,0x78(%rsp)
  0x00007f1949121db6: mov    %rcx,0x70(%rsp)
  0x00007f1949121dbb: mov    %rdx,0x68(%rsp)
  0x00007f1949121dc0: mov    %rbx,0x60(%rsp)
  0x00007f1949121dc5: mov    %rbp,0x50(%rsp)
  0x00007f1949121dca: mov    %rsi,0x48(%rsp)
  0x00007f1949121dcf: mov    %rdi,0x40(%rsp)
  0x00007f1949121dd4: mov    %r8,0x38(%rsp)
  0x00007f1949121dd9: mov    %r9,0x30(%rsp)
  0x00007f1949121dde: mov    %r10,0x28(%rsp)
  0x00007f1949121de3: mov    %r11,0x20(%rsp)
  0x00007f1949121de8: mov    %r12,0x18(%rsp)
  0x00007f1949121ded: mov    %r13,0x10(%rsp)
  0x00007f1949121df2: mov    %r14,0x8(%rsp)
  0x00007f1949121df7: mov    %r15,(%rsp)
  0x00007f1949121dfb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949121e05: mov    $0x7f1949121da5,%rsi  ;   {internal_word}
  0x00007f1949121e0f: mov    %rsp,%rdx
  0x00007f1949121e12: and    $0xfffffffffffffff0,%rsp
  0x00007f1949121e16: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f1949121e1b: hlt
[Deopt Handler Code]
  0x00007f1949121e1c: mov    $0x7f1949121e1c,%r10  ;   {section_word}
  0x00007f1949121e26: push   %r10
  0x00007f1949121e28: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949121e2d: hlt
  0x00007f1949121e2e: hlt
  0x00007f1949121e2f: hlt
Decoding compiled method 0x00007f1949121f10:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921bcc480} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f1949122080: mov    0x8(%rsi),%r10d
  0x00007f1949122084: shl    $0x3,%r10
  0x00007f1949122088: cmp    %rax,%r10
  0x00007f194912208b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949122091: nopw   0x0(%rax,%rax,1)
  0x00007f194912209c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f19491220a0: mov    %eax,-0x14000(%rsp)
  0x00007f19491220a7: push   %rbp
  0x00007f19491220a8: sub    $0x30,%rsp
  0x00007f19491220ac: mov    $0x7f1921d4b460,%rdi  ;   {metadata(method data for {method} {0x00007f1921bcc480} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f19491220b6: mov    0xdc(%rdi),%ebx
  0x00007f19491220bc: add    $0x8,%ebx
  0x00007f19491220bf: mov    %ebx,0xdc(%rdi)
  0x00007f19491220c5: mov    $0x7f1921bcc480,%rdi  ;   {metadata({method} {0x00007f1921bcc480} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f19491220cf: and    $0x1ff8,%ebx
  0x00007f19491220d5: cmp    $0x0,%ebx
  0x00007f19491220d8: je     0x00007f19491221c8  ;*iload_1
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@0 (line 120)

  0x00007f19491220de: mov    0x10(%rsi),%edi
  0x00007f19491220e1: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)

  0x00007f19491220e5: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; implicit exception: dispatches to 0x00007f19491221df
  0x00007f19491220e8: mov    %rdx,%rbx
  0x00007f19491220eb: sub    %edi,%ebx
  0x00007f19491220ed: cmp    $0x0,%ebx
  0x00007f19491220f0: mov    $0x7f1921d4b460,%rdi  ;   {metadata(method data for {method} {0x00007f1921bcc480} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f19491220fa: mov    $0x108,%rbx
  0x00007f1949122104: jle    0x00007f1949122114
  0x00007f194912210a: mov    $0x118,%rbx
  0x00007f1949122114: mov    (%rdi,%rbx,1),%rax
  0x00007f1949122118: lea    0x1(%rax),%rax
  0x00007f194912211c: mov    %rax,(%rdi,%rbx,1)
  0x00007f1949122120: jle    0x00007f19491221bc  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)

  0x00007f1949122126: mov    %rsi,%rdi
  0x00007f1949122129: mov    $0x7f1921d4b460,%rbx  ;   {metadata(method data for {method} {0x00007f1921bcc480} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f1949122133: mov    0x8(%rdi),%edi
  0x00007f1949122136: shl    $0x3,%rdi
  0x00007f194912213a: cmp    0x130(%rbx),%rdi
  0x00007f1949122141: jne    0x00007f1949122150
  0x00007f1949122143: addq   $0x1,0x138(%rbx)
  0x00007f194912214b: jmpq   0x00007f19491221b6
  0x00007f1949122150: cmp    0x140(%rbx),%rdi
  0x00007f1949122157: jne    0x00007f1949122166
  0x00007f1949122159: addq   $0x1,0x148(%rbx)
  0x00007f1949122161: jmpq   0x00007f19491221b6
  0x00007f1949122166: cmpq   $0x0,0x130(%rbx)
  0x00007f1949122171: jne    0x00007f194912218a
  0x00007f1949122173: mov    %rdi,0x130(%rbx)
  0x00007f194912217a: movq   $0x1,0x138(%rbx)
  0x00007f1949122185: jmpq   0x00007f19491221b6
  0x00007f194912218a: cmpq   $0x0,0x140(%rbx)
  0x00007f1949122195: jne    0x00007f19491221ae
  0x00007f1949122197: mov    %rdi,0x140(%rbx)
  0x00007f194912219e: movq   $0x1,0x148(%rbx)
  0x00007f19491221a9: jmpq   0x00007f19491221b6
  0x00007f19491221ae: addq   $0x1,0x128(%rbx)
  0x00007f19491221b6: nop
  0x00007f19491221b7: callq  0x00007f1948e2ad60  ; OopMap{off=316}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ;   {optimized virtual_call}
  0x00007f19491221bc: add    $0x30,%rsp
  0x00007f19491221c0: pop    %rbp
  0x00007f19491221c1: test   %eax,0x15604f39(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f19491221c7: retq
  0x00007f19491221c8: mov    %rdi,0x8(%rsp)
  0x00007f19491221cd: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491221d5: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=346}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ;   {runtime_call}
  0x00007f19491221da: jmpq   0x00007f19491220de
  0x00007f19491221df: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop off=356}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ;   {runtime_call}
  0x00007f19491221e4: nop
  0x00007f19491221e5: nop
  0x00007f19491221e6: mov    0x298(%r15),%rax
  0x00007f19491221ed: mov    $0x0,%r10
  0x00007f19491221f7: mov    %r10,0x298(%r15)
  0x00007f19491221fe: mov    $0x0,%r10
  0x00007f1949122208: mov    %r10,0x2a0(%r15)
  0x00007f194912220f: add    $0x30,%rsp
  0x00007f1949122213: pop    %rbp
  0x00007f1949122214: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949122219: hlt
  0x00007f194912221a: hlt
  0x00007f194912221b: hlt
  0x00007f194912221c: hlt
  0x00007f194912221d: hlt
  0x00007f194912221e: hlt
  0x00007f194912221f: hlt
[Stub Code]
  0x00007f1949122220: nop                       ;   {no_reloc}
  0x00007f1949122221: nop
  0x00007f1949122222: nop
  0x00007f1949122223: nop
  0x00007f1949122224: nop
  0x00007f1949122225: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912222f: jmpq   0x00007f194912222f  ;   {runtime_call}
[Exception Handler]
  0x00007f1949122234: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f1949122239: mov    %rsp,-0x28(%rsp)
  0x00007f194912223e: sub    $0x80,%rsp
  0x00007f1949122245: mov    %rax,0x78(%rsp)
  0x00007f194912224a: mov    %rcx,0x70(%rsp)
  0x00007f194912224f: mov    %rdx,0x68(%rsp)
  0x00007f1949122254: mov    %rbx,0x60(%rsp)
  0x00007f1949122259: mov    %rbp,0x50(%rsp)
  0x00007f194912225e: mov    %rsi,0x48(%rsp)
  0x00007f1949122263: mov    %rdi,0x40(%rsp)
  0x00007f1949122268: mov    %r8,0x38(%rsp)
  0x00007f194912226d: mov    %r9,0x30(%rsp)
  0x00007f1949122272: mov    %r10,0x28(%rsp)
  0x00007f1949122277: mov    %r11,0x20(%rsp)
  0x00007f194912227c: mov    %r12,0x18(%rsp)
  0x00007f1949122281: mov    %r13,0x10(%rsp)
  0x00007f1949122286: mov    %r14,0x8(%rsp)
  0x00007f194912228b: mov    %r15,(%rsp)
  0x00007f194912228f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949122299: mov    $0x7f1949122239,%rsi  ;   {internal_word}
  0x00007f19491222a3: mov    %rsp,%rdx
  0x00007f19491222a6: and    $0xfffffffffffffff0,%rsp
  0x00007f19491222aa: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491222af: hlt
[Deopt Handler Code]
  0x00007f19491222b0: mov    $0x7f19491222b0,%r10  ;   {section_word}
  0x00007f19491222ba: push   %r10
  0x00007f19491222bc: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491222c1: hlt
  0x00007f19491222c2: hlt
  0x00007f19491222c3: hlt
  0x00007f19491222c4: hlt
  0x00007f19491222c5: hlt
  0x00007f19491222c6: hlt
  0x00007f19491222c7: hlt
Decoding compiled method 0x00007f19491223d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f1949122540: mov    0x8(%rsi),%r10d
  0x00007f1949122544: shl    $0x3,%r10
  0x00007f1949122548: cmp    %rax,%r10
  0x00007f194912254b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949122551: nopw   0x0(%rax,%rax,1)
  0x00007f194912255c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949122560: mov    %eax,-0x14000(%rsp)
  0x00007f1949122567: push   %rbp
  0x00007f1949122568: sub    $0x30,%rsp
  0x00007f194912256c: mov    $0x7f1921cbab98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f1949122576: mov    0xdc(%rdi),%ebx
  0x00007f194912257c: add    $0x8,%ebx
  0x00007f194912257f: mov    %ebx,0xdc(%rdi)
  0x00007f1949122585: mov    $0x7f1921b5b488,%rdi  ;   {metadata({method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f194912258f: and    $0x1ff8,%ebx
  0x00007f1949122595: cmp    $0x0,%ebx
  0x00007f1949122598: je     0x00007f19491225b7
  0x00007f194912259e: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00007f19491225a1: mov    %rsi,0x20(%rsp)
  0x00007f19491225a6: callq  0x00007f1948e52e20  ; OopMap{[32]=Oop off=107}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00007f19491225ab: add    $0x30,%rsp
  0x00007f19491225af: pop    %rbp
  0x00007f19491225b0: test   %eax,0x15604b4a(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f19491225b6: retq
  0x00007f19491225b7: mov    %rdi,0x8(%rsp)
  0x00007f19491225bc: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491225c4: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=137}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ;   {runtime_call}
  0x00007f19491225c9: jmp    0x00007f194912259e
  0x00007f19491225cb: nop
  0x00007f19491225cc: nop
  0x00007f19491225cd: mov    0x298(%r15),%rax
  0x00007f19491225d4: mov    $0x0,%r10
  0x00007f19491225de: mov    %r10,0x298(%r15)
  0x00007f19491225e5: mov    $0x0,%r10
  0x00007f19491225ef: mov    %r10,0x2a0(%r15)
  0x00007f19491225f6: add    $0x30,%rsp
  0x00007f19491225fa: pop    %rbp
  0x00007f19491225fb: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
[Exception Handler]
[Stub Code]
  0x00007f1949122600: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949122605: mov    %rsp,-0x28(%rsp)
  0x00007f194912260a: sub    $0x80,%rsp
  0x00007f1949122611: mov    %rax,0x78(%rsp)
  0x00007f1949122616: mov    %rcx,0x70(%rsp)
  0x00007f194912261b: mov    %rdx,0x68(%rsp)
  0x00007f1949122620: mov    %rbx,0x60(%rsp)
  0x00007f1949122625: mov    %rbp,0x50(%rsp)
  0x00007f194912262a: mov    %rsi,0x48(%rsp)
  0x00007f194912262f: mov    %rdi,0x40(%rsp)
  0x00007f1949122634: mov    %r8,0x38(%rsp)
  0x00007f1949122639: mov    %r9,0x30(%rsp)
  0x00007f194912263e: mov    %r10,0x28(%rsp)
  0x00007f1949122643: mov    %r11,0x20(%rsp)
  0x00007f1949122648: mov    %r12,0x18(%rsp)
  0x00007f194912264d: mov    %r13,0x10(%rsp)
  0x00007f1949122652: mov    %r14,0x8(%rsp)
  0x00007f1949122657: mov    %r15,(%rsp)
  0x00007f194912265b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949122665: mov    $0x7f1949122605,%rsi  ;   {internal_word}
  0x00007f194912266f: mov    %rsp,%rdx
  0x00007f1949122672: and    $0xfffffffffffffff0,%rsp
  0x00007f1949122676: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912267b: hlt
[Deopt Handler Code]
  0x00007f194912267c: mov    $0x7f194912267c,%r10  ;   {section_word}
  0x00007f1949122686: push   %r10
  0x00007f1949122688: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912268d: hlt
  0x00007f194912268e: hlt
  0x00007f194912268f: hlt
Decoding compiled method 0x00007f1949122750:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f19491228c0: mov    %eax,-0x14000(%rsp)
  0x00007f19491228c7: push   %rbp
  0x00007f19491228c8: sub    $0x30,%rsp
  0x00007f19491228cc: mov    $0x7f1921d48030,%rax  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f19491228d6: mov    0xdc(%rax),%edi
  0x00007f19491228dc: add    $0x8,%edi
  0x00007f19491228df: mov    %edi,0xdc(%rax)
  0x00007f19491228e5: mov    $0x7f1921c19910,%rax  ;   {metadata({method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f19491228ef: and    $0x1ff8,%edi
  0x00007f19491228f5: cmp    $0x0,%edi
  0x00007f19491228f8: je     0x00007f194912295d  ;*iload_0
                                                ; - java.lang.Math::min@0 (line 1336)

  0x00007f19491228fe: cmp    %edx,%esi
  0x00007f1949122900: mov    $0x7f1921d48030,%rax  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f194912290a: mov    $0x108,%rdi
  0x00007f1949122914: jg     0x00007f1949122924
  0x00007f194912291a: mov    $0x118,%rdi
  0x00007f1949122924: mov    (%rax,%rdi,1),%rbx
  0x00007f1949122928: lea    0x1(%rbx),%rbx
  0x00007f194912292c: mov    %rbx,(%rax,%rdi,1)
  0x00007f1949122930: jg     0x00007f194912294b  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)

  0x00007f1949122936: mov    $0x7f1921d48030,%rax  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f1949122940: incl   0x128(%rax)
  0x00007f1949122946: jmpq   0x00007f194912294e  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)

  0x00007f194912294b: mov    %rdx,%rsi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)

  0x00007f194912294e: mov    %rsi,%rax
  0x00007f1949122951: add    $0x30,%rsp
  0x00007f1949122955: pop    %rbp
  0x00007f1949122956: test   %eax,0x156047a4(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912295c: retq
  0x00007f194912295d: mov    %rax,0x8(%rsp)
  0x00007f1949122962: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912296a: callq  0x00007f1948ee3420  ; OopMap{off=175}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ;   {runtime_call}
  0x00007f194912296f: jmp    0x00007f19491228fe
  0x00007f1949122971: nop
  0x00007f1949122972: nop
  0x00007f1949122973: mov    0x298(%r15),%rax
  0x00007f194912297a: mov    $0x0,%r10
  0x00007f1949122984: mov    %r10,0x298(%r15)
  0x00007f194912298b: mov    $0x0,%r10
  0x00007f1949122995: mov    %r10,0x2a0(%r15)
  0x00007f194912299c: add    $0x30,%rsp
  0x00007f19491229a0: pop    %rbp
  0x00007f19491229a1: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f19491229a6: hlt
  0x00007f19491229a7: hlt
  0x00007f19491229a8: hlt
  0x00007f19491229a9: hlt
  0x00007f19491229aa: hlt
  0x00007f19491229ab: hlt
  0x00007f19491229ac: hlt
  0x00007f19491229ad: hlt
  0x00007f19491229ae: hlt
  0x00007f19491229af: hlt
  0x00007f19491229b0: hlt
  0x00007f19491229b1: hlt
  0x00007f19491229b2: hlt
  0x00007f19491229b3: hlt
  0x00007f19491229b4: hlt
  0x00007f19491229b5: hlt
  0x00007f19491229b6: hlt
  0x00007f19491229b7: hlt
  0x00007f19491229b8: hlt
  0x00007f19491229b9: hlt
  0x00007f19491229ba: hlt
  0x00007f19491229bb: hlt
  0x00007f19491229bc: hlt
  0x00007f19491229bd: hlt
  0x00007f19491229be: hlt
  0x00007f19491229bf: hlt
[Exception Handler]
[Stub Code]
  0x00007f19491229c0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f19491229c5: mov    %rsp,-0x28(%rsp)
  0x00007f19491229ca: sub    $0x80,%rsp
  0x00007f19491229d1: mov    %rax,0x78(%rsp)
  0x00007f19491229d6: mov    %rcx,0x70(%rsp)
  0x00007f19491229db: mov    %rdx,0x68(%rsp)
  0x00007f19491229e0: mov    %rbx,0x60(%rsp)
  0x00007f19491229e5: mov    %rbp,0x50(%rsp)
  0x00007f19491229ea: mov    %rsi,0x48(%rsp)
  0x00007f19491229ef: mov    %rdi,0x40(%rsp)
  0x00007f19491229f4: mov    %r8,0x38(%rsp)
  0x00007f19491229f9: mov    %r9,0x30(%rsp)
  0x00007f19491229fe: mov    %r10,0x28(%rsp)
  0x00007f1949122a03: mov    %r11,0x20(%rsp)
  0x00007f1949122a08: mov    %r12,0x18(%rsp)
  0x00007f1949122a0d: mov    %r13,0x10(%rsp)
  0x00007f1949122a12: mov    %r14,0x8(%rsp)
  0x00007f1949122a17: mov    %r15,(%rsp)
  0x00007f1949122a1b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949122a25: mov    $0x7f19491229c5,%rsi  ;   {internal_word}
  0x00007f1949122a2f: mov    %rsp,%rdx
  0x00007f1949122a32: and    $0xfffffffffffffff0,%rsp
  0x00007f1949122a36: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f1949122a3b: hlt
[Deopt Handler Code]
  0x00007f1949122a3c: mov    $0x7f1949122a3c,%r10  ;   {section_word}
  0x00007f1949122a46: push   %r10
  0x00007f1949122a48: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949122a4d: hlt
  0x00007f1949122a4e: hlt
  0x00007f1949122a4f: hlt
Decoding compiled method 0x00007f1949123310:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b82480} 'get' '()Ljava/lang/Object;' in 'java/lang/ref/Reference'
  #           [sp+0x40]  (sp of caller)
  0x00007f1949123460: mov    0x8(%rsi),%r10d
  0x00007f1949123464: shl    $0x3,%r10
  0x00007f1949123468: cmp    %rax,%r10
  0x00007f194912346b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949123471: nopw   0x0(%rax,%rax,1)
  0x00007f194912347c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949123480: mov    %eax,-0x14000(%rsp)
  0x00007f1949123487: push   %rbp
  0x00007f1949123488: sub    $0x30,%rsp
  0x00007f194912348c: mov    0xc(%rsi),%eax
  0x00007f194912348f: shl    $0x3,%rax          ;*aload_0
                                                ; - java.lang.ref.Reference::get@0 (line 202)

  0x00007f1949123493: add    $0x30,%rsp
  0x00007f1949123497: pop    %rbp
  0x00007f1949123498: test   %eax,0x15603c62(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912349e: retq
  0x00007f194912349f: nop
  0x00007f19491234a0: nop
  0x00007f19491234a1: mov    0x298(%r15),%rax
  0x00007f19491234a8: mov    $0x0,%r10
  0x00007f19491234b2: mov    %r10,0x298(%r15)
  0x00007f19491234b9: mov    $0x0,%r10
  0x00007f19491234c3: mov    %r10,0x2a0(%r15)
  0x00007f19491234ca: add    $0x30,%rsp
  0x00007f19491234ce: pop    %rbp
  0x00007f19491234cf: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f19491234d4: hlt
  0x00007f19491234d5: hlt
  0x00007f19491234d6: hlt
  0x00007f19491234d7: hlt
  0x00007f19491234d8: hlt
  0x00007f19491234d9: hlt
  0x00007f19491234da: hlt
  0x00007f19491234db: hlt
  0x00007f19491234dc: hlt
  0x00007f19491234dd: hlt
  0x00007f19491234de: hlt
  0x00007f19491234df: hlt
[Exception Handler]
[Stub Code]
  0x00007f19491234e0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f19491234e5: mov    %rsp,-0x28(%rsp)
  0x00007f19491234ea: sub    $0x80,%rsp
  0x00007f19491234f1: mov    %rax,0x78(%rsp)
  0x00007f19491234f6: mov    %rcx,0x70(%rsp)
  0x00007f19491234fb: mov    %rdx,0x68(%rsp)
  0x00007f1949123500: mov    %rbx,0x60(%rsp)
  0x00007f1949123505: mov    %rbp,0x50(%rsp)
  0x00007f194912350a: mov    %rsi,0x48(%rsp)
  0x00007f194912350f: mov    %rdi,0x40(%rsp)
  0x00007f1949123514: mov    %r8,0x38(%rsp)
  0x00007f1949123519: mov    %r9,0x30(%rsp)
  0x00007f194912351e: mov    %r10,0x28(%rsp)
  0x00007f1949123523: mov    %r11,0x20(%rsp)
  0x00007f1949123528: mov    %r12,0x18(%rsp)
  0x00007f194912352d: mov    %r13,0x10(%rsp)
  0x00007f1949123532: mov    %r14,0x8(%rsp)
  0x00007f1949123537: mov    %r15,(%rsp)
  0x00007f194912353b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949123545: mov    $0x7f19491234e5,%rsi  ;   {internal_word}
  0x00007f194912354f: mov    %rsp,%rdx
  0x00007f1949123552: and    $0xfffffffffffffff0,%rsp
  0x00007f1949123556: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912355b: hlt
[Deopt Handler Code]
  0x00007f194912355c: mov    $0x7f194912355c,%r10  ;   {section_word}
  0x00007f1949123566: push   %r10
  0x00007f1949123568: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912356d: hlt
  0x00007f194912356e: hlt
  0x00007f194912356f: hlt
Decoding compiled method 0x00007f1949123bd0:
Code:
[Entry Point]
  # {method} {0x00007f1921bd7a40} 'compareAndSwapLong' '(Ljava/lang/Object;JJJ)Z' in 'sun/misc/Unsafe'
  # this:     rsi:rsi   = 'sun/misc/Unsafe'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = long
  # parm2:    r8:r8     = long
  # parm3:    r9:r9     = long
  #           [sp+0x50]  (sp of caller)
  0x00007f1949123d40: mov    0x8(%rsi),%r10d
  0x00007f1949123d44: shl    $0x3,%r10
  0x00007f1949123d48: cmp    %r10,%rax
  0x00007f1949123d4b: je     0x00007f1949123d58
  0x00007f1949123d51: jmpq   0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949123d56: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949123d58: mov    %eax,-0x14000(%rsp)
  0x00007f1949123d5f: push   %rbp
  0x00007f1949123d60: mov    %rsp,%rbp
  0x00007f1949123d63: sub    $0x40,%rsp
  0x00007f1949123d67: mov    %rdx,0x8(%rsp)
  0x00007f1949123d6c: cmp    $0x0,%rdx
  0x00007f1949123d70: lea    0x8(%rsp),%rdx
  0x00007f1949123d75: cmove  0x8(%rsp),%rdx
  0x00007f1949123d7b: mov    %rsi,(%rsp)
  0x00007f1949123d7f: cmp    $0x0,%rsi
  0x00007f1949123d83: lea    (%rsp),%rsi
  0x00007f1949123d87: cmove  (%rsp),%rsi        ; OopMap{[8]=Oop [0]=Oop off=76}
  0x00007f1949123d8c: mov    $0x7f1949123d8c,%r10  ;   {section_word}
  0x00007f1949123d96: mov    %r10,0x1d0(%r15)
  0x00007f1949123d9d: mov    %rsp,0x1c8(%r15)
  0x00007f1949123da4: cmpb   $0x0,0x149a91f7(%rip)        # 0x00007f195daccfa2
                                                ;   {external_word}
  0x00007f1949123dab: je     0x00007f1949123def
  0x00007f1949123db1: push   %rsi
  0x00007f1949123db2: push   %rdx
  0x00007f1949123db3: push   %rcx
  0x00007f1949123db4: push   %r8
  0x00007f1949123db6: push   %r9
  0x00007f1949123db8: mov    $0x7f1921bd7a40,%rsi  ;   {metadata({method} {0x00007f1921bd7a40} 'compareAndSwapLong' '(Ljava/lang/Object;JJJ)Z' in 'sun/misc/Unsafe')}
  0x00007f1949123dc2: mov    %r15,%rdi
  0x00007f1949123dc5: test   $0xf,%esp
  0x00007f1949123dcb: je     0x00007f1949123de3
  0x00007f1949123dd1: sub    $0x8,%rsp
  0x00007f1949123dd5: callq  0x00007f195d4feef0  ;   {runtime_call}
  0x00007f1949123dda: add    $0x8,%rsp
  0x00007f1949123dde: jmpq   0x00007f1949123de8
  0x00007f1949123de3: callq  0x00007f195d4feef0  ;   {runtime_call}
  0x00007f1949123de8: pop    %r9
  0x00007f1949123dea: pop    %r8
  0x00007f1949123dec: pop    %rcx
  0x00007f1949123ded: pop    %rdx
  0x00007f1949123dee: pop    %rsi
  0x00007f1949123def: lea    0x1e8(%r15),%rdi
  0x00007f1949123df6: movl   $0x4,0x260(%r15)
  0x00007f1949123e01: callq  0x00007f195d5cde60  ;   {runtime_call}
  0x00007f1949123e06: vzeroupper
  0x00007f1949123e09: and    $0xff,%eax
  0x00007f1949123e0f: setne  %al
  0x00007f1949123e12: movl   $0x5,0x260(%r15)
  0x00007f1949123e1d: mov    %r15d,%ecx
  0x00007f1949123e20: shr    $0x4,%ecx
  0x00007f1949123e23: and    $0xffc,%ecx
  0x00007f1949123e29: mov    $0x7f195e726000,%r10  ;   {external_word}
  0x00007f1949123e33: mov    %ecx,(%r10,%rcx,1)
  0x00007f1949123e37: cmpl   $0x0,0x149b719f(%rip)        # 0x00007f195dadafe0
                                                ;   {external_word}
  0x00007f1949123e41: jne    0x00007f1949123e55
  0x00007f1949123e47: cmpl   $0x0,0x30(%r15)
  0x00007f1949123e4f: je     0x00007f1949123e76
  0x00007f1949123e55: mov    %rax,-0x8(%rbp)
  0x00007f1949123e59: mov    %r15,%rdi
  0x00007f1949123e5c: mov    %rsp,%r12
  0x00007f1949123e5f: sub    $0x0,%rsp
  0x00007f1949123e63: and    $0xfffffffffffffff0,%rsp
  0x00007f1949123e67: callq  0x00007f195d5aade0  ;   {runtime_call}
  0x00007f1949123e6c: mov    %r12,%rsp
  0x00007f1949123e6f: xor    %r12,%r12
  0x00007f1949123e72: mov    -0x8(%rbp),%rax
  0x00007f1949123e76: movl   $0x8,0x260(%r15)
  0x00007f1949123e81: cmpl   $0x1,0x28c(%r15)
  0x00007f1949123e8c: je     0x00007f1949123f1c
  0x00007f1949123e92: cmpb   $0x0,0x149a9109(%rip)        # 0x00007f195daccfa2
                                                ;   {external_word}
  0x00007f1949123e99: je     0x00007f1949123ed7
  0x00007f1949123e9f: mov    %rax,-0x8(%rbp)
  0x00007f1949123ea3: mov    $0x7f1921bd7a40,%rsi  ;   {metadata({method} {0x00007f1921bd7a40} 'compareAndSwapLong' '(Ljava/lang/Object;JJJ)Z' in 'sun/misc/Unsafe')}
  0x00007f1949123ead: mov    %r15,%rdi
  0x00007f1949123eb0: test   $0xf,%esp
  0x00007f1949123eb6: je     0x00007f1949123ece
  0x00007f1949123ebc: sub    $0x8,%rsp
  0x00007f1949123ec0: callq  0x00007f195d4feee0  ;   {runtime_call}
  0x00007f1949123ec5: add    $0x8,%rsp
  0x00007f1949123ec9: jmpq   0x00007f1949123ed3
  0x00007f1949123ece: callq  0x00007f195d4feee0  ;   {runtime_call}
  0x00007f1949123ed3: mov    -0x8(%rbp),%rax
  0x00007f1949123ed7: mov    $0x0,%r10
  0x00007f1949123ee1: mov    %r10,0x1c8(%r15)
  0x00007f1949123ee8: mov    $0x0,%r10
  0x00007f1949123ef2: mov    %r10,0x1d0(%r15)
  0x00007f1949123ef9: mov    0x38(%r15),%rcx
  0x00007f1949123efd: movl   $0x0,0x100(%rcx)
  0x00007f1949123f07: leaveq
  0x00007f1949123f08: cmpq   $0x0,0x8(%r15)
  0x00007f1949123f10: jne    0x00007f1949123f17
  0x00007f1949123f16: retq
  0x00007f1949123f17: jmpq   Stub::forward exception  ;   {runtime_call}
  0x00007f1949123f1c: mov    %rax,-0x8(%rbp)
  0x00007f1949123f20: mov    %rsp,%r12
  0x00007f1949123f23: sub    $0x0,%rsp
  0x00007f1949123f27: and    $0xfffffffffffffff0,%rsp
  0x00007f1949123f2b: callq  0x00007f195d4feec0  ;   {runtime_call}
  0x00007f1949123f30: mov    %r12,%rsp
  0x00007f1949123f33: xor    %r12,%r12
  0x00007f1949123f36: mov    -0x8(%rbp),%rax
  0x00007f1949123f3a: jmpq   0x00007f1949123e92
  0x00007f1949123f3f: hlt
Decoding compiled method 0x00007f1949123f50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong'
  # this:     rsi:rsi   = 'java/util/concurrent/atomic/AtomicLong'
  # parm0:    rdx:rdx   = long
  # parm1:    rcx:rcx   = long
  #           [sp+0x60]  (sp of caller)
  0x00007f19491240a0: mov    0x8(%rsi),%r10d
  0x00007f19491240a4: shl    $0x3,%r10
  0x00007f19491240a8: cmp    %rax,%r10
  0x00007f19491240ab: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f19491240b1: nopw   0x0(%rax,%rax,1)
  0x00007f19491240bc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f19491240c0: mov    %eax,-0x14000(%rsp)
  0x00007f19491240c7: push   %rbp
  0x00007f19491240c8: sub    $0x50,%rsp
  0x00007f19491240cc: mov    $0x7f1921d75550,%rax
  0x00007f19491240d6: mov    0x8(%rax),%ebx
  0x00007f19491240d9: add    $0x8,%ebx
  0x00007f19491240dc: mov    %ebx,0x8(%rax)
  0x00007f19491240df: mov    $0x7f1921d746b0,%rax  ;   {metadata({method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f19491240e9: and    $0x3ff8,%ebx
  0x00007f19491240ef: cmp    $0x0,%ebx
  0x00007f19491240f2: je     0x00007f1949124123  ;*getstatic unsafe
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@0 (line 147)

  0x00007f19491240f8: mov    %rdx,%rax
  0x00007f19491240fb: mov    %rcx,%rbx
  0x00007f19491240fe: lea    0x10(%rsi),%rsi
  0x00007f1949124102: lock cmpxchg %rbx,(%rsi)
  0x00007f1949124107: mov    $0x1,%eax
  0x00007f194912410c: je     0x00007f1949124117
  0x00007f1949124112: mov    $0x0,%eax          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)

  0x00007f1949124117: add    $0x50,%rsp
  0x00007f194912411b: pop    %rbp
  0x00007f194912411c: test   %eax,0x15602fde(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949124122: retq
  0x00007f1949124123: mov    %rax,0x8(%rsp)
  0x00007f1949124128: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949124130: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=149}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@-1 (line 147)
                                                ;   {runtime_call}
  0x00007f1949124135: jmp    0x00007f19491240f8
  0x00007f1949124137: nop
  0x00007f1949124138: nop
  0x00007f1949124139: mov    0x298(%r15),%rax
  0x00007f1949124140: mov    $0x0,%r10
  0x00007f194912414a: mov    %r10,0x298(%r15)
  0x00007f1949124151: mov    $0x0,%r10
  0x00007f194912415b: mov    %r10,0x2a0(%r15)
  0x00007f1949124162: add    $0x50,%rsp
  0x00007f1949124166: pop    %rbp
  0x00007f1949124167: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912416c: hlt
  0x00007f194912416d: hlt
  0x00007f194912416e: hlt
  0x00007f194912416f: hlt
  0x00007f1949124170: hlt
  0x00007f1949124171: hlt
  0x00007f1949124172: hlt
  0x00007f1949124173: hlt
  0x00007f1949124174: hlt
  0x00007f1949124175: hlt
  0x00007f1949124176: hlt
  0x00007f1949124177: hlt
  0x00007f1949124178: hlt
  0x00007f1949124179: hlt
  0x00007f194912417a: hlt
  0x00007f194912417b: hlt
  0x00007f194912417c: hlt
  0x00007f194912417d: hlt
  0x00007f194912417e: hlt
  0x00007f194912417f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949124180: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949124185: mov    %rsp,-0x28(%rsp)
  0x00007f194912418a: sub    $0x80,%rsp
  0x00007f1949124191: mov    %rax,0x78(%rsp)
  0x00007f1949124196: mov    %rcx,0x70(%rsp)
  0x00007f194912419b: mov    %rdx,0x68(%rsp)
  0x00007f19491241a0: mov    %rbx,0x60(%rsp)
  0x00007f19491241a5: mov    %rbp,0x50(%rsp)
  0x00007f19491241aa: mov    %rsi,0x48(%rsp)
  0x00007f19491241af: mov    %rdi,0x40(%rsp)
  0x00007f19491241b4: mov    %r8,0x38(%rsp)
  0x00007f19491241b9: mov    %r9,0x30(%rsp)
  0x00007f19491241be: mov    %r10,0x28(%rsp)
  0x00007f19491241c3: mov    %r11,0x20(%rsp)
  0x00007f19491241c8: mov    %r12,0x18(%rsp)
  0x00007f19491241cd: mov    %r13,0x10(%rsp)
  0x00007f19491241d2: mov    %r14,0x8(%rsp)
  0x00007f19491241d7: mov    %r15,(%rsp)
  0x00007f19491241db: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f19491241e5: mov    $0x7f1949124185,%rsi  ;   {internal_word}
  0x00007f19491241ef: mov    %rsp,%rdx
  0x00007f19491241f2: and    $0xfffffffffffffff0,%rsp
  0x00007f19491241f6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491241fb: hlt
[Deopt Handler Code]
  0x00007f19491241fc: mov    $0x7f19491241fc,%r10  ;   {section_word}
  0x00007f1949124206: push   %r10
  0x00007f1949124208: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912420d: hlt
  0x00007f194912420e: hlt
  0x00007f194912420f: hlt
Decoding compiled method 0x00007f19491242d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d71fc0} 'next' '(I)I' in 'java/util/Random'
  # this:     rsi:rsi   = 'java/util/Random'
  # parm0:    rdx       = int
  #           [sp+0x90]  (sp of caller)
  0x00007f1949124440: mov    0x8(%rsi),%r10d
  0x00007f1949124444: shl    $0x3,%r10
  0x00007f1949124448: cmp    %rax,%r10
  0x00007f194912444b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949124451: nopw   0x0(%rax,%rax,1)
  0x00007f194912445c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949124460: mov    %eax,-0x14000(%rsp)
  0x00007f1949124467: push   %rbp
  0x00007f1949124468: sub    $0x80,%rsp
  0x00007f194912446f: mov    $0x7f1921d755d0,%rax
  0x00007f1949124479: mov    0x8(%rax),%ebx
  0x00007f194912447c: add    $0x8,%ebx
  0x00007f194912447f: mov    %ebx,0x8(%rax)
  0x00007f1949124482: mov    $0x7f1921d71fc0,%rax  ;   {metadata({method} {0x00007f1921d71fc0} 'next' '(I)I' in 'java/util/Random')}
  0x00007f194912448c: and    $0x3ff8,%ebx
  0x00007f1949124492: cmp    $0x0,%ebx
  0x00007f1949124495: je     0x00007f194912455b  ;*aload_0
                                                ; - java.util.Random::next@0 (line 200)

  0x00007f194912449b: mov    0x18(%rsi),%ecx
  0x00007f194912449e: shl    $0x3,%rcx          ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)

  0x00007f19491244a2: nopw   0x0(%rax,%rax,1)
  0x00007f19491244a8: vmovsd 0x10(%rcx),%xmm0   ; implicit exception: dispatches to 0x00007f1949124572
  0x00007f19491244ad: vmovq  %xmm0,%rbx         ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)
                                                ; - java.util.Random::next@8 (line 202)

  0x00007f19491244b2: mov    $0x5deece66d,%rax
  0x00007f19491244bc: mov    %rax,%rsi
  0x00007f19491244bf: mov    %rbx,%rax
  0x00007f19491244c2: imul   %rsi,%rax
  0x00007f19491244c6: mov    $0xb,%r10
  0x00007f19491244d0: add    %r10,%rax
  0x00007f19491244d3: mov    %rax,%rsi
  0x00007f19491244d6: mov    $0xffffffffffff,%r10
  0x00007f19491244e0: and    %r10,%rsi
  0x00007f19491244e3: mov    %rbx,%rax
  0x00007f19491244e6: mov    %rsi,%rbx
  0x00007f19491244e9: lea    0x10(%rcx),%rdi
  0x00007f19491244ed: lock cmpxchg %rbx,(%rdi)
  0x00007f19491244f2: mov    $0x1,%eax
  0x00007f19491244f7: je     0x00007f1949124502
  0x00007f19491244fd: mov    $0x0,%eax          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)

  0x00007f1949124502: mov    $0x7f1921d755d0,%rdi
  0x00007f194912450c: mov    0xc(%rdi),%ebx
  0x00007f194912450f: add    $0x8,%ebx
  0x00007f1949124512: mov    %ebx,0xc(%rdi)
  0x00007f1949124515: mov    $0x7f1921d71fc0,%rdi  ;   {metadata({method} {0x00007f1921d71fc0} 'next' '(I)I' in 'java/util/Random')}
  0x00007f194912451f: and    $0x1fff8,%ebx
  0x00007f1949124525: cmp    $0x0,%ebx
  0x00007f1949124528: je     0x00007f1949124577  ; OopMap{rcx=Oop off=238}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)

  0x00007f194912452e: test   %eax,0x15602bcc(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949124534: cmp    $0x0,%eax
  0x00007f1949124537: je     0x00007f19491244a8  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)

  0x00007f194912453d: mov    $0x30,%ecx
  0x00007f1949124542: sub    %edx,%ecx
  0x00007f1949124544: shr    %cl,%rsi
  0x00007f1949124547: mov    %esi,%esi
  0x00007f1949124549: mov    %rsi,%rax
  0x00007f194912454c: add    $0x80,%rsp
  0x00007f1949124553: pop    %rbp
  0x00007f1949124554: test   %eax,0x15602ba6(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912455a: retq
  0x00007f194912455b: mov    %rax,0x8(%rsp)
  0x00007f1949124560: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949124568: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=301}
                                                ;*synchronization entry
                                                ; - java.util.Random::next@-1 (line 200)
                                                ;   {runtime_call}
  0x00007f194912456d: jmpq   0x00007f194912449b
  0x00007f1949124572: callq  0x00007f1948e530c0  ; OopMap{rcx=Oop off=311}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ;   {runtime_call}
  0x00007f1949124577: mov    %rdi,0x8(%rsp)
  0x00007f194912457c: movq   $0x23,(%rsp)
  0x00007f1949124584: callq  0x00007f1948ee3420  ; OopMap{rcx=Oop off=329}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ;   {runtime_call}
  0x00007f1949124589: jmp    0x00007f194912452e
  0x00007f194912458b: nop
  0x00007f194912458c: nop
  0x00007f194912458d: mov    0x298(%r15),%rax
  0x00007f1949124594: mov    $0x0,%r10
  0x00007f194912459e: mov    %r10,0x298(%r15)
  0x00007f19491245a5: mov    $0x0,%r10
  0x00007f19491245af: mov    %r10,0x2a0(%r15)
  0x00007f19491245b6: add    $0x80,%rsp
  0x00007f19491245bd: pop    %rbp
  0x00007f19491245be: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f19491245c3: hlt
  0x00007f19491245c4: hlt
  0x00007f19491245c5: hlt
  0x00007f19491245c6: hlt
  0x00007f19491245c7: hlt
  0x00007f19491245c8: hlt
  0x00007f19491245c9: hlt
  0x00007f19491245ca: hlt
  0x00007f19491245cb: hlt
  0x00007f19491245cc: hlt
  0x00007f19491245cd: hlt
  0x00007f19491245ce: hlt
  0x00007f19491245cf: hlt
  0x00007f19491245d0: hlt
  0x00007f19491245d1: hlt
  0x00007f19491245d2: hlt
  0x00007f19491245d3: hlt
  0x00007f19491245d4: hlt
  0x00007f19491245d5: hlt
  0x00007f19491245d6: hlt
  0x00007f19491245d7: hlt
  0x00007f19491245d8: hlt
  0x00007f19491245d9: hlt
  0x00007f19491245da: hlt
  0x00007f19491245db: hlt
  0x00007f19491245dc: hlt
  0x00007f19491245dd: hlt
  0x00007f19491245de: hlt
  0x00007f19491245df: hlt
[Exception Handler]
[Stub Code]
  0x00007f19491245e0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f19491245e5: mov    %rsp,-0x28(%rsp)
  0x00007f19491245ea: sub    $0x80,%rsp
  0x00007f19491245f1: mov    %rax,0x78(%rsp)
  0x00007f19491245f6: mov    %rcx,0x70(%rsp)
  0x00007f19491245fb: mov    %rdx,0x68(%rsp)
  0x00007f1949124600: mov    %rbx,0x60(%rsp)
  0x00007f1949124605: mov    %rbp,0x50(%rsp)
  0x00007f194912460a: mov    %rsi,0x48(%rsp)
  0x00007f194912460f: mov    %rdi,0x40(%rsp)
  0x00007f1949124614: mov    %r8,0x38(%rsp)
  0x00007f1949124619: mov    %r9,0x30(%rsp)
  0x00007f194912461e: mov    %r10,0x28(%rsp)
  0x00007f1949124623: mov    %r11,0x20(%rsp)
  0x00007f1949124628: mov    %r12,0x18(%rsp)
  0x00007f194912462d: mov    %r13,0x10(%rsp)
  0x00007f1949124632: mov    %r14,0x8(%rsp)
  0x00007f1949124637: mov    %r15,(%rsp)
  0x00007f194912463b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949124645: mov    $0x7f19491245e5,%rsi  ;   {internal_word}
  0x00007f194912464f: mov    %rsp,%rdx
  0x00007f1949124652: and    $0xfffffffffffffff0,%rsp
  0x00007f1949124656: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912465b: hlt
[Deopt Handler Code]
  0x00007f194912465c: mov    $0x7f194912465c,%r10  ;   {section_word}
  0x00007f1949124666: push   %r10
  0x00007f1949124668: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912466d: hlt
  0x00007f194912466e: hlt
  0x00007f194912466f: hlt
Decoding compiled method 0x00007f1949124810:
Code:
[Constants]
  0x00007f1949124980 (offset:    0): 0x00000000   0x3ca0000000000000
  0x00007f1949124984 (offset:    4): 0x3ca00000
  0x00007f1949124988 (offset:    8): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f194912498c (offset:   12): 0xf4f4f4f4
  0x00007f1949124990 (offset:   16): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949124994 (offset:   20): 0xf4f4f4f4
  0x00007f1949124998 (offset:   24): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f194912499c (offset:   28): 0xf4f4f4f4
[Entry Point]
  # {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random'
  #           [sp+0x50]  (sp of caller)
  0x00007f19491249a0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
  0x00007f19491249a4: shl    $0x3,%r10
  0x00007f19491249a8: cmp    %rax,%r10
  0x00007f19491249ab: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f19491249b1: nopw   0x0(%rax,%rax,1)
  0x00007f19491249bc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f19491249c0: mov    %eax,-0x14000(%rsp)
  0x00007f19491249c7: push   %rbp
  0x00007f19491249c8: sub    $0x40,%rsp
  0x00007f19491249cc: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f19491249d6: mov    0xdc(%rdx),%edi
  0x00007f19491249dc: add    $0x8,%edi
  0x00007f19491249df: mov    %edi,0xdc(%rdx)
  0x00007f19491249e5: mov    $0x7f1921d72728,%rdx  ;   {metadata({method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f19491249ef: and    $0x1ff8,%edi
  0x00007f19491249f5: cmp    $0x0,%edi
  0x00007f19491249f8: je     0x00007f1949124a92  ;*aload_0
                                                ; - java.util.Random::nextDouble@0 (line 532)

  0x00007f19491249fe: mov    %rsi,%rdx
  0x00007f1949124a01: mov    $0x7f1921d75a78,%rdi  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949124a0b: addq   $0x1,0x118(%rdi)
  0x00007f1949124a13: mov    $0x1a,%edx
  0x00007f1949124a18: mov    %rsi,%rdi
  0x00007f1949124a1b: mov    %rdi,%rsi          ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f1949124a1e: mov    %rdi,0x28(%rsp)
  0x00007f1949124a23: nop
  0x00007f1949124a24: nop
  0x00007f1949124a25: nop
  0x00007f1949124a26: nop
  0x00007f1949124a27: callq  0x00007f1948e2ad60  ; OopMap{[40]=Oop off=140}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ;   {optimized virtual_call}
  0x00007f1949124a2c: mov    0x28(%rsp),%rsi
  0x00007f1949124a31: mov    $0x7f1921d75a78,%rcx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949124a3b: addq   $0x1,0x148(%rcx)
  0x00007f1949124a43: movslq %eax,%rax
  0x00007f1949124a46: mov    $0x1b,%ecx
  0x00007f1949124a4b: shl    %cl,%rax
  0x00007f1949124a4e: mov    $0x1b,%edx
  0x00007f1949124a53: mov    0x28(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949124a58: mov    %rax,0x30(%rsp)
  0x00007f1949124a5d: nop
  0x00007f1949124a5e: nop
  0x00007f1949124a5f: callq  0x00007f1948e2ad60  ; OopMap{off=196}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ;   {optimized virtual_call}
  0x00007f1949124a64: movslq %eax,%rax
  0x00007f1949124a67: mov    0x30(%rsp),%rsi
  0x00007f1949124a6c: add    %rax,%rsi
  0x00007f1949124a6f: mov    %rsi,(%rsp)
  0x00007f1949124a73: fildll (%rsp)
  0x00007f1949124a76: fstpl  (%rsp)
  0x00007f1949124a79: vmovsd (%rsp),%xmm0
  0x00007f1949124a7e: vmulsd -0x106(%rip),%xmm0,%xmm0        # 0x00007f1949124980
                                                ;   {section_word}
  0x00007f1949124a86: add    $0x40,%rsp
  0x00007f1949124a8a: pop    %rbp
  0x00007f1949124a8b: test   %eax,0x1560266f(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949124a91: retq
  0x00007f1949124a92: mov    %rdx,0x8(%rsp)
  0x00007f1949124a97: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949124a9f: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=260}
                                                ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)
                                                ;   {runtime_call}
  0x00007f1949124aa4: jmpq   0x00007f19491249fe
  0x00007f1949124aa9: nop
  0x00007f1949124aaa: nop
  0x00007f1949124aab: mov    0x298(%r15),%rax
  0x00007f1949124ab2: mov    $0x0,%r10
  0x00007f1949124abc: mov    %r10,0x298(%r15)
  0x00007f1949124ac3: mov    $0x0,%r10
  0x00007f1949124acd: mov    %r10,0x2a0(%r15)
  0x00007f1949124ad4: add    $0x40,%rsp
  0x00007f1949124ad8: pop    %rbp
  0x00007f1949124ad9: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949124ade: hlt
  0x00007f1949124adf: hlt
[Stub Code]
  0x00007f1949124ae0: nop                       ;   {no_reloc}
  0x00007f1949124ae1: nop
  0x00007f1949124ae2: nop
  0x00007f1949124ae3: nop
  0x00007f1949124ae4: nop
  0x00007f1949124ae5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f1949124aef: jmpq   0x00007f1949124aef  ;   {runtime_call}
  0x00007f1949124af4: nop
  0x00007f1949124af5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f1949124aff: jmpq   0x00007f1949124aff  ;   {runtime_call}
[Exception Handler]
  0x00007f1949124b04: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f1949124b09: mov    %rsp,-0x28(%rsp)
  0x00007f1949124b0e: sub    $0x80,%rsp
  0x00007f1949124b15: mov    %rax,0x78(%rsp)
  0x00007f1949124b1a: mov    %rcx,0x70(%rsp)
  0x00007f1949124b1f: mov    %rdx,0x68(%rsp)
  0x00007f1949124b24: mov    %rbx,0x60(%rsp)
  0x00007f1949124b29: mov    %rbp,0x50(%rsp)
  0x00007f1949124b2e: mov    %rsi,0x48(%rsp)
  0x00007f1949124b33: mov    %rdi,0x40(%rsp)
  0x00007f1949124b38: mov    %r8,0x38(%rsp)
  0x00007f1949124b3d: mov    %r9,0x30(%rsp)
  0x00007f1949124b42: mov    %r10,0x28(%rsp)
  0x00007f1949124b47: mov    %r11,0x20(%rsp)
  0x00007f1949124b4c: mov    %r12,0x18(%rsp)
  0x00007f1949124b51: mov    %r13,0x10(%rsp)
  0x00007f1949124b56: mov    %r14,0x8(%rsp)
  0x00007f1949124b5b: mov    %r15,(%rsp)
  0x00007f1949124b5f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949124b69: mov    $0x7f1949124b09,%rsi  ;   {internal_word}
  0x00007f1949124b73: mov    %rsp,%rdx
  0x00007f1949124b76: and    $0xfffffffffffffff0,%rsp
  0x00007f1949124b7a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f1949124b7f: hlt
[Deopt Handler Code]
  0x00007f1949124b80: mov    $0x7f1949124b80,%r10  ;   {section_word}
  0x00007f1949124b8a: push   %r10
  0x00007f1949124b8c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949124b91: hlt
  0x00007f1949124b92: hlt
  0x00007f1949124b93: hlt
  0x00007f1949124b94: hlt
  0x00007f1949124b95: hlt
  0x00007f1949124b96: hlt
  0x00007f1949124b97: hlt
Decoding compiled method 0x00007f1949124c90:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[C'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0xb0]  (sp of caller)
  0x00007f1949124ea0: mov    %eax,-0x14000(%rsp)
  0x00007f1949124ea7: push   %rbp
  0x00007f1949124ea8: sub    $0xa0,%rsp
  0x00007f1949124eaf: mov    %rsi,%r8
  0x00007f1949124eb2: mov    %rdx,%r9
  0x00007f1949124eb5: mov    $0x7f1921d75c20,%rbx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f1949124ebf: mov    0xdc(%rbx),%edx
  0x00007f1949124ec5: add    $0x8,%edx
  0x00007f1949124ec8: mov    %edx,0xdc(%rbx)
  0x00007f1949124ece: mov    $0x7f1921c5b8e8,%rbx  ;   {metadata({method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f1949124ed8: and    $0x1ff8,%edx
  0x00007f1949124ede: cmp    $0x0,%edx
  0x00007f1949124ee1: je     0x00007f1949125739  ;*iload_2
                                                ; - java.util.Arrays::copyOfRange@0 (line 3661)

  0x00007f1949124ee7: mov    %rcx,%r11
  0x00007f1949124eea: sub    %r9d,%r11d
  0x00007f1949124eed: cmp    $0x0,%r11d
  0x00007f1949124ef1: mov    $0x7f1921d75c20,%rbx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f1949124efb: mov    $0x108,%rdx
  0x00007f1949124f05: jge    0x00007f1949124f15
  0x00007f1949124f0b: mov    $0x118,%rdx
  0x00007f1949124f15: mov    (%rbx,%rdx,1),%rsi
  0x00007f1949124f19: lea    0x1(%rsi),%rsi
  0x00007f1949124f1d: mov    %rsi,(%rbx,%rdx,1)
  0x00007f1949124f21: jl     0x00007f19491250e4  ;*ifge
                                                ; - java.util.Arrays::copyOfRange@5 (line 3662)

  0x00007f1949124f27: mov    %r11,%rbx
  0x00007f1949124f2a: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f1949124f34: movslq %ebx,%rbx
  0x00007f1949124f37: mov    %rbx,%rdi
  0x00007f1949124f3a: cmp    $0xffffff,%rbx
  0x00007f1949124f41: ja     0x00007f1949125750
  0x00007f1949124f47: mov    $0x17,%rsi
  0x00007f1949124f51: lea    (%rsi,%rbx,2),%rsi
  0x00007f1949124f55: and    $0xfffffffffffffff8,%rsi
  0x00007f1949124f59: mov    0x60(%r15),%rax
  0x00007f1949124f5d: lea    (%rax,%rsi,1),%rsi
  0x00007f1949124f61: cmp    0x70(%r15),%rsi
  0x00007f1949124f65: ja     0x00007f1949125750
  0x00007f1949124f6b: mov    %rsi,0x60(%r15)
  0x00007f1949124f6f: sub    %rax,%rsi
  0x00007f1949124f72: movq   $0x1,(%rax)
  0x00007f1949124f79: mov    %rdx,%rcx
  0x00007f1949124f7c: shr    $0x3,%rcx
  0x00007f1949124f80: mov    %ecx,0x8(%rax)
  0x00007f1949124f83: mov    %ebx,0xc(%rax)
  0x00007f1949124f86: sub    $0x10,%rsi
  0x00007f1949124f8a: je     0x00007f1949124fa1
  0x00007f1949124f90: xor    %rbx,%rbx
  0x00007f1949124f93: shr    $0x3,%rsi
  0x00007f1949124f97: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f1949124f9c: dec    %rsi
  0x00007f1949124f9f: jne    0x00007f1949124f97  ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)

  0x00007f1949124fa1: mov    0xc(%r8),%esi      ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ; implicit exception: dispatches to 0x00007f194912575a
  0x00007f1949124fa5: sub    %r9d,%esi
  0x00007f1949124fa8: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f1949124fb2: addq   $0x1,0x208(%rdx)
  0x00007f1949124fba: mov    $0x7f1921d48030,%rdx  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f1949124fc4: mov    0xdc(%rdx),%ecx
  0x00007f1949124fca: add    $0x8,%ecx
  0x00007f1949124fcd: mov    %ecx,0xdc(%rdx)
  0x00007f1949124fd3: mov    $0x7f1921c19910,%rdx  ;   {metadata({method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f1949124fdd: and    $0x7ffff8,%ecx
  0x00007f1949124fe3: cmp    $0x0,%ecx
  0x00007f1949124fe6: je     0x00007f194912575f
  0x00007f1949124fec: cmp    %r11d,%esi
  0x00007f1949124fef: mov    $0x7f1921d48030,%rdx  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f1949124ff9: mov    $0x108,%rcx
  0x00007f1949125003: jg     0x00007f1949125013
  0x00007f1949125009: mov    $0x118,%rcx
  0x00007f1949125013: mov    (%rdx,%rcx,1),%rdi
  0x00007f1949125017: lea    0x1(%rdi),%rdi
  0x00007f194912501b: mov    %rdi,(%rdx,%rcx,1)
  0x00007f194912501f: jg     0x00007f194912503d  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f1949125025: mov    $0x7f1921d48030,%rdx  ;   {metadata(method data for {method} {0x00007f1921c19910} 'min' '(II)I' in 'java/lang/Math')}
  0x00007f194912502f: incl   0x128(%rdx)
  0x00007f1949125035: mov    %rsi,%rdi
  0x00007f1949125038: jmpq   0x00007f1949125040  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f194912503d: mov    %r11,%rdi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)

  0x00007f1949125040: mov    $0x7f1921d75c20,%rsi  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f194912504a: addq   $0x1,0x218(%rsi)
  0x00007f1949125052: mov    %r8,%rsi
  0x00007f1949125055: mov    %r9,%rdx
  0x00007f1949125058: mov    %rax,%rcx
  0x00007f194912505b: mov    $0x0,%r8d
  0x00007f1949125061: mov    %rdi,%r9
  0x00007f1949125064: mov    %rax,0x70(%rsp)
  0x00007f1949125069: test   %edx,%edx
  0x00007f194912506b: jl     0x00007f1949125776
  0x00007f1949125071: lea    (%rdx,%r9,1),%rdi
  0x00007f1949125075: cmp    0xc(%rsi),%edi
  0x00007f1949125078: ja     0x00007f1949125776
  0x00007f194912507e: lea    (%r8,%r9,1),%rdi
  0x00007f1949125082: cmp    0xc(%rcx),%edi
  0x00007f1949125085: ja     0x00007f1949125776
  0x00007f194912508b: test   %r9d,%r9d
  0x00007f194912508e: jl     0x00007f1949125776
  0x00007f1949125094: je     0x00007f19491250d0
  0x00007f194912509a: movslq %edx,%rdx
  0x00007f194912509d: movslq %r8d,%r8
  0x00007f19491250a0: lea    0x10(%rsi,%rdx,2),%rdi
  0x00007f19491250a5: lea    0x10(%rcx,%r8,2),%rsi
  0x00007f19491250aa: mov    %r9,%rdx
  0x00007f19491250ad: test   $0xf,%esp
  0x00007f19491250b3: je     0x00007f19491250cb
  0x00007f19491250b9: sub    $0x8,%rsp
  0x00007f19491250bd: callq  Stub::jshort_disjoint_arraycopy
                                                ;   {runtime_call}
  0x00007f19491250c2: add    $0x8,%rsp
  0x00007f19491250c6: jmpq   0x00007f19491250d0
  0x00007f19491250cb: callq  Stub::jshort_disjoint_arraycopy
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {runtime_call}
  0x00007f19491250d0: mov    0x70(%rsp),%rax
  0x00007f19491250d5: add    $0xa0,%rsp
  0x00007f19491250dc: pop    %rbp
  0x00007f19491250dd: test   %eax,0x1560201d(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f19491250e3: retq                      ;*areturn
                                                ; - java.util.Arrays::copyOfRange@62 (line 3667)

  0x00007f19491250e4: mov    %ecx,0x80(%rsp)
  0x00007f19491250eb: mov    $0x7c002bde0,%rdx  ;   {metadata('java/lang/IllegalArgumentException')}
  0x00007f19491250f5: mov    0x60(%r15),%rax
  0x00007f19491250f9: lea    0x20(%rax),%rdi
  0x00007f19491250fd: cmp    0x70(%r15),%rdi
  0x00007f1949125101: ja     0x00007f1949125781
  0x00007f1949125107: mov    %rdi,0x60(%r15)
  0x00007f194912510b: mov    0xa8(%rdx),%rcx
  0x00007f1949125112: mov    %rcx,(%rax)
  0x00007f1949125115: mov    %rdx,%rcx
  0x00007f1949125118: shr    $0x3,%rcx
  0x00007f194912511c: mov    %ecx,0x8(%rax)
  0x00007f194912511f: xor    %rcx,%rcx
  0x00007f1949125122: mov    %ecx,0xc(%rax)
  0x00007f1949125125: xor    %rcx,%rcx
  0x00007f1949125128: mov    %rcx,0x10(%rax)
  0x00007f194912512c: mov    %rcx,0x18(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)

  0x00007f1949125130: mov    $0x7c000d4b8,%rdx  ;   {metadata('java/lang/StringBuilder')}
  0x00007f194912513a: mov    %rax,0x88(%rsp)
  0x00007f1949125142: mov    0x60(%r15),%rax
  0x00007f1949125146: lea    0x18(%rax),%rdi
  0x00007f194912514a: cmp    0x70(%r15),%rdi
  0x00007f194912514e: ja     0x00007f194912578e
  0x00007f1949125154: mov    %rdi,0x60(%r15)
  0x00007f1949125158: mov    0xa8(%rdx),%rcx
  0x00007f194912515f: mov    %rcx,(%rax)
  0x00007f1949125162: mov    %rdx,%rcx
  0x00007f1949125165: shr    $0x3,%rcx
  0x00007f1949125169: mov    %ecx,0x8(%rax)
  0x00007f194912516c: xor    %rcx,%rcx
  0x00007f194912516f: mov    %ecx,0xc(%rax)
  0x00007f1949125172: xor    %rcx,%rcx
  0x00007f1949125175: mov    %rcx,0x10(%rax)    ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)

  0x00007f1949125179: mov    %rax,%rbx
  0x00007f194912517c: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f1949125186: addq   $0x1,0x128(%rdx)
  0x00007f194912518e: mov    $0x7f1921d75e98,%rbx  ;   {metadata(method data for {method} {0x00007f1921bcfe28} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f1949125198: mov    0xdc(%rbx),%edx
  0x00007f194912519e: add    $0x8,%edx
  0x00007f19491251a1: mov    %edx,0xdc(%rbx)
  0x00007f19491251a7: mov    $0x7f1921bcfe28,%rbx  ;   {metadata({method} {0x00007f1921bcfe28} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f19491251b1: and    $0x7ffff8,%edx
  0x00007f19491251b7: cmp    $0x0,%edx
  0x00007f19491251ba: je     0x00007f194912579b
  0x00007f19491251c0: mov    %rax,%rbx
  0x00007f19491251c3: mov    $0x7f1921d75e98,%rdx  ;   {metadata(method data for {method} {0x00007f1921bcfe28} '<init>' '()V' in 'java/lang/StringBuilder')}
  0x00007f19491251cd: addq   $0x1,0x108(%rdx)
  0x00007f19491251d5: mov    $0x7f1921d75fc8,%rbx  ;   {metadata(method data for {method} {0x00007f1921bcc210} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f19491251df: mov    0xdc(%rbx),%edx
  0x00007f19491251e5: add    $0x8,%edx
  0x00007f19491251e8: mov    %edx,0xdc(%rbx)
  0x00007f19491251ee: mov    $0x7f1921bcc210,%rbx  ;   {metadata({method} {0x00007f1921bcc210} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f19491251f8: and    $0x7ffff8,%edx
  0x00007f19491251fe: cmp    $0x0,%edx
  0x00007f1949125201: je     0x00007f19491257b2
  0x00007f1949125207: mov    %rax,%rbx
  0x00007f194912520a: mov    $0x7f1921d75fc8,%rdx  ;   {metadata(method data for {method} {0x00007f1921bcc210} '<init>' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00007f1949125214: addq   $0x1,0x108(%rdx)
  0x00007f194912521c: mov    $0x7f1921cbab98,%rbx  ;   {metadata(method data for {method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f1949125226: mov    0xdc(%rbx),%edx
  0x00007f194912522c: add    $0x8,%edx
  0x00007f194912522f: mov    %edx,0xdc(%rbx)
  0x00007f1949125235: mov    $0x7f1921b5b488,%rbx  ;   {metadata({method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f194912523f: and    $0x7ffff8,%edx
  0x00007f1949125245: cmp    $0x0,%edx
  0x00007f1949125248: je     0x00007f19491257c9
  0x00007f194912524e: mov    $0x10,%ebx
  0x00007f1949125253: mov    $0x7c0000208,%rdx  ;   {metadata({type array char})}
  0x00007f194912525d: mov    %rax,%r13
  0x00007f1949125260: movslq %ebx,%rbx
  0x00007f1949125263: mov    %rbx,%rdi
  0x00007f1949125266: cmp    $0xffffff,%rbx
  0x00007f194912526d: ja     0x00007f19491257e0
  0x00007f1949125273: mov    $0x17,%rsi
  0x00007f194912527d: lea    (%rsi,%rbx,2),%rsi
  0x00007f1949125281: and    $0xfffffffffffffff8,%rsi
  0x00007f1949125285: mov    0x60(%r15),%rax
  0x00007f1949125289: lea    (%rax,%rsi,1),%rsi
  0x00007f194912528d: cmp    0x70(%r15),%rsi
  0x00007f1949125291: ja     0x00007f19491257e0
  0x00007f1949125297: mov    %rsi,0x60(%r15)
  0x00007f194912529b: sub    %rax,%rsi
  0x00007f194912529e: movq   $0x1,(%rax)
  0x00007f19491252a5: mov    %rdx,%rcx
  0x00007f19491252a8: shr    $0x3,%rcx
  0x00007f19491252ac: mov    %ecx,0x8(%rax)
  0x00007f19491252af: mov    %ebx,0xc(%rax)
  0x00007f19491252b2: sub    $0x10,%rsi
  0x00007f19491252b6: je     0x00007f19491252cd
  0x00007f19491252bc: xor    %rbx,%rbx
  0x00007f19491252bf: shr    $0x3,%rsi
  0x00007f19491252c3: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f19491252c8: dec    %rsi
  0x00007f19491252cb: jne    0x00007f19491252c3  ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007f19491252cd: mov    %rax,%r10
  0x00007f19491252d0: shr    $0x3,%r10
  0x00007f19491252d4: mov    %r10d,0x10(%r13)
  0x00007f19491252d8: mov    %r13,%rax
  0x00007f19491252db: shr    $0x9,%rax
  0x00007f19491252df: mov    $0x7f1944c24000,%rdx
  0x00007f19491252e9: movb   $0x0,(%rax,%rdx,1)  ;*putfield value
                                                ; - java.lang.AbstractStringBuilder::<init>@8 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)

  0x00007f19491252ed: mov    %r13,%rax
  0x00007f19491252f0: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f19491252fa: mov    0x8(%rax),%eax
  0x00007f19491252fd: shl    $0x3,%rax
  0x00007f1949125301: cmp    0x140(%rdx),%rax
  0x00007f1949125308: jne    0x00007f1949125317
  0x00007f194912530a: addq   $0x1,0x148(%rdx)
  0x00007f1949125312: jmpq   0x00007f194912537d
  0x00007f1949125317: cmp    0x150(%rdx),%rax
  0x00007f194912531e: jne    0x00007f194912532d
  0x00007f1949125320: addq   $0x1,0x158(%rdx)
  0x00007f1949125328: jmpq   0x00007f194912537d
  0x00007f194912532d: cmpq   $0x0,0x140(%rdx)
  0x00007f1949125338: jne    0x00007f1949125351
  0x00007f194912533a: mov    %rax,0x140(%rdx)
  0x00007f1949125341: movq   $0x1,0x148(%rdx)
  0x00007f194912534c: jmpq   0x00007f194912537d
  0x00007f1949125351: cmpq   $0x0,0x150(%rdx)
  0x00007f194912535c: jne    0x00007f1949125375
  0x00007f194912535e: mov    %rax,0x150(%rdx)
  0x00007f1949125365: movq   $0x1,0x158(%rdx)
  0x00007f1949125370: jmpq   0x00007f194912537d
  0x00007f1949125375: addq   $0x1,0x138(%rdx)
  0x00007f194912537d: mov    $0x7f1921d76100,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125387: mov    0xdc(%rdx),%esi
  0x00007f194912538d: add    $0x8,%esi
  0x00007f1949125390: mov    %esi,0xdc(%rdx)
  0x00007f1949125396: mov    $0x7f1921bd0600,%rdx  ;   {metadata({method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f19491253a0: and    $0x7ffff8,%esi
  0x00007f19491253a6: cmp    $0x0,%esi
  0x00007f19491253a9: je     0x00007f19491257ea
  0x00007f19491253af: mov    %r13,%rax
  0x00007f19491253b2: mov    $0x7f1921d76100,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f19491253bc: addq   $0x1,0x108(%rdx)
  0x00007f19491253c4: mov    %r9,%rdx
  0x00007f19491253c7: mov    %r13,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)

  0x00007f19491253ca: mov    %r13,0x78(%rsp)
  0x00007f19491253cf: callq  0x00007f1948e2ad60  ; OopMap{[120]=Oop [136]=Oop off=1332}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f19491253d4: mov    0x78(%rsp),%rax
  0x00007f19491253d9: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f19491253e3: mov    0x8(%rax),%eax
  0x00007f19491253e6: shl    $0x3,%rax
  0x00007f19491253ea: cmp    0x170(%rdx),%rax
  0x00007f19491253f1: jne    0x00007f1949125400
  0x00007f19491253f3: addq   $0x1,0x178(%rdx)
  0x00007f19491253fb: jmpq   0x00007f1949125466
  0x00007f1949125400: cmp    0x180(%rdx),%rax
  0x00007f1949125407: jne    0x00007f1949125416
  0x00007f1949125409: addq   $0x1,0x188(%rdx)
  0x00007f1949125411: jmpq   0x00007f1949125466
  0x00007f1949125416: cmpq   $0x0,0x170(%rdx)
  0x00007f1949125421: jne    0x00007f194912543a
  0x00007f1949125423: mov    %rax,0x170(%rdx)
  0x00007f194912542a: movq   $0x1,0x178(%rdx)
  0x00007f1949125435: jmpq   0x00007f1949125466
  0x00007f194912543a: cmpq   $0x0,0x180(%rdx)
  0x00007f1949125445: jne    0x00007f194912545e
  0x00007f1949125447: mov    %rax,0x180(%rdx)
  0x00007f194912544e: movq   $0x1,0x188(%rdx)
  0x00007f1949125459: jmpq   0x00007f1949125466
  0x00007f194912545e: addq   $0x1,0x168(%rdx)
  0x00007f1949125466: mov    $0x7f1921d76450,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0140} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125470: mov    0xdc(%rdx),%esi
  0x00007f1949125476: add    $0x8,%esi
  0x00007f1949125479: mov    %esi,0xdc(%rdx)
  0x00007f194912547f: mov    $0x7f1921bd0140,%rdx  ;   {metadata({method} {0x00007f1921bd0140} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125489: and    $0x7ffff8,%esi
  0x00007f194912548f: cmp    $0x0,%esi
  0x00007f1949125492: je     0x00007f1949125801
  0x00007f1949125498: mov    0x78(%rsp),%rax
  0x00007f194912549d: mov    $0x7f1921d76450,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0140} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f19491254a7: addq   $0x1,0x108(%rdx)
  0x00007f19491254af: mov    $0x6721905e0,%rdx  ;   {oop(" > ")}
  0x00007f19491254b9: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)

  0x00007f19491254be: nop
  0x00007f19491254bf: callq  0x00007f1948e2ad60  ; OopMap{[120]=Oop [136]=Oop off=1572}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f19491254c4: mov    0x78(%rsp),%rax
  0x00007f19491254c9: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f19491254d3: mov    0x8(%rax),%eax
  0x00007f19491254d6: shl    $0x3,%rax
  0x00007f19491254da: cmp    0x1a0(%rdx),%rax
  0x00007f19491254e1: jne    0x00007f19491254f0
  0x00007f19491254e3: addq   $0x1,0x1a8(%rdx)
  0x00007f19491254eb: jmpq   0x00007f1949125556
  0x00007f19491254f0: cmp    0x1b0(%rdx),%rax
  0x00007f19491254f7: jne    0x00007f1949125506
  0x00007f19491254f9: addq   $0x1,0x1b8(%rdx)
  0x00007f1949125501: jmpq   0x00007f1949125556
  0x00007f1949125506: cmpq   $0x0,0x1a0(%rdx)
  0x00007f1949125511: jne    0x00007f194912552a
  0x00007f1949125513: mov    %rax,0x1a0(%rdx)
  0x00007f194912551a: movq   $0x1,0x1a8(%rdx)
  0x00007f1949125525: jmpq   0x00007f1949125556
  0x00007f194912552a: cmpq   $0x0,0x1b0(%rdx)
  0x00007f1949125535: jne    0x00007f194912554e
  0x00007f1949125537: mov    %rax,0x1b0(%rdx)
  0x00007f194912553e: movq   $0x1,0x1b8(%rdx)
  0x00007f1949125549: jmpq   0x00007f1949125556
  0x00007f194912554e: addq   $0x1,0x198(%rdx)
  0x00007f1949125556: mov    $0x7f1921d76100,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125560: mov    0xdc(%rdx),%esi
  0x00007f1949125566: add    $0x8,%esi
  0x00007f1949125569: mov    %esi,0xdc(%rdx)
  0x00007f194912556f: mov    $0x7f1921bd0600,%rdx  ;   {metadata({method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125579: and    $0x7ffff8,%esi
  0x00007f194912557f: cmp    $0x0,%esi
  0x00007f1949125582: je     0x00007f1949125818
  0x00007f1949125588: mov    0x78(%rsp),%rax
  0x00007f194912558d: mov    $0x7f1921d76100,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd0600} 'append' '(I)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00007f1949125597: addq   $0x1,0x108(%rdx)
  0x00007f194912559f: mov    0x80(%rsp),%edx
  0x00007f19491255a6: mov    0x78(%rsp),%rsi    ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)

  0x00007f19491255ab: nop
  0x00007f19491255ac: nop
  0x00007f19491255ad: nop
  0x00007f19491255ae: nop
  0x00007f19491255af: callq  0x00007f1948e2ad60  ; OopMap{[120]=Oop [136]=Oop off=1812}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f19491255b4: mov    0x78(%rsp),%rax
  0x00007f19491255b9: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f19491255c3: mov    0x8(%rax),%eax
  0x00007f19491255c6: shl    $0x3,%rax
  0x00007f19491255ca: cmp    0x1d0(%rdx),%rax
  0x00007f19491255d1: jne    0x00007f19491255e0
  0x00007f19491255d3: addq   $0x1,0x1d8(%rdx)
  0x00007f19491255db: jmpq   0x00007f1949125646
  0x00007f19491255e0: cmp    0x1e0(%rdx),%rax
  0x00007f19491255e7: jne    0x00007f19491255f6
  0x00007f19491255e9: addq   $0x1,0x1e8(%rdx)
  0x00007f19491255f1: jmpq   0x00007f1949125646
  0x00007f19491255f6: cmpq   $0x0,0x1d0(%rdx)
  0x00007f1949125601: jne    0x00007f194912561a
  0x00007f1949125603: mov    %rax,0x1d0(%rdx)
  0x00007f194912560a: movq   $0x1,0x1d8(%rdx)
  0x00007f1949125615: jmpq   0x00007f1949125646
  0x00007f194912561a: cmpq   $0x0,0x1e0(%rdx)
  0x00007f1949125625: jne    0x00007f194912563e
  0x00007f1949125627: mov    %rax,0x1e0(%rdx)
  0x00007f194912562e: movq   $0x1,0x1e8(%rdx)
  0x00007f1949125639: jmpq   0x00007f1949125646
  0x00007f194912563e: addq   $0x1,0x1c8(%rdx)
  0x00007f1949125646: mov    $0x7f1921d76778,%rdx  ;   {metadata(method data for {method} {0x00007f1921bd14f0} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f1949125650: mov    0xdc(%rdx),%esi
  0x00007f1949125656: add    $0x8,%esi
  0x00007f1949125659: mov    %esi,0xdc(%rdx)
  0x00007f194912565f: mov    $0x7f1921bd14f0,%rdx  ;   {metadata({method} {0x00007f1921bd14f0} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f1949125669: and    $0x7ffff8,%esi
  0x00007f194912566f: cmp    $0x0,%esi
  0x00007f1949125672: je     0x00007f194912582f
  0x00007f1949125678: mov    $0x7c00016d0,%rdx  ;   {metadata('java/lang/String')}
  0x00007f1949125682: mov    0x60(%r15),%rax
  0x00007f1949125686: lea    0x18(%rax),%rdi
  0x00007f194912568a: cmp    0x70(%r15),%rdi
  0x00007f194912568e: ja     0x00007f1949125846
  0x00007f1949125694: mov    %rdi,0x60(%r15)
  0x00007f1949125698: mov    0xa8(%rdx),%rcx
  0x00007f194912569f: mov    %rcx,(%rax)
  0x00007f19491256a2: mov    %rdx,%rcx
  0x00007f19491256a5: shr    $0x3,%rcx
  0x00007f19491256a9: mov    %ecx,0x8(%rax)
  0x00007f19491256ac: xor    %rcx,%rcx
  0x00007f19491256af: mov    %ecx,0xc(%rax)
  0x00007f19491256b2: xor    %rcx,%rcx
  0x00007f19491256b5: mov    %rcx,0x10(%rax)    ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f19491256b9: mov    0x78(%rsp),%rdx
  0x00007f19491256be: mov    0x10(%rdx),%ecx
  0x00007f19491256c1: shl    $0x3,%rcx          ;*getfield value
                                                ; - java.lang.StringBuilder::toString@5 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f19491256c5: mov    0xc(%rdx),%r8d     ;*getfield count
                                                ; - java.lang.StringBuilder::toString@10 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f19491256c9: mov    %rax,%rdx
  0x00007f19491256cc: mov    $0x7f1921d76778,%rsi  ;   {metadata(method data for {method} {0x00007f1921bd14f0} 'toString' '()Ljava/lang/String;' in 'java/lang/StringBuilder')}
  0x00007f19491256d6: addq   $0x1,0x108(%rsi)
  0x00007f19491256de: mov    %rcx,%rdx
  0x00007f19491256e1: mov    $0x0,%ecx
  0x00007f19491256e6: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)

  0x00007f19491256e9: mov    %rax,0x90(%rsp)
  0x00007f19491256f1: nop
  0x00007f19491256f2: nop
  0x00007f19491256f3: nop
  0x00007f19491256f4: nop
  0x00007f19491256f5: nop
  0x00007f19491256f6: nop
  0x00007f19491256f7: callq  0x00007f1948e2ad60  ; OopMap{[136]=Oop [144]=Oop off=2140}
                                                ;*invokespecial <init>
                                                ; - java.lang.StringBuilder::toString@13 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f19491256fc: mov    0x88(%rsp),%rax
  0x00007f1949125704: mov    $0x7f1921d75c20,%rdx  ;   {metadata(method data for {method} {0x00007f1921c5b8e8} 'copyOfRange' '([CII)[C' in 'java/util/Arrays')}
  0x00007f194912570e: addq   $0x1,0x1f8(%rdx)
  0x00007f1949125716: mov    0x90(%rsp),%rdx
  0x00007f194912571e: mov    0x88(%rsp),%rsi    ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)

  0x00007f1949125726: nop
  0x00007f1949125727: callq  0x00007f1948e2ad60  ; OopMap{[136]=Oop off=2188}
                                                ;*invokespecial <init>
                                                ; - java.util.Arrays::copyOfRange@35 (line 3663)
                                                ;   {optimized virtual_call}
  0x00007f194912572c: mov    0x88(%rsp),%rax
  0x00007f1949125734: jmpq   0x00007f194912587e
  0x00007f1949125739: mov    %rbx,0x8(%rsp)
  0x00007f194912573e: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949125746: callq  0x00007f1948ee3420  ; OopMap{r8=Oop off=2219}
                                                ;*synchronization entry
                                                ; - java.util.Arrays::copyOfRange@-1 (line 3661)
                                                ;   {runtime_call}
  0x00007f194912574b: jmpq   0x00007f1949124ee7
  0x00007f1949125750: callq  0x00007f1948e51ea0  ; OopMap{r8=Oop off=2229}
                                                ;*newarray
                                                ; - java.util.Arrays::copyOfRange@40 (line 3664)
                                                ;   {runtime_call}
  0x00007f1949125755: jmpq   0x00007f1949124fa1
  0x00007f194912575a: callq  0x00007f1948e530c0  ; OopMap{r8=Oop rax=Oop off=2239}
                                                ;*arraylength
                                                ; - java.util.Arrays::copyOfRange@50 (line 3665)
                                                ;   {runtime_call}
  0x00007f194912575f: mov    %rdx,0x8(%rsp)
  0x00007f1949125764: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912576c: callq  0x00007f1948ee3420  ; OopMap{r8=Oop rax=Oop off=2257}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ; - java.util.Arrays::copyOfRange@54 (line 3666)
                                                ;   {runtime_call}
  0x00007f1949125771: jmpq   0x00007f1949124fec
  0x00007f1949125776: nop
  0x00007f1949125777: callq  0x00007f1948e2b160  ; OopMap{[112]=Oop off=2268}
                                                ;*invokestatic arraycopy
                                                ; - java.util.Arrays::copyOfRange@57 (line 3665)
                                                ;   {static_call}
  0x00007f194912577c: jmpq   0x00007f19491250d0
  0x00007f1949125781: mov    %rdx,%rdx
  0x00007f1949125784: callq  0x00007f1948e527a0  ; OopMap{off=2281}
                                                ;*new  ; - java.util.Arrays::copyOfRange@8 (line 3663)
                                                ;   {runtime_call}
  0x00007f1949125789: jmpq   0x00007f1949125130
  0x00007f194912578e: mov    %rdx,%rdx
  0x00007f1949125791: callq  0x00007f1948e527a0  ; OopMap{[136]=Oop off=2294}
                                                ;*new  ; - java.util.Arrays::copyOfRange@12 (line 3663)
                                                ;   {runtime_call}
  0x00007f1949125796: jmpq   0x00007f1949125179
  0x00007f194912579b: mov    %rbx,0x8(%rsp)
  0x00007f19491257a0: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491257a8: callq  0x00007f1948ee3420  ; OopMap{[136]=Oop rax=Oop off=2317}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::<init>@-1 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f19491257ad: jmpq   0x00007f19491251c0
  0x00007f19491257b2: mov    %rbx,0x8(%rsp)
  0x00007f19491257b7: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491257bf: callq  0x00007f1948ee3420  ; OopMap{[136]=Oop rax=Oop off=2340}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::<init>@-1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f19491257c4: jmpq   0x00007f1949125207
  0x00007f19491257c9: mov    %rbx,0x8(%rsp)
  0x00007f19491257ce: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491257d6: callq  0x00007f1948ee3420  ; OopMap{[136]=Oop rax=Oop off=2363}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - java.lang.AbstractStringBuilder::<init>@1 (line 67)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f19491257db: jmpq   0x00007f194912524e
  0x00007f19491257e0: callq  0x00007f1948e51ea0  ; OopMap{[136]=Oop r13=Oop off=2373}
                                                ;*newarray
                                                ; - java.lang.AbstractStringBuilder::<init>@6 (line 68)
                                                ; - java.lang.StringBuilder::<init>@3 (line 89)
                                                ; - java.util.Arrays::copyOfRange@16 (line 3663)
                                                ;   {runtime_call}
  0x00007f19491257e5: jmpq   0x00007f19491252cd
  0x00007f19491257ea: mov    %rdx,0x8(%rsp)
  0x00007f19491257ef: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491257f7: callq  0x00007f1948ee3420  ; OopMap{[136]=Oop r13=Oop off=2396}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@20 (line 3663)
                                                ;   {runtime_call}
  0x00007f19491257fc: jmpq   0x00007f19491253af
  0x00007f1949125801: mov    %rdx,0x8(%rsp)
  0x00007f1949125806: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912580e: callq  0x00007f1948ee3420  ; OopMap{[120]=Oop [136]=Oop off=2419}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 136)
                                                ; - java.util.Arrays::copyOfRange@25 (line 3663)
                                                ;   {runtime_call}
  0x00007f1949125813: jmpq   0x00007f1949125498
  0x00007f1949125818: mov    %rdx,0x8(%rsp)
  0x00007f194912581d: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949125825: callq  0x00007f1948ee3420  ; OopMap{[120]=Oop [136]=Oop off=2442}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 208)
                                                ; - java.util.Arrays::copyOfRange@29 (line 3663)
                                                ;   {runtime_call}
  0x00007f194912582a: jmpq   0x00007f1949125588
  0x00007f194912582f: mov    %rdx,0x8(%rsp)
  0x00007f1949125834: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912583c: callq  0x00007f1948ee3420  ; OopMap{[120]=Oop [136]=Oop off=2465}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::toString@-1 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007f1949125841: jmpq   0x00007f1949125678
  0x00007f1949125846: mov    %rdx,%rdx
  0x00007f1949125849: callq  0x00007f1948e527a0  ; OopMap{[120]=Oop [136]=Oop off=2478}
                                                ;*new  ; - java.lang.StringBuilder::toString@0 (line 407)
                                                ; - java.util.Arrays::copyOfRange@32 (line 3663)
                                                ;   {runtime_call}
  0x00007f194912584e: jmpq   0x00007f19491256b9
  0x00007f1949125853: nop
  0x00007f1949125854: nop
  0x00007f1949125855: mov    0x298(%r15),%rax
  0x00007f194912585c: mov    $0x0,%r10
  0x00007f1949125866: mov    %r10,0x298(%r15)
  0x00007f194912586d: mov    $0x0,%r10
  0x00007f1949125877: mov    %r10,0x2a0(%r15)
  0x00007f194912587e: add    $0xa0,%rsp
  0x00007f1949125885: pop    %rbp
  0x00007f1949125886: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912588b: hlt
  0x00007f194912588c: hlt
  0x00007f194912588d: hlt
  0x00007f194912588e: hlt
  0x00007f194912588f: hlt
  0x00007f1949125890: hlt
  0x00007f1949125891: hlt
  0x00007f1949125892: hlt
  0x00007f1949125893: hlt
  0x00007f1949125894: hlt
  0x00007f1949125895: hlt
  0x00007f1949125896: hlt
  0x00007f1949125897: hlt
  0x00007f1949125898: hlt
  0x00007f1949125899: hlt
  0x00007f194912589a: hlt
  0x00007f194912589b: hlt
  0x00007f194912589c: hlt
  0x00007f194912589d: hlt
  0x00007f194912589e: hlt
  0x00007f194912589f: hlt
[Stub Code]
  0x00007f19491258a0: nop                       ;   {no_reloc}
  0x00007f19491258a1: nop
  0x00007f19491258a2: nop
  0x00007f19491258a3: nop
  0x00007f19491258a4: nop
  0x00007f19491258a5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258af: jmpq   0x00007f19491258af  ;   {runtime_call}
  0x00007f19491258b4: nop
  0x00007f19491258b5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258bf: jmpq   0x00007f19491258bf  ;   {runtime_call}
  0x00007f19491258c4: nop
  0x00007f19491258c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258cf: jmpq   0x00007f19491258cf  ;   {runtime_call}
  0x00007f19491258d4: nop
  0x00007f19491258d5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258df: jmpq   0x00007f19491258df  ;   {runtime_call}
  0x00007f19491258e4: nop
  0x00007f19491258e5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258ef: jmpq   0x00007f19491258ef  ;   {runtime_call}
  0x00007f19491258f4: nop
  0x00007f19491258f5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491258ff: jmpq   0x00007f19491258ff  ;   {runtime_call}
[Exception Handler]
  0x00007f1949125904: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f1949125909: mov    %rsp,-0x28(%rsp)
  0x00007f194912590e: sub    $0x80,%rsp
  0x00007f1949125915: mov    %rax,0x78(%rsp)
  0x00007f194912591a: mov    %rcx,0x70(%rsp)
  0x00007f194912591f: mov    %rdx,0x68(%rsp)
  0x00007f1949125924: mov    %rbx,0x60(%rsp)
  0x00007f1949125929: mov    %rbp,0x50(%rsp)
  0x00007f194912592e: mov    %rsi,0x48(%rsp)
  0x00007f1949125933: mov    %rdi,0x40(%rsp)
  0x00007f1949125938: mov    %r8,0x38(%rsp)
  0x00007f194912593d: mov    %r9,0x30(%rsp)
  0x00007f1949125942: mov    %r10,0x28(%rsp)
  0x00007f1949125947: mov    %r11,0x20(%rsp)
  0x00007f194912594c: mov    %r12,0x18(%rsp)
  0x00007f1949125951: mov    %r13,0x10(%rsp)
  0x00007f1949125956: mov    %r14,0x8(%rsp)
  0x00007f194912595b: mov    %r15,(%rsp)
  0x00007f194912595f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949125969: mov    $0x7f1949125909,%rsi  ;   {internal_word}
  0x00007f1949125973: mov    %rsp,%rdx
  0x00007f1949125976: and    $0xfffffffffffffff0,%rsp
  0x00007f194912597a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912597f: hlt
[Deopt Handler Code]
  0x00007f1949125980: mov    $0x7f1949125980,%r10  ;   {section_word}
  0x00007f194912598a: push   %r10
  0x00007f194912598c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949125991: hlt
  0x00007f1949125992: hlt
  0x00007f1949125993: hlt
  0x00007f1949125994: hlt
  0x00007f1949125995: hlt
  0x00007f1949125996: hlt
  0x00007f1949125997: hlt
Decoding compiled method 0x00007f1949125f50:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong'
  #           [sp+0x40]  (sp of caller)
  0x00007f19491260a0: mov    0x8(%rsi),%r10d
  0x00007f19491260a4: shl    $0x3,%r10
  0x00007f19491260a8: cmp    %rax,%r10
  0x00007f19491260ab: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f19491260b1: nopw   0x0(%rax,%rax,1)
  0x00007f19491260bc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f19491260c0: mov    %eax,-0x14000(%rsp)
  0x00007f19491260c7: push   %rbp
  0x00007f19491260c8: sub    $0x30,%rsp
  0x00007f19491260cc: mov    $0x7f1921d75530,%rax
  0x00007f19491260d6: mov    0x8(%rax),%edi
  0x00007f19491260d9: add    $0x8,%edi
  0x00007f19491260dc: mov    %edi,0x8(%rax)
  0x00007f19491260df: mov    $0x7f1921d74438,%rax  ;   {metadata({method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f19491260e9: and    $0x3ff8,%edi
  0x00007f19491260ef: cmp    $0x0,%edi
  0x00007f19491260f2: je     0x00007f194912610e  ;*aload_0
                                                ; - java.util.concurrent.atomic.AtomicLong::get@0 (line 105)

  0x00007f19491260f8: vmovsd 0x10(%rsi),%xmm0
  0x00007f19491260fd: vmovq  %xmm0,%rax         ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)

  0x00007f1949126102: add    $0x30,%rsp
  0x00007f1949126106: pop    %rbp
  0x00007f1949126107: test   %eax,0x15600ff3(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912610d: retq
  0x00007f194912610e: mov    %rax,0x8(%rsp)
  0x00007f1949126113: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912611b: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=128}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::get@-1 (line 105)
                                                ;   {runtime_call}
  0x00007f1949126120: jmp    0x00007f19491260f8
  0x00007f1949126122: nop
  0x00007f1949126123: nop
  0x00007f1949126124: mov    0x298(%r15),%rax
  0x00007f194912612b: mov    $0x0,%r10
  0x00007f1949126135: mov    %r10,0x298(%r15)
  0x00007f194912613c: mov    $0x0,%r10
  0x00007f1949126146: mov    %r10,0x2a0(%r15)
  0x00007f194912614d: add    $0x30,%rsp
  0x00007f1949126151: pop    %rbp
  0x00007f1949126152: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949126157: hlt
  0x00007f1949126158: hlt
  0x00007f1949126159: hlt
  0x00007f194912615a: hlt
  0x00007f194912615b: hlt
  0x00007f194912615c: hlt
  0x00007f194912615d: hlt
  0x00007f194912615e: hlt
  0x00007f194912615f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949126160: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949126165: mov    %rsp,-0x28(%rsp)
  0x00007f194912616a: sub    $0x80,%rsp
  0x00007f1949126171: mov    %rax,0x78(%rsp)
  0x00007f1949126176: mov    %rcx,0x70(%rsp)
  0x00007f194912617b: mov    %rdx,0x68(%rsp)
  0x00007f1949126180: mov    %rbx,0x60(%rsp)
  0x00007f1949126185: mov    %rbp,0x50(%rsp)
  0x00007f194912618a: mov    %rsi,0x48(%rsp)
  0x00007f194912618f: mov    %rdi,0x40(%rsp)
  0x00007f1949126194: mov    %r8,0x38(%rsp)
  0x00007f1949126199: mov    %r9,0x30(%rsp)
  0x00007f194912619e: mov    %r10,0x28(%rsp)
  0x00007f19491261a3: mov    %r11,0x20(%rsp)
  0x00007f19491261a8: mov    %r12,0x18(%rsp)
  0x00007f19491261ad: mov    %r13,0x10(%rsp)
  0x00007f19491261b2: mov    %r14,0x8(%rsp)
  0x00007f19491261b7: mov    %r15,(%rsp)
  0x00007f19491261bb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f19491261c5: mov    $0x7f1949126165,%rsi  ;   {internal_word}
  0x00007f19491261cf: mov    %rsp,%rdx
  0x00007f19491261d2: and    $0xfffffffffffffff0,%rsp
  0x00007f19491261d6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491261db: hlt
[Deopt Handler Code]
  0x00007f19491261dc: mov    $0x7f19491261dc,%r10  ;   {section_word}
  0x00007f19491261e6: push   %r10
  0x00007f19491261e8: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491261ed: hlt
  0x00007f19491261ee: hlt
  0x00007f19491261ef: hlt
Decoding compiled method 0x00007f1949126290:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f19491263e0: mov    0x8(%rsi),%r10d
  0x00007f19491263e4: shl    $0x3,%r10
  0x00007f19491263e8: cmp    %rax,%r10
  0x00007f19491263eb: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f19491263f1: nopw   0x0(%rax,%rax,1)
  0x00007f19491263fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949126400: mov    %eax,-0x14000(%rsp)
  0x00007f1949126407: push   %rbp
  0x00007f1949126408: sub    $0x30,%rsp
  0x00007f194912640c: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00007f194912640f: mov    %rsi,0x20(%rsp)
  0x00007f1949126414: callq  0x00007f1948e52e20  ; OopMap{[32]=Oop off=57}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00007f1949126419: add    $0x30,%rsp
  0x00007f194912641d: pop    %rbp
  0x00007f194912641e: test   %eax,0x15600cdc(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949126424: retq
  0x00007f1949126425: nop
  0x00007f1949126426: nop
  0x00007f1949126427: mov    0x298(%r15),%rax
  0x00007f194912642e: mov    $0x0,%r10
  0x00007f1949126438: mov    %r10,0x298(%r15)
  0x00007f194912643f: mov    $0x0,%r10
  0x00007f1949126449: mov    %r10,0x2a0(%r15)
  0x00007f1949126450: add    $0x30,%rsp
  0x00007f1949126454: pop    %rbp
  0x00007f1949126455: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912645a: hlt
  0x00007f194912645b: hlt
  0x00007f194912645c: hlt
  0x00007f194912645d: hlt
  0x00007f194912645e: hlt
  0x00007f194912645f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949126460: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949126465: mov    %rsp,-0x28(%rsp)
  0x00007f194912646a: sub    $0x80,%rsp
  0x00007f1949126471: mov    %rax,0x78(%rsp)
  0x00007f1949126476: mov    %rcx,0x70(%rsp)
  0x00007f194912647b: mov    %rdx,0x68(%rsp)
  0x00007f1949126480: mov    %rbx,0x60(%rsp)
  0x00007f1949126485: mov    %rbp,0x50(%rsp)
  0x00007f194912648a: mov    %rsi,0x48(%rsp)
  0x00007f194912648f: mov    %rdi,0x40(%rsp)
  0x00007f1949126494: mov    %r8,0x38(%rsp)
  0x00007f1949126499: mov    %r9,0x30(%rsp)
  0x00007f194912649e: mov    %r10,0x28(%rsp)
  0x00007f19491264a3: mov    %r11,0x20(%rsp)
  0x00007f19491264a8: mov    %r12,0x18(%rsp)
  0x00007f19491264ad: mov    %r13,0x10(%rsp)
  0x00007f19491264b2: mov    %r14,0x8(%rsp)
  0x00007f19491264b7: mov    %r15,(%rsp)
  0x00007f19491264bb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f19491264c5: mov    $0x7f1949126465,%rsi  ;   {internal_word}
  0x00007f19491264cf: mov    %rsp,%rdx
  0x00007f19491264d2: and    $0xfffffffffffffff0,%rsp
  0x00007f19491264d6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f19491264db: hlt
[Deopt Handler Code]
  0x00007f19491264dc: mov    $0x7f19491264dc,%r10  ;   {section_word}
  0x00007f19491264e6: push   %r10
  0x00007f19491264e8: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491264ed: hlt
  0x00007f19491264ee: hlt
  0x00007f19491264ef: hlt
Decoding compiled method 0x00007f1949129290:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d71fc0} 'next' '(I)I' in 'java/util/Random'
  # this:     rsi:rsi   = 'java/util/Random'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x00007f19491293e0: mov    0x8(%rsi),%r10d
  0x00007f19491293e4: shl    $0x3,%r10
  0x00007f19491293e8: cmp    %r10,%rax
  0x00007f19491293eb: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f19491293f1: xchg   %ax,%ax
  0x00007f19491293f4: nopl   0x0(%rax,%rax,1)
  0x00007f19491293fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949129400: mov    %eax,-0x14000(%rsp)
  0x00007f1949129407: push   %rbp
  0x00007f1949129408: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.util.Random::next@-1 (line 200)

  0x00007f194912940c: mov    0x18(%rsi),%r8d    ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)

  0x00007f1949129410: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; implicit exception: dispatches to 0x00007f194912948c
  0x00007f1949129415: mov    $0xffffffffffff,%r11
  0x00007f194912941f: mov    $0x5deece66d,%r9
  0x00007f1949129429: mov    %rax,%rbx
  0x00007f194912942c: imul   %r9,%rbx
  0x00007f1949129430: add    $0xb,%rbx
  0x00007f1949129434: and    %r11,%rbx          ;*land
                                                ; - java.util.Random::next@24 (line 203)

  0x00007f1949129437: lock cmpxchg %rbx,0x10(%r12,%r8,8)
  0x00007f194912943e: sete   %cl
  0x00007f1949129441: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)

  0x00007f1949129444: test   %ecx,%ecx
  0x00007f1949129446: je     0x00007f1949129460  ;*lload
                                                ; - java.util.Random::next@38 (line 205)

  0x00007f1949129448: mov    $0x30,%ecx
  0x00007f194912944d: sub    %edx,%ecx
  0x00007f194912944f: shr    %cl,%rbx
  0x00007f1949129452: mov    %ebx,%eax          ;*l2i  ; - java.util.Random::next@45 (line 205)

  0x00007f1949129454: add    $0x10,%rsp
  0x00007f1949129458: pop    %rbp
  0x00007f1949129459: test   %eax,0x155fdba1(%rip)        # 0x00007f195e727000
                                                ;   {poll_return}
  0x00007f194912945f: retq                      ;*aload
                                                ; - java.util.Random::next@6 (line 202)

  0x00007f1949129460: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)

  0x00007f1949129465: mov    %rax,%rbx
  0x00007f1949129468: imul   %r9,%rbx
  0x00007f194912946c: add    $0xb,%rbx
  0x00007f1949129470: and    %r11,%rbx          ;*land
                                                ; - java.util.Random::next@24 (line 203)

  0x00007f1949129473: lock cmpxchg %rbx,0x10(%r12,%r8,8)
  0x00007f194912947a: sete   %cl
  0x00007f194912947d: movzbl %cl,%ecx           ; OopMap{r8=NarrowOop off=160}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)

  0x00007f1949129480: test   %eax,0x155fdb7a(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f1949129486: test   %ecx,%ecx
  0x00007f1949129488: je     0x00007f1949129460  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)

  0x00007f194912948a: jmp    0x00007f1949129448
  0x00007f194912948c: mov    $0xfffffff6,%esi
  0x00007f1949129491: xchg   %ax,%ax
  0x00007f1949129493: callq  0x00007f1948de9ee0  ; OopMap{off=184}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ;   {runtime_call}
  0x00007f1949129498: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ;   {runtime_call}
  0x00007f194912949d: hlt
  0x00007f194912949e: hlt
  0x00007f194912949f: hlt
[Exception Handler]
[Stub Code]
  0x00007f19491294a0: jmpq   0x00007f1948e510e0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f19491294a5: callq  0x00007f19491294aa
  0x00007f19491294aa: subq   $0x5,(%rsp)
  0x00007f19491294af: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f19491294b4: hlt
  0x00007f19491294b5: hlt
  0x00007f19491294b6: hlt
  0x00007f19491294b7: hlt
Decoding compiled method 0x00007f1949127e90:
Code:
[Constants]
  0x00007f1949127fe0 (offset:    0): 0x00000000   0x3ca0000000000000
  0x00007f1949127fe4 (offset:    4): 0x3ca00000
  0x00007f1949127fe8 (offset:    8): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949127fec (offset:   12): 0xf4f4f4f4
  0x00007f1949127ff0 (offset:   16): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949127ff4 (offset:   20): 0xf4f4f4f4
  0x00007f1949127ff8 (offset:   24): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949127ffc (offset:   28): 0xf4f4f4f4
[Entry Point]
  # {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random'
  #           [sp+0x20]  (sp of caller)
  0x00007f1949128000: mov    0x8(%rsi),%r10d    ;   {no_reloc}
  0x00007f1949128004: shl    $0x3,%r10
  0x00007f1949128008: cmp    %r10,%rax
  0x00007f194912800b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f1949128011: xchg   %ax,%ax
  0x00007f1949128014: nopl   0x0(%rax,%rax,1)
  0x00007f194912801c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f1949128020: mov    %eax,-0x14000(%rsp)
  0x00007f1949128027: push   %rbp
  0x00007f1949128028: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)

  0x00007f194912802c: mov    0x18(%rsi),%r8d    ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f1949128030: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; implicit exception: dispatches to 0x00007f1949128142
  0x00007f1949128035: mov    $0xffffffffffff,%rcx
  0x00007f194912803f: mov    $0x5deece66d,%rbx
  0x00007f1949128049: mov    %rax,%r11
  0x00007f194912804c: imul   %rbx,%r11
  0x00007f1949128050: add    $0xb,%r11
  0x00007f1949128054: and    %rcx,%r11          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f1949128057: lock cmpxchg %r11,0x10(%r12,%r8,8)
  0x00007f194912805e: sete   %r9b
  0x00007f1949128062: movzbl %r9b,%r9d          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f1949128066: test   %r9d,%r9d
  0x00007f1949128069: je     0x00007f19491280d0  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f194912806b: mov    0x18(%rsi),%r10d   ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f194912806f: mov    0x10(%r12,%r10,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; implicit exception: dispatches to 0x00007f1949128151
  0x00007f1949128074: mov    %rax,%r9
  0x00007f1949128077: imul   %rbx,%r9
  0x00007f194912807b: shr    $0x16,%r11
  0x00007f194912807f: add    $0xb,%r9
  0x00007f1949128083: and    %rcx,%r9           ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128086: lock cmpxchg %r9,0x10(%r12,%r10,8)
  0x00007f194912808d: sete   %r8b
  0x00007f1949128091: movzbl %r8b,%r8d          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128095: mov    %r11d,%r11d
  0x00007f1949128098: movslq %r11d,%r11
  0x00007f194912809b: shl    $0x1b,%r11         ;*lshl
                                                ; - java.util.Random::nextDouble@9 (line 532)

  0x00007f194912809f: test   %r8d,%r8d
  0x00007f19491280a2: je     0x00007f1949128110  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f19491280a4: shr    $0x15,%r9
  0x00007f19491280a8: mov    %r9d,%r8d
  0x00007f19491280ab: movslq %r8d,%r10
  0x00007f19491280ae: add    %r11,%r10
  0x00007f19491280b1: vcvtsi2sd %r10,%xmm0,%xmm0
  0x00007f19491280b6: vmulsd -0xde(%rip),%xmm0,%xmm0        # 0x00007f1949127fe0
                                                ;*dmul
                                                ; - java.util.Random::nextDouble@22 (line 532)
                                                ;   {section_word}
  0x00007f19491280be: add    $0x10,%rsp
  0x00007f19491280c2: pop    %rbp
  0x00007f19491280c3: test   %eax,0x155fef37(%rip)        # 0x00007f195e727000
                                                ;   {poll_return}
  0x00007f19491280c9: retq
  0x00007f19491280ca: nopw   0x0(%rax,%rax,1)   ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f19491280d0: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f19491280d5: mov    %rax,%r11
  0x00007f19491280d8: imul   %rbx,%r11
  0x00007f19491280dc: add    $0xb,%r11
  0x00007f19491280e0: and    %rcx,%r11          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f19491280e3: lock cmpxchg %r11,0x10(%r12,%r8,8)
  0x00007f19491280ea: sete   %r9b
  0x00007f19491280ee: movzbl %r9b,%r9d          ; OopMap{r8=NarrowOop rsi=Oop off=242}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f19491280f2: test   %eax,0x155fef08(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f19491280f8: test   %r9d,%r9d
  0x00007f19491280fb: je     0x00007f19491280d0  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)

  0x00007f19491280fd: jmpq   0x00007f194912806b
  0x00007f1949128102: nopw   0x0(%rax,%rax,1)
  0x00007f194912810c: xchg   %ax,%ax            ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128110: mov    0x10(%r12,%r10,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128115: mov    %rax,%r9
  0x00007f1949128118: imul   %rbx,%r9
  0x00007f194912811c: add    $0xb,%r9
  0x00007f1949128120: and    %rcx,%r9           ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128123: lock cmpxchg %r9,0x10(%r12,%r10,8)
  0x00007f194912812a: sete   %r8b
  0x00007f194912812e: movzbl %r8b,%r8d          ; OopMap{r10=NarrowOop off=306}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f1949128132: test   %eax,0x155feec8(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f1949128138: test   %r8d,%r8d
  0x00007f194912813b: je     0x00007f1949128110  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)

  0x00007f194912813d: jmpq   0x00007f19491280a4
  0x00007f1949128142: mov    $0xfffffff6,%esi
  0x00007f1949128147: callq  0x00007f1948de9ee0  ; OopMap{off=332}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ;   {runtime_call}
  0x00007f194912814c: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ;   {runtime_call}
  0x00007f1949128151: mov    $0xfffffff6,%esi
  0x00007f1949128156: nop
  0x00007f1949128157: callq  0x00007f1948de9ee0  ; OopMap{off=348}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ;   {runtime_call}
  0x00007f194912815c: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ;   {runtime_call}
  0x00007f1949128161: hlt
  0x00007f1949128162: hlt
  0x00007f1949128163: hlt
  0x00007f1949128164: hlt
  0x00007f1949128165: hlt
  0x00007f1949128166: hlt
  0x00007f1949128167: hlt
  0x00007f1949128168: hlt
  0x00007f1949128169: hlt
  0x00007f194912816a: hlt
  0x00007f194912816b: hlt
  0x00007f194912816c: hlt
  0x00007f194912816d: hlt
  0x00007f194912816e: hlt
  0x00007f194912816f: hlt
  0x00007f1949128170: hlt
  0x00007f1949128171: hlt
  0x00007f1949128172: hlt
  0x00007f1949128173: hlt
  0x00007f1949128174: hlt
  0x00007f1949128175: hlt
  0x00007f1949128176: hlt
  0x00007f1949128177: hlt
  0x00007f1949128178: hlt
  0x00007f1949128179: hlt
  0x00007f194912817a: hlt
  0x00007f194912817b: hlt
  0x00007f194912817c: hlt
  0x00007f194912817d: hlt
  0x00007f194912817e: hlt
  0x00007f194912817f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949128180: jmpq   0x00007f1948e510e0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f1949128185: callq  0x00007f194912818a
  0x00007f194912818a: subq   $0x5,(%rsp)
  0x00007f194912818f: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949128194: hlt
  0x00007f1949128195: hlt
  0x00007f1949128196: hlt
  0x00007f1949128197: hlt
Decoding compiled method 0x00007f1949126a50:
Code:
[Constants]
  0x00007f1949126c80 (offset:    0): 0x00000000   0x3ca0000000000000
  0x00007f1949126c84 (offset:    4): 0x3ca00000
  0x00007f1949126c88 (offset:    8): 0x00000000   0x3ca0000000000000
  0x00007f1949126c8c (offset:   12): 0x3ca00000
  0x00007f1949126c90 (offset:   16): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949126c94 (offset:   20): 0xf4f4f4f4
  0x00007f1949126c98 (offset:   24): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f1949126c9c (offset:   28): 0xf4f4f4f4
[Entry Point]
[Verified Entry Point]
  # {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT'
  0x00007f1949126ca0: mov    %eax,-0x14000(%rsp)  ;   {no_reloc}
  0x00007f1949126ca7: push   %rbp
  0x00007f1949126ca8: sub    $0x140,%rsp
  0x00007f1949126caf: mov    $0x7f1921f5b8a0,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949126cb9: mov    0xdc(%rdx),%edi
  0x00007f1949126cbf: add    $0x8,%edi
  0x00007f1949126cc2: mov    %edi,0xdc(%rdx)
  0x00007f1949126cc8: mov    $0x7f1921f5b498,%rdx  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949126cd2: and    $0x1ff8,%edi
  0x00007f1949126cd8: cmp    $0x0,%edi
  0x00007f1949126cdb: je     0x00007f19491274e6
  0x00007f1949126ce1: mov    %esi,0xe0(%rsp)
  0x00007f1949126ce8: mov    $0x7c0040fe0,%rdx  ;   {metadata('java/util/Random')}
  0x00007f1949126cf2: mov    0x60(%r15),%rax
  0x00007f1949126cf6: lea    0x20(%rax),%rdi
  0x00007f1949126cfa: cmp    0x70(%r15),%rdi
  0x00007f1949126cfe: ja     0x00007f19491274fd
  0x00007f1949126d04: mov    %rdi,0x60(%r15)
  0x00007f1949126d08: mov    0xa8(%rdx),%rcx
  0x00007f1949126d0f: mov    %rcx,(%rax)
  0x00007f1949126d12: mov    %rdx,%rcx
  0x00007f1949126d15: shr    $0x3,%rcx
  0x00007f1949126d19: mov    %ecx,0x8(%rax)
  0x00007f1949126d1c: xor    %rcx,%rcx
  0x00007f1949126d1f: mov    %ecx,0xc(%rax)
  0x00007f1949126d22: xor    %rcx,%rcx
  0x00007f1949126d25: mov    %rcx,0x10(%rax)
  0x00007f1949126d29: mov    %rcx,0x18(%rax)    ;*new  ; - MULT::init@0 (line 15)

  0x00007f1949126d2d: mov    %rax,%rbx
  0x00007f1949126d30: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949126d3a: addq   $0x1,0x108(%rsi)
  0x00007f1949126d42: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949126d4c: mov    0xdc(%rbx),%esi
  0x00007f1949126d52: add    $0x8,%esi
  0x00007f1949126d55: mov    %esi,0xdc(%rbx)
  0x00007f1949126d5b: mov    $0x7f1921d71c48,%rbx  ;   {metadata({method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949126d65: and    $0x7ffff8,%esi
  0x00007f1949126d6b: cmp    $0x0,%esi
  0x00007f1949126d6e: je     0x00007f194912750a
  0x00007f1949126d74: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949126d7e: addq   $0x1,0x108(%rbx)
  0x00007f1949126d86: mov    $0x7f1921d76d68,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126d90: mov    0xdc(%rbx),%esi
  0x00007f1949126d96: add    $0x8,%esi
  0x00007f1949126d99: mov    %esi,0xdc(%rbx)
  0x00007f1949126d9f: mov    $0x7f1921d71cf8,%rbx  ;   {metadata({method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126da9: and    $0x7ffff8,%esi
  0x00007f1949126daf: cmp    $0x0,%esi
  0x00007f1949126db2: je     0x00007f1949127521
  0x00007f1949126db8: jmpq   0x00007f1949126e0b  ;*getstatic seedUniquifier
                                                ; - java.util.Random::seedUniquifier@0 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949126dbd: xchg   %ax,%ax
  0x00007f1949126dc0: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126dca: mov    0xe0(%rsi),%edi
  0x00007f1949126dd0: add    $0x8,%edi
  0x00007f1949126dd3: mov    %edi,0xe0(%rsi)
  0x00007f1949126dd9: mov    $0x7f1921d71cf8,%rsi  ;   {metadata({method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126de3: and    $0xfff8,%edi
  0x00007f1949126de9: cmp    $0x0,%edi
  0x00007f1949126dec: je     0x00007f1949127538  ; OopMap{rdx=Oop off=338}
                                                ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949126df2: test   %eax,0x15600308(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949126df8: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126e02: incl   0x188(%rsi)        ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949126e08: mov    %rdx,%rax
  0x00007f1949126e0b: mov    $0x671de3750,%rsi  ;   {oop(a 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949126e15: mov    %rsi,%rbx
  0x00007f1949126e18: mov    $0x7f1921d76d68,%rdi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126e22: mov    0x8(%rbx),%ebx
  0x00007f1949126e25: shl    $0x3,%rbx
  0x00007f1949126e29: cmp    0x110(%rdi),%rbx
  0x00007f1949126e30: jne    0x00007f1949126e3f
  0x00007f1949126e32: addq   $0x1,0x118(%rdi)
  0x00007f1949126e3a: jmpq   0x00007f1949126ea5
  0x00007f1949126e3f: cmp    0x120(%rdi),%rbx
  0x00007f1949126e46: jne    0x00007f1949126e55
  0x00007f1949126e48: addq   $0x1,0x128(%rdi)
  0x00007f1949126e50: jmpq   0x00007f1949126ea5
  0x00007f1949126e55: cmpq   $0x0,0x110(%rdi)
  0x00007f1949126e60: jne    0x00007f1949126e79
  0x00007f1949126e62: mov    %rbx,0x110(%rdi)
  0x00007f1949126e69: movq   $0x1,0x118(%rdi)
  0x00007f1949126e74: jmpq   0x00007f1949126ea5
  0x00007f1949126e79: cmpq   $0x0,0x120(%rdi)
  0x00007f1949126e84: jne    0x00007f1949126e9d
  0x00007f1949126e86: mov    %rbx,0x120(%rdi)
  0x00007f1949126e8d: movq   $0x1,0x128(%rdi)
  0x00007f1949126e98: jmpq   0x00007f1949126ea5
  0x00007f1949126e9d: addq   $0x1,0x108(%rdi)
  0x00007f1949126ea5: mov    $0x7f1921d755f0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949126eaf: mov    0xdc(%rbx),%edi
  0x00007f1949126eb5: add    $0x8,%edi
  0x00007f1949126eb8: mov    %edi,0xdc(%rbx)
  0x00007f1949126ebe: mov    $0x7f1921d74438,%rbx  ;   {metadata({method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949126ec8: and    $0x7ffff8,%edi
  0x00007f1949126ece: cmp    $0x0,%edi
  0x00007f1949126ed1: je     0x00007f194912754f
  0x00007f1949126ed7: vmovsd 0x10(%rsi),%xmm0   ; implicit exception: dispatches to 0x00007f1949127566
  0x00007f1949126edc: vmovq  %xmm0,%rbx         ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949126ee1: mov    $0x285d320ad33fdb5,%rdi
  0x00007f1949126eeb: mov    %rax,%rdx
  0x00007f1949126eee: mov    %rbx,%rax
  0x00007f1949126ef1: imul   %rdi,%rax
  0x00007f1949126ef5: mov    %rsi,%rdi
  0x00007f1949126ef8: mov    $0x7f1921d76d68,%rcx  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126f02: mov    0x8(%rdi),%edi
  0x00007f1949126f05: shl    $0x3,%rdi
  0x00007f1949126f09: cmp    0x140(%rcx),%rdi
  0x00007f1949126f10: jne    0x00007f1949126f1f
  0x00007f1949126f12: addq   $0x1,0x148(%rcx)
  0x00007f1949126f1a: jmpq   0x00007f1949126f85
  0x00007f1949126f1f: cmp    0x150(%rcx),%rdi
  0x00007f1949126f26: jne    0x00007f1949126f35
  0x00007f1949126f28: addq   $0x1,0x158(%rcx)
  0x00007f1949126f30: jmpq   0x00007f1949126f85
  0x00007f1949126f35: cmpq   $0x0,0x140(%rcx)
  0x00007f1949126f40: jne    0x00007f1949126f59
  0x00007f1949126f42: mov    %rdi,0x140(%rcx)
  0x00007f1949126f49: movq   $0x1,0x148(%rcx)
  0x00007f1949126f54: jmpq   0x00007f1949126f85
  0x00007f1949126f59: cmpq   $0x0,0x150(%rcx)
  0x00007f1949126f64: jne    0x00007f1949126f7d
  0x00007f1949126f66: mov    %rdi,0x150(%rcx)
  0x00007f1949126f6d: movq   $0x1,0x158(%rcx)
  0x00007f1949126f78: jmpq   0x00007f1949126f85
  0x00007f1949126f7d: addq   $0x1,0x138(%rcx)
  0x00007f1949126f85: mov    $0x7f1921d75710,%rdi  ;   {metadata(method data for {method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949126f8f: mov    0xdc(%rdi),%ecx
  0x00007f1949126f95: add    $0x8,%ecx
  0x00007f1949126f98: mov    %ecx,0xdc(%rdi)
  0x00007f1949126f9e: mov    $0x7f1921d746b0,%rdi  ;   {metadata({method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949126fa8: and    $0x7ffff8,%ecx
  0x00007f1949126fae: cmp    $0x0,%ecx
  0x00007f1949126fb1: je     0x00007f194912756b
  0x00007f1949126fb7: mov    %rax,%rdi
  0x00007f1949126fba: mov    %rbx,%rax
  0x00007f1949126fbd: mov    %rdi,%rbx
  0x00007f1949126fc0: lea    0x10(%rsi),%rsi
  0x00007f1949126fc4: lock cmpxchg %rbx,(%rsi)
  0x00007f1949126fc9: mov    $0x1,%esi
  0x00007f1949126fce: je     0x00007f1949126fd9
  0x00007f1949126fd4: mov    $0x0,%esi          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::seedUniquifier@18 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949126fd9: cmp    $0x0,%esi
  0x00007f1949126fdc: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949126fe6: mov    $0x168,%rbx
  0x00007f1949126ff0: je     0x00007f1949127000
  0x00007f1949126ff6: mov    $0x178,%rbx
  0x00007f1949127000: mov    (%rsi,%rbx,1),%rax
  0x00007f1949127004: lea    0x1(%rax),%rax
  0x00007f1949127008: mov    %rax,(%rsi,%rbx,1)
  0x00007f194912700c: je     0x00007f1949126dc0  ;*ifeq
                                                ; - java.util.Random::seedUniquifier@21 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949127012: mov    %rdi,0xd0(%rsp)
  0x00007f194912701a: mov    $0x7f1921d76bf0,%rdi  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949127024: addq   $0x1,0x118(%rdi)
  0x00007f194912702c: mov    %rdx,%rdi
  0x00007f194912702f: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949127039: addq   $0x1,0x128(%rbx)
  0x00007f1949127041: mov    %rdx,0xd8(%rsp)
  0x00007f1949127049: callq  0x00007f195d463670  ;*invokestatic nanoTime
                                                ; - java.util.Random::<init>@4 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912704e: mov    0xd0(%rsp),%rdx
  0x00007f1949127056: xor    %rdx,%rax
  0x00007f1949127059: mov    %rax,%rdx
  0x00007f194912705c: mov    0xd8(%rsp),%rsi    ;*invokespecial <init>
                                                ; - java.util.Random::<init>@8 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949127064: nop
  0x00007f1949127065: nop
  0x00007f1949127066: nop
  0x00007f1949127067: callq  0x00007f1948e2ad60  ; OopMap{[216]=Oop off=972}
                                                ;*invokespecial <init>
                                                ; - java.util.Random::<init>@8 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {optimized virtual_call}
  0x00007f194912706c: mov    0xd8(%rsp),%rax
  0x00007f1949127074: mov    0xe0(%rsp),%esi
  0x00007f194912707b: mov    $0x0,%edi
  0x00007f1949127080: jmpq   0x00007f1949127434  ;*iload_2
                                                ; - MULT::init@10 (line 16)

  0x00007f1949127085: xchg   %ax,%ax
  0x00007f1949127088: mov    $0x0,%ebx
  0x00007f194912708d: jmpq   0x00007f19491273b2  ;*iload_3
                                                ; - MULT::init@17 (line 17)

  0x00007f1949127092: nopw   0x0(%rax,%rax,1)
  0x00007f1949127098: mov    %ebx,0x100(%rsp)
  0x00007f194912709f: mov    %esi,0x118(%rsp)
  0x00007f19491270a6: mov    $0x6717da100,%rcx  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f19491270b0: mov    0x60(%rcx),%edx
  0x00007f19491270b3: shl    $0x3,%rdx          ;*getstatic A
                                                ; - MULT::init@22 (line 18)

  0x00007f19491270b7: movslq %edi,%r8
  0x00007f19491270ba: cmp    0xc(%rdx),%edi     ; implicit exception: dispatches to 0x00007f1949127582
  0x00007f19491270bd: jae    0x00007f194912758c
  0x00007f19491270c3: mov    0x10(%rdx,%r8,4),%r8d
  0x00007f19491270c8: shl    $0x3,%r8           ;*aaload
                                                ; - MULT::init@26 (line 18)

  0x00007f19491270cc: cmp    (%rax),%rax        ;*invokevirtual nextDouble
                                                ; - MULT::init@29 (line 18)
                                                ; implicit exception: dispatches to 0x00007f1949127595
  0x00007f19491270cf: mov    %rax,%rdx
  0x00007f19491270d2: mov    $0x7f1921f5b8a0,%r9  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f19491270dc: mov    $0x7c0040fe0,%r10  ;   {metadata('java/util/Random')}
  0x00007f19491270e6: mov    %r10,0x160(%r9)
  0x00007f19491270ed: addq   $0x1,0x168(%r9)
  0x00007f19491270f5: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f19491270ff: mov    0xdc(%rdx),%r9d
  0x00007f1949127106: add    $0x8,%r9d
  0x00007f194912710a: mov    %r9d,0xdc(%rdx)
  0x00007f1949127111: mov    $0x7f1921d72728,%rdx  ;   {metadata({method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f194912711b: and    $0x7ffff8,%r9d
  0x00007f1949127122: cmp    $0x0,%r9d
  0x00007f1949127126: je     0x00007f194912759a
  0x00007f194912712c: mov    %rax,%rdx
  0x00007f194912712f: mov    $0x7f1921d75a78,%r9  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949127139: addq   $0x1,0x118(%r9)
  0x00007f1949127141: mov    $0x1a,%edx
  0x00007f1949127146: mov    %rax,%rsi          ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f1949127149: mov    %edi,0x104(%rsp)
  0x00007f1949127150: mov    %rcx,0x110(%rsp)
  0x00007f1949127158: mov    %r8,0x108(%rsp)
  0x00007f1949127160: mov    %rax,0xf8(%rsp)
  0x00007f1949127168: nop
  0x00007f1949127169: nop
  0x00007f194912716a: nop
  0x00007f194912716b: nop
  0x00007f194912716c: nop
  0x00007f194912716d: nop
  0x00007f194912716e: nop
  0x00007f194912716f: callq  0x00007f1948e2ad60  ; OopMap{[264]=Oop [272]=Oop [248]=Oop off=1236}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {optimized virtual_call}
  0x00007f1949127174: mov    0xf8(%rsp),%rcx
  0x00007f194912717c: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949127186: addq   $0x1,0x148(%rdx)
  0x00007f194912718e: movslq %eax,%rax
  0x00007f1949127191: mov    $0x1b,%ecx
  0x00007f1949127196: shl    %cl,%rax
  0x00007f1949127199: mov    $0x1b,%edx
  0x00007f194912719e: mov    0xf8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f19491271a6: mov    %rax,0x120(%rsp)
  0x00007f19491271ae: nop
  0x00007f19491271af: callq  0x00007f1948e2ad60  ; OopMap{[264]=Oop [272]=Oop [248]=Oop off=1300}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {optimized virtual_call}
  0x00007f19491271b4: movslq %eax,%rax
  0x00007f19491271b7: mov    0x120(%rsp),%rdx
  0x00007f19491271bf: add    %rax,%rdx
  0x00007f19491271c2: mov    %rdx,(%rsp)
  0x00007f19491271c6: fildll (%rsp)
  0x00007f19491271c9: fstpl  (%rsp)
  0x00007f19491271cc: vmovsd (%rsp),%xmm0
  0x00007f19491271d1: vmulsd -0x559(%rip),%xmm0,%xmm0        # 0x00007f1949126c80
                                                ;   {section_word}
  0x00007f19491271d9: mov    0x100(%rsp),%ebx
  0x00007f19491271e0: movslq %ebx,%rdx
  0x00007f19491271e3: mov    0x108(%rsp),%r8
  0x00007f19491271eb: cmp    0xc(%r8),%ebx      ; implicit exception: dispatches to 0x00007f19491275b1
  0x00007f19491271ef: jae    0x00007f19491275bb
  0x00007f19491271f5: vmovsd %xmm0,0x10(%r8,%rdx,8)  ;*dastore
                                                ; - MULT::init@32 (line 18)

  0x00007f19491271fc: mov    0x110(%rsp),%rcx
  0x00007f1949127204: mov    0x64(%rcx),%edx
  0x00007f1949127207: shl    $0x3,%rdx          ;*getstatic B
                                                ; - MULT::init@33 (line 19)

  0x00007f194912720b: mov    0x104(%rsp),%edi
  0x00007f1949127212: movslq %edi,%rsi
  0x00007f1949127215: cmp    0xc(%rdx),%edi     ; implicit exception: dispatches to 0x00007f19491275c4
  0x00007f1949127218: jae    0x00007f19491275ce
  0x00007f194912721e: mov    0x10(%rdx,%rsi,4),%eax
  0x00007f1949127222: shl    $0x3,%rax          ;*aaload
                                                ; - MULT::init@37 (line 19)

  0x00007f1949127226: mov    0xf8(%rsp),%rdx
  0x00007f194912722e: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949127238: mov    $0x7c0040fe0,%r10  ;   {metadata('java/util/Random')}
  0x00007f1949127242: mov    %r10,0x190(%rsi)
  0x00007f1949127249: addq   $0x1,0x198(%rsi)
  0x00007f1949127251: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f194912725b: mov    0xdc(%rdx),%esi
  0x00007f1949127261: add    $0x8,%esi
  0x00007f1949127264: mov    %esi,0xdc(%rdx)
  0x00007f194912726a: mov    $0x7f1921d72728,%rdx  ;   {metadata({method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949127274: and    $0x7ffff8,%esi
  0x00007f194912727a: cmp    $0x0,%esi
  0x00007f194912727d: je     0x00007f19491275d7
  0x00007f1949127283: mov    0xf8(%rsp),%rdx
  0x00007f194912728b: mov    $0x7f1921d75a78,%rsi  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949127295: addq   $0x1,0x118(%rsi)
  0x00007f194912729d: mov    $0x1a,%edx
  0x00007f19491272a2: mov    0xf8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f19491272aa: mov    %edi,0x104(%rsp)
  0x00007f19491272b1: mov    %rax,0x128(%rsp)
  0x00007f19491272b9: mov    %ebx,0x100(%rsp)
  0x00007f19491272c0: nop
  0x00007f19491272c1: nop
  0x00007f19491272c2: nop
  0x00007f19491272c3: nop
  0x00007f19491272c4: nop
  0x00007f19491272c5: nop
  0x00007f19491272c6: nop
  0x00007f19491272c7: callq  0x00007f1948e2ad60  ; OopMap{[248]=Oop [296]=Oop off=1580}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {optimized virtual_call}
  0x00007f19491272cc: mov    0xf8(%rsp),%rcx
  0x00007f19491272d4: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f19491272de: addq   $0x1,0x148(%rdx)
  0x00007f19491272e6: movslq %eax,%rax
  0x00007f19491272e9: mov    $0x1b,%ecx
  0x00007f19491272ee: shl    %cl,%rax
  0x00007f19491272f1: mov    $0x1b,%edx
  0x00007f19491272f6: mov    0xf8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f19491272fe: mov    %rax,0x130(%rsp)
  0x00007f1949127306: nop
  0x00007f1949127307: callq  0x00007f1948e2ad60  ; OopMap{[248]=Oop [296]=Oop off=1644}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {optimized virtual_call}
  0x00007f194912730c: movslq %eax,%rax
  0x00007f194912730f: mov    0x130(%rsp),%rsi
  0x00007f1949127317: add    %rax,%rsi
  0x00007f194912731a: mov    %rsi,(%rsp)
  0x00007f194912731e: fildll (%rsp)
  0x00007f1949127321: fstpl  (%rsp)
  0x00007f1949127324: vmovsd (%rsp),%xmm0
  0x00007f1949127329: vmulsd -0x6a9(%rip),%xmm0,%xmm0        # 0x00007f1949126c88
                                                ;   {section_word}
  0x00007f1949127331: mov    0x100(%rsp),%ebx
  0x00007f1949127338: movslq %ebx,%rsi
  0x00007f194912733b: mov    0x128(%rsp),%rax
  0x00007f1949127343: cmp    0xc(%rax),%ebx     ; implicit exception: dispatches to 0x00007f19491275ee
  0x00007f1949127346: jae    0x00007f19491275f8
  0x00007f194912734c: vmovsd %xmm0,0x10(%rax,%rsi,8)  ;*dastore
                                                ; - MULT::init@43 (line 19)

  0x00007f1949127352: inc    %ebx
  0x00007f1949127354: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912735e: mov    0xe0(%rsi),%edi
  0x00007f1949127364: add    $0x8,%edi
  0x00007f1949127367: mov    %edi,0xe0(%rsi)
  0x00007f194912736d: mov    $0x7f1921f5b498,%rsi  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949127377: and    $0xfff8,%edi
  0x00007f194912737d: cmp    $0x0,%edi
  0x00007f1949127380: je     0x00007f1949127601  ; OopMap{[248]=Oop off=1766}
                                                ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f1949127386: test   %eax,0x155ffd74(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912738c: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949127396: incl   0x1b8(%rsi)        ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f194912739c: mov    0x104(%rsp),%edi
  0x00007f19491273a3: mov    0xf8(%rsp),%rax
  0x00007f19491273ab: mov    0x118(%rsp),%esi
  0x00007f19491273b2: cmp    %esi,%ebx
  0x00007f19491273b4: mov    $0x7f1921f5b8a0,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f19491273be: mov    $0x138,%rcx
  0x00007f19491273c8: jge    0x00007f19491273d8
  0x00007f19491273ce: mov    $0x148,%rcx
  0x00007f19491273d8: mov    (%rdx,%rcx,1),%r8
  0x00007f19491273dc: lea    0x1(%r8),%r8
  0x00007f19491273e0: mov    %r8,(%rdx,%rcx,1)
  0x00007f19491273e4: jl     0x00007f1949127098  ;*if_icmpge
                                                ; - MULT::init@19 (line 17)

  0x00007f19491273ea: inc    %edi
  0x00007f19491273ec: mov    $0x7f1921f5b8a0,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f19491273f6: mov    0xe0(%rbx),%edx
  0x00007f19491273fc: add    $0x8,%edx
  0x00007f19491273ff: mov    %edx,0xe0(%rbx)
  0x00007f1949127405: mov    $0x7f1921f5b498,%rbx  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912740f: and    $0xfff8,%edx
  0x00007f1949127415: cmp    $0x0,%edx
  0x00007f1949127418: je     0x00007f1949127618  ; OopMap{rax=Oop off=1918}
                                                ;*goto
                                                ; - MULT::init@53 (line 16)

  0x00007f194912741e: test   %eax,0x155ffcdc(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949127424: mov    $0x7f1921f5b8a0,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912742e: incl   0x1d0(%rbx)        ;*goto
                                                ; - MULT::init@53 (line 16)

  0x00007f1949127434: cmp    %esi,%edi
  0x00007f1949127436: mov    $0x7f1921f5b8a0,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949127440: mov    $0x118,%rdx
  0x00007f194912744a: jge    0x00007f194912745a
  0x00007f1949127450: mov    $0x128,%rdx
  0x00007f194912745a: mov    (%rbx,%rdx,1),%rcx
  0x00007f194912745e: lea    0x1(%rcx),%rcx
  0x00007f1949127462: mov    %rcx,(%rbx,%rdx,1)
  0x00007f1949127466: jl     0x00007f1949127088  ;*if_icmpge
                                                ; - MULT::init@12 (line 16)

  0x00007f194912746c: add    $0x140,%rsp
  0x00007f1949127473: pop    %rbp
  0x00007f1949127474: test   %eax,0x155ffc86(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912747a: retq                      ;*return
                                                ; - MULT::init@56 (line 22)

  0x00007f194912747b: mov    %eax,-0x14000(%rsp)
  0x00007f1949127482: push   %rbp
  0x00007f1949127483: sub    $0x140,%rsp
  0x00007f194912748a: mov    0x18(%rsi),%ebx
  0x00007f194912748d: mov    0x10(%rsi),%rax
  0x00007f1949127491: mov    0x8(%rsi),%edx
  0x00007f1949127494: mov    (%rsi),%ecx
  0x00007f1949127496: mov    %rsi,%rdi
  0x00007f1949127499: mov    %ebx,0xec(%rsp)
  0x00007f19491274a0: mov    %rax,0xf0(%rsp)
  0x00007f19491274a8: mov    %edx,0xe8(%rsp)
  0x00007f19491274af: mov    %ecx,0xe4(%rsp)
  0x00007f19491274b6: callq  0x00007f195d4fe890  ;   {runtime_call}
  0x00007f19491274bb: mov    0xe4(%rsp),%ecx
  0x00007f19491274c2: mov    %rcx,%rbx
  0x00007f19491274c5: mov    0xe8(%rsp),%edx
  0x00007f19491274cc: mov    %rdx,%rdi
  0x00007f19491274cf: mov    0xf0(%rsp),%rax
  0x00007f19491274d7: mov    0xec(%rsp),%edx
  0x00007f19491274de: mov    %rdx,%rsi
  0x00007f19491274e1: jmpq   0x00007f19491273b2
  0x00007f19491274e6: mov    %rdx,0x8(%rsp)
  0x00007f19491274eb: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491274f3: callq  0x00007f1948ee3420  ; OopMap{off=2136}
                                                ;*synchronization entry
                                                ; - MULT::init@-1 (line 15)
                                                ;   {runtime_call}
  0x00007f19491274f8: jmpq   0x00007f1949126ce1
  0x00007f19491274fd: mov    %rdx,%rdx
  0x00007f1949127500: callq  0x00007f1948e527a0  ; OopMap{off=2149}
                                                ;*new  ; - MULT::init@0 (line 15)
                                                ;   {runtime_call}
  0x00007f1949127505: jmpq   0x00007f1949126d2d
  0x00007f194912750a: mov    %rbx,0x8(%rsp)
  0x00007f194912750f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949127517: callq  0x00007f1948ee3420  ; OopMap{rax=Oop off=2172}
                                                ;*synchronization entry
                                                ; - java.util.Random::<init>@-1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912751c: jmpq   0x00007f1949126d74
  0x00007f1949127521: mov    %rbx,0x8(%rsp)
  0x00007f1949127526: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912752e: callq  0x00007f1948ee3420  ; OopMap{rax=Oop off=2195}
                                                ;*synchronization entry
                                                ; - java.util.Random::seedUniquifier@-1 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f1949127533: jmpq   0x00007f1949126db8
  0x00007f1949127538: mov    %rsi,0x8(%rsp)
  0x00007f194912753d: movq   $0x1a,(%rsp)
  0x00007f1949127545: callq  0x00007f1948ee3420  ; OopMap{rdx=Oop off=2218}
                                                ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912754a: jmpq   0x00007f1949126df2
  0x00007f194912754f: mov    %rbx,0x8(%rsp)
  0x00007f1949127554: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912755c: callq  0x00007f1948ee3420  ; OopMap{rax=Oop rsi=Oop off=2241}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::get@-1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f1949127561: jmpq   0x00007f1949126ed7
  0x00007f1949127566: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rsi=Oop off=2251}
                                                ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912756b: mov    %rdi,0x8(%rsp)
  0x00007f1949127570: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949127578: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rdx=Oop off=2269}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@-1 (line 147)
                                                ; - java.util.Random::seedUniquifier@18 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912757d: jmpq   0x00007f1949126fb7
  0x00007f1949127582: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop rdx=Oop off=2279}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f1949127587: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop rdx=Oop off=2284}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912758c: mov    %rdi,(%rsp)
  0x00007f1949127590: callq  0x00007f1948e53780  ; OopMap{rax=Oop rcx=Oop rdx=Oop off=2293}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f1949127595: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop r8=Oop off=2298}
                                                ;*invokevirtual nextDouble
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912759a: mov    %rdx,0x8(%rsp)
  0x00007f194912759f: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491275a7: callq  0x00007f1948ee3420  ; OopMap{rax=Oop rcx=Oop r8=Oop off=2316}
                                                ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f19491275ac: jmpq   0x00007f194912712c
  0x00007f19491275b1: callq  0x00007f1948e530c0  ; OopMap{[272]=Oop [248]=Oop r8=Oop off=2326}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f19491275b6: callq  0x00007f1948e530c0  ; OopMap{[272]=Oop [248]=Oop r8=Oop off=2331}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f19491275bb: mov    %rbx,(%rsp)
  0x00007f19491275bf: callq  0x00007f1948e53780  ; OopMap{[272]=Oop [248]=Oop r8=Oop off=2340}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f19491275c4: callq  0x00007f1948e530c0  ; OopMap{[248]=Oop rdx=Oop off=2345}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275c9: callq  0x00007f1948e530c0  ; OopMap{[248]=Oop rdx=Oop off=2350}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275ce: mov    %rdi,(%rsp)
  0x00007f19491275d2: callq  0x00007f1948e53780  ; OopMap{[248]=Oop rdx=Oop off=2359}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275d7: mov    %rdx,0x8(%rsp)
  0x00007f19491275dc: movq   $0xffffffffffffffff,(%rsp)
  0x00007f19491275e4: callq  0x00007f1948ee3420  ; OopMap{[248]=Oop rax=Oop off=2377}
                                                ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275e9: jmpq   0x00007f1949127283
  0x00007f19491275ee: callq  0x00007f1948e530c0  ; OopMap{[248]=Oop rax=Oop off=2387}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275f3: callq  0x00007f1948e530c0  ; OopMap{[248]=Oop rax=Oop off=2392}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f19491275f8: mov    %rbx,(%rsp)
  0x00007f19491275fc: callq  0x00007f1948e53780  ; OopMap{[248]=Oop rax=Oop off=2401}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f1949127601: mov    %rsi,0x8(%rsp)
  0x00007f1949127606: movq   $0x2f,(%rsp)
  0x00007f194912760e: callq  0x00007f1948ee3420  ; OopMap{[248]=Oop off=2419}
                                                ;*goto
                                                ; - MULT::init@47 (line 17)
                                                ;   {runtime_call}
  0x00007f1949127613: jmpq   0x00007f1949127386
  0x00007f1949127618: mov    %rbx,0x8(%rsp)
  0x00007f194912761d: movq   $0x35,(%rsp)
  0x00007f1949127625: callq  0x00007f1948ee3420  ; OopMap{rax=Oop off=2442}
                                                ;*goto
                                                ; - MULT::init@53 (line 16)
                                                ;   {runtime_call}
  0x00007f194912762a: jmpq   0x00007f194912741e
  0x00007f194912762f: nop
  0x00007f1949127630: nop
  0x00007f1949127631: mov    0x298(%r15),%rax
  0x00007f1949127638: mov    $0x0,%r10
  0x00007f1949127642: mov    %r10,0x298(%r15)
  0x00007f1949127649: mov    $0x0,%r10
  0x00007f1949127653: mov    %r10,0x2a0(%r15)
  0x00007f194912765a: add    $0x140,%rsp
  0x00007f1949127661: pop    %rbp
  0x00007f1949127662: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949127667: hlt
  0x00007f1949127668: hlt
  0x00007f1949127669: hlt
  0x00007f194912766a: hlt
  0x00007f194912766b: hlt
  0x00007f194912766c: hlt
  0x00007f194912766d: hlt
  0x00007f194912766e: hlt
  0x00007f194912766f: hlt
  0x00007f1949127670: hlt
  0x00007f1949127671: hlt
  0x00007f1949127672: hlt
  0x00007f1949127673: hlt
  0x00007f1949127674: hlt
  0x00007f1949127675: hlt
  0x00007f1949127676: hlt
  0x00007f1949127677: hlt
  0x00007f1949127678: hlt
  0x00007f1949127679: hlt
  0x00007f194912767a: hlt
  0x00007f194912767b: hlt
  0x00007f194912767c: hlt
  0x00007f194912767d: hlt
  0x00007f194912767e: hlt
  0x00007f194912767f: hlt
[Stub Code]
  0x00007f1949127680: nop                       ;   {no_reloc}
  0x00007f1949127681: nop
  0x00007f1949127682: nop
  0x00007f1949127683: nop
  0x00007f1949127684: nop
  0x00007f1949127685: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912768f: jmpq   0x00007f194912768f  ;   {runtime_call}
  0x00007f1949127694: nop
  0x00007f1949127695: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912769f: jmpq   0x00007f194912769f  ;   {runtime_call}
  0x00007f19491276a4: nop
  0x00007f19491276a5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491276af: jmpq   0x00007f19491276af  ;   {runtime_call}
  0x00007f19491276b4: nop
  0x00007f19491276b5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491276bf: jmpq   0x00007f19491276bf  ;   {runtime_call}
  0x00007f19491276c4: nop
  0x00007f19491276c5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f19491276cf: jmpq   0x00007f19491276cf  ;   {runtime_call}
[Exception Handler]
  0x00007f19491276d4: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f19491276d9: mov    %rsp,-0x28(%rsp)
  0x00007f19491276de: sub    $0x80,%rsp
  0x00007f19491276e5: mov    %rax,0x78(%rsp)
  0x00007f19491276ea: mov    %rcx,0x70(%rsp)
  0x00007f19491276ef: mov    %rdx,0x68(%rsp)
  0x00007f19491276f4: mov    %rbx,0x60(%rsp)
  0x00007f19491276f9: mov    %rbp,0x50(%rsp)
  0x00007f19491276fe: mov    %rsi,0x48(%rsp)
  0x00007f1949127703: mov    %rdi,0x40(%rsp)
  0x00007f1949127708: mov    %r8,0x38(%rsp)
  0x00007f194912770d: mov    %r9,0x30(%rsp)
  0x00007f1949127712: mov    %r10,0x28(%rsp)
  0x00007f1949127717: mov    %r11,0x20(%rsp)
  0x00007f194912771c: mov    %r12,0x18(%rsp)
  0x00007f1949127721: mov    %r13,0x10(%rsp)
  0x00007f1949127726: mov    %r14,0x8(%rsp)
  0x00007f194912772b: mov    %r15,(%rsp)
  0x00007f194912772f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949127739: mov    $0x7f19491276d9,%rsi  ;   {internal_word}
  0x00007f1949127743: mov    %rsp,%rdx
  0x00007f1949127746: and    $0xfffffffffffffff0,%rsp
  0x00007f194912774a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912774f: hlt
[Deopt Handler Code]
  0x00007f1949127750: mov    $0x7f1949127750,%r10  ;   {section_word}
  0x00007f194912775a: push   %r10
  0x00007f194912775c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949127761: hlt
  0x00007f1949127762: hlt
  0x00007f1949127763: hlt
  0x00007f1949127764: hlt
  0x00007f1949127765: hlt
  0x00007f1949127766: hlt
  0x00007f1949127767: hlt
Decoding compiled method 0x00007f1949129690:
Code:
[Constants]
  0x00007f19491298c0 (offset:    0): 0x00000000   0x3ca0000000000000
  0x00007f19491298c4 (offset:    4): 0x3ca00000
  0x00007f19491298c8 (offset:    8): 0x00000000   0x3ca0000000000000
  0x00007f19491298cc (offset:   12): 0x3ca00000
  0x00007f19491298d0 (offset:   16): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f19491298d4 (offset:   20): 0xf4f4f4f4
  0x00007f19491298d8 (offset:   24): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f19491298dc (offset:   28): 0xf4f4f4f4
[Entry Point]
[Verified Entry Point]
  # {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT'
  # parm0:    rsi       = int
  #           [sp+0x130]  (sp of caller)
  0x00007f19491298e0: mov    %eax,-0x14000(%rsp)  ;   {no_reloc}
  0x00007f19491298e7: push   %rbp
  0x00007f19491298e8: sub    $0x120,%rsp
  0x00007f19491298ef: mov    %esi,0xe0(%rsp)
  0x00007f19491298f6: mov    $0x7f1921f5b8a0,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129900: mov    0xdc(%rdx),%edi
  0x00007f1949129906: add    $0x8,%edi
  0x00007f1949129909: mov    %edi,0xdc(%rdx)
  0x00007f194912990f: mov    $0x7f1921f5b498,%rdx  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129919: and    $0x1ff8,%edi
  0x00007f194912991f: cmp    $0x0,%edi
  0x00007f1949129922: je     0x00007f194912a0b0
  0x00007f1949129928: mov    $0x7c0040fe0,%rdx  ;   {metadata('java/util/Random')}
  0x00007f1949129932: mov    0x60(%r15),%rax
  0x00007f1949129936: lea    0x20(%rax),%rdi
  0x00007f194912993a: cmp    0x70(%r15),%rdi
  0x00007f194912993e: ja     0x00007f194912a0c7
  0x00007f1949129944: mov    %rdi,0x60(%r15)
  0x00007f1949129948: mov    0xa8(%rdx),%rcx
  0x00007f194912994f: mov    %rcx,(%rax)
  0x00007f1949129952: mov    %rdx,%rcx
  0x00007f1949129955: shr    $0x3,%rcx
  0x00007f1949129959: mov    %ecx,0x8(%rax)
  0x00007f194912995c: xor    %rcx,%rcx
  0x00007f194912995f: mov    %ecx,0xc(%rax)
  0x00007f1949129962: xor    %rcx,%rcx
  0x00007f1949129965: mov    %rcx,0x10(%rax)
  0x00007f1949129969: mov    %rcx,0x18(%rax)    ;*new  ; - MULT::init@0 (line 15)

  0x00007f194912996d: mov    %rax,0xd8(%rsp)
  0x00007f1949129975: mov    %rax,%rbx
  0x00007f1949129978: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129982: addq   $0x1,0x108(%rsi)
  0x00007f194912998a: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949129994: mov    0xdc(%rbx),%esi
  0x00007f194912999a: add    $0x8,%esi
  0x00007f194912999d: mov    %esi,0xdc(%rbx)
  0x00007f19491299a3: mov    $0x7f1921d71c48,%rbx  ;   {metadata({method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f19491299ad: and    $0x7ffff8,%esi
  0x00007f19491299b3: cmp    $0x0,%esi
  0x00007f19491299b6: je     0x00007f194912a0d4
  0x00007f19491299bc: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f19491299c6: addq   $0x1,0x108(%rbx)
  0x00007f19491299ce: mov    $0x7f1921d76d68,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f19491299d8: mov    0xdc(%rbx),%esi
  0x00007f19491299de: add    $0x8,%esi
  0x00007f19491299e1: mov    %esi,0xdc(%rbx)
  0x00007f19491299e7: mov    $0x7f1921d71cf8,%rbx  ;   {metadata({method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f19491299f1: and    $0x7ffff8,%esi
  0x00007f19491299f7: cmp    $0x0,%esi
  0x00007f19491299fa: je     0x00007f194912a0eb
  0x00007f1949129a00: jmpq   0x00007f1949129a53  ;*getstatic seedUniquifier
                                                ; - java.util.Random::seedUniquifier@0 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129a05: xchg   %ax,%ax
  0x00007f1949129a08: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129a12: mov    0xe0(%rsi),%edi
  0x00007f1949129a18: add    $0x8,%edi
  0x00007f1949129a1b: mov    %edi,0xe0(%rsi)
  0x00007f1949129a21: mov    $0x7f1921d71cf8,%rsi  ;   {metadata({method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129a2b: and    $0xfff8,%edi
  0x00007f1949129a31: cmp    $0x0,%edi
  0x00007f1949129a34: je     0x00007f194912a102  ; OopMap{rdx=Oop [216]=Oop off=346}
                                                ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129a3a: test   %eax,0x155fd6c0(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949129a40: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129a4a: incl   0x188(%rsi)        ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129a50: mov    %rdx,%rax
  0x00007f1949129a53: mov    $0x671de3750,%rsi  ;   {oop(a 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949129a5d: mov    %rsi,%rbx
  0x00007f1949129a60: mov    $0x7f1921d76d68,%rdi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129a6a: mov    0x8(%rbx),%ebx
  0x00007f1949129a6d: shl    $0x3,%rbx
  0x00007f1949129a71: cmp    0x110(%rdi),%rbx
  0x00007f1949129a78: jne    0x00007f1949129a87
  0x00007f1949129a7a: addq   $0x1,0x118(%rdi)
  0x00007f1949129a82: jmpq   0x00007f1949129aed
  0x00007f1949129a87: cmp    0x120(%rdi),%rbx
  0x00007f1949129a8e: jne    0x00007f1949129a9d
  0x00007f1949129a90: addq   $0x1,0x128(%rdi)
  0x00007f1949129a98: jmpq   0x00007f1949129aed
  0x00007f1949129a9d: cmpq   $0x0,0x110(%rdi)
  0x00007f1949129aa8: jne    0x00007f1949129ac1
  0x00007f1949129aaa: mov    %rbx,0x110(%rdi)
  0x00007f1949129ab1: movq   $0x1,0x118(%rdi)
  0x00007f1949129abc: jmpq   0x00007f1949129aed
  0x00007f1949129ac1: cmpq   $0x0,0x120(%rdi)
  0x00007f1949129acc: jne    0x00007f1949129ae5
  0x00007f1949129ace: mov    %rbx,0x120(%rdi)
  0x00007f1949129ad5: movq   $0x1,0x128(%rdi)
  0x00007f1949129ae0: jmpq   0x00007f1949129aed
  0x00007f1949129ae5: addq   $0x1,0x108(%rdi)
  0x00007f1949129aed: mov    $0x7f1921d755f0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949129af7: mov    0xdc(%rbx),%edi
  0x00007f1949129afd: add    $0x8,%edi
  0x00007f1949129b00: mov    %edi,0xdc(%rbx)
  0x00007f1949129b06: mov    $0x7f1921d74438,%rbx  ;   {metadata({method} {0x00007f1921d74438} 'get' '()J' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949129b10: and    $0x7ffff8,%edi
  0x00007f1949129b16: cmp    $0x0,%edi
  0x00007f1949129b19: je     0x00007f194912a119
  0x00007f1949129b1f: vmovsd 0x10(%rsi),%xmm0   ; implicit exception: dispatches to 0x00007f194912a130
  0x00007f1949129b24: vmovq  %xmm0,%rbx         ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129b29: mov    $0x285d320ad33fdb5,%rdi
  0x00007f1949129b33: mov    %rax,%rdx
  0x00007f1949129b36: mov    %rbx,%rax
  0x00007f1949129b39: imul   %rdi,%rax
  0x00007f1949129b3d: mov    %rsi,%rdi
  0x00007f1949129b40: mov    $0x7f1921d76d68,%rcx  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129b4a: mov    0x8(%rdi),%edi
  0x00007f1949129b4d: shl    $0x3,%rdi
  0x00007f1949129b51: cmp    0x140(%rcx),%rdi
  0x00007f1949129b58: jne    0x00007f1949129b67
  0x00007f1949129b5a: addq   $0x1,0x148(%rcx)
  0x00007f1949129b62: jmpq   0x00007f1949129bcd
  0x00007f1949129b67: cmp    0x150(%rcx),%rdi
  0x00007f1949129b6e: jne    0x00007f1949129b7d
  0x00007f1949129b70: addq   $0x1,0x158(%rcx)
  0x00007f1949129b78: jmpq   0x00007f1949129bcd
  0x00007f1949129b7d: cmpq   $0x0,0x140(%rcx)
  0x00007f1949129b88: jne    0x00007f1949129ba1
  0x00007f1949129b8a: mov    %rdi,0x140(%rcx)
  0x00007f1949129b91: movq   $0x1,0x148(%rcx)
  0x00007f1949129b9c: jmpq   0x00007f1949129bcd
  0x00007f1949129ba1: cmpq   $0x0,0x150(%rcx)
  0x00007f1949129bac: jne    0x00007f1949129bc5
  0x00007f1949129bae: mov    %rdi,0x150(%rcx)
  0x00007f1949129bb5: movq   $0x1,0x158(%rcx)
  0x00007f1949129bc0: jmpq   0x00007f1949129bcd
  0x00007f1949129bc5: addq   $0x1,0x138(%rcx)
  0x00007f1949129bcd: mov    $0x7f1921d75710,%rdi  ;   {metadata(method data for {method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949129bd7: mov    0xdc(%rdi),%ecx
  0x00007f1949129bdd: add    $0x8,%ecx
  0x00007f1949129be0: mov    %ecx,0xdc(%rdi)
  0x00007f1949129be6: mov    $0x7f1921d746b0,%rdi  ;   {metadata({method} {0x00007f1921d746b0} 'compareAndSet' '(JJ)Z' in 'java/util/concurrent/atomic/AtomicLong')}
  0x00007f1949129bf0: and    $0x7ffff8,%ecx
  0x00007f1949129bf6: cmp    $0x0,%ecx
  0x00007f1949129bf9: je     0x00007f194912a135
  0x00007f1949129bff: mov    %rax,%rdi
  0x00007f1949129c02: mov    %rbx,%rax
  0x00007f1949129c05: mov    %rdi,%rbx
  0x00007f1949129c08: lea    0x10(%rsi),%rsi
  0x00007f1949129c0c: lock cmpxchg %rbx,(%rsi)
  0x00007f1949129c11: mov    $0x1,%esi
  0x00007f1949129c16: je     0x00007f1949129c21
  0x00007f1949129c1c: mov    $0x0,%esi          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::seedUniquifier@18 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129c21: cmp    $0x0,%esi
  0x00007f1949129c24: mov    $0x7f1921d76d68,%rsi  ;   {metadata(method data for {method} {0x00007f1921d71cf8} 'seedUniquifier' '()J' in 'java/util/Random')}
  0x00007f1949129c2e: mov    $0x168,%rbx
  0x00007f1949129c38: je     0x00007f1949129c48
  0x00007f1949129c3e: mov    $0x178,%rbx
  0x00007f1949129c48: mov    (%rsi,%rbx,1),%rax
  0x00007f1949129c4c: lea    0x1(%rax),%rax
  0x00007f1949129c50: mov    %rax,(%rsi,%rbx,1)
  0x00007f1949129c54: je     0x00007f1949129a08  ;*ifeq
                                                ; - java.util.Random::seedUniquifier@21 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129c5a: mov    %rdi,0xd0(%rsp)
  0x00007f1949129c62: mov    $0x7f1921d76bf0,%rdi  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949129c6c: addq   $0x1,0x118(%rdi)
  0x00007f1949129c74: mov    %rdx,%rdi
  0x00007f1949129c77: mov    $0x7f1921d76bf0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d71c48} '<init>' '()V' in 'java/util/Random')}
  0x00007f1949129c81: addq   $0x1,0x128(%rbx)
  0x00007f1949129c89: callq  0x00007f195d463670  ;*invokestatic nanoTime
                                                ; - java.util.Random::<init>@4 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f1949129c8e: mov    0xd0(%rsp),%rdx
  0x00007f1949129c96: xor    %rdx,%rax
  0x00007f1949129c99: mov    %rax,%rdx
  0x00007f1949129c9c: mov    0xd8(%rsp),%rsi    ;*invokespecial <init>
                                                ; - java.util.Random::<init>@8 (line 105)
                                                ; - MULT::init@4 (line 15)

  0x00007f1949129ca4: nop
  0x00007f1949129ca5: nop
  0x00007f1949129ca6: nop
  0x00007f1949129ca7: callq  0x00007f1948e2ad60  ; OopMap{[216]=Oop off=972}
                                                ;*invokespecial <init>
                                                ; - java.util.Random::<init>@8 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {optimized virtual_call}
  0x00007f1949129cac: mov    $0x0,%edi
  0x00007f1949129cb1: jmpq   0x00007f194912a05a  ;*iload_2
                                                ; - MULT::init@10 (line 16)

  0x00007f1949129cb6: xchg   %ax,%ax
  0x00007f1949129cb8: mov    $0x0,%ebx
  0x00007f1949129cbd: jmpq   0x00007f1949129fca  ;*iload_3
                                                ; - MULT::init@17 (line 17)

  0x00007f1949129cc2: nopw   0x0(%rax,%rax,1)
  0x00007f1949129cc8: mov    %ebx,0xe4(%rsp)
  0x00007f1949129ccf: mov    $0x6717da100,%rcx  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f1949129cd9: mov    0x60(%rcx),%edx
  0x00007f1949129cdc: shl    $0x3,%rdx          ;*getstatic A
                                                ; - MULT::init@22 (line 18)

  0x00007f1949129ce0: movslq %edi,%r8
  0x00007f1949129ce3: cmp    0xc(%rdx),%edi     ; implicit exception: dispatches to 0x00007f194912a14c
  0x00007f1949129ce6: jae    0x00007f194912a156
  0x00007f1949129cec: mov    0x10(%rdx,%r8,4),%r8d
  0x00007f1949129cf1: shl    $0x3,%r8           ;*aaload
                                                ; - MULT::init@26 (line 18)

  0x00007f1949129cf5: mov    %rax,%rdx
  0x00007f1949129cf8: mov    $0x7f1921f5b8a0,%r9  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129d02: mov    $0x7c0040fe0,%r10  ;   {metadata('java/util/Random')}
  0x00007f1949129d0c: mov    %r10,0x160(%r9)
  0x00007f1949129d13: addq   $0x1,0x168(%r9)
  0x00007f1949129d1b: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129d25: mov    0xdc(%rdx),%r9d
  0x00007f1949129d2c: add    $0x8,%r9d
  0x00007f1949129d30: mov    %r9d,0xdc(%rdx)
  0x00007f1949129d37: mov    $0x7f1921d72728,%rdx  ;   {metadata({method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129d41: and    $0x7ffff8,%r9d
  0x00007f1949129d48: cmp    $0x0,%r9d
  0x00007f1949129d4c: je     0x00007f194912a15f
  0x00007f1949129d52: mov    %rax,%rdx
  0x00007f1949129d55: mov    $0x7f1921d75a78,%r9  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129d5f: addq   $0x1,0x118(%r9)
  0x00007f1949129d67: mov    $0x1a,%edx
  0x00007f1949129d6c: mov    %rax,%rsi          ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f1949129d6f: mov    %edi,0xf8(%rsp)
  0x00007f1949129d76: mov    %rcx,0xf0(%rsp)
  0x00007f1949129d7e: mov    %r8,0xe8(%rsp)
  0x00007f1949129d86: nop
  0x00007f1949129d87: callq  0x00007f1948e2ad60  ; OopMap{[232]=Oop [240]=Oop [216]=Oop off=1196}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {optimized virtual_call}
  0x00007f1949129d8c: mov    0xd8(%rsp),%rcx
  0x00007f1949129d94: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129d9e: addq   $0x1,0x148(%rdx)
  0x00007f1949129da6: movslq %eax,%rax
  0x00007f1949129da9: mov    $0x1b,%ecx
  0x00007f1949129dae: shl    %cl,%rax
  0x00007f1949129db1: mov    $0x1b,%edx
  0x00007f1949129db6: mov    0xd8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f1949129dbe: mov    %rax,0x100(%rsp)
  0x00007f1949129dc6: nop
  0x00007f1949129dc7: callq  0x00007f1948e2ad60  ; OopMap{[232]=Oop [240]=Oop [216]=Oop off=1260}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {optimized virtual_call}
  0x00007f1949129dcc: movslq %eax,%rax
  0x00007f1949129dcf: mov    0x100(%rsp),%rdx
  0x00007f1949129dd7: add    %rax,%rdx
  0x00007f1949129dda: mov    %rdx,(%rsp)
  0x00007f1949129dde: fildll (%rsp)
  0x00007f1949129de1: fstpl  (%rsp)
  0x00007f1949129de4: vmovsd (%rsp),%xmm0
  0x00007f1949129de9: vmulsd -0x531(%rip),%xmm0,%xmm0        # 0x00007f19491298c0
                                                ;   {section_word}
  0x00007f1949129df1: mov    0xe4(%rsp),%ebx
  0x00007f1949129df8: movslq %ebx,%rdx
  0x00007f1949129dfb: mov    0xe8(%rsp),%r8
  0x00007f1949129e03: cmp    0xc(%r8),%ebx      ; implicit exception: dispatches to 0x00007f194912a176
  0x00007f1949129e07: jae    0x00007f194912a180
  0x00007f1949129e0d: vmovsd %xmm0,0x10(%r8,%rdx,8)  ;*dastore
                                                ; - MULT::init@32 (line 18)

  0x00007f1949129e14: mov    0xf0(%rsp),%rcx
  0x00007f1949129e1c: mov    0x64(%rcx),%edx
  0x00007f1949129e1f: shl    $0x3,%rdx          ;*getstatic B
                                                ; - MULT::init@33 (line 19)

  0x00007f1949129e23: mov    0xf8(%rsp),%edi
  0x00007f1949129e2a: movslq %edi,%rsi
  0x00007f1949129e2d: cmp    0xc(%rdx),%edi     ; implicit exception: dispatches to 0x00007f194912a189
  0x00007f1949129e30: jae    0x00007f194912a193
  0x00007f1949129e36: mov    0x10(%rdx,%rsi,4),%eax
  0x00007f1949129e3a: shl    $0x3,%rax          ;*aaload
                                                ; - MULT::init@37 (line 19)

  0x00007f1949129e3e: mov    0xd8(%rsp),%rdx
  0x00007f1949129e46: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129e50: mov    $0x7c0040fe0,%r10  ;   {metadata('java/util/Random')}
  0x00007f1949129e5a: mov    %r10,0x190(%rsi)
  0x00007f1949129e61: addq   $0x1,0x198(%rsi)
  0x00007f1949129e69: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129e73: mov    0xdc(%rdx),%esi
  0x00007f1949129e79: add    $0x8,%esi
  0x00007f1949129e7c: mov    %esi,0xdc(%rdx)
  0x00007f1949129e82: mov    $0x7f1921d72728,%rdx  ;   {metadata({method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129e8c: and    $0x7ffff8,%esi
  0x00007f1949129e92: cmp    $0x0,%esi
  0x00007f1949129e95: je     0x00007f194912a19c
  0x00007f1949129e9b: mov    0xd8(%rsp),%rdx
  0x00007f1949129ea3: mov    $0x7f1921d75a78,%rsi  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129ead: addq   $0x1,0x118(%rsi)
  0x00007f1949129eb5: mov    $0x1a,%edx
  0x00007f1949129eba: mov    0xd8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f1949129ec2: mov    %edi,0xf8(%rsp)
  0x00007f1949129ec9: mov    %rax,0x108(%rsp)
  0x00007f1949129ed1: mov    %ebx,0xe4(%rsp)
  0x00007f1949129ed8: nop
  0x00007f1949129ed9: nop
  0x00007f1949129eda: nop
  0x00007f1949129edb: nop
  0x00007f1949129edc: nop
  0x00007f1949129edd: nop
  0x00007f1949129ede: nop
  0x00007f1949129edf: callq  0x00007f1948e2ad60  ; OopMap{[216]=Oop [264]=Oop off=1540}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {optimized virtual_call}
  0x00007f1949129ee4: mov    0xd8(%rsp),%rcx
  0x00007f1949129eec: mov    $0x7f1921d75a78,%rdx  ;   {metadata(method data for {method} {0x00007f1921d72728} 'nextDouble' '()D' in 'java/util/Random')}
  0x00007f1949129ef6: addq   $0x1,0x148(%rdx)
  0x00007f1949129efe: movslq %eax,%rax
  0x00007f1949129f01: mov    $0x1b,%ecx
  0x00007f1949129f06: shl    %cl,%rax
  0x00007f1949129f09: mov    $0x1b,%edx
  0x00007f1949129f0e: mov    0xd8(%rsp),%rsi    ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f1949129f16: mov    %rax,0x110(%rsp)
  0x00007f1949129f1e: nop
  0x00007f1949129f1f: callq  0x00007f1948e2ad60  ; OopMap{[216]=Oop [264]=Oop off=1604}
                                                ;*invokevirtual next
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {optimized virtual_call}
  0x00007f1949129f24: movslq %eax,%rax
  0x00007f1949129f27: mov    0x110(%rsp),%rsi
  0x00007f1949129f2f: add    %rax,%rsi
  0x00007f1949129f32: mov    %rsi,(%rsp)
  0x00007f1949129f36: fildll (%rsp)
  0x00007f1949129f39: fstpl  (%rsp)
  0x00007f1949129f3c: vmovsd (%rsp),%xmm0
  0x00007f1949129f41: vmulsd -0x681(%rip),%xmm0,%xmm0        # 0x00007f19491298c8
                                                ;   {section_word}
  0x00007f1949129f49: mov    0xe4(%rsp),%ebx
  0x00007f1949129f50: movslq %ebx,%rsi
  0x00007f1949129f53: mov    0x108(%rsp),%rax
  0x00007f1949129f5b: cmp    0xc(%rax),%ebx     ; implicit exception: dispatches to 0x00007f194912a1b3
  0x00007f1949129f5e: jae    0x00007f194912a1bd
  0x00007f1949129f64: vmovsd %xmm0,0x10(%rax,%rsi,8)  ;*dastore
                                                ; - MULT::init@43 (line 19)

  0x00007f1949129f6a: inc    %ebx
  0x00007f1949129f6c: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129f76: mov    0xe0(%rsi),%edi
  0x00007f1949129f7c: add    $0x8,%edi
  0x00007f1949129f7f: mov    %edi,0xe0(%rsi)
  0x00007f1949129f85: mov    $0x7f1921f5b498,%rsi  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129f8f: and    $0xfff8,%edi
  0x00007f1949129f95: cmp    $0x0,%edi
  0x00007f1949129f98: je     0x00007f194912a1c6  ; OopMap{[216]=Oop off=1726}
                                                ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f1949129f9e: test   %eax,0x155fd15c(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949129fa4: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129fae: incl   0x1b8(%rsi)        ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f1949129fb4: mov    0xf8(%rsp),%edi
  0x00007f1949129fbb: mov    0xd8(%rsp),%rax
  0x00007f1949129fc3: mov    0xe0(%rsp),%esi
  0x00007f1949129fca: cmp    %esi,%ebx
  0x00007f1949129fcc: mov    $0x7f1921f5b8a0,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f1949129fd6: mov    $0x138,%rcx
  0x00007f1949129fe0: jge    0x00007f1949129ff0
  0x00007f1949129fe6: mov    $0x148,%rcx
  0x00007f1949129ff0: mov    (%rdx,%rcx,1),%r8
  0x00007f1949129ff4: lea    0x1(%r8),%r8
  0x00007f1949129ff8: mov    %r8,(%rdx,%rcx,1)
  0x00007f1949129ffc: jl     0x00007f1949129cc8  ;*if_icmpge
                                                ; - MULT::init@19 (line 17)

  0x00007f194912a002: mov    %edi,0xf8(%rsp)
  0x00007f194912a009: mov    0xf8(%rsp),%edi
  0x00007f194912a010: inc    %edi
  0x00007f194912a012: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912a01c: mov    0xe0(%rsi),%ebx
  0x00007f194912a022: add    $0x8,%ebx
  0x00007f194912a025: mov    %ebx,0xe0(%rsi)
  0x00007f194912a02b: mov    $0x7f1921f5b498,%rsi  ;   {metadata({method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912a035: and    $0xfff8,%ebx
  0x00007f194912a03b: cmp    $0x0,%ebx
  0x00007f194912a03e: je     0x00007f194912a1dd  ; OopMap{[216]=Oop off=1892}
                                                ;*goto
                                                ; - MULT::init@53 (line 16)

  0x00007f194912a044: test   %eax,0x155fd0b6(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912a04a: mov    $0x7f1921f5b8a0,%rsi  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912a054: incl   0x1d0(%rsi)        ;*goto
                                                ; - MULT::init@53 (line 16)

  0x00007f194912a05a: mov    0xd8(%rsp),%rax
  0x00007f194912a062: mov    0xe0(%rsp),%esi
  0x00007f194912a069: cmp    %esi,%edi
  0x00007f194912a06b: mov    $0x7f1921f5b8a0,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT')}
  0x00007f194912a075: mov    $0x118,%rbx
  0x00007f194912a07f: jge    0x00007f194912a08f
  0x00007f194912a085: mov    $0x128,%rbx
  0x00007f194912a08f: mov    (%rdx,%rbx,1),%rcx
  0x00007f194912a093: lea    0x1(%rcx),%rcx
  0x00007f194912a097: mov    %rcx,(%rdx,%rbx,1)
  0x00007f194912a09b: jl     0x00007f1949129cb8  ;*if_icmpge
                                                ; - MULT::init@12 (line 16)

  0x00007f194912a0a1: add    $0x120,%rsp
  0x00007f194912a0a8: pop    %rbp
  0x00007f194912a0a9: test   %eax,0x155fd051(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912a0af: retq
  0x00007f194912a0b0: mov    %rdx,0x8(%rsp)
  0x00007f194912a0b5: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a0bd: callq  0x00007f1948ee3420  ; OopMap{off=2018}
                                                ;*synchronization entry
                                                ; - MULT::init@-1 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a0c2: jmpq   0x00007f1949129928
  0x00007f194912a0c7: mov    %rdx,%rdx
  0x00007f194912a0ca: callq  0x00007f1948e527a0  ; OopMap{off=2031}
                                                ;*new  ; - MULT::init@0 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a0cf: jmpq   0x00007f194912996d
  0x00007f194912a0d4: mov    %rbx,0x8(%rsp)
  0x00007f194912a0d9: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a0e1: callq  0x00007f1948ee3420  ; OopMap{rax=Oop [216]=Oop off=2054}
                                                ;*synchronization entry
                                                ; - java.util.Random::<init>@-1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a0e6: jmpq   0x00007f19491299bc
  0x00007f194912a0eb: mov    %rbx,0x8(%rsp)
  0x00007f194912a0f0: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a0f8: callq  0x00007f1948ee3420  ; OopMap{rax=Oop [216]=Oop off=2077}
                                                ;*synchronization entry
                                                ; - java.util.Random::seedUniquifier@-1 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a0fd: jmpq   0x00007f1949129a00
  0x00007f194912a102: mov    %rsi,0x8(%rsp)
  0x00007f194912a107: movq   $0x1a,(%rsp)
  0x00007f194912a10f: callq  0x00007f1948ee3420  ; OopMap{rdx=Oop [216]=Oop off=2100}
                                                ;*goto
                                                ; - java.util.Random::seedUniquifier@26 (line 116)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a114: jmpq   0x00007f1949129a3a
  0x00007f194912a119: mov    %rbx,0x8(%rsp)
  0x00007f194912a11e: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a126: callq  0x00007f1948ee3420  ; OopMap{rax=Oop [216]=Oop rsi=Oop off=2123}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::get@-1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a12b: jmpq   0x00007f1949129b1f
  0x00007f194912a130: callq  0x00007f1948e530c0  ; OopMap{rax=Oop [216]=Oop rsi=Oop off=2133}
                                                ;*getfield value
                                                ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 105)
                                                ; - java.util.Random::seedUniquifier@3 (line 112)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a135: mov    %rdi,0x8(%rsp)
  0x00007f194912a13a: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a142: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rdx=Oop [216]=Oop off=2151}
                                                ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@-1 (line 147)
                                                ; - java.util.Random::seedUniquifier@18 (line 114)
                                                ; - java.util.Random::<init>@1 (line 105)
                                                ; - MULT::init@4 (line 15)
                                                ;   {runtime_call}
  0x00007f194912a147: jmpq   0x00007f1949129bff
  0x00007f194912a14c: callq  0x00007f1948e530c0  ; OopMap{rax=Oop [216]=Oop rcx=Oop rdx=Oop off=2161}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a151: callq  0x00007f1948e530c0  ; OopMap{rax=Oop [216]=Oop rcx=Oop rdx=Oop off=2166}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a156: mov    %rdi,(%rsp)
  0x00007f194912a15a: callq  0x00007f1948e53780  ; OopMap{rax=Oop [216]=Oop rcx=Oop rdx=Oop off=2175}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a15f: mov    %rdx,0x8(%rsp)
  0x00007f194912a164: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a16c: callq  0x00007f1948ee3420  ; OopMap{rax=Oop [216]=Oop rcx=Oop r8=Oop off=2193}
                                                ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a171: jmpq   0x00007f1949129d52
  0x00007f194912a176: callq  0x00007f1948e530c0  ; OopMap{[240]=Oop [216]=Oop r8=Oop off=2203}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a17b: callq  0x00007f1948e530c0  ; OopMap{[240]=Oop [216]=Oop r8=Oop off=2208}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a180: mov    %rbx,(%rsp)
  0x00007f194912a184: callq  0x00007f1948e53780  ; OopMap{[240]=Oop [216]=Oop r8=Oop off=2217}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f194912a189: callq  0x00007f1948e530c0  ; OopMap{[216]=Oop rdx=Oop off=2222}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a18e: callq  0x00007f1948e530c0  ; OopMap{[216]=Oop rdx=Oop off=2227}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a193: mov    %rdi,(%rsp)
  0x00007f194912a197: callq  0x00007f1948e53780  ; OopMap{[216]=Oop rdx=Oop off=2236}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a19c: mov    %rdx,0x8(%rsp)
  0x00007f194912a1a1: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912a1a9: callq  0x00007f1948ee3420  ; OopMap{[216]=Oop rax=Oop off=2254}
                                                ;*synchronization entry
                                                ; - java.util.Random::nextDouble@-1 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a1ae: jmpq   0x00007f1949129e9b
  0x00007f194912a1b3: callq  0x00007f1948e530c0  ; OopMap{[216]=Oop rax=Oop off=2264}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a1b8: callq  0x00007f1948e530c0  ; OopMap{[216]=Oop rax=Oop off=2269}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a1bd: mov    %rbx,(%rsp)
  0x00007f194912a1c1: callq  0x00007f1948e53780  ; OopMap{[216]=Oop rax=Oop off=2278}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912a1c6: mov    %rsi,0x8(%rsp)
  0x00007f194912a1cb: movq   $0x2f,(%rsp)
  0x00007f194912a1d3: callq  0x00007f1948ee3420  ; OopMap{[216]=Oop off=2296}
                                                ;*goto
                                                ; - MULT::init@47 (line 17)
                                                ;   {runtime_call}
  0x00007f194912a1d8: jmpq   0x00007f1949129f9e
  0x00007f194912a1dd: mov    %rsi,0x8(%rsp)
  0x00007f194912a1e2: movq   $0x35,(%rsp)
  0x00007f194912a1ea: callq  0x00007f1948ee3420  ; OopMap{[216]=Oop off=2319}
                                                ;*goto
                                                ; - MULT::init@53 (line 16)
                                                ;   {runtime_call}
  0x00007f194912a1ef: jmpq   0x00007f194912a044
  0x00007f194912a1f4: nop
  0x00007f194912a1f5: nop
  0x00007f194912a1f6: mov    0x298(%r15),%rax
  0x00007f194912a1fd: mov    $0x0,%r10
  0x00007f194912a207: mov    %r10,0x298(%r15)
  0x00007f194912a20e: mov    $0x0,%r10
  0x00007f194912a218: mov    %r10,0x2a0(%r15)
  0x00007f194912a21f: add    $0x120,%rsp
  0x00007f194912a226: pop    %rbp
  0x00007f194912a227: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912a22c: hlt
  0x00007f194912a22d: hlt
  0x00007f194912a22e: hlt
  0x00007f194912a22f: hlt
  0x00007f194912a230: hlt
  0x00007f194912a231: hlt
  0x00007f194912a232: hlt
  0x00007f194912a233: hlt
  0x00007f194912a234: hlt
  0x00007f194912a235: hlt
  0x00007f194912a236: hlt
  0x00007f194912a237: hlt
  0x00007f194912a238: hlt
  0x00007f194912a239: hlt
  0x00007f194912a23a: hlt
  0x00007f194912a23b: hlt
  0x00007f194912a23c: hlt
  0x00007f194912a23d: hlt
  0x00007f194912a23e: hlt
  0x00007f194912a23f: hlt
[Stub Code]
  0x00007f194912a240: nop                       ;   {no_reloc}
  0x00007f194912a241: nop
  0x00007f194912a242: nop
  0x00007f194912a243: nop
  0x00007f194912a244: nop
  0x00007f194912a245: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912a24f: jmpq   0x00007f194912a24f  ;   {runtime_call}
  0x00007f194912a254: nop
  0x00007f194912a255: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912a25f: jmpq   0x00007f194912a25f  ;   {runtime_call}
  0x00007f194912a264: nop
  0x00007f194912a265: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912a26f: jmpq   0x00007f194912a26f  ;   {runtime_call}
  0x00007f194912a274: nop
  0x00007f194912a275: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912a27f: jmpq   0x00007f194912a27f  ;   {runtime_call}
  0x00007f194912a284: nop
  0x00007f194912a285: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912a28f: jmpq   0x00007f194912a28f  ;   {runtime_call}
[Exception Handler]
  0x00007f194912a294: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f194912a299: mov    %rsp,-0x28(%rsp)
  0x00007f194912a29e: sub    $0x80,%rsp
  0x00007f194912a2a5: mov    %rax,0x78(%rsp)
  0x00007f194912a2aa: mov    %rcx,0x70(%rsp)
  0x00007f194912a2af: mov    %rdx,0x68(%rsp)
  0x00007f194912a2b4: mov    %rbx,0x60(%rsp)
  0x00007f194912a2b9: mov    %rbp,0x50(%rsp)
  0x00007f194912a2be: mov    %rsi,0x48(%rsp)
  0x00007f194912a2c3: mov    %rdi,0x40(%rsp)
  0x00007f194912a2c8: mov    %r8,0x38(%rsp)
  0x00007f194912a2cd: mov    %r9,0x30(%rsp)
  0x00007f194912a2d2: mov    %r10,0x28(%rsp)
  0x00007f194912a2d7: mov    %r11,0x20(%rsp)
  0x00007f194912a2dc: mov    %r12,0x18(%rsp)
  0x00007f194912a2e1: mov    %r13,0x10(%rsp)
  0x00007f194912a2e6: mov    %r14,0x8(%rsp)
  0x00007f194912a2eb: mov    %r15,(%rsp)
  0x00007f194912a2ef: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912a2f9: mov    $0x7f194912a299,%rsi  ;   {internal_word}
  0x00007f194912a303: mov    %rsp,%rdx
  0x00007f194912a306: and    $0xfffffffffffffff0,%rsp
  0x00007f194912a30a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912a30f: hlt
[Deopt Handler Code]
  0x00007f194912a310: mov    $0x7f194912a310,%r10  ;   {section_word}
  0x00007f194912a31a: push   %r10
  0x00007f194912a31c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912a321: hlt
  0x00007f194912a322: hlt
  0x00007f194912a323: hlt
  0x00007f194912a324: hlt
  0x00007f194912a325: hlt
  0x00007f194912a326: hlt
  0x00007f194912a327: hlt
Decoding compiled method 0x00007f194912b5d0:
Code:
[Constants]
  0x00007f194912b760 (offset:    0): 0x00000000   0x3ca0000000000000
  0x00007f194912b764 (offset:    4): 0x3ca00000
  0x00007f194912b768 (offset:    8): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f194912b76c (offset:   12): 0xf4f4f4f4
  0x00007f194912b770 (offset:   16): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f194912b774 (offset:   20): 0xf4f4f4f4
  0x00007f194912b778 (offset:   24): 0xf4f4f4f4   0xf4f4f4f4f4f4f4f4
  0x00007f194912b77c (offset:   28): 0xf4f4f4f4
[Entry Point]
[Verified Entry Point]
  # {method} {0x00007f1921f5b498} 'init' '(I)V' in 'MULT'
  0x00007f194912b780: callq  0x00007f195d462c60  ;   {no_reloc}
  0x00007f194912b785: nopw   0x0(%rax,%rax,1)
  0x00007f194912b790: mov    %eax,-0x14000(%rsp)
  0x00007f194912b797: push   %rbp
  0x00007f194912b798: sub    $0x30,%rsp
  0x00007f194912b79c: mov    (%rsi),%ebp
  0x00007f194912b79e: mov    0x10(%rsi),%r13
  0x00007f194912b7a2: mov    0x18(%rsi),%r14d
  0x00007f194912b7a6: mov    0x8(%rsi),%ebx
  0x00007f194912b7a9: mov    %rsi,%rdi
  0x00007f194912b7ac: mov    $0x7f195d4fe890,%r10
  0x00007f194912b7b6: callq  *%r10
  0x00007f194912b7b9: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x00007f194912bbcd
  0x00007f194912b7bd: cmp    $0xf80081fc,%r10d  ;   {metadata('java/util/Random')}
  0x00007f194912b7c4: jne    0x00007f194912bb1e  ;*iload_3
                                                ; - MULT::init@17 (line 17)

  0x00007f194912b7ca: mov    $0x6717da100,%rsi  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f194912b7d4: mov    $0xffffffffffff,%rdi
  0x00007f194912b7de: mov    $0x5deece66d,%r9
  0x00007f194912b7e8: jmp    0x00007f194912b803
  0x00007f194912b7ea: nopw   0x0(%rax,%rax,1)
  0x00007f194912b7f0: lea    (%r12,%rcx,8),%r10
  0x00007f194912b7f4: vmovsd %xmm0,0x10(%r10,%rbp,8)  ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f194912b7fb: inc    %ebp               ; OopMap{rsi=Oop r13=Oop off=125}
                                                ;*goto
                                                ; - MULT::init@47 (line 17)

  0x00007f194912b7fd: test   %eax,0x155fb7fd(%rip)        # 0x00007f195e727000
                                                ;*iload_3
                                                ; - MULT::init@17 (line 17)
                                                ;   {poll}
  0x00007f194912b803: cmp    %r14d,%ebp
  0x00007f194912b806: jge    0x00007f194912b99d  ;*if_icmpge
                                                ; - MULT::init@19 (line 17)

  0x00007f194912b80c: mov    0x60(%rsi),%r10d   ;*getstatic A
                                                ; - MULT::init@22 (line 18)

  0x00007f194912b810: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f194912bb3d
  0x00007f194912b815: cmp    %r8d,%ebx
  0x00007f194912b818: jae    0x00007f194912b9af  ;*aaload
                                                ; - MULT::init@26 (line 18)

  0x00007f194912b81e: mov    0x18(%r13),%r11d   ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b822: mov    0x10(%r12,%r11,8),%rax  ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::get@-1 (line 105)
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ; implicit exception: dispatches to 0x00007f194912bb51
  0x00007f194912b827: mov    %rax,%rcx
  0x00007f194912b82a: imul   %r9,%rcx
  0x00007f194912b82e: shl    $0x3,%r10
  0x00007f194912b832: mov    0x10(%r10,%rbx,4),%r10d  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b837: add    $0xb,%rcx
  0x00007f194912b83b: and    %rdi,%rcx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b83e: lock cmpxchg %rcx,0x10(%r12,%r11,8)
  0x00007f194912b845: sete   %r8b
  0x00007f194912b849: movzbl %r8b,%r8d          ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b84d: test   %r8d,%r8d
  0x00007f194912b850: je     0x00007f194912ba20  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b856: mov    0x18(%r13),%r8d    ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b85a: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ; implicit exception: dispatches to 0x00007f194912bb61
  0x00007f194912b85f: mov    %rax,%rdx
  0x00007f194912b862: imul   %r9,%rdx
  0x00007f194912b866: shr    $0x16,%rcx
  0x00007f194912b86a: add    $0xb,%rdx
  0x00007f194912b86e: and    %rdi,%rdx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b871: lock cmpxchg %rdx,0x10(%r12,%r8,8)
  0x00007f194912b878: sete   %r11b
  0x00007f194912b87c: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b880: mov    %ecx,%ecx
  0x00007f194912b882: movslq %ecx,%rcx
  0x00007f194912b885: shl    $0x1b,%rcx         ;*lshl
                                                ; - java.util.Random::nextDouble@9 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b889: test   %r11d,%r11d
  0x00007f194912b88c: je     0x00007f194912ba60  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912b892: shr    $0x15,%rdx
  0x00007f194912b896: mov    %edx,%r11d
  0x00007f194912b899: movslq %r11d,%r11
  0x00007f194912b89c: add    %rcx,%r11
  0x00007f194912b89f: vcvtsi2sd %r11,%xmm0,%xmm0
  0x00007f194912b8a4: vmulsd -0x14c(%rip),%xmm0,%xmm0        # 0x00007f194912b760
                                                ;*dmul
                                                ; - java.util.Random::nextDouble@22 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {section_word}
  0x00007f194912b8ac: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f194912bb71
  0x00007f194912b8b1: cmp    %r11d,%ebp
  0x00007f194912b8b4: jae    0x00007f194912b9d1  ;*dastore
                                                ; - MULT::init@32 (line 18)

  0x00007f194912b8ba: mov    0x64(%rsi),%r11d   ;*getstatic B
                                                ; - MULT::init@33 (line 19)

  0x00007f194912b8be: shl    $0x3,%r10
  0x00007f194912b8c2: vmovsd %xmm0,0x10(%r10,%rbp,8)  ;*dastore
                                                ; - MULT::init@32 (line 18)

  0x00007f194912b8c9: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f194912bb85
  0x00007f194912b8ce: cmp    %r8d,%ebx
  0x00007f194912b8d1: jae    0x00007f194912b9f9  ;*aaload
                                                ; - MULT::init@37 (line 19)

  0x00007f194912b8d7: mov    0x18(%r13),%r10d   ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b8db: mov    0x10(%r12,%r10,8),%rax  ;*synchronization entry
                                                ; - java.util.concurrent.atomic.AtomicLong::get@-1 (line 105)
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ; implicit exception: dispatches to 0x00007f194912bb99
  0x00007f194912b8e0: mov    %rax,%r8
  0x00007f194912b8e3: imul   %r9,%r8
  0x00007f194912b8e7: shl    $0x3,%r11
  0x00007f194912b8eb: mov    0x10(%r11,%rbx,4),%ecx  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b8f0: add    $0xb,%r8
  0x00007f194912b8f4: and    %rdi,%r8           ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b8f7: lock cmpxchg %r8,0x10(%r12,%r10,8)
  0x00007f194912b8fe: sete   %r11b
  0x00007f194912b902: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b906: test   %r11d,%r11d
  0x00007f194912b909: je     0x00007f194912baa0  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b90f: mov    0x18(%r13),%r10d   ;*getfield seed
                                                ; - java.util.Random::next@1 (line 200)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b913: mov    0x10(%r12,%r10,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ; implicit exception: dispatches to 0x00007f194912bba9
  0x00007f194912b918: mov    %rax,%rdx
  0x00007f194912b91b: imul   %r9,%rdx
  0x00007f194912b91f: shr    $0x16,%r8
  0x00007f194912b923: add    $0xb,%rdx
  0x00007f194912b927: and    %rdi,%rdx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b92a: lock cmpxchg %rdx,0x10(%r12,%r10,8)
  0x00007f194912b931: sete   %r11b
  0x00007f194912b935: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b939: mov    %r8d,%r8d
  0x00007f194912b93c: movslq %r8d,%r8
  0x00007f194912b93f: shl    $0x1b,%r8          ;*lshl
                                                ; - java.util.Random::nextDouble@9 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b943: test   %r11d,%r11d
  0x00007f194912b946: je     0x00007f194912bae0  ;*lload
                                                ; - java.util.Random::next@38 (line 205)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912b94c: shr    $0x15,%rdx
  0x00007f194912b950: mov    %edx,%r10d
  0x00007f194912b953: movslq %r10d,%r10
  0x00007f194912b956: add    %r8,%r10
  0x00007f194912b959: vcvtsi2sd %r10,%xmm0,%xmm0
  0x00007f194912b95e: vmulsd -0x206(%rip),%xmm0,%xmm0        # 0x00007f194912b760
                                                ;*dmul
                                                ; - java.util.Random::nextDouble@22 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {section_word}
  0x00007f194912b966: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f194912bbb9
  0x00007f194912b96b: cmp    %r10d,%ebp
  0x00007f194912b96e: jb     0x00007f194912b7f0
  0x00007f194912b974: mov    $0xffffffe4,%esi
  0x00007f194912b979: mov    %r14d,(%rsp)
  0x00007f194912b97d: mov    %r13,0x8(%rsp)
  0x00007f194912b982: mov    %ebx,0x4(%rsp)
  0x00007f194912b986: mov    %ecx,0x10(%rsp)
  0x00007f194912b98a: vmovsd %xmm0,0x18(%rsp)
  0x00007f194912b990: xchg   %ax,%ax
  0x00007f194912b993: callq  0x00007f1948de9ee0  ; OopMap{[8]=Oop [16]=NarrowOop off=536}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912b998: callq  0x00007f195d462c60  ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912b99d: inc    %ebx               ;*iinc
                                                ; - MULT::init@50 (line 16)

  0x00007f194912b99f: cmp    %r14d,%ebx
  0x00007f194912b9a2: jge    0x00007f194912bb12  ;*if_icmpge
                                                ; - MULT::init@12 (line 16)

  0x00007f194912b9a8: xor    %ebp,%ebp
  0x00007f194912b9aa: jmpq   0x00007f194912b803
  0x00007f194912b9af: mov    $0xffffffe4,%esi
  0x00007f194912b9b4: mov    %r14d,(%rsp)
  0x00007f194912b9b8: mov    %r13,0x8(%rsp)
  0x00007f194912b9bd: mov    %r10d,0x10(%rsp)
  0x00007f194912b9c2: mov    %ebx,0x14(%rsp)
  0x00007f194912b9c6: nop
  0x00007f194912b9c7: callq  0x00007f1948de9ee0  ; OopMap{[8]=Oop [16]=NarrowOop off=588}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912b9cc: callq  0x00007f195d462c60  ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912b9d1: mov    $0xffffffe4,%esi
  0x00007f194912b9d6: mov    %r14d,(%rsp)
  0x00007f194912b9da: mov    %r13,0x8(%rsp)
  0x00007f194912b9df: mov    %ebx,0x4(%rsp)
  0x00007f194912b9e3: mov    %r10d,0x10(%rsp)
  0x00007f194912b9e8: vmovsd %xmm0,0x18(%rsp)
  0x00007f194912b9ee: nop
  0x00007f194912b9ef: callq  0x00007f1948de9ee0  ; OopMap{[8]=Oop [16]=NarrowOop off=628}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f194912b9f4: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912b9f9: mov    $0xffffffe4,%esi
  0x00007f194912b9fe: mov    %r14d,(%rsp)
  0x00007f194912ba02: mov    %r13,0x8(%rsp)
  0x00007f194912ba07: mov    %r11d,0x10(%rsp)
  0x00007f194912ba0c: mov    %ebx,0x14(%rsp)
  0x00007f194912ba10: xchg   %ax,%ax
  0x00007f194912ba13: callq  0x00007f1948de9ee0  ; OopMap{[8]=Oop [16]=NarrowOop off=664}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912ba18: callq  0x00007f195d462c60  ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912ba1d: xchg   %ax,%ax            ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba20: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba25: mov    %rax,%rcx
  0x00007f194912ba28: imul   %r9,%rcx
  0x00007f194912ba2c: add    $0xb,%rcx
  0x00007f194912ba30: and    %rdi,%rcx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba33: lock cmpxchg %rcx,0x10(%r12,%r11,8)
  0x00007f194912ba3a: sete   %r8b
  0x00007f194912ba3e: movzbl %r8b,%r8d          ; OopMap{r10=NarrowOop r11=NarrowOop rsi=Oop r13=Oop off=706}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba42: test   %eax,0x155fb5b8(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f194912ba48: test   %r8d,%r8d
  0x00007f194912ba4b: je     0x00007f194912ba20  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba4d: jmpq   0x00007f194912b856
  0x00007f194912ba52: nopw   0x0(%rax,%rax,1)
  0x00007f194912ba5c: xchg   %ax,%ax            ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba60: mov    0x10(%r12,%r8,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba65: mov    %rax,%rdx
  0x00007f194912ba68: imul   %r9,%rdx
  0x00007f194912ba6c: add    $0xb,%rdx
  0x00007f194912ba70: and    %rdi,%rdx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba73: lock cmpxchg %rdx,0x10(%r12,%r8,8)
  0x00007f194912ba7a: sete   %r11b
  0x00007f194912ba7e: movzbl %r11b,%r11d        ; OopMap{r10=NarrowOop r8=NarrowOop rsi=Oop r13=Oop off=770}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba82: test   %eax,0x155fb578(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f194912ba88: test   %r11d,%r11d
  0x00007f194912ba8b: je     0x00007f194912ba60  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)

  0x00007f194912ba8d: jmpq   0x00007f194912b892
  0x00007f194912ba92: nopw   0x0(%rax,%rax,1)
  0x00007f194912ba9c: xchg   %ax,%ax            ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912baa0: mov    0x10(%r12,%r10,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912baa5: mov    %rax,%r8
  0x00007f194912baa8: imul   %r9,%r8
  0x00007f194912baac: add    $0xb,%r8
  0x00007f194912bab0: and    %rdi,%r8           ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bab3: lock cmpxchg %r8,0x10(%r12,%r10,8)
  0x00007f194912baba: sete   %r11b
  0x00007f194912babe: movzbl %r11b,%r11d        ; OopMap{r10=NarrowOop rcx=NarrowOop rsi=Oop r13=Oop off=834}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bac2: test   %eax,0x155fb538(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f194912bac8: test   %r11d,%r11d
  0x00007f194912bacb: je     0x00007f194912baa0  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bacd: jmpq   0x00007f194912b90f
  0x00007f194912bad2: nopw   0x0(%rax,%rax,1)
  0x00007f194912badc: xchg   %ax,%ax            ;*aload
                                                ; - java.util.Random::next@6 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bae0: mov    0x10(%r12,%r10,8),%rax  ;*invokevirtual compareAndSwapLong
                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                ; - java.util.Random::next@32 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bae5: mov    %rax,%rdx
  0x00007f194912bae8: imul   %r9,%rdx
  0x00007f194912baec: add    $0xb,%rdx
  0x00007f194912baf0: and    %rdi,%rdx          ;*land
                                                ; - java.util.Random::next@24 (line 203)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912baf3: lock cmpxchg %rdx,0x10(%r12,%r10,8)
  0x00007f194912bafa: sete   %r11b
  0x00007f194912bafe: movzbl %r11b,%r11d        ; OopMap{r10=NarrowOop rcx=NarrowOop rsi=Oop r13=Oop off=898}
                                                ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bb02: test   %eax,0x155fb4f8(%rip)        # 0x00007f195e727000
                                                ;   {poll}
  0x00007f194912bb08: test   %r11d,%r11d
  0x00007f194912bb0b: je     0x00007f194912bae0  ;*ifeq
                                                ; - java.util.Random::next@35 (line 204)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)

  0x00007f194912bb0d: jmpq   0x00007f194912b94c
  0x00007f194912bb12: add    $0x30,%rsp
  0x00007f194912bb16: pop    %rbp
  0x00007f194912bb17: test   %eax,0x155fb4e3(%rip)        # 0x00007f195e727000
                                                ;   {poll_return}
  0x00007f194912bb1d: retq
  0x00007f194912bb1e: mov    $0xffffff9d,%esi
  0x00007f194912bb23: mov    %r14d,(%rsp)
  0x00007f194912bb27: mov    %r13,0x8(%rsp)
  0x00007f194912bb2c: mov    %ebx,0x4(%rsp)
  0x00007f194912bb30: xchg   %ax,%ax
  0x00007f194912bb33: callq  0x00007f1948de9ee0  ; OopMap{[8]=Oop off=952}
                                                ;*iload_3
                                                ; - MULT::init@17 (line 17)
                                                ;   {runtime_call}
  0x00007f194912bb38: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912bb3d: mov    $0xfffffff6,%esi
  0x00007f194912bb42: mov    %ebx,%ebp
  0x00007f194912bb44: xchg   %ax,%ax
  0x00007f194912bb47: callq  0x00007f1948de9ee0  ; OopMap{off=972}
                                                ;*aaload
                                                ; - MULT::init@26 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb4c: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912bb51: mov    $0xfffffff6,%esi
  0x00007f194912bb56: nop
  0x00007f194912bb57: callq  0x00007f1948de9ee0  ; OopMap{off=988}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb5c: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb61: mov    $0xfffffff6,%esi
  0x00007f194912bb66: nop
  0x00007f194912bb67: callq  0x00007f1948de9ee0  ; OopMap{off=1004}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb6c: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@29 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb71: mov    $0xfffffff6,%esi
  0x00007f194912bb76: vmovsd %xmm0,(%rsp)
  0x00007f194912bb7b: callq  0x00007f1948de9ee0  ; OopMap{off=1024}
                                                ;*dastore
                                                ; - MULT::init@32 (line 18)
                                                ;   {runtime_call}
  0x00007f194912bb80: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912bb85: mov    $0xfffffff6,%esi
  0x00007f194912bb8a: mov    %ebx,%ebp
  0x00007f194912bb8c: xchg   %ax,%ax
  0x00007f194912bb8f: callq  0x00007f1948de9ee0  ; OopMap{off=1044}
                                                ;*aaload
                                                ; - MULT::init@37 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bb94: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912bb99: mov    $0xfffffff6,%esi
  0x00007f194912bb9e: nop
  0x00007f194912bb9f: callq  0x00007f1948de9ee0  ; OopMap{off=1060}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bba4: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@3 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bba9: mov    $0xfffffff6,%esi
  0x00007f194912bbae: nop
  0x00007f194912bbaf: callq  0x00007f1948de9ee0  ; OopMap{off=1076}
                                                ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bbb4: callq  0x00007f195d462c60  ;*invokevirtual get
                                                ; - java.util.Random::next@8 (line 202)
                                                ; - java.util.Random::nextDouble@13 (line 532)
                                                ; - MULT::init@40 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bbb9: mov    $0xfffffff6,%esi
  0x00007f194912bbbe: vmovsd %xmm0,(%rsp)
  0x00007f194912bbc3: callq  0x00007f1948de9ee0  ; OopMap{off=1096}
                                                ;*dastore
                                                ; - MULT::init@43 (line 19)
                                                ;   {runtime_call}
  0x00007f194912bbc8: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912bbcd: mov    $0xffffff86,%esi
  0x00007f194912bbd2: mov    %r14d,(%rsp)
  0x00007f194912bbd6: mov    %ebx,0x4(%rsp)
  0x00007f194912bbda: nop
  0x00007f194912bbdb: callq  0x00007f1948de9ee0  ; OopMap{off=1120}
                                                ;*iload_3
                                                ; - MULT::init@17 (line 17)
                                                ;   {runtime_call}
  0x00007f194912bbe0: callq  0x00007f195d462c60  ;*iload_3
                                                ; - MULT::init@17 (line 17)
                                                ;   {runtime_call}
  0x00007f194912bbe5: hlt
  0x00007f194912bbe6: hlt
  0x00007f194912bbe7: hlt
  0x00007f194912bbe8: hlt
  0x00007f194912bbe9: hlt
  0x00007f194912bbea: hlt
  0x00007f194912bbeb: hlt
  0x00007f194912bbec: hlt
  0x00007f194912bbed: hlt
  0x00007f194912bbee: hlt
  0x00007f194912bbef: hlt
  0x00007f194912bbf0: hlt
  0x00007f194912bbf1: hlt
  0x00007f194912bbf2: hlt
  0x00007f194912bbf3: hlt
  0x00007f194912bbf4: hlt
  0x00007f194912bbf5: hlt
  0x00007f194912bbf6: hlt
  0x00007f194912bbf7: hlt
  0x00007f194912bbf8: hlt
  0x00007f194912bbf9: hlt
  0x00007f194912bbfa: hlt
  0x00007f194912bbfb: hlt
  0x00007f194912bbfc: hlt
  0x00007f194912bbfd: hlt
  0x00007f194912bbfe: hlt
  0x00007f194912bbff: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912bc00: jmpq   0x00007f1948e510e0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f194912bc05: callq  0x00007f194912bc0a
  0x00007f194912bc0a: subq   $0x5,(%rsp)
  0x00007f194912bc0f: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912bc14: hlt
  0x00007f194912bc15: hlt
  0x00007f194912bc16: hlt
  0x00007f194912bc17: hlt
Decoding compiled method 0x00007f1949128650:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT'
  0x00007f1949128800: mov    %eax,-0x14000(%rsp)
  0x00007f1949128807: push   %rbp
  0x00007f1949128808: sub    $0x60,%rsp
  0x00007f194912880c: mov    $0x7f1921f5bae8,%rdi  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128816: mov    0xdc(%rdi),%ebx
  0x00007f194912881c: add    $0x8,%ebx
  0x00007f194912881f: mov    %ebx,0xdc(%rdi)
  0x00007f1949128825: mov    $0x7f1921f5b5a0,%rdi  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912882f: and    $0x1ff8,%ebx
  0x00007f1949128835: cmp    $0x0,%ebx
  0x00007f1949128838: je     0x00007f1949128b40  ;*iconst_0
                                                ; - MULT::mmult@0 (line 25)

  0x00007f194912883e: mov    $0x0,%edi          ;*iload_1
                                                ; - MULT::mmult@2 (line 25)

  0x00007f1949128843: nopl   0x0(%rax,%rax,1)
  0x00007f1949128848: cmp    %esi,%edi
  0x00007f194912884a: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128854: mov    $0x108,%rax
  0x00007f194912885e: jge    0x00007f194912886e
  0x00007f1949128864: mov    $0x118,%rax
  0x00007f194912886e: mov    (%rbx,%rax,1),%rdx
  0x00007f1949128872: lea    0x1(%rdx),%rdx
  0x00007f1949128876: mov    %rdx,(%rbx,%rax,1)
  0x00007f194912887a: jge    0x00007f1949128ae7  ;*if_icmpge
                                                ; - MULT::mmult@4 (line 25)

  0x00007f1949128880: mov    $0x0,%ebx
  0x00007f1949128885: jmpq   0x00007f1949128a60  ;*iload_2
                                                ; - MULT::mmult@9 (line 26)

  0x00007f194912888a: nopw   0x0(%rax,%rax,1)
  0x00007f1949128890: mov    $0x6717da100,%rax  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f194912889a: mov    0x68(%rax),%eax
  0x00007f194912889d: shl    $0x3,%rax          ;*getstatic C
                                                ; - MULT::mmult@14 (line 27)

  0x00007f19491288a1: movslq %edi,%rdx
  0x00007f19491288a4: cmp    0xc(%rax),%edi     ; implicit exception: dispatches to 0x00007f1949128b57
  0x00007f19491288a7: jae    0x00007f1949128b61
  0x00007f19491288ad: mov    0x10(%rax,%rdx,4),%eax
  0x00007f19491288b1: shl    $0x3,%rax          ;*aaload
                                                ; - MULT::mmult@18 (line 27)

  0x00007f19491288b5: movslq %ebx,%rdx
  0x00007f19491288b8: cmp    0xc(%rax),%ebx     ; implicit exception: dispatches to 0x00007f1949128b6a
  0x00007f19491288bb: jae    0x00007f1949128b74
  0x00007f19491288c1: mov    $0x0,%r10
  0x00007f19491288cb: mov    %r10,0x10(%rax,%rdx,8)  ;*dastore
                                                ; - MULT::mmult@21 (line 27)

  0x00007f19491288d0: mov    $0x0,%eax
  0x00007f19491288d5: jmpq   0x00007f19491289de  ;*iload_3
                                                ; - MULT::mmult@24 (line 28)

  0x00007f19491288da: nopw   0x0(%rax,%rax,1)
  0x00007f19491288e0: mov    $0x6717da100,%rdx  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f19491288ea: mov    0x68(%rdx),%ecx
  0x00007f19491288ed: shl    $0x3,%rcx          ;*getstatic C
                                                ; - MULT::mmult@29 (line 29)

  0x00007f19491288f1: movslq %edi,%r8
  0x00007f19491288f4: cmp    0xc(%rcx),%edi     ; implicit exception: dispatches to 0x00007f1949128b7d
  0x00007f19491288f7: jae    0x00007f1949128b87
  0x00007f19491288fd: mov    0x10(%rcx,%r8,4),%ecx
  0x00007f1949128902: shl    $0x3,%rcx          ;*aaload
                                                ; - MULT::mmult@33 (line 29)

  0x00007f1949128906: movslq %ebx,%r8
  0x00007f1949128909: cmp    0xc(%rcx),%ebx     ; implicit exception: dispatches to 0x00007f1949128b90
  0x00007f194912890c: jae    0x00007f1949128b9a
  0x00007f1949128912: vmovsd 0x10(%rcx,%r8,8),%xmm0  ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f1949128919: mov    0x60(%rdx),%r8d
  0x00007f194912891d: shl    $0x3,%r8           ;*getstatic A
                                                ; - MULT::mmult@37 (line 29)

  0x00007f1949128921: movslq %edi,%r9
  0x00007f1949128924: cmp    0xc(%r8),%edi      ; implicit exception: dispatches to 0x00007f1949128ba3
  0x00007f1949128928: jae    0x00007f1949128bad
  0x00007f194912892e: mov    0x10(%r8,%r9,4),%r8d
  0x00007f1949128933: shl    $0x3,%r8           ;*aaload
                                                ; - MULT::mmult@41 (line 29)

  0x00007f1949128937: movslq %eax,%r9
  0x00007f194912893a: cmp    0xc(%r8),%eax      ; implicit exception: dispatches to 0x00007f1949128bb6
  0x00007f194912893e: jae    0x00007f1949128bc0
  0x00007f1949128944: vmovsd 0x10(%r8,%r9,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912894b: mov    0x64(%rdx),%edx
  0x00007f194912894e: shl    $0x3,%rdx          ;*getstatic B
                                                ; - MULT::mmult@44 (line 29)

  0x00007f1949128952: movslq %eax,%r8
  0x00007f1949128955: cmp    0xc(%rdx),%eax     ; implicit exception: dispatches to 0x00007f1949128bc9
  0x00007f1949128958: jae    0x00007f1949128bd3
  0x00007f194912895e: mov    0x10(%rdx,%r8,4),%edx
  0x00007f1949128963: shl    $0x3,%rdx          ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f1949128967: movslq %ebx,%r8
  0x00007f194912896a: cmp    0xc(%rdx),%ebx     ; implicit exception: dispatches to 0x00007f1949128bdc
  0x00007f194912896d: jae    0x00007f1949128be6
  0x00007f1949128973: vmovsd 0x10(%rdx,%r8,8),%xmm2  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912897a: vmulsd %xmm2,%xmm1,%xmm1
  0x00007f194912897e: vaddsd %xmm1,%xmm0,%xmm0
  0x00007f1949128982: movslq %ebx,%rdx
  0x00007f1949128985: cmp    0xc(%rcx),%ebx
  0x00007f1949128988: jae    0x00007f1949128bef
  0x00007f194912898e: vmovsd %xmm0,0x10(%rcx,%rdx,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f1949128994: inc    %eax
  0x00007f1949128996: mov    $0x7f1921f5bae8,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f19491289a0: mov    0xe0(%rdx),%ecx
  0x00007f19491289a6: add    $0x8,%ecx
  0x00007f19491289a9: mov    %ecx,0xe0(%rdx)
  0x00007f19491289af: mov    $0x7f1921f5b5a0,%rdx  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f19491289b9: and    $0xfff8,%ecx
  0x00007f19491289bf: cmp    $0x0,%ecx
  0x00007f19491289c2: je     0x00007f1949128bf8  ; OopMap{off=456}
                                                ;*goto
                                                ; - MULT::mmult@57 (line 28)

  0x00007f19491289c8: test   %eax,0x155fe732(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f19491289ce: mov    $0x7f1921f5bae8,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f19491289d8: incl   0x168(%rdx)        ;*goto
                                                ; - MULT::mmult@57 (line 28)

  0x00007f19491289de: cmp    %esi,%eax
  0x00007f19491289e0: mov    $0x7f1921f5bae8,%rdx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f19491289ea: mov    $0x148,%rcx
  0x00007f19491289f4: jge    0x00007f1949128a04
  0x00007f19491289fa: mov    $0x158,%rcx
  0x00007f1949128a04: mov    (%rdx,%rcx,1),%r8
  0x00007f1949128a08: lea    0x1(%r8),%r8
  0x00007f1949128a0c: mov    %r8,(%rdx,%rcx,1)
  0x00007f1949128a10: jl     0x00007f19491288e0  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f1949128a16: inc    %ebx
  0x00007f1949128a18: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128a22: mov    0xe0(%rax),%edx
  0x00007f1949128a28: add    $0x8,%edx
  0x00007f1949128a2b: mov    %edx,0xe0(%rax)
  0x00007f1949128a31: mov    $0x7f1921f5b5a0,%rax  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128a3b: and    $0xfff8,%edx
  0x00007f1949128a41: cmp    $0x0,%edx
  0x00007f1949128a44: je     0x00007f1949128c0f  ; OopMap{off=586}
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f1949128a4a: test   %eax,0x155fe6b0(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949128a50: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128a5a: incl   0x180(%rax)        ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f1949128a60: cmp    %esi,%ebx
  0x00007f1949128a62: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128a6c: mov    $0x128,%rdx
  0x00007f1949128a76: jge    0x00007f1949128a86
  0x00007f1949128a7c: mov    $0x138,%rdx
  0x00007f1949128a86: mov    (%rax,%rdx,1),%rcx
  0x00007f1949128a8a: lea    0x1(%rcx),%rcx
  0x00007f1949128a8e: mov    %rcx,(%rax,%rdx,1)
  0x00007f1949128a92: jl     0x00007f1949128890  ;*if_icmpge
                                                ; - MULT::mmult@11 (line 26)

  0x00007f1949128a98: inc    %edi
  0x00007f1949128a9a: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128aa4: mov    0xe0(%rbx),%eax
  0x00007f1949128aaa: add    $0x8,%eax
  0x00007f1949128aad: mov    %eax,0xe0(%rbx)
  0x00007f1949128ab3: mov    $0x7f1921f5b5a0,%rbx  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128abd: and    $0xfff8,%eax
  0x00007f1949128ac3: cmp    $0x0,%eax
  0x00007f1949128ac6: je     0x00007f1949128c26  ; OopMap{off=716}
                                                ;*goto
                                                ; - MULT::mmult@69 (line 25)

  0x00007f1949128acc: test   %eax,0x155fe62e(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f1949128ad2: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f1949128adc: incl   0x198(%rbx)
  0x00007f1949128ae2: jmpq   0x00007f1949128848  ;*goto
                                                ; - MULT::mmult@69 (line 25)

  0x00007f1949128ae7: add    $0x60,%rsp
  0x00007f1949128aeb: pop    %rbp
  0x00007f1949128aec: test   %eax,0x155fe60e(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f1949128af2: retq                      ;*return
                                                ; - MULT::mmult@72 (line 33)

  0x00007f1949128af3: mov    %eax,-0x14000(%rsp)
  0x00007f1949128afa: push   %rbp
  0x00007f1949128afb: sub    $0x60,%rsp
  0x00007f1949128aff: mov    0x18(%rsi),%ebx
  0x00007f1949128b02: mov    0x10(%rsi),%eax
  0x00007f1949128b05: mov    0x8(%rsi),%edx
  0x00007f1949128b08: mov    (%rsi),%ecx
  0x00007f1949128b0a: mov    %rsi,%rdi
  0x00007f1949128b0d: mov    %ebx,0x54(%rsp)
  0x00007f1949128b11: mov    %eax,0x50(%rsp)
  0x00007f1949128b15: mov    %edx,0x4c(%rsp)
  0x00007f1949128b19: mov    %ecx,0x48(%rsp)
  0x00007f1949128b1d: callq  0x00007f195d4fe890  ;   {runtime_call}
  0x00007f1949128b22: mov    0x48(%rsp),%ecx
  0x00007f1949128b26: mov    %rcx,%rax
  0x00007f1949128b29: mov    0x4c(%rsp),%edx
  0x00007f1949128b2d: mov    %rdx,%rbx
  0x00007f1949128b30: mov    0x50(%rsp),%esi
  0x00007f1949128b34: mov    %rsi,%rdi
  0x00007f1949128b37: mov    0x54(%rsp),%esi
  0x00007f1949128b3b: jmpq   0x00007f19491289de
  0x00007f1949128b40: mov    %rdi,0x8(%rsp)
  0x00007f1949128b45: movq   $0xffffffffffffffff,(%rsp)
  0x00007f1949128b4d: callq  0x00007f1948ee3420  ; OopMap{off=850}
                                                ;*synchronization entry
                                                ; - MULT::mmult@-1 (line 25)
                                                ;   {runtime_call}
  0x00007f1949128b52: jmpq   0x00007f194912883e
  0x00007f1949128b57: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=860}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b5c: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=865}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b61: mov    %rdi,(%rsp)
  0x00007f1949128b65: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=874}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b6a: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=879}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b6f: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=884}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b74: mov    %rbx,(%rsp)
  0x00007f1949128b78: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=893}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f1949128b7d: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop off=898}
                                                ;*aaload
                                                ; - MULT::mmult@33 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128b82: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop off=903}
                                                ;*aaload
                                                ; - MULT::mmult@33 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128b87: mov    %rdi,(%rsp)
  0x00007f1949128b8b: callq  0x00007f1948e53780  ; OopMap{rdx=Oop rcx=Oop off=912}
                                                ;*aaload
                                                ; - MULT::mmult@33 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128b90: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop off=917}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128b95: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop off=922}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128b9a: mov    %rbx,(%rsp)
  0x00007f1949128b9e: callq  0x00007f1948e53780  ; OopMap{rdx=Oop rcx=Oop off=931}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128ba3: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=936}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128ba8: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=941}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bad: mov    %rdi,(%rsp)
  0x00007f1949128bb1: callq  0x00007f1948e53780  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=950}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bb6: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=955}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bbb: callq  0x00007f1948e530c0  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=960}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bc0: mov    %rax,(%rsp)
  0x00007f1949128bc4: callq  0x00007f1948e53780  ; OopMap{rdx=Oop rcx=Oop r8=Oop off=969}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bc9: callq  0x00007f1948e530c0  ; OopMap{rcx=Oop rdx=Oop off=974}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bce: callq  0x00007f1948e530c0  ; OopMap{rcx=Oop rdx=Oop off=979}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bd3: mov    %rax,(%rsp)
  0x00007f1949128bd7: callq  0x00007f1948e53780  ; OopMap{rcx=Oop rdx=Oop off=988}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bdc: callq  0x00007f1948e530c0  ; OopMap{rcx=Oop rdx=Oop off=993}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128be1: callq  0x00007f1948e530c0  ; OopMap{rcx=Oop rdx=Oop off=998}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128be6: mov    %rbx,(%rsp)
  0x00007f1949128bea: callq  0x00007f1948e53780  ; OopMap{rcx=Oop rdx=Oop off=1007}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bef: mov    %rbx,(%rsp)
  0x00007f1949128bf3: callq  0x00007f1948e53780  ; OopMap{rcx=Oop off=1016}
                                                ;*dastore
                                                ; - MULT::mmult@53 (line 29)
                                                ;   {runtime_call}
  0x00007f1949128bf8: mov    %rdx,0x8(%rsp)
  0x00007f1949128bfd: movq   $0x39,(%rsp)
  0x00007f1949128c05: callq  0x00007f1948ee3420  ; OopMap{off=1034}
                                                ;*goto
                                                ; - MULT::mmult@57 (line 28)
                                                ;   {runtime_call}
  0x00007f1949128c0a: jmpq   0x00007f19491289c8
  0x00007f1949128c0f: mov    %rax,0x8(%rsp)
  0x00007f1949128c14: movq   $0x3f,(%rsp)
  0x00007f1949128c1c: callq  0x00007f1948ee3420  ; OopMap{off=1057}
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)
                                                ;   {runtime_call}
  0x00007f1949128c21: jmpq   0x00007f1949128a4a
  0x00007f1949128c26: mov    %rbx,0x8(%rsp)
  0x00007f1949128c2b: movq   $0x45,(%rsp)
  0x00007f1949128c33: callq  0x00007f1948ee3420  ; OopMap{off=1080}
                                                ;*goto
                                                ; - MULT::mmult@69 (line 25)
                                                ;   {runtime_call}
  0x00007f1949128c38: jmpq   0x00007f1949128acc
  0x00007f1949128c3d: nop
  0x00007f1949128c3e: nop
  0x00007f1949128c3f: mov    0x298(%r15),%rax
  0x00007f1949128c46: mov    $0x0,%r10
  0x00007f1949128c50: mov    %r10,0x298(%r15)
  0x00007f1949128c57: mov    $0x0,%r10
  0x00007f1949128c61: mov    %r10,0x2a0(%r15)
  0x00007f1949128c68: add    $0x60,%rsp
  0x00007f1949128c6c: pop    %rbp
  0x00007f1949128c6d: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f1949128c72: hlt
  0x00007f1949128c73: hlt
  0x00007f1949128c74: hlt
  0x00007f1949128c75: hlt
  0x00007f1949128c76: hlt
  0x00007f1949128c77: hlt
  0x00007f1949128c78: hlt
  0x00007f1949128c79: hlt
  0x00007f1949128c7a: hlt
  0x00007f1949128c7b: hlt
  0x00007f1949128c7c: hlt
  0x00007f1949128c7d: hlt
  0x00007f1949128c7e: hlt
  0x00007f1949128c7f: hlt
[Exception Handler]
[Stub Code]
  0x00007f1949128c80: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f1949128c85: mov    %rsp,-0x28(%rsp)
  0x00007f1949128c8a: sub    $0x80,%rsp
  0x00007f1949128c91: mov    %rax,0x78(%rsp)
  0x00007f1949128c96: mov    %rcx,0x70(%rsp)
  0x00007f1949128c9b: mov    %rdx,0x68(%rsp)
  0x00007f1949128ca0: mov    %rbx,0x60(%rsp)
  0x00007f1949128ca5: mov    %rbp,0x50(%rsp)
  0x00007f1949128caa: mov    %rsi,0x48(%rsp)
  0x00007f1949128caf: mov    %rdi,0x40(%rsp)
  0x00007f1949128cb4: mov    %r8,0x38(%rsp)
  0x00007f1949128cb9: mov    %r9,0x30(%rsp)
  0x00007f1949128cbe: mov    %r10,0x28(%rsp)
  0x00007f1949128cc3: mov    %r11,0x20(%rsp)
  0x00007f1949128cc8: mov    %r12,0x18(%rsp)
  0x00007f1949128ccd: mov    %r13,0x10(%rsp)
  0x00007f1949128cd2: mov    %r14,0x8(%rsp)
  0x00007f1949128cd7: mov    %r15,(%rsp)
  0x00007f1949128cdb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f1949128ce5: mov    $0x7f1949128c85,%rsi  ;   {internal_word}
  0x00007f1949128cef: mov    %rsp,%rdx
  0x00007f1949128cf2: and    $0xfffffffffffffff0,%rsp
  0x00007f1949128cf6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f1949128cfb: hlt
[Deopt Handler Code]
  0x00007f1949128cfc: mov    $0x7f1949128cfc,%r10  ;   {section_word}
  0x00007f1949128d06: push   %r10
  0x00007f1949128d08: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f1949128d0d: hlt
  0x00007f1949128d0e: hlt
  0x00007f1949128d0f: hlt
Decoding compiled method 0x00007f194912ab10:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT'
  # parm0:    rsi       = int
  #           [sp+0x60]  (sp of caller)
  0x00007f194912acc0: mov    %eax,-0x14000(%rsp)
  0x00007f194912acc7: push   %rbp
  0x00007f194912acc8: sub    $0x50,%rsp
  0x00007f194912accc: mov    $0x7f1921f5bae8,%rdi  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912acd6: mov    0xdc(%rdi),%ebx
  0x00007f194912acdc: add    $0x8,%ebx
  0x00007f194912acdf: mov    %ebx,0xdc(%rdi)
  0x00007f194912ace5: mov    $0x7f1921f5b5a0,%rdi  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912acef: and    $0x1ff8,%ebx
  0x00007f194912acf5: cmp    $0x0,%ebx
  0x00007f194912acf8: je     0x00007f194912af92  ;*iconst_0
                                                ; - MULT::mmult@0 (line 25)

  0x00007f194912acfe: mov    $0x0,%edi          ;*iload_1
                                                ; - MULT::mmult@2 (line 25)

  0x00007f194912ad03: nopl   0x0(%rax,%rax,1)
  0x00007f194912ad08: cmp    %esi,%edi
  0x00007f194912ad0a: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912ad14: mov    $0x108,%rax
  0x00007f194912ad1e: jge    0x00007f194912ad2e
  0x00007f194912ad24: mov    $0x118,%rax
  0x00007f194912ad2e: mov    (%rbx,%rax,1),%rdx
  0x00007f194912ad32: lea    0x1(%rdx),%rdx
  0x00007f194912ad36: mov    %rdx,(%rbx,%rax,1)
  0x00007f194912ad3a: jge    0x00007f194912af86  ;*if_icmpge
                                                ; - MULT::mmult@4 (line 25)

  0x00007f194912ad40: mov    $0x0,%ebx
  0x00007f194912ad45: jmpq   0x00007f194912aeff  ;*iload_2
                                                ; - MULT::mmult@9 (line 26)

  0x00007f194912ad4a: nopw   0x0(%rax,%rax,1)
  0x00007f194912ad50: mov    $0x6717da100,%rax  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f194912ad5a: mov    0x68(%rax),%eax
  0x00007f194912ad5d: shl    $0x3,%rax          ;*getstatic C
                                                ; - MULT::mmult@14 (line 27)

  0x00007f194912ad61: movslq %edi,%rdx
  0x00007f194912ad64: cmp    0xc(%rax),%edi     ; implicit exception: dispatches to 0x00007f194912afa9
  0x00007f194912ad67: jae    0x00007f194912afb3
  0x00007f194912ad6d: mov    0x10(%rax,%rdx,4),%eax
  0x00007f194912ad71: shl    $0x3,%rax          ;*aaload
                                                ; - MULT::mmult@18 (line 27)

  0x00007f194912ad75: movslq %ebx,%rdx
  0x00007f194912ad78: cmp    0xc(%rax),%ebx     ; implicit exception: dispatches to 0x00007f194912afbc
  0x00007f194912ad7b: jae    0x00007f194912afc6
  0x00007f194912ad81: mov    $0x0,%r10
  0x00007f194912ad8b: mov    %r10,0x10(%rax,%rdx,8)  ;*dastore
                                                ; - MULT::mmult@21 (line 27)

  0x00007f194912ad90: mov    $0x0,%edx
  0x00007f194912ad95: jmpq   0x00007f194912ae7d  ;*iload_3
                                                ; - MULT::mmult@24 (line 28)

  0x00007f194912ad9a: nopw   0x0(%rax,%rax,1)
  0x00007f194912ada0: movslq %ebx,%rcx
  0x00007f194912ada3: cmp    0xc(%rax),%ebx
  0x00007f194912ada6: jae    0x00007f194912afcf
  0x00007f194912adac: vmovsd 0x10(%rax,%rcx,8),%xmm0  ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f194912adb2: mov    $0x6717da100,%rcx  ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f194912adbc: mov    0x60(%rcx),%r8d
  0x00007f194912adc0: shl    $0x3,%r8           ;*getstatic A
                                                ; - MULT::mmult@37 (line 29)

  0x00007f194912adc4: movslq %edi,%r9
  0x00007f194912adc7: cmp    0xc(%r8),%edi      ; implicit exception: dispatches to 0x00007f194912afd8
  0x00007f194912adcb: jae    0x00007f194912afe2
  0x00007f194912add1: mov    0x10(%r8,%r9,4),%r8d
  0x00007f194912add6: shl    $0x3,%r8           ;*aaload
                                                ; - MULT::mmult@41 (line 29)

  0x00007f194912adda: movslq %edx,%r9
  0x00007f194912addd: cmp    0xc(%r8),%edx      ; implicit exception: dispatches to 0x00007f194912afeb
  0x00007f194912ade1: jae    0x00007f194912aff5
  0x00007f194912ade7: vmovsd 0x10(%r8,%r9,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912adee: mov    0x64(%rcx),%ecx
  0x00007f194912adf1: shl    $0x3,%rcx          ;*getstatic B
                                                ; - MULT::mmult@44 (line 29)

  0x00007f194912adf5: movslq %edx,%r8
  0x00007f194912adf8: cmp    0xc(%rcx),%edx     ; implicit exception: dispatches to 0x00007f194912affe
  0x00007f194912adfb: jae    0x00007f194912b008
  0x00007f194912ae01: mov    0x10(%rcx,%r8,4),%ecx
  0x00007f194912ae06: shl    $0x3,%rcx          ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912ae0a: movslq %ebx,%r8
  0x00007f194912ae0d: cmp    0xc(%rcx),%ebx     ; implicit exception: dispatches to 0x00007f194912b011
  0x00007f194912ae10: jae    0x00007f194912b01b
  0x00007f194912ae16: vmovsd 0x10(%rcx,%r8,8),%xmm2  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912ae1d: vmulsd %xmm2,%xmm1,%xmm1
  0x00007f194912ae21: vaddsd %xmm1,%xmm0,%xmm0
  0x00007f194912ae25: movslq %ebx,%rcx
  0x00007f194912ae28: vmovsd %xmm0,0x10(%rax,%rcx,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912ae2e: inc    %edx
  0x00007f194912ae30: mov    $0x7f1921f5bae8,%rcx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912ae3a: mov    0xe0(%rcx),%r8d
  0x00007f194912ae41: add    $0x8,%r8d
  0x00007f194912ae45: mov    %r8d,0xe0(%rcx)
  0x00007f194912ae4c: mov    $0x7f1921f5b5a0,%rcx  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912ae56: and    $0xfff8,%r8d
  0x00007f194912ae5d: cmp    $0x0,%r8d
  0x00007f194912ae61: je     0x00007f194912b024  ; OopMap{rax=Oop off=423}
                                                ;*goto
                                                ; - MULT::mmult@57 (line 28)

  0x00007f194912ae67: test   %eax,0x155fc293(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912ae6d: mov    $0x7f1921f5bae8,%rcx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912ae77: incl   0x168(%rcx)        ;*goto
                                                ; - MULT::mmult@57 (line 28)

  0x00007f194912ae7d: cmp    %esi,%edx
  0x00007f194912ae7f: mov    $0x7f1921f5bae8,%rcx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912ae89: mov    $0x148,%r8
  0x00007f194912ae93: jge    0x00007f194912aea3
  0x00007f194912ae99: mov    $0x158,%r8
  0x00007f194912aea3: mov    (%rcx,%r8,1),%r9
  0x00007f194912aea7: lea    0x1(%r9),%r9
  0x00007f194912aeab: mov    %r9,(%rcx,%r8,1)
  0x00007f194912aeaf: jl     0x00007f194912ada0  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912aeb5: inc    %ebx
  0x00007f194912aeb7: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912aec1: mov    0xe0(%rax),%edx
  0x00007f194912aec7: add    $0x8,%edx
  0x00007f194912aeca: mov    %edx,0xe0(%rax)
  0x00007f194912aed0: mov    $0x7f1921f5b5a0,%rax  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912aeda: and    $0xfff8,%edx
  0x00007f194912aee0: cmp    $0x0,%edx
  0x00007f194912aee3: je     0x00007f194912b03b  ; OopMap{off=553}
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f194912aee9: test   %eax,0x155fc211(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912aeef: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912aef9: incl   0x180(%rax)        ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f194912aeff: cmp    %esi,%ebx
  0x00007f194912af01: mov    $0x7f1921f5bae8,%rax  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912af0b: mov    $0x128,%rdx
  0x00007f194912af15: jge    0x00007f194912af25
  0x00007f194912af1b: mov    $0x138,%rdx
  0x00007f194912af25: mov    (%rax,%rdx,1),%rcx
  0x00007f194912af29: lea    0x1(%rcx),%rcx
  0x00007f194912af2d: mov    %rcx,(%rax,%rdx,1)
  0x00007f194912af31: jl     0x00007f194912ad50  ;*if_icmpge
                                                ; - MULT::mmult@11 (line 26)

  0x00007f194912af37: inc    %edi
  0x00007f194912af39: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912af43: mov    0xe0(%rbx),%eax
  0x00007f194912af49: add    $0x8,%eax
  0x00007f194912af4c: mov    %eax,0xe0(%rbx)
  0x00007f194912af52: mov    $0x7f1921f5b5a0,%rbx  ;   {metadata({method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912af5c: and    $0xfff8,%eax
  0x00007f194912af62: cmp    $0x0,%eax
  0x00007f194912af65: je     0x00007f194912b052  ; OopMap{off=683}
                                                ;*goto
                                                ; - MULT::mmult@69 (line 25)

  0x00007f194912af6b: test   %eax,0x155fc18f(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912af71: mov    $0x7f1921f5bae8,%rbx  ;   {metadata(method data for {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT')}
  0x00007f194912af7b: incl   0x198(%rbx)
  0x00007f194912af81: jmpq   0x00007f194912ad08  ;*goto
                                                ; - MULT::mmult@69 (line 25)

  0x00007f194912af86: add    $0x50,%rsp
  0x00007f194912af8a: pop    %rbp
  0x00007f194912af8b: test   %eax,0x155fc16f(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912af91: retq
  0x00007f194912af92: mov    %rdi,0x8(%rsp)
  0x00007f194912af97: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912af9f: callq  0x00007f1948ee3420  ; OopMap{off=740}
                                                ;*synchronization entry
                                                ; - MULT::mmult@-1 (line 25)
                                                ;   {runtime_call}
  0x00007f194912afa4: jmpq   0x00007f194912acfe
  0x00007f194912afa9: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=750}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afae: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=755}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afb3: mov    %rdi,(%rsp)
  0x00007f194912afb7: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=764}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afbc: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=769}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afc1: callq  0x00007f1948e530c0  ; OopMap{rax=Oop off=774}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afc6: mov    %rbx,(%rsp)
  0x00007f194912afca: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=783}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912afcf: mov    %rbx,(%rsp)
  0x00007f194912afd3: callq  0x00007f1948e53780  ; OopMap{rax=Oop off=792}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f194912afd8: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop r8=Oop off=797}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912afdd: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop r8=Oop off=802}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912afe2: mov    %rdi,(%rsp)
  0x00007f194912afe6: callq  0x00007f1948e53780  ; OopMap{rax=Oop rcx=Oop r8=Oop off=811}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912afeb: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop r8=Oop off=816}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912aff0: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop r8=Oop off=821}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912aff5: mov    %rdx,(%rsp)
  0x00007f194912aff9: callq  0x00007f1948e53780  ; OopMap{rax=Oop rcx=Oop r8=Oop off=830}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912affe: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop off=835}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b003: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop off=840}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b008: mov    %rdx,(%rsp)
  0x00007f194912b00c: callq  0x00007f1948e53780  ; OopMap{rax=Oop rcx=Oop off=849}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b011: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop off=854}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b016: callq  0x00007f1948e530c0  ; OopMap{rax=Oop rcx=Oop off=859}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b01b: mov    %rbx,(%rsp)
  0x00007f194912b01f: callq  0x00007f1948e53780  ; OopMap{rax=Oop rcx=Oop off=868}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912b024: mov    %rcx,0x8(%rsp)
  0x00007f194912b029: movq   $0x39,(%rsp)
  0x00007f194912b031: callq  0x00007f1948ee3420  ; OopMap{rax=Oop off=886}
                                                ;*goto
                                                ; - MULT::mmult@57 (line 28)
                                                ;   {runtime_call}
  0x00007f194912b036: jmpq   0x00007f194912ae67
  0x00007f194912b03b: mov    %rax,0x8(%rsp)
  0x00007f194912b040: movq   $0x3f,(%rsp)
  0x00007f194912b048: callq  0x00007f1948ee3420  ; OopMap{off=909}
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)
                                                ;   {runtime_call}
  0x00007f194912b04d: jmpq   0x00007f194912aee9
  0x00007f194912b052: mov    %rbx,0x8(%rsp)
  0x00007f194912b057: movq   $0x45,(%rsp)
  0x00007f194912b05f: callq  0x00007f1948ee3420  ; OopMap{off=932}
                                                ;*goto
                                                ; - MULT::mmult@69 (line 25)
                                                ;   {runtime_call}
  0x00007f194912b064: jmpq   0x00007f194912af6b
  0x00007f194912b069: nop
  0x00007f194912b06a: nop
  0x00007f194912b06b: mov    0x298(%r15),%rax
  0x00007f194912b072: mov    $0x0,%r10
  0x00007f194912b07c: mov    %r10,0x298(%r15)
  0x00007f194912b083: mov    $0x0,%r10
  0x00007f194912b08d: mov    %r10,0x2a0(%r15)
  0x00007f194912b094: add    $0x50,%rsp
  0x00007f194912b098: pop    %rbp
  0x00007f194912b099: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912b09e: hlt
  0x00007f194912b09f: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912b0a0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194912b0a5: mov    %rsp,-0x28(%rsp)
  0x00007f194912b0aa: sub    $0x80,%rsp
  0x00007f194912b0b1: mov    %rax,0x78(%rsp)
  0x00007f194912b0b6: mov    %rcx,0x70(%rsp)
  0x00007f194912b0bb: mov    %rdx,0x68(%rsp)
  0x00007f194912b0c0: mov    %rbx,0x60(%rsp)
  0x00007f194912b0c5: mov    %rbp,0x50(%rsp)
  0x00007f194912b0ca: mov    %rsi,0x48(%rsp)
  0x00007f194912b0cf: mov    %rdi,0x40(%rsp)
  0x00007f194912b0d4: mov    %r8,0x38(%rsp)
  0x00007f194912b0d9: mov    %r9,0x30(%rsp)
  0x00007f194912b0de: mov    %r10,0x28(%rsp)
  0x00007f194912b0e3: mov    %r11,0x20(%rsp)
  0x00007f194912b0e8: mov    %r12,0x18(%rsp)
  0x00007f194912b0ed: mov    %r13,0x10(%rsp)
  0x00007f194912b0f2: mov    %r14,0x8(%rsp)
  0x00007f194912b0f7: mov    %r15,(%rsp)
  0x00007f194912b0fb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912b105: mov    $0x7f194912b0a5,%rsi  ;   {internal_word}
  0x00007f194912b10f: mov    %rsp,%rdx
  0x00007f194912b112: and    $0xfffffffffffffff0,%rsp
  0x00007f194912b116: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912b11b: hlt
[Deopt Handler Code]
  0x00007f194912b11c: mov    $0x7f194912b11c,%r10  ;   {section_word}
  0x00007f194912b126: push   %r10
  0x00007f194912b128: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912b12d: hlt
  0x00007f194912b12e: hlt
  0x00007f194912b12f: hlt
Decoding compiled method 0x00007f194912f6d0:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921f5b5a0} 'mmult' '(I)V' in 'MULT'
  0x00007f194912f860: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912f865: nopw   0x0(%rax,%rax,1)
  0x00007f194912f870: mov    %eax,-0x14000(%rsp)
  0x00007f194912f877: push   %rbp
  0x00007f194912f878: sub    $0x40,%rsp
  0x00007f194912f87c: mov    (%rsi),%ebx
  0x00007f194912f87e: mov    0x8(%rsi),%r13d
  0x00007f194912f882: mov    0x18(%rsi),%r14d
  0x00007f194912f886: mov    0x10(%rsi),%ebp
  0x00007f194912f889: mov    %rsi,%rdi
  0x00007f194912f88c: mov    $0x7f195d4fe890,%r10
  0x00007f194912f896: callq  *%r10              ;*iload_3
                                                ; - MULT::mmult@24 (line 28)

  0x00007f194912f899: mov    $0x6717da100,%r9   ;   {oop(a 'java/lang/Class' = 'MULT')}
  0x00007f194912f8a3: mov    0x68(%r9),%r10d    ;*getstatic C
                                                ; - MULT::mmult@29 (line 29)

  0x00007f194912f8a7: mov    0xc(%r12,%r10,8),%r11d  ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ; implicit exception: dispatches to 0x00007f194912fd71
  0x00007f194912f8ac: mov    0x64(%r9),%r8d     ;*getstatic B
                                                ; - MULT::mmult@44 (line 29)

  0x00007f194912f8b0: mov    0x60(%r9),%ecx     ;*getstatic A
                                                ; - MULT::mmult@37 (line 29)

  0x00007f194912f8b4: lea    (%r12,%r8,8),%rdi
  0x00007f194912f8b8: lea    (%r12,%rcx,8),%r9
  0x00007f194912f8bc: lea    (%r12,%r10,8),%rdx
  0x00007f194912f8c0: jmp    0x00007f194912f93a
  0x00007f194912f8c2: mov    0x20(%rsp),%ebp
  0x00007f194912f8c6: mov    (%rsp),%r10d
  0x00007f194912f8ca: mov    0x4(%rsp),%r11d
  0x00007f194912f8cf: mov    0x24(%rsp),%r8d
  0x00007f194912f8d4: mov    0x14(%rsp),%ecx
  0x00007f194912f8d8: mov    0x8(%rsp),%r9
  0x00007f194912f8dd: mov    0x18(%rsp),%rdx    ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f194912f8e2: inc    %r13d              ; OopMap{r10=NarrowOop r8=NarrowOop r9=Oop rcx=NarrowOop rdi=Oop rdx=Oop off=133}
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)

  0x00007f194912f8e5: test   %eax,0x155f7715(%rip)        # 0x00007f195e727000
                                                ;*goto
                                                ; - MULT::mmult@63 (line 26)
                                                ;   {poll}
  0x00007f194912f8eb: cmp    %r14d,%r13d
  0x00007f194912f8ee: jge    0x00007f194912fcdd  ;*getstatic C
                                                ; - MULT::mmult@14 (line 27)

  0x00007f194912f8f4: cmp    %r11d,%ebp
  0x00007f194912f8f7: jae    0x00007f194912fc9f
  0x00007f194912f8fd: mov    %r9,%rsi
  0x00007f194912f900: mov    %ecx,%eax
  0x00007f194912f902: mov    %r8d,%r9d
  0x00007f194912f905: mov    %r11d,%ecx
  0x00007f194912f908: mov    %r10d,%r11d
  0x00007f194912f90b: mov    0x10(%rdx,%rbp,4),%r8d  ;*aaload
                                                ; - MULT::mmult@18 (line 27)

  0x00007f194912f910: mov    %ebp,%r10d
  0x00007f194912f913: mov    0xc(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f194912fd5d
  0x00007f194912f918: cmp    %ebx,%r13d
  0x00007f194912f91b: jae    0x00007f194912fcbd
  0x00007f194912f921: shl    $0x3,%r8
  0x00007f194912f925: mov    %r12,0x10(%r8,%r13,8)  ;*dastore
                                                ; - MULT::mmult@21 (line 27)

  0x00007f194912f92a: xor    %ebx,%ebx
  0x00007f194912f92c: mov    %r11d,%r10d
  0x00007f194912f92f: mov    %ecx,%r11d
  0x00007f194912f932: mov    %r9d,%r8d
  0x00007f194912f935: mov    %eax,%ecx
  0x00007f194912f937: mov    %rsi,%r9           ;*iload_3
                                                ; - MULT::mmult@24 (line 28)

  0x00007f194912f93a: cmp    %r14d,%ebx
  0x00007f194912f93d: jge    0x00007f194912f8e2  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912f93f: cmp    %r11d,%ebp
  0x00007f194912f942: jae    0x00007f194912fc15
  0x00007f194912f948: mov    %rdx,0x18(%rsp)
  0x00007f194912f94d: mov    %r9,0x8(%rsp)
  0x00007f194912f952: mov    %ecx,0x14(%rsp)
  0x00007f194912f956: mov    %r8d,0x24(%rsp)
  0x00007f194912f95b: mov    %r11d,0x4(%rsp)
  0x00007f194912f960: mov    %r10d,(%rsp)
  0x00007f194912f964: mov    %ebp,0x20(%rsp)
  0x00007f194912f968: mov    0x10(%rdx,%rbp,4),%r10d  ;*aaload
                                                ; - MULT::mmult@33 (line 29)

  0x00007f194912f96d: mov    %r10d,0x28(%rsp)
  0x00007f194912f972: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f194912fd11
  0x00007f194912f977: cmp    %r11d,%r13d
  0x00007f194912f97a: jae    0x00007f194912fc39
  0x00007f194912f980: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f194912fd25
  0x00007f194912f985: mov    0x28(%rsp),%r10d
  0x00007f194912f98a: lea    (%r12,%r10,8),%r9
  0x00007f194912f98e: vmovsd 0x10(%r9,%r13,8),%xmm0  ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f194912f995: cmp    %r8d,%ebp
  0x00007f194912f998: jae    0x00007f194912fc69
  0x00007f194912f99e: mov    0x8(%rsp),%r11
  0x00007f194912f9a3: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                                                ; - MULT::mmult@41 (line 29)

  0x00007f194912f9a8: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f194912fd35
  0x00007f194912f9ad: cmp    %r10d,%ebx
  0x00007f194912f9b0: jae    0x00007f194912fb98  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912f9b6: mov    0x24(%rsp),%r11d
  0x00007f194912f9bb: mov    0xc(%r12,%r11,8),%r11d  ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ; implicit exception: dispatches to 0x00007f194912fd49
  0x00007f194912f9c0: lea    (%r12,%rbp,8),%rsi
  0x00007f194912f9c4: vmovsd 0x10(%rsi,%rbx,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912f9ca: cmp    %r11d,%ebx
  0x00007f194912f9cd: jae    0x00007f194912fbd6
  0x00007f194912f9d3: mov    0x10(%rdi,%rbx,4),%eax
  0x00007f194912f9d7: mov    0xc(%r12,%rax,8),%ecx  ; implicit exception: dispatches to 0x00007f194912fcfd
  0x00007f194912f9dc: lea    (%r12,%rax,8),%rdx  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912f9e0: cmp    %ecx,%r13d
  0x00007f194912f9e3: jae    0x00007f194912fc8d  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912f9e9: vmulsd 0x10(%rdx,%r13,8),%xmm1,%xmm1
  0x00007f194912f9f0: vaddsd %xmm0,%xmm1,%xmm0
  0x00007f194912f9f4: vmovsd %xmm0,0x10(%r9,%r13,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912f9fb: mov    %ebx,%ecx
  0x00007f194912f9fd: inc    %ecx               ;*iinc
                                                ; - MULT::mmult@54 (line 28)

  0x00007f194912f9ff: cmp    %r14d,%ecx
  0x00007f194912fa02: jge    0x00007f194912f8c2  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912fa08: add    $0x2,%ebx
  0x00007f194912fa0b: xor    %eax,%eax
  0x00007f194912fa0d: cmp    %eax,%ebx
  0x00007f194912fa0f: cmovl  %eax,%ebx
  0x00007f194912fa12: cmp    %r14d,%ebx
  0x00007f194912fa15: cmovg  %r14d,%ebx         ;*aaload
                                                ; - MULT::mmult@33 (line 29)

  0x00007f194912fa19: vmovsd 0x10(%r9,%r13,8),%xmm0  ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f194912fa20: cmp    %r10d,%ecx
  0x00007f194912fa23: jae    0x00007f194912fb91
  0x00007f194912fa29: vmovsd 0x10(%rsi,%rcx,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912fa2f: cmp    %r11d,%ecx
  0x00007f194912fa32: jae    0x00007f194912fbc9
  0x00007f194912fa38: mov    0x10(%rdi,%rcx,4),%eax
  0x00007f194912fa3c: mov    0xc(%r12,%rax,8),%r8d  ; implicit exception: dispatches to 0x00007f194912fcfd
  0x00007f194912fa41: lea    (%r12,%rax,8),%rdx  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912fa45: cmp    %r8d,%r13d
  0x00007f194912fa48: jae    0x00007f194912fb4d  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912fa4e: vmulsd 0x10(%rdx,%r13,8),%xmm1,%xmm1
  0x00007f194912fa55: vaddsd %xmm0,%xmm1,%xmm0  ;*dadd
                                                ; - MULT::mmult@52 (line 29)

  0x00007f194912fa59: vmovsd %xmm0,0x10(%r9,%r13,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912fa60: inc    %ecx               ;*iinc
                                                ; - MULT::mmult@54 (line 28)

  0x00007f194912fa62: cmp    %ebx,%ecx
  0x00007f194912fa64: jl     0x00007f194912fa19  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912fa66: cmp    %r10d,%r11d
  0x00007f194912fa69: mov    %r11d,%ebx
  0x00007f194912fa6c: cmovg  %r10d,%ebx
  0x00007f194912fa70: cmp    %r14d,%ebx
  0x00007f194912fa73: cmovg  %r14d,%ebx
  0x00007f194912fa77: mov    %ebx,%r8d
  0x00007f194912fa7a: dec    %r8d
  0x00007f194912fa7d: cmp    %r8d,%ebx
  0x00007f194912fa80: mov    $0x80000000,%ebx
  0x00007f194912fa85: cmovl  %ebx,%r8d
  0x00007f194912fa89: cmp    %r8d,%ecx
  0x00007f194912fa8c: jge    0x00007f194912faf3
  0x00007f194912fa8e: xchg   %ax,%ax            ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f194912fa90: mov    0x10(%rdi,%rcx,4),%eax  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912fa94: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f194912fcfd
  0x00007f194912fa99: vmovsd 0x10(%rsi,%rcx,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912fa9f: lea    (%r12,%rax,8),%rdx  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912faa3: cmp    %ebx,%r13d
  0x00007f194912faa6: jae    0x00007f194912fb4d  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912faac: vmulsd 0x10(%rdx,%r13,8),%xmm1,%xmm1
  0x00007f194912fab3: vaddsd %xmm0,%xmm1,%xmm0  ;*dadd
                                                ; - MULT::mmult@52 (line 29)

  0x00007f194912fab7: vmovsd %xmm0,0x10(%r9,%r13,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912fabe: movslq %ecx,%rdx
  0x00007f194912fac1: mov    0x14(%rdi,%rdx,4),%eax  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912fac5: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f194912fcfd
  0x00007f194912faca: vmovsd 0x18(%rsi,%rdx,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912fad0: lea    (%r12,%rax,8),%rdx  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912fad4: cmp    %ebx,%r13d
  0x00007f194912fad7: jae    0x00007f194912fb4b  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912fad9: vmulsd 0x10(%rdx,%r13,8),%xmm1,%xmm1
  0x00007f194912fae0: vaddsd %xmm0,%xmm1,%xmm0  ;*dadd
                                                ; - MULT::mmult@52 (line 29)

  0x00007f194912fae4: vmovsd %xmm0,0x10(%r9,%r13,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912faeb: add    $0x2,%ecx          ;*iinc
                                                ; - MULT::mmult@54 (line 28)

  0x00007f194912faee: cmp    %r8d,%ecx
  0x00007f194912faf1: jl     0x00007f194912fa90  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912faf3: cmp    %r14d,%ecx
  0x00007f194912faf6: jge    0x00007f194912f8c2  ;*aaload
                                                ; - MULT::mmult@33 (line 29)

  0x00007f194912fafc: vmovsd 0x10(%r9,%r13,8),%xmm0  ;*daload
                                                ; - MULT::mmult@36 (line 29)

  0x00007f194912fb03: cmp    %r10d,%ecx
  0x00007f194912fb06: jae    0x00007f194912fb91
  0x00007f194912fb0c: vmovsd 0x10(%rsi,%rcx,8),%xmm1  ;*daload
                                                ; - MULT::mmult@43 (line 29)

  0x00007f194912fb12: cmp    %r11d,%ecx
  0x00007f194912fb15: jae    0x00007f194912fbc9
  0x00007f194912fb1b: mov    0x10(%rdi,%rcx,4),%eax
  0x00007f194912fb1f: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f194912fcfd
  0x00007f194912fb24: lea    (%r12,%rax,8),%rdx  ;*aaload
                                                ; - MULT::mmult@48 (line 29)

  0x00007f194912fb28: cmp    %ebx,%r13d
  0x00007f194912fb2b: jae    0x00007f194912fb4d  ;*daload
                                                ; - MULT::mmult@50 (line 29)

  0x00007f194912fb2d: vmulsd 0x10(%rdx,%r13,8),%xmm1,%xmm1
  0x00007f194912fb34: vaddsd %xmm0,%xmm1,%xmm0
  0x00007f194912fb38: vmovsd %xmm0,0x10(%r9,%r13,8)  ;*dastore
                                                ; - MULT::mmult@53 (line 29)

  0x00007f194912fb3f: inc    %ecx               ;*iinc
                                                ; - MULT::mmult@54 (line 28)

  0x00007f194912fb41: cmp    %r14d,%ecx
  0x00007f194912fb44: jl     0x00007f194912fafc  ;*if_icmpge
                                                ; - MULT::mmult@26 (line 28)

  0x00007f194912fb46: jmpq   0x00007f194912f8c2
  0x00007f194912fb4b: inc    %ecx               ;*iinc
                                                ; - MULT::mmult@54 (line 28)

  0x00007f194912fb4d: vmovsd %xmm1,0x8(%rsp)
  0x00007f194912fb53: vmovsd %xmm0,(%rsp)
  0x00007f194912fb58: mov    $0xffffffe4,%esi
  0x00007f194912fb5d: mov    %r14d,%ebp
  0x00007f194912fb60: mov    0x20(%rsp),%r10d
  0x00007f194912fb65: mov    %r10d,0x10(%rsp)
  0x00007f194912fb6a: mov    %ecx,0x18(%rsp)
  0x00007f194912fb6e: mov    0x28(%rsp),%r11d
  0x00007f194912fb73: mov    %r11d,0x1c(%rsp)
  0x00007f194912fb78: mov    %r13d,0x20(%rsp)
  0x00007f194912fb7d: mov    %rdx,0x28(%rsp)
  0x00007f194912fb82: mov    %r13d,0x24(%rsp)
  0x00007f194912fb87: callq  0x00007f1948de9ee0  ; OopMap{[28]=NarrowOop [40]=Oop off=812}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fb8c: callq  0x00007f195d462c60  ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fb91: vmovsd %xmm0,(%rsp)
  0x00007f194912fb96: jmp    0x00007f194912fb9f
  0x00007f194912fb98: vmovsd %xmm0,(%rsp)
  0x00007f194912fb9d: mov    %ebx,%ecx
  0x00007f194912fb9f: mov    $0xffffffe4,%esi
  0x00007f194912fba4: mov    %r14d,0x8(%rsp)
  0x00007f194912fba9: mov    0x20(%rsp),%r10d
  0x00007f194912fbae: mov    %r10d,0xc(%rsp)
  0x00007f194912fbb3: mov    %r13d,0x1c(%rsp)
  0x00007f194912fbb8: mov    %ecx,0x20(%rsp)
  0x00007f194912fbbc: xchg   %ax,%ax
  0x00007f194912fbbf: callq  0x00007f1948de9ee0  ; OopMap{rbp=NarrowOop [40]=NarrowOop off=868}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fbc4: callq  0x00007f195d462c60  ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fbc9: vmovsd %xmm1,0x8(%rsp)
  0x00007f194912fbcf: vmovsd %xmm0,(%rsp)
  0x00007f194912fbd4: jmp    0x00007f194912fbe3
  0x00007f194912fbd6: vmovsd %xmm1,0x8(%rsp)
  0x00007f194912fbdc: vmovsd %xmm0,(%rsp)
  0x00007f194912fbe1: mov    %ebx,%ecx
  0x00007f194912fbe3: mov    $0xffffffe4,%esi
  0x00007f194912fbe8: mov    %r14d,%ebp
  0x00007f194912fbeb: mov    0x20(%rsp),%r10d
  0x00007f194912fbf0: mov    %r10d,0x10(%rsp)
  0x00007f194912fbf5: mov    0x28(%rsp),%r11d
  0x00007f194912fbfa: mov    %r11d,0x1c(%rsp)
  0x00007f194912fbff: mov    %r13d,0x20(%rsp)
  0x00007f194912fc04: mov    %ecx,0x28(%rsp)
  0x00007f194912fc08: xchg   %ax,%ax
  0x00007f194912fc0b: callq  0x00007f1948de9ee0  ; OopMap{[28]=NarrowOop [36]=NarrowOop off=944}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fc10: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fc15: mov    $0xffffffe4,%esi
  0x00007f194912fc1a: mov    %r14d,(%rsp)
  0x00007f194912fc1e: mov    %r13d,0x4(%rsp)
  0x00007f194912fc23: mov    %ebx,0x8(%rsp)
  0x00007f194912fc27: mov    %r10d,0x10(%rsp)
  0x00007f194912fc2c: xchg   %ax,%ax
  0x00007f194912fc2f: callq  0x00007f1948de9ee0  ; OopMap{[16]=NarrowOop off=980}
                                                ;*aaload
                                                ; - MULT::mmult@33 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fc34: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fc39: mov    $0xffffffe4,%esi
  0x00007f194912fc3e: mov    %r14d,%ebp
  0x00007f194912fc41: mov    %ebx,0x8(%rsp)
  0x00007f194912fc45: mov    0x28(%rsp),%r11d
  0x00007f194912fc4a: mov    %r13d,0x10(%rsp)
  0x00007f194912fc4f: mov    %r11d,%r10d
  0x00007f194912fc52: mov    %r10d,0x14(%rsp)
  0x00007f194912fc57: mov    %r13d,0x18(%rsp)
  0x00007f194912fc5c: xchg   %ax,%ax
  0x00007f194912fc5f: callq  0x00007f1948de9ee0  ; OopMap{[20]=NarrowOop [40]=NarrowOop off=1028}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fc64: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fc69: mov    $0xffffffe4,%esi
  0x00007f194912fc6e: mov    %r14d,%ebp
  0x00007f194912fc71: mov    %ebx,0x8(%rsp)
  0x00007f194912fc75: mov    %r13d,0x10(%rsp)
  0x00007f194912fc7a: vmovsd %xmm0,0x18(%rsp)
  0x00007f194912fc80: xchg   %ax,%ax
  0x00007f194912fc83: callq  0x00007f1948de9ee0  ; OopMap{[20]=NarrowOop [40]=NarrowOop off=1064}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fc88: callq  0x00007f195d462c60  ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fc8d: vmovsd %xmm1,0x8(%rsp)
  0x00007f194912fc93: vmovsd %xmm0,(%rsp)
  0x00007f194912fc98: mov    %ebx,%ecx
  0x00007f194912fc9a: jmpq   0x00007f194912fb58
  0x00007f194912fc9f: mov    $0xffffffe4,%esi
  0x00007f194912fca4: mov    %r14d,(%rsp)
  0x00007f194912fca8: mov    %r13d,0x4(%rsp)
  0x00007f194912fcad: mov    %r10d,0xc(%rsp)
  0x00007f194912fcb2: nop
  0x00007f194912fcb3: callq  0x00007f1948de9ee0  ; OopMap{[12]=NarrowOop off=1112}
                                                ;*aaload
                                                ; - MULT::mmult@18 (line 27)
                                                ;   {runtime_call}
  0x00007f194912fcb8: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fcbd: mov    $0xffffffe4,%esi
  0x00007f194912fcc2: mov    %r14d,%ebp
  0x00007f194912fcc5: mov    %r10d,(%rsp)
  0x00007f194912fcc9: mov    %r8d,0x8(%rsp)
  0x00007f194912fcce: mov    %r13d,0xc(%rsp)
  0x00007f194912fcd3: callq  0x00007f1948de9ee0  ; OopMap{[8]=NarrowOop off=1144}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912fcd8: callq  0x00007f195d462c60  ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912fcdd: inc    %ebp               ;*iinc
                                                ; - MULT::mmult@66 (line 25)

  0x00007f194912fcdf: cmp    %r14d,%ebp
  0x00007f194912fce2: jge    0x00007f194912fcf1  ;*if_icmpge
                                                ; - MULT::mmult@4 (line 25)

  0x00007f194912fce4: test   %r14d,%r14d
  0x00007f194912fce7: jle    0x00007f194912fcf1  ;*if_icmpge
                                                ; - MULT::mmult@11 (line 26)

  0x00007f194912fce9: xor    %r13d,%r13d
  0x00007f194912fcec: jmpq   0x00007f194912f8f4  ;*iload_3
                                                ; - MULT::mmult@24 (line 28)

  0x00007f194912fcf1: add    $0x40,%rsp
  0x00007f194912fcf5: pop    %rbp
  0x00007f194912fcf6: test   %eax,0x155f7304(%rip)        # 0x00007f195e727000
                                                ;   {poll_return}
  0x00007f194912fcfc: retq
  0x00007f194912fcfd: mov    $0xfffffff6,%esi
  0x00007f194912fd02: mov    %r13d,%ebp
  0x00007f194912fd05: xchg   %ax,%ax
  0x00007f194912fd07: callq  0x00007f1948de9ee0  ; OopMap{off=1196}
                                                ;*daload
                                                ; - MULT::mmult@50 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fd0c: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd11: mov    $0xfffffff6,%esi
  0x00007f194912fd16: mov    %r13d,%ebp
  0x00007f194912fd19: xchg   %ax,%ax
  0x00007f194912fd1b: callq  0x00007f1948de9ee0  ; OopMap{off=1216}
                                                ;*daload
                                                ; - MULT::mmult@36 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fd20: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd25: mov    $0xfffffff6,%esi
  0x00007f194912fd2a: nop
  0x00007f194912fd2b: callq  0x00007f1948de9ee0  ; OopMap{off=1232}
                                                ;*aaload
                                                ; - MULT::mmult@41 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fd30: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd35: mov    $0xfffffff6,%esi
  0x00007f194912fd3a: mov    %ebx,%ebp
  0x00007f194912fd3c: xchg   %ax,%ax
  0x00007f194912fd3f: callq  0x00007f1948de9ee0  ; OopMap{off=1252}
                                                ;*daload
                                                ; - MULT::mmult@43 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fd44: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd49: mov    $0xfffffff6,%esi
  0x00007f194912fd4e: mov    %ebx,%ebp
  0x00007f194912fd50: xchg   %ax,%ax
  0x00007f194912fd53: callq  0x00007f1948de9ee0  ; OopMap{off=1272}
                                                ;*aaload
                                                ; - MULT::mmult@48 (line 29)
                                                ;   {runtime_call}
  0x00007f194912fd58: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd5d: mov    $0xfffffff6,%esi
  0x00007f194912fd62: mov    %r13d,%ebp
  0x00007f194912fd65: xchg   %ax,%ax
  0x00007f194912fd67: callq  0x00007f1948de9ee0  ; OopMap{off=1292}
                                                ;*dastore
                                                ; - MULT::mmult@21 (line 27)
                                                ;   {runtime_call}
  0x00007f194912fd6c: callq  0x00007f195d462c60  ;   {runtime_call}
  0x00007f194912fd71: mov    $0xffffff86,%esi
  0x00007f194912fd76: mov    %r14d,(%rsp)
  0x00007f194912fd7a: mov    %r13d,0x4(%rsp)
  0x00007f194912fd7f: mov    %ebx,0x8(%rsp)
  0x00007f194912fd83: callq  0x00007f1948de9ee0  ; OopMap{off=1320}
                                                ;*iload_3
                                                ; - MULT::mmult@24 (line 28)
                                                ;   {runtime_call}
  0x00007f194912fd88: callq  0x00007f195d462c60  ;*iload_3
                                                ; - MULT::mmult@24 (line 28)
                                                ;   {runtime_call}
  0x00007f194912fd8d: hlt
  0x00007f194912fd8e: hlt
  0x00007f194912fd8f: hlt
  0x00007f194912fd90: hlt
  0x00007f194912fd91: hlt
  0x00007f194912fd92: hlt
  0x00007f194912fd93: hlt
  0x00007f194912fd94: hlt
  0x00007f194912fd95: hlt
  0x00007f194912fd96: hlt
  0x00007f194912fd97: hlt
  0x00007f194912fd98: hlt
  0x00007f194912fd99: hlt
  0x00007f194912fd9a: hlt
  0x00007f194912fd9b: hlt
  0x00007f194912fd9c: hlt
  0x00007f194912fd9d: hlt
  0x00007f194912fd9e: hlt
  0x00007f194912fd9f: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912fda0: jmpq   0x00007f1948e510e0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f194912fda5: callq  0x00007f194912fdaa
  0x00007f194912fdaa: subq   $0x5,(%rsp)
  0x00007f194912fdaf: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912fdb4: hlt
  0x00007f194912fdb5: hlt
  0x00007f194912fdb6: hlt
  0x00007f194912fdb7: hlt
Decoding compiled method 0x00007f194912efd0:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921c2a020} 'access$400' '(Ljava/lang/ThreadLocal;)I' in 'java/lang/ThreadLocal'
  # parm0:    rsi:rsi   = 'java/lang/ThreadLocal'
  #           [sp+0x40]  (sp of caller)
  0x00007f194912f120: mov    %eax,-0x14000(%rsp)
  0x00007f194912f127: push   %rbp
  0x00007f194912f128: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.lang.ThreadLocal::access$400@0 (line 74)

  0x00007f194912f12c: mov    0xc(%rsi),%eax     ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ; implicit exception: dispatches to 0x00007f194912f13b
  0x00007f194912f12f: add    $0x30,%rsp
  0x00007f194912f133: pop    %rbp
  0x00007f194912f134: test   %eax,0x155f7fc6(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912f13a: retq
  0x00007f194912f13b: callq  0x00007f1948e530c0  ; OopMap{off=32}
                                                ;*getfield threadLocalHashCode
                                                ; - java.lang.ThreadLocal::access$400@1 (line 74)
                                                ;   {runtime_call}
  0x00007f194912f140: nop
  0x00007f194912f141: nop
  0x00007f194912f142: mov    0x298(%r15),%rax
  0x00007f194912f149: mov    $0x0,%r10
  0x00007f194912f153: mov    %r10,0x298(%r15)
  0x00007f194912f15a: mov    $0x0,%r10
  0x00007f194912f164: mov    %r10,0x2a0(%r15)
  0x00007f194912f16b: add    $0x30,%rsp
  0x00007f194912f16f: pop    %rbp
  0x00007f194912f170: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912f175: hlt
  0x00007f194912f176: hlt
  0x00007f194912f177: hlt
  0x00007f194912f178: hlt
  0x00007f194912f179: hlt
  0x00007f194912f17a: hlt
  0x00007f194912f17b: hlt
  0x00007f194912f17c: hlt
  0x00007f194912f17d: hlt
  0x00007f194912f17e: hlt
  0x00007f194912f17f: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912f180: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194912f185: mov    %rsp,-0x28(%rsp)
  0x00007f194912f18a: sub    $0x80,%rsp
  0x00007f194912f191: mov    %rax,0x78(%rsp)
  0x00007f194912f196: mov    %rcx,0x70(%rsp)
  0x00007f194912f19b: mov    %rdx,0x68(%rsp)
  0x00007f194912f1a0: mov    %rbx,0x60(%rsp)
  0x00007f194912f1a5: mov    %rbp,0x50(%rsp)
  0x00007f194912f1aa: mov    %rsi,0x48(%rsp)
  0x00007f194912f1af: mov    %rdi,0x40(%rsp)
  0x00007f194912f1b4: mov    %r8,0x38(%rsp)
  0x00007f194912f1b9: mov    %r9,0x30(%rsp)
  0x00007f194912f1be: mov    %r10,0x28(%rsp)
  0x00007f194912f1c3: mov    %r11,0x20(%rsp)
  0x00007f194912f1c8: mov    %r12,0x18(%rsp)
  0x00007f194912f1cd: mov    %r13,0x10(%rsp)
  0x00007f194912f1d2: mov    %r14,0x8(%rsp)
  0x00007f194912f1d7: mov    %r15,(%rsp)
  0x00007f194912f1db: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912f1e5: mov    $0x7f194912f185,%rsi  ;   {internal_word}
  0x00007f194912f1ef: mov    %rsp,%rdx
  0x00007f194912f1f2: and    $0xfffffffffffffff0,%rsp
  0x00007f194912f1f6: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912f1fb: hlt
[Deopt Handler Code]
  0x00007f194912f1fc: mov    $0x7f194912f1fc,%r10  ;   {section_word}
  0x00007f194912f206: push   %r10
  0x00007f194912f208: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912f20d: hlt
  0x00007f194912f20e: hlt
  0x00007f194912f20f: hlt
Decoding compiled method 0x00007f194912e190:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger'
  # parm0:    rsi:rsi   = '[I'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = '[I'
  #           [sp+0x40]  (sp of caller)
  0x00007f194912e300: mov    %eax,-0x14000(%rsp)
  0x00007f194912e307: push   %rbp
  0x00007f194912e308: sub    $0x30,%rsp
  0x00007f194912e30c: mov    $0x7f1921d82940,%rax  ;   {metadata(method data for {method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e316: mov    0xdc(%rax),%edi
  0x00007f194912e31c: add    $0x8,%edi
  0x00007f194912e31f: mov    %edi,0xdc(%rax)
  0x00007f194912e325: mov    $0x7f1921d819d0,%rax  ;   {metadata({method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e32f: and    $0x1ff8,%edi
  0x00007f194912e335: cmp    $0x0,%edi
  0x00007f194912e338: je     0x00007f194912e458  ;*iload_2
                                                ; - sun.misc.FDBigInteger::mult@0 (line 1368)

  0x00007f194912e33e: movslq %ecx,%rcx
  0x00007f194912e341: mov    $0xffffffff,%rax
  0x00007f194912e34b: mov    %rcx,%rdi
  0x00007f194912e34e: and    %rax,%rdi
  0x00007f194912e351: mov    $0x0,%ebx
  0x00007f194912e356: mov    $0x0,%rcx
  0x00007f194912e360: jmpq   0x00007f194912e400  ;*iload
                                                ; - sun.misc.FDBigInteger::mult@14 (line 1370)

  0x00007f194912e365: xchg   %ax,%ax
  0x00007f194912e368: movslq %ebx,%rax
  0x00007f194912e36b: cmp    0xc(%rsi),%ebx     ; implicit exception: dispatches to 0x00007f194912e46f
  0x00007f194912e36e: jae    0x00007f194912e479
  0x00007f194912e374: mov    0x10(%rsi,%rax,4),%eax  ;*iaload
                                                ; - sun.misc.FDBigInteger::mult@23 (line 1371)

  0x00007f194912e378: movslq %eax,%rax
  0x00007f194912e37b: mov    $0xffffffff,%r9
  0x00007f194912e385: and    %r9,%rax
  0x00007f194912e388: mov    %rdi,%r9
  0x00007f194912e38b: imul   %r9,%rax
  0x00007f194912e38f: add    %rcx,%rax
  0x00007f194912e392: mov    %eax,%ecx
  0x00007f194912e394: movslq %ebx,%r9
  0x00007f194912e397: cmp    0xc(%r8),%ebx      ; implicit exception: dispatches to 0x00007f194912e482
  0x00007f194912e39b: jae    0x00007f194912e48c
  0x00007f194912e3a1: mov    %ecx,0x10(%r8,%r9,4)  ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@43 (line 1372)

  0x00007f194912e3a6: mov    $0x20,%ecx
  0x00007f194912e3ab: shr    %cl,%rax
  0x00007f194912e3ae: inc    %ebx
  0x00007f194912e3b0: mov    $0x7f1921d82940,%rcx  ;   {metadata(method data for {method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e3ba: mov    0xe0(%rcx),%r9d
  0x00007f194912e3c1: add    $0x8,%r9d
  0x00007f194912e3c5: mov    %r9d,0xe0(%rcx)
  0x00007f194912e3cc: mov    $0x7f1921d819d0,%rcx  ;   {metadata({method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e3d6: and    $0xfff8,%r9d
  0x00007f194912e3dd: cmp    $0x0,%r9d
  0x00007f194912e3e1: je     0x00007f194912e495  ; OopMap{rsi=Oop r8=Oop off=231}
                                                ;*goto
                                                ; - sun.misc.FDBigInteger::mult@54 (line 1370)

  0x00007f194912e3e7: test   %eax,0x155f8d13(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912e3ed: mov    $0x7f1921d82940,%rcx  ;   {metadata(method data for {method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e3f7: incl   0x128(%rcx)
  0x00007f194912e3fd: mov    %rax,%rcx          ;*goto
                                                ; - sun.misc.FDBigInteger::mult@54 (line 1370)

  0x00007f194912e400: cmp    %edx,%ebx
  0x00007f194912e402: mov    $0x7f1921d82940,%rax  ;   {metadata(method data for {method} {0x00007f1921d819d0} 'mult' '([III[I)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912e40c: mov    $0x108,%r9
  0x00007f194912e416: jge    0x00007f194912e426
  0x00007f194912e41c: mov    $0x118,%r9
  0x00007f194912e426: mov    (%rax,%r9,1),%r11
  0x00007f194912e42a: lea    0x1(%r11),%r11
  0x00007f194912e42e: mov    %r11,(%rax,%r9,1)
  0x00007f194912e432: jl     0x00007f194912e368  ;*if_icmpge
                                                ; - sun.misc.FDBigInteger::mult@17 (line 1370)

  0x00007f194912e438: mov    %ecx,%ecx
  0x00007f194912e43a: movslq %edx,%rsi
  0x00007f194912e43d: cmp    0xc(%r8),%edx      ; implicit exception: dispatches to 0x00007f194912e4ac
  0x00007f194912e441: jae    0x00007f194912e4b6
  0x00007f194912e447: mov    %ecx,0x10(%r8,%rsi,4)  ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@62 (line 1375)

  0x00007f194912e44c: add    $0x30,%rsp
  0x00007f194912e450: pop    %rbp
  0x00007f194912e451: test   %eax,0x155f8ca9(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912e457: retq
  0x00007f194912e458: mov    %rax,0x8(%rsp)
  0x00007f194912e45d: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912e465: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop r8=Oop off=362}
                                                ;*synchronization entry
                                                ; - sun.misc.FDBigInteger::mult@-1 (line 1368)
                                                ;   {runtime_call}
  0x00007f194912e46a: jmpq   0x00007f194912e33e
  0x00007f194912e46f: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop r8=Oop off=372}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::mult@23 (line 1371)
                                                ;   {runtime_call}
  0x00007f194912e474: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop r8=Oop off=377}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::mult@23 (line 1371)
                                                ;   {runtime_call}
  0x00007f194912e479: mov    %rbx,(%rsp)
  0x00007f194912e47d: callq  0x00007f1948e53780  ; OopMap{rsi=Oop r8=Oop off=386}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::mult@23 (line 1371)
                                                ;   {runtime_call}
  0x00007f194912e482: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop r8=Oop off=391}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@43 (line 1372)
                                                ;   {runtime_call}
  0x00007f194912e487: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop r8=Oop off=396}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@43 (line 1372)
                                                ;   {runtime_call}
  0x00007f194912e48c: mov    %rbx,(%rsp)
  0x00007f194912e490: callq  0x00007f1948e53780  ; OopMap{rsi=Oop r8=Oop off=405}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@43 (line 1372)
                                                ;   {runtime_call}
  0x00007f194912e495: mov    %rcx,0x8(%rsp)
  0x00007f194912e49a: movq   $0x36,(%rsp)
  0x00007f194912e4a2: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop r8=Oop off=423}
                                                ;*goto
                                                ; - sun.misc.FDBigInteger::mult@54 (line 1370)
                                                ;   {runtime_call}
  0x00007f194912e4a7: jmpq   0x00007f194912e3e7
  0x00007f194912e4ac: callq  0x00007f1948e530c0  ; OopMap{r8=Oop off=433}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@62 (line 1375)
                                                ;   {runtime_call}
  0x00007f194912e4b1: callq  0x00007f1948e530c0  ; OopMap{r8=Oop off=438}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@62 (line 1375)
                                                ;   {runtime_call}
  0x00007f194912e4b6: mov    %rdx,(%rsp)
  0x00007f194912e4ba: callq  0x00007f1948e53780  ; OopMap{r8=Oop off=447}
                                                ;*iastore
                                                ; - sun.misc.FDBigInteger::mult@62 (line 1375)
                                                ;   {runtime_call}
  0x00007f194912e4bf: nop
  0x00007f194912e4c0: nop
  0x00007f194912e4c1: mov    0x298(%r15),%rax
  0x00007f194912e4c8: mov    $0x0,%r10
  0x00007f194912e4d2: mov    %r10,0x298(%r15)
  0x00007f194912e4d9: mov    $0x0,%r10
  0x00007f194912e4e3: mov    %r10,0x2a0(%r15)
  0x00007f194912e4ea: add    $0x30,%rsp
  0x00007f194912e4ee: pop    %rbp
  0x00007f194912e4ef: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912e4f4: hlt
  0x00007f194912e4f5: hlt
  0x00007f194912e4f6: hlt
  0x00007f194912e4f7: hlt
  0x00007f194912e4f8: hlt
  0x00007f194912e4f9: hlt
  0x00007f194912e4fa: hlt
  0x00007f194912e4fb: hlt
  0x00007f194912e4fc: hlt
  0x00007f194912e4fd: hlt
  0x00007f194912e4fe: hlt
  0x00007f194912e4ff: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912e500: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194912e505: mov    %rsp,-0x28(%rsp)
  0x00007f194912e50a: sub    $0x80,%rsp
  0x00007f194912e511: mov    %rax,0x78(%rsp)
  0x00007f194912e516: mov    %rcx,0x70(%rsp)
  0x00007f194912e51b: mov    %rdx,0x68(%rsp)
  0x00007f194912e520: mov    %rbx,0x60(%rsp)
  0x00007f194912e525: mov    %rbp,0x50(%rsp)
  0x00007f194912e52a: mov    %rsi,0x48(%rsp)
  0x00007f194912e52f: mov    %rdi,0x40(%rsp)
  0x00007f194912e534: mov    %r8,0x38(%rsp)
  0x00007f194912e539: mov    %r9,0x30(%rsp)
  0x00007f194912e53e: mov    %r10,0x28(%rsp)
  0x00007f194912e543: mov    %r11,0x20(%rsp)
  0x00007f194912e548: mov    %r12,0x18(%rsp)
  0x00007f194912e54d: mov    %r13,0x10(%rsp)
  0x00007f194912e552: mov    %r14,0x8(%rsp)
  0x00007f194912e557: mov    %r15,(%rsp)
  0x00007f194912e55b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912e565: mov    $0x7f194912e505,%rsi  ;   {internal_word}
  0x00007f194912e56f: mov    %rsp,%rdx
  0x00007f194912e572: and    $0xfffffffffffffff0,%rsp
  0x00007f194912e576: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912e57b: hlt
[Deopt Handler Code]
  0x00007f194912e57c: mov    $0x7f194912e57c,%r10  ;   {section_word}
  0x00007f194912e586: push   %r10
  0x00007f194912e588: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912e58d: hlt
  0x00007f194912e58e: hlt
  0x00007f194912e58f: hlt
Decoding compiled method 0x00007f194912dc90:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d7f7d0} '<init>' '([II)V' in 'sun/misc/FDBigInteger'
  # this:     rsi:rsi   = 'sun/misc/FDBigInteger'
  # parm0:    rdx:rdx   = '[I'
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x00007f194912de00: mov    0x8(%rsi),%r10d
  0x00007f194912de04: shl    $0x3,%r10
  0x00007f194912de08: cmp    %rax,%r10
  0x00007f194912de0b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f194912de11: nopw   0x0(%rax,%rax,1)
  0x00007f194912de1c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f194912de20: mov    %eax,-0x14000(%rsp)
  0x00007f194912de27: push   %rbp
  0x00007f194912de28: sub    $0x30,%rsp
  0x00007f194912de2c: mov    $0x7f1921d82ab0,%rdi  ;   {metadata(method data for {method} {0x00007f1921d7f7d0} '<init>' '([II)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912de36: mov    0xdc(%rdi),%ebx
  0x00007f194912de3c: add    $0x8,%ebx
  0x00007f194912de3f: mov    %ebx,0xdc(%rdi)
  0x00007f194912de45: mov    $0x7f1921d7f7d0,%rdi  ;   {metadata({method} {0x00007f1921d7f7d0} '<init>' '([II)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912de4f: and    $0x1ff8,%ebx
  0x00007f194912de55: cmp    $0x0,%ebx
  0x00007f194912de58: je     0x00007f194912def8  ;*aload_0
                                                ; - sun.misc.FDBigInteger::<init>@0 (line 185)

  0x00007f194912de5e: mov    %rsi,%rdi
  0x00007f194912de61: mov    $0x7f1921d82ab0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d7f7d0} '<init>' '([II)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912de6b: addq   $0x1,0x108(%rbx)
  0x00007f194912de73: mov    $0x7f1921cbab98,%rdi  ;   {metadata(method data for {method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f194912de7d: mov    0xdc(%rdi),%ebx
  0x00007f194912de83: add    $0x8,%ebx
  0x00007f194912de86: mov    %ebx,0xdc(%rdi)
  0x00007f194912de8c: mov    $0x7f1921b5b488,%rdi  ;   {metadata({method} {0x00007f1921b5b488} '<init>' '()V' in 'java/lang/Object')}
  0x00007f194912de96: and    $0x7ffff8,%ebx
  0x00007f194912de9c: cmp    $0x0,%ebx
  0x00007f194912de9f: je     0x00007f194912df0f
  0x00007f194912dea5: movb   $0x0,0x14(%rsi)    ;*putfield isImmutable
                                                ; - sun.misc.FDBigInteger::<init>@6 (line 157)

  0x00007f194912dea9: mov    %rdx,%r10
  0x00007f194912deac: shr    $0x3,%r10
  0x00007f194912deb0: mov    %r10d,0x18(%rsi)
  0x00007f194912deb4: mov    %rsi,%rdi
  0x00007f194912deb7: shr    $0x9,%rdi
  0x00007f194912debb: mov    $0x7f1944c24000,%rbx
  0x00007f194912dec5: movb   $0x0,(%rdi,%rbx,1)  ;*putfield data
                                                ; - sun.misc.FDBigInteger::<init>@11 (line 186)

  0x00007f194912dec9: mov    %ecx,0xc(%rsi)     ;*putfield offset
                                                ; - sun.misc.FDBigInteger::<init>@16 (line 187)

  0x00007f194912decc: mov    0xc(%rdx),%edi     ;*arraylength
                                                ; - sun.misc.FDBigInteger::<init>@21 (line 188)
                                                ; implicit exception: dispatches to 0x00007f194912df23
  0x00007f194912decf: mov    %edi,0x10(%rsi)    ;*putfield nWords
                                                ; - sun.misc.FDBigInteger::<init>@22 (line 188)

  0x00007f194912ded2: mov    %rsi,%rdi
  0x00007f194912ded5: mov    $0x7f1921d82ab0,%rbx  ;   {metadata(method data for {method} {0x00007f1921d7f7d0} '<init>' '([II)V' in 'sun/misc/FDBigInteger')}
  0x00007f194912dedf: addq   $0x1,0x118(%rbx)
  0x00007f194912dee7: callq  0x00007f1948e2ad60  ; OopMap{off=236}
                                                ;*invokespecial trimLeadingZeros
                                                ; - sun.misc.FDBigInteger::<init>@26 (line 189)
                                                ;   {optimized virtual_call}
  0x00007f194912deec: add    $0x30,%rsp
  0x00007f194912def0: pop    %rbp
  0x00007f194912def1: test   %eax,0x155f9209(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912def7: retq
  0x00007f194912def8: mov    %rdi,0x8(%rsp)
  0x00007f194912defd: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912df05: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rdx=Oop off=266}
                                                ;*synchronization entry
                                                ; - sun.misc.FDBigInteger::<init>@-1 (line 185)
                                                ;   {runtime_call}
  0x00007f194912df0a: jmpq   0x00007f194912de5e
  0x00007f194912df0f: mov    %rdi,0x8(%rsp)
  0x00007f194912df14: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912df1c: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rdx=Oop off=289}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ; - sun.misc.FDBigInteger::<init>@1 (line 185)
                                                ;   {runtime_call}
  0x00007f194912df21: jmp    0x00007f194912dea5
  0x00007f194912df23: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop off=296}
                                                ;*arraylength
                                                ; - sun.misc.FDBigInteger::<init>@21 (line 188)
                                                ;   {runtime_call}
  0x00007f194912df28: nop
  0x00007f194912df29: nop
  0x00007f194912df2a: mov    0x298(%r15),%rax
  0x00007f194912df31: mov    $0x0,%r10
  0x00007f194912df3b: mov    %r10,0x298(%r15)
  0x00007f194912df42: mov    $0x0,%r10
  0x00007f194912df4c: mov    %r10,0x2a0(%r15)
  0x00007f194912df53: add    $0x30,%rsp
  0x00007f194912df57: pop    %rbp
  0x00007f194912df58: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912df5d: hlt
  0x00007f194912df5e: hlt
  0x00007f194912df5f: hlt
[Stub Code]
  0x00007f194912df60: nop                       ;   {no_reloc}
  0x00007f194912df61: nop
  0x00007f194912df62: nop
  0x00007f194912df63: nop
  0x00007f194912df64: nop
  0x00007f194912df65: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912df6f: jmpq   0x00007f194912df6f  ;   {runtime_call}
[Exception Handler]
  0x00007f194912df74: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f194912df79: mov    %rsp,-0x28(%rsp)
  0x00007f194912df7e: sub    $0x80,%rsp
  0x00007f194912df85: mov    %rax,0x78(%rsp)
  0x00007f194912df8a: mov    %rcx,0x70(%rsp)
  0x00007f194912df8f: mov    %rdx,0x68(%rsp)
  0x00007f194912df94: mov    %rbx,0x60(%rsp)
  0x00007f194912df99: mov    %rbp,0x50(%rsp)
  0x00007f194912df9e: mov    %rsi,0x48(%rsp)
  0x00007f194912dfa3: mov    %rdi,0x40(%rsp)
  0x00007f194912dfa8: mov    %r8,0x38(%rsp)
  0x00007f194912dfad: mov    %r9,0x30(%rsp)
  0x00007f194912dfb2: mov    %r10,0x28(%rsp)
  0x00007f194912dfb7: mov    %r11,0x20(%rsp)
  0x00007f194912dfbc: mov    %r12,0x18(%rsp)
  0x00007f194912dfc1: mov    %r13,0x10(%rsp)
  0x00007f194912dfc6: mov    %r14,0x8(%rsp)
  0x00007f194912dfcb: mov    %r15,(%rsp)
  0x00007f194912dfcf: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912dfd9: mov    $0x7f194912df79,%rsi  ;   {internal_word}
  0x00007f194912dfe3: mov    %rsp,%rdx
  0x00007f194912dfe6: and    $0xfffffffffffffff0,%rsp
  0x00007f194912dfea: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912dfef: hlt
[Deopt Handler Code]
  0x00007f194912dff0: mov    $0x7f194912dff0,%r10  ;   {section_word}
  0x00007f194912dffa: push   %r10
  0x00007f194912dffc: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912e001: hlt
  0x00007f194912e002: hlt
  0x00007f194912e003: hlt
  0x00007f194912e004: hlt
  0x00007f194912e005: hlt
  0x00007f194912e006: hlt
  0x00007f194912e007: hlt
Decoding compiled method 0x00007f194912d5d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger'
  #           [sp+0x40]  (sp of caller)
  0x00007f194912d740: mov    0x8(%rsi),%r10d
  0x00007f194912d744: shl    $0x3,%r10
  0x00007f194912d748: cmp    %rax,%r10
  0x00007f194912d74b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f194912d751: nopw   0x0(%rax,%rax,1)
  0x00007f194912d75c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f194912d760: mov    %eax,-0x14000(%rsp)
  0x00007f194912d767: push   %rbp
  0x00007f194912d768: sub    $0x30,%rsp
  0x00007f194912d76c: mov    $0x7f1921d82c00,%rdi  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d776: mov    0xdc(%rdi),%ebx
  0x00007f194912d77c: add    $0x8,%ebx
  0x00007f194912d77f: mov    %ebx,0xdc(%rdi)
  0x00007f194912d785: mov    $0x7f1921d7fe30,%rdi  ;   {metadata({method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d78f: and    $0x1ff8,%ebx
  0x00007f194912d795: cmp    $0x0,%ebx
  0x00007f194912d798: je     0x00007f194912d958  ;*aload_0
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@0 (line 370)

  0x00007f194912d79e: mov    0x10(%rsi),%edi    ;*getfield nWords
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@1 (line 370)

  0x00007f194912d7a1: cmp    $0x0,%edi
  0x00007f194912d7a4: mov    $0x7f1921d82c00,%rbx  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d7ae: mov    $0x108,%rax
  0x00007f194912d7b8: jle    0x00007f194912d7c8
  0x00007f194912d7be: mov    $0x118,%rax
  0x00007f194912d7c8: mov    (%rbx,%rax,1),%rdx
  0x00007f194912d7cc: lea    0x1(%rdx),%rdx
  0x00007f194912d7d0: mov    %rdx,(%rbx,%rax,1)
  0x00007f194912d7d4: jle    0x00007f194912d94c  ;*ifle
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@6 (line 371)

  0x00007f194912d7da: mov    0x18(%rsi),%ebx
  0x00007f194912d7dd: shl    $0x3,%rbx          ;*getfield data
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@10 (line 371)

  0x00007f194912d7e1: dec    %edi
  0x00007f194912d7e3: movslq %edi,%rax
  0x00007f194912d7e6: cmp    0xc(%rbx),%edi     ; implicit exception: dispatches to 0x00007f194912d96f
  0x00007f194912d7e9: jae    0x00007f194912d979
  0x00007f194912d7ef: mov    0x10(%rbx,%rax,4),%eax  ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@17 (line 371)

  0x00007f194912d7f3: cmp    $0x0,%eax
  0x00007f194912d7f6: mov    $0x7f1921d82c00,%rax  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d800: mov    $0x128,%rdx
  0x00007f194912d80a: jne    0x00007f194912d81a
  0x00007f194912d810: mov    $0x138,%rdx
  0x00007f194912d81a: mov    (%rax,%rdx,1),%rcx
  0x00007f194912d81e: lea    0x1(%rcx),%rcx
  0x00007f194912d822: mov    %rcx,(%rax,%rdx,1)
  0x00007f194912d826: jne    0x00007f194912d94c
  0x00007f194912d82c: jmpq   0x00007f194912d8d0  ;*ifne
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@18 (line 371)

  0x00007f194912d831: nopl   0x0(%rax)
  0x00007f194912d838: mov    %rdi,%rax
  0x00007f194912d83b: dec    %eax
  0x00007f194912d83d: movslq %eax,%rdx
  0x00007f194912d840: cmp    0xc(%rbx),%eax
  0x00007f194912d843: jae    0x00007f194912d982
  0x00007f194912d849: mov    0x10(%rbx,%rdx,4),%eax  ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@32 (line 373)

  0x00007f194912d84d: cmp    $0x0,%eax
  0x00007f194912d850: mov    $0x7f1921d82c00,%rax  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d85a: mov    $0x168,%rdx
  0x00007f194912d864: jne    0x00007f194912d874
  0x00007f194912d86a: mov    $0x178,%rdx
  0x00007f194912d874: mov    (%rax,%rdx,1),%rcx
  0x00007f194912d878: lea    0x1(%rcx),%rcx
  0x00007f194912d87c: mov    %rcx,(%rax,%rdx,1)
  0x00007f194912d880: jne    0x00007f194912d909  ;*ifne
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@33 (line 373)

  0x00007f194912d886: dec    %edi
  0x00007f194912d888: mov    $0x7f1921d82c00,%rax  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d892: mov    0xe0(%rax),%edx
  0x00007f194912d898: add    $0x8,%edx
  0x00007f194912d89b: mov    %edx,0xe0(%rax)
  0x00007f194912d8a1: mov    $0x7f1921d7fe30,%rax  ;   {metadata({method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d8ab: and    $0xfff8,%edx
  0x00007f194912d8b1: cmp    $0x0,%edx
  0x00007f194912d8b4: je     0x00007f194912d98b  ; OopMap{rsi=Oop rbx=Oop off=378}
                                                ;*goto
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@39 (line 374)

  0x00007f194912d8ba: test   %eax,0x155f9840(%rip)        # 0x00007f195e727100
                                                ;   {poll}
  0x00007f194912d8c0: mov    $0x7f1921d82c00,%rax  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d8ca: incl   0x188(%rax)        ;*goto
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@39 (line 374)

  0x00007f194912d8d0: cmp    $0x0,%edi
  0x00007f194912d8d3: mov    $0x7f1921d82c00,%rax  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d8dd: mov    $0x148,%rdx
  0x00007f194912d8e7: jle    0x00007f194912d8f7
  0x00007f194912d8ed: mov    $0x158,%rdx
  0x00007f194912d8f7: mov    (%rax,%rdx,1),%rcx
  0x00007f194912d8fb: lea    0x1(%rcx),%rcx
  0x00007f194912d8ff: mov    %rcx,(%rax,%rdx,1)
  0x00007f194912d903: jg     0x00007f194912d838  ;*ifle
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@22 (line 373)

  0x00007f194912d909: mov    %edi,0x10(%rsi)    ;*putfield nWords
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@44 (line 376)

  0x00007f194912d90c: cmp    $0x0,%edi
  0x00007f194912d90f: mov    $0x7f1921d82c00,%rdi  ;   {metadata(method data for {method} {0x00007f1921d7fe30} 'trimLeadingZeros' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d919: mov    $0x1a0,%rbx
  0x00007f194912d923: jne    0x00007f194912d933
  0x00007f194912d929: mov    $0x1b0,%rbx
  0x00007f194912d933: mov    (%rdi,%rbx,1),%rax
  0x00007f194912d937: lea    0x1(%rax),%rax
  0x00007f194912d93b: mov    %rax,(%rdi,%rbx,1)
  0x00007f194912d93f: jne    0x00007f194912d94c  ;*ifne
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@48 (line 377)

  0x00007f194912d945: movl   $0x0,0xc(%rsi)     ;*putfield offset
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@53 (line 378)

  0x00007f194912d94c: add    $0x30,%rsp
  0x00007f194912d950: pop    %rbp
  0x00007f194912d951: test   %eax,0x155f97a9(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912d957: retq
  0x00007f194912d958: mov    %rdi,0x8(%rsp)
  0x00007f194912d95d: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912d965: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=554}
                                                ;*synchronization entry
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@-1 (line 370)
                                                ;   {runtime_call}
  0x00007f194912d96a: jmpq   0x00007f194912d79e
  0x00007f194912d96f: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop rbx=Oop off=564}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@17 (line 371)
                                                ;   {runtime_call}
  0x00007f194912d974: callq  0x00007f1948e530c0  ; OopMap{rsi=Oop rbx=Oop off=569}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@17 (line 371)
                                                ;   {runtime_call}
  0x00007f194912d979: mov    %rdi,(%rsp)
  0x00007f194912d97d: callq  0x00007f1948e53780  ; OopMap{rsi=Oop rbx=Oop off=578}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@17 (line 371)
                                                ;   {runtime_call}
  0x00007f194912d982: mov    %rax,(%rsp)
  0x00007f194912d986: callq  0x00007f1948e53780  ; OopMap{rsi=Oop rbx=Oop off=587}
                                                ;*iaload
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@32 (line 373)
                                                ;   {runtime_call}
  0x00007f194912d98b: mov    %rax,0x8(%rsp)
  0x00007f194912d990: movq   $0x27,(%rsp)
  0x00007f194912d998: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop rbx=Oop off=605}
                                                ;*goto
                                                ; - sun.misc.FDBigInteger::trimLeadingZeros@39 (line 374)
                                                ;   {runtime_call}
  0x00007f194912d99d: jmpq   0x00007f194912d8ba
  0x00007f194912d9a2: nop
  0x00007f194912d9a3: nop
  0x00007f194912d9a4: mov    0x298(%r15),%rax
  0x00007f194912d9ab: mov    $0x0,%r10
  0x00007f194912d9b5: mov    %r10,0x298(%r15)
  0x00007f194912d9bc: mov    $0x0,%r10
  0x00007f194912d9c6: mov    %r10,0x2a0(%r15)
  0x00007f194912d9cd: add    $0x30,%rsp
  0x00007f194912d9d1: pop    %rbp
  0x00007f194912d9d2: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912d9d7: hlt
  0x00007f194912d9d8: hlt
  0x00007f194912d9d9: hlt
  0x00007f194912d9da: hlt
  0x00007f194912d9db: hlt
  0x00007f194912d9dc: hlt
  0x00007f194912d9dd: hlt
  0x00007f194912d9de: hlt
  0x00007f194912d9df: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912d9e0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194912d9e5: mov    %rsp,-0x28(%rsp)
  0x00007f194912d9ea: sub    $0x80,%rsp
  0x00007f194912d9f1: mov    %rax,0x78(%rsp)
  0x00007f194912d9f6: mov    %rcx,0x70(%rsp)
  0x00007f194912d9fb: mov    %rdx,0x68(%rsp)
  0x00007f194912da00: mov    %rbx,0x60(%rsp)
  0x00007f194912da05: mov    %rbp,0x50(%rsp)
  0x00007f194912da0a: mov    %rsi,0x48(%rsp)
  0x00007f194912da0f: mov    %rdi,0x40(%rsp)
  0x00007f194912da14: mov    %r8,0x38(%rsp)
  0x00007f194912da19: mov    %r9,0x30(%rsp)
  0x00007f194912da1e: mov    %r10,0x28(%rsp)
  0x00007f194912da23: mov    %r11,0x20(%rsp)
  0x00007f194912da28: mov    %r12,0x18(%rsp)
  0x00007f194912da2d: mov    %r13,0x10(%rsp)
  0x00007f194912da32: mov    %r14,0x8(%rsp)
  0x00007f194912da37: mov    %r15,(%rsp)
  0x00007f194912da3b: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912da45: mov    $0x7f194912d9e5,%rsi  ;   {internal_word}
  0x00007f194912da4f: mov    %rsp,%rdx
  0x00007f194912da52: and    $0xfffffffffffffff0,%rsp
  0x00007f194912da56: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912da5b: hlt
[Deopt Handler Code]
  0x00007f194912da5c: mov    $0x7f194912da5c,%r10  ;   {section_word}
  0x00007f194912da66: push   %r10
  0x00007f194912da68: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912da6d: hlt
  0x00007f194912da6e: hlt
  0x00007f194912da6f: hlt
Decoding compiled method 0x00007f194912d290:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d811d0} 'makeImmutable' '()V' in 'sun/misc/FDBigInteger'
  #           [sp+0x40]  (sp of caller)
  0x00007f194912d3e0: mov    0x8(%rsi),%r10d
  0x00007f194912d3e4: shl    $0x3,%r10
  0x00007f194912d3e8: cmp    %rax,%r10
  0x00007f194912d3eb: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f194912d3f1: nopw   0x0(%rax,%rax,1)
  0x00007f194912d3fc: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f194912d400: mov    %eax,-0x14000(%rsp)
  0x00007f194912d407: push   %rbp
  0x00007f194912d408: sub    $0x30,%rsp
  0x00007f194912d40c: mov    $0x7f1921d82dd8,%rdi  ;   {metadata(method data for {method} {0x00007f1921d811d0} 'makeImmutable' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d416: mov    0xdc(%rdi),%ebx
  0x00007f194912d41c: add    $0x8,%ebx
  0x00007f194912d41f: mov    %ebx,0xdc(%rdi)
  0x00007f194912d425: mov    $0x7f1921d811d0,%rdi  ;   {metadata({method} {0x00007f1921d811d0} 'makeImmutable' '()V' in 'sun/misc/FDBigInteger')}
  0x00007f194912d42f: and    $0x1ff8,%ebx
  0x00007f194912d435: cmp    $0x0,%ebx
  0x00007f194912d438: je     0x00007f194912d44e  ;*aload_0
                                                ; - sun.misc.FDBigInteger::makeImmutable@0 (line 1101)

  0x00007f194912d43e: movb   $0x1,0x14(%rsi)    ;*putfield isImmutable
                                                ; - sun.misc.FDBigInteger::makeImmutable@2 (line 1101)

  0x00007f194912d442: add    $0x30,%rsp
  0x00007f194912d446: pop    %rbp
  0x00007f194912d447: test   %eax,0x155f9cb3(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912d44d: retq
  0x00007f194912d44e: mov    %rdi,0x8(%rsp)
  0x00007f194912d453: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912d45b: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=128}
                                                ;*synchronization entry
                                                ; - sun.misc.FDBigInteger::makeImmutable@-1 (line 1101)
                                                ;   {runtime_call}
  0x00007f194912d460: jmp    0x00007f194912d43e
  0x00007f194912d462: nop
  0x00007f194912d463: nop
  0x00007f194912d464: mov    0x298(%r15),%rax
  0x00007f194912d46b: mov    $0x0,%r10
  0x00007f194912d475: mov    %r10,0x298(%r15)
  0x00007f194912d47c: mov    $0x0,%r10
  0x00007f194912d486: mov    %r10,0x2a0(%r15)
  0x00007f194912d48d: add    $0x30,%rsp
  0x00007f194912d491: pop    %rbp
  0x00007f194912d492: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912d497: hlt
  0x00007f194912d498: hlt
  0x00007f194912d499: hlt
  0x00007f194912d49a: hlt
  0x00007f194912d49b: hlt
  0x00007f194912d49c: hlt
  0x00007f194912d49d: hlt
  0x00007f194912d49e: hlt
  0x00007f194912d49f: hlt
[Exception Handler]
[Stub Code]
  0x00007f194912d4a0: callq  0x00007f1948e511e0  ;   {no_reloc}
  0x00007f194912d4a5: mov    %rsp,-0x28(%rsp)
  0x00007f194912d4aa: sub    $0x80,%rsp
  0x00007f194912d4b1: mov    %rax,0x78(%rsp)
  0x00007f194912d4b6: mov    %rcx,0x70(%rsp)
  0x00007f194912d4bb: mov    %rdx,0x68(%rsp)
  0x00007f194912d4c0: mov    %rbx,0x60(%rsp)
  0x00007f194912d4c5: mov    %rbp,0x50(%rsp)
  0x00007f194912d4ca: mov    %rsi,0x48(%rsp)
  0x00007f194912d4cf: mov    %rdi,0x40(%rsp)
  0x00007f194912d4d4: mov    %r8,0x38(%rsp)
  0x00007f194912d4d9: mov    %r9,0x30(%rsp)
  0x00007f194912d4de: mov    %r10,0x28(%rsp)
  0x00007f194912d4e3: mov    %r11,0x20(%rsp)
  0x00007f194912d4e8: mov    %r12,0x18(%rsp)
  0x00007f194912d4ed: mov    %r13,0x10(%rsp)
  0x00007f194912d4f2: mov    %r14,0x8(%rsp)
  0x00007f194912d4f7: mov    %r15,(%rsp)
  0x00007f194912d4fb: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912d505: mov    $0x7f194912d4a5,%rsi  ;   {internal_word}
  0x00007f194912d50f: mov    %rsp,%rdx
  0x00007f194912d512: and    $0xfffffffffffffff0,%rsp
  0x00007f194912d516: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912d51b: hlt
[Deopt Handler Code]
  0x00007f194912d51c: mov    $0x7f194912d51c,%r10  ;   {section_word}
  0x00007f194912d526: push   %r10
  0x00007f194912d528: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912d52d: hlt
  0x00007f194912d52e: hlt
  0x00007f194912d52f: hlt
Decoding compiled method 0x00007f194912cbd0:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger'
  # this:     rsi:rsi   = 'sun/misc/FDBigInteger'
  # parm0:    rdx       = int
  #           [sp+0x60]  (sp of caller)
  0x00007f194912cd60: mov    0x8(%rsi),%r10d
  0x00007f194912cd64: shl    $0x3,%r10
  0x00007f194912cd68: cmp    %rax,%r10
  0x00007f194912cd6b: jne    0x00007f1948e2ab60  ;   {runtime_call}
  0x00007f194912cd71: nopw   0x0(%rax,%rax,1)
  0x00007f194912cd7c: xchg   %ax,%ax
[Verified Entry Point]
  0x00007f194912cd80: mov    %eax,-0x14000(%rsp)
  0x00007f194912cd87: push   %rbp
  0x00007f194912cd88: sub    $0x50,%rsp
  0x00007f194912cd8c: mov    %rdx,%r8
  0x00007f194912cd8f: mov    $0x7f1921d82ef8,%rax  ;   {metadata(method data for {method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger')}
  0x00007f194912cd99: mov    0xdc(%rax),%ebx
  0x00007f194912cd9f: add    $0x8,%ebx
  0x00007f194912cda2: mov    %ebx,0xdc(%rax)
  0x00007f194912cda8: mov    $0x7f1921d81290,%rax  ;   {metadata({method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger')}
  0x00007f194912cdb2: and    $0x1ff8,%ebx
  0x00007f194912cdb8: cmp    $0x0,%ebx
  0x00007f194912cdbb: je     0x00007f194912cf5d  ;*aload_0
                                                ; - sun.misc.FDBigInteger::mult@0 (line 1122)

  0x00007f194912cdc1: mov    0x10(%rsi),%r9d    ;*getfield nWords
                                                ; - sun.misc.FDBigInteger::mult@1 (line 1122)

  0x00007f194912cdc5: cmp    $0x0,%r9d
  0x00007f194912cdc9: mov    $0x7f1921d82ef8,%rax  ;   {metadata(method data for {method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger')}
  0x00007f194912cdd3: mov    $0x108,%rbx
  0x00007f194912cddd: jne    0x00007f194912cded
  0x00007f194912cde3: mov    $0x118,%rbx
  0x00007f194912cded: mov    (%rax,%rbx,1),%rdx
  0x00007f194912cdf1: lea    0x1(%rdx),%rdx
  0x00007f194912cdf5: mov    %rdx,(%rax,%rbx,1)
  0x00007f194912cdf9: jne    0x00007f194912ce0e  ;*ifne
                                                ; - sun.misc.FDBigInteger::mult@4 (line 1122)

  0x00007f194912cdff: mov    %rsi,%rax
  0x00007f194912ce02: add    $0x50,%rsp
  0x00007f194912ce06: pop    %rbp
  0x00007f194912ce07: test   %eax,0x155fa2f3(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912ce0d: retq                      ;*areturn
                                                ; - sun.misc.FDBigInteger::mult@8 (line 1123)

  0x00007f194912ce0e: mov    %r9,%rbx
  0x00007f194912ce11: inc    %ebx
  0x00007f194912ce13: mov    $0x7c0000b68,%rdx  ;   {metadata({type array int})}
  0x00007f194912ce1d: mov    %rsi,%r11
  0x00007f194912ce20: movslq %ebx,%rbx
  0x00007f194912ce23: mov    %rbx,%rdi
  0x00007f194912ce26: cmp    $0xffffff,%rbx
  0x00007f194912ce2d: ja     0x00007f194912cf74
  0x00007f194912ce33: mov    $0x17,%rsi
  0x00007f194912ce3d: lea    (%rsi,%rbx,4),%rsi
  0x00007f194912ce41: and    $0xfffffffffffffff8,%rsi
  0x00007f194912ce45: mov    0x60(%r15),%rax
  0x00007f194912ce49: lea    (%rax,%rsi,1),%rsi
  0x00007f194912ce4d: cmp    0x70(%r15),%rsi
  0x00007f194912ce51: ja     0x00007f194912cf74
  0x00007f194912ce57: mov    %rsi,0x60(%r15)
  0x00007f194912ce5b: sub    %rax,%rsi
  0x00007f194912ce5e: movq   $0x1,(%rax)
  0x00007f194912ce65: mov    %rdx,%rcx
  0x00007f194912ce68: shr    $0x3,%rcx
  0x00007f194912ce6c: mov    %ecx,0x8(%rax)
  0x00007f194912ce6f: mov    %ebx,0xc(%rax)
  0x00007f194912ce72: sub    $0x10,%rsi
  0x00007f194912ce76: je     0x00007f194912ce8d
  0x00007f194912ce7c: xor    %rbx,%rbx
  0x00007f194912ce7f: shr    $0x3,%rsi
  0x00007f194912ce83: mov    %rbx,0x8(%rax,%rsi,8)
  0x00007f194912ce88: dec    %rsi
  0x00007f194912ce8b: jne    0x00007f194912ce83  ;*newarray
                                                ; - sun.misc.FDBigInteger::mult@15 (line 1125)

  0x00007f194912ce8d: mov    0x18(%r11),%esi
  0x00007f194912ce91: shl    $0x3,%rsi          ;*getfield data
                                                ; - sun.misc.FDBigInteger::mult@19 (line 1126)

  0x00007f194912ce95: mov    $0x7f1921d82ef8,%rdx  ;   {metadata(method data for {method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger')}
  0x00007f194912ce9f: addq   $0x1,0x128(%rdx)
  0x00007f194912cea7: mov    %r9,%rdx
  0x00007f194912ceaa: mov    %r8,%rcx
  0x00007f194912cead: mov    %rax,%r8           ;*invokestatic mult
                                                ; - sun.misc.FDBigInteger::mult@28 (line 1126)

  0x00007f194912ceb0: mov    %rax,0x30(%rsp)
  0x00007f194912ceb5: mov    %r11,0x28(%rsp)
  0x00007f194912ceba: nop
  0x00007f194912cebb: nop
  0x00007f194912cebc: nop
  0x00007f194912cebd: nop
  0x00007f194912cebe: nop
  0x00007f194912cebf: callq  0x00007f1948e2b160  ; OopMap{[48]=Oop [40]=Oop off=356}
                                                ;*invokestatic mult
                                                ; - sun.misc.FDBigInteger::mult@28 (line 1126)
                                                ;   {static_call}
  0x00007f194912cec4: mov    $0x7c0042408,%rdx  ;   {metadata('sun/misc/FDBigInteger')}
  0x00007f194912cece: cmpb   $0x4,0x172(%rdx)
  0x00007f194912ced5: jne    0x00007f194912cf83  ; implicit exception: dispatches to 0x00007f194912cf7e
  0x00007f194912cedb: mov    0x60(%r15),%rax
  0x00007f194912cedf: lea    0x20(%rax),%rdi
  0x00007f194912cee3: cmp    0x70(%r15),%rdi
  0x00007f194912cee7: ja     0x00007f194912cf83
  0x00007f194912ceed: mov    %rdi,0x60(%r15)
  0x00007f194912cef1: mov    0xa8(%rdx),%rcx
  0x00007f194912cef8: mov    %rcx,(%rax)
  0x00007f194912cefb: mov    %rdx,%rcx
  0x00007f194912cefe: shr    $0x3,%rcx
  0x00007f194912cf02: mov    %ecx,0x8(%rax)
  0x00007f194912cf05: xor    %rcx,%rcx
  0x00007f194912cf08: mov    %ecx,0xc(%rax)
  0x00007f194912cf0b: xor    %rcx,%rcx
  0x00007f194912cf0e: mov    %rcx,0x10(%rax)
  0x00007f194912cf12: mov    %rcx,0x18(%rax)    ;*new  ; - sun.misc.FDBigInteger::mult@31 (line 1127)

  0x00007f194912cf16: mov    0x28(%rsp),%rsi
  0x00007f194912cf1b: mov    0xc(%rsi),%ecx     ;*getfield offset
                                                ; - sun.misc.FDBigInteger::mult@37 (line 1127)

  0x00007f194912cf1e: mov    %rax,%rdx
  0x00007f194912cf21: mov    $0x7f1921d82ef8,%rsi  ;   {metadata(method data for {method} {0x00007f1921d81290} 'mult' '(I)Lsun/misc/FDBigInteger;' in 'sun/misc/FDBigInteger')}
  0x00007f194912cf2b: addq   $0x1,0x138(%rsi)
  0x00007f194912cf33: mov    0x30(%rsp),%rdx
  0x00007f194912cf38: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - sun.misc.FDBigInteger::mult@40 (line 1127)

  0x00007f194912cf3b: mov    %rax,0x38(%rsp)
  0x00007f194912cf40: nop
  0x00007f194912cf41: nop
  0x00007f194912cf42: nop
  0x00007f194912cf43: nop
  0x00007f194912cf44: nop
  0x00007f194912cf45: nop
  0x00007f194912cf46: nop
  0x00007f194912cf47: callq  0x00007f1948e2ad60  ; OopMap{[56]=Oop off=492}
                                                ;*invokespecial <init>
                                                ; - sun.misc.FDBigInteger::mult@40 (line 1127)
                                                ;   {optimized virtual_call}
  0x00007f194912cf4c: mov    0x38(%rsp),%rax
  0x00007f194912cf51: add    $0x50,%rsp
  0x00007f194912cf55: pop    %rbp
  0x00007f194912cf56: test   %eax,0x155fa1a4(%rip)        # 0x00007f195e727100
                                                ;   {poll_return}
  0x00007f194912cf5c: retq
  0x00007f194912cf5d: mov    %rax,0x8(%rsp)
  0x00007f194912cf62: movq   $0xffffffffffffffff,(%rsp)
  0x00007f194912cf6a: callq  0x00007f1948ee3420  ; OopMap{rsi=Oop off=527}
                                                ;*synchronization entry
                                                ; - sun.misc.FDBigInteger::mult@-1 (line 1122)
                                                ;   {runtime_call}
  0x00007f194912cf6f: jmpq   0x00007f194912cdc1
  0x00007f194912cf74: callq  0x00007f1948e51ea0  ; OopMap{r11=Oop off=537}
                                                ;*newarray
                                                ; - sun.misc.FDBigInteger::mult@15 (line 1125)
                                                ;   {runtime_call}
  0x00007f194912cf79: jmpq   0x00007f194912ce8d
  0x00007f194912cf7e: callq  0x00007f1948e530c0  ; OopMap{[48]=Oop [40]=Oop off=547}
                                                ;*new  ; - sun.misc.FDBigInteger::mult@31 (line 1127)
                                                ;   {runtime_call}
  0x00007f194912cf83: mov    %rdx,%rdx
  0x00007f194912cf86: callq  0x00007f1948e52320  ; OopMap{[48]=Oop [40]=Oop off=555}
                                                ;*new  ; - sun.misc.FDBigInteger::mult@31 (line 1127)
                                                ;   {runtime_call}
  0x00007f194912cf8b: jmp    0x00007f194912cf16
  0x00007f194912cf8d: nop
  0x00007f194912cf8e: nop
  0x00007f194912cf8f: mov    0x298(%r15),%rax
  0x00007f194912cf96: mov    $0x0,%r10
  0x00007f194912cfa0: mov    %r10,0x298(%r15)
  0x00007f194912cfa7: mov    $0x0,%r10
  0x00007f194912cfb1: mov    %r10,0x2a0(%r15)
  0x00007f194912cfb8: add    $0x50,%rsp
  0x00007f194912cfbc: pop    %rbp
  0x00007f194912cfbd: jmpq   0x00007f1948e53ba0  ;   {runtime_call}
  0x00007f194912cfc2: hlt
  0x00007f194912cfc3: hlt
  0x00007f194912cfc4: hlt
  0x00007f194912cfc5: hlt
  0x00007f194912cfc6: hlt
  0x00007f194912cfc7: hlt
  0x00007f194912cfc8: hlt
  0x00007f194912cfc9: hlt
  0x00007f194912cfca: hlt
  0x00007f194912cfcb: hlt
  0x00007f194912cfcc: hlt
  0x00007f194912cfcd: hlt
  0x00007f194912cfce: hlt
  0x00007f194912cfcf: hlt
  0x00007f194912cfd0: hlt
  0x00007f194912cfd1: hlt
  0x00007f194912cfd2: hlt
  0x00007f194912cfd3: hlt
  0x00007f194912cfd4: hlt
  0x00007f194912cfd5: hlt
  0x00007f194912cfd6: hlt
  0x00007f194912cfd7: hlt
  0x00007f194912cfd8: hlt
  0x00007f194912cfd9: hlt
  0x00007f194912cfda: hlt
  0x00007f194912cfdb: hlt
  0x00007f194912cfdc: hlt
  0x00007f194912cfdd: hlt
  0x00007f194912cfde: hlt
  0x00007f194912cfdf: hlt
[Stub Code]
  0x00007f194912cfe0: nop                       ;   {no_reloc}
  0x00007f194912cfe1: nop
  0x00007f194912cfe2: nop
  0x00007f194912cfe3: nop
  0x00007f194912cfe4: nop
  0x00007f194912cfe5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912cfef: jmpq   0x00007f194912cfef  ;   {runtime_call}
  0x00007f194912cff4: nop
  0x00007f194912cff5: mov    $0x0,%rbx          ;   {static_stub}
  0x00007f194912cfff: jmpq   0x00007f194912cfff  ;   {runtime_call}
[Exception Handler]
  0x00007f194912d004: callq  0x00007f1948e511e0  ;   {runtime_call}
  0x00007f194912d009: mov    %rsp,-0x28(%rsp)
  0x00007f194912d00e: sub    $0x80,%rsp
  0x00007f194912d015: mov    %rax,0x78(%rsp)
  0x00007f194912d01a: mov    %rcx,0x70(%rsp)
  0x00007f194912d01f: mov    %rdx,0x68(%rsp)
  0x00007f194912d024: mov    %rbx,0x60(%rsp)
  0x00007f194912d029: mov    %rbp,0x50(%rsp)
  0x00007f194912d02e: mov    %rsi,0x48(%rsp)
  0x00007f194912d033: mov    %rdi,0x40(%rsp)
  0x00007f194912d038: mov    %r8,0x38(%rsp)
  0x00007f194912d03d: mov    %r9,0x30(%rsp)
  0x00007f194912d042: mov    %r10,0x28(%rsp)
  0x00007f194912d047: mov    %r11,0x20(%rsp)
  0x00007f194912d04c: mov    %r12,0x18(%rsp)
  0x00007f194912d051: mov    %r13,0x10(%rsp)
  0x00007f194912d056: mov    %r14,0x8(%rsp)
  0x00007f194912d05b: mov    %r15,(%rsp)
  0x00007f194912d05f: mov    $0x7f195d64e1d6,%rdi  ;   {external_word}
  0x00007f194912d069: mov    $0x7f194912d009,%rsi  ;   {internal_word}
  0x00007f194912d073: mov    %rsp,%rdx
  0x00007f194912d076: and    $0xfffffffffffffff0,%rsp
  0x00007f194912d07a: callq  0x00007f195d380b10  ;   {runtime_call}
  0x00007f194912d07f: hlt
[Deopt Handler Code]
  0x00007f194912d080: mov    $0x7f194912d080,%r10  ;   {section_word}
  0x00007f194912d08a: push   %r10
  0x00007f194912d08c: jmpq   0x00007f1948e2c100  ;   {runtime_call}
  0x00007f194912d091: hlt
  0x00007f194912d092: hlt
  0x00007f194912d093: hlt
  0x00007f194912d094: hlt
  0x00007f194912d095: hlt
  0x00007f194912d096: hlt
  0x00007f194912d097: hlt
126.52244297504949
