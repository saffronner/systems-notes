#set image(width: 75%)
= lec 2024/08/29
- binary: get more precision over n-ary or smth 
- and (`&`), or (`|`), not (`~`), xor (`^`)
- shifts
  - `x << y`
    - throw away extra bits at left
    - fill with 0s on right
  - `x >> y`
    - throw away extra bits at left
    - logical shift: fill with 0s on left
    - arithmetic shift: replicate sign bit on left
    - _undefined_: shift amtn $<$ 0 or $>=$ word size
- `-x = ~x + 1` in twos complement
  - but if `x = Tmin` (most negative two's complement), you get back `Tmin`
- mix of signed and unsigned in expression eg ==? implicit casted and evaled in unsigned.

= lec 2024/09/03
- intel x86 processors
  - a Complex Instruction Set Computer (CISC), lots of instructions
  - Reduced: (RISC) can be fastish but esp good for low power
- architecture: processor design spec?? needed to know how to write assembly/machine code??
- microarchitecture: implementation of architecture
- machine code: byte-level programs processors exec.
- assembly code: text readable machine code
== assembly/machine code view
#image("media/machine_code_summary.png")
- integer registers: prof: "compiler %rsp 64 bit, %esp 32 bit, compiler will spit out whichever is smaller and fits your data so b careful." also stuff like "%eax vs %ax vs %ah/%al"

#image("media/movq_examples.png")