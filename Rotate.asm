// R[3] : number to rotate
// R[4] : number of rotations
// shift left once -> num * 2 = num + num
// then check the most significant bit to see if it should wrap around


@condition
0 ; JMP

(loop)
  @3
  D = M

  @32678
  A = - A
  D = D & A
  @addone
  D; JGT
  @noadd
  D ; JEQ 
  (addone)
    @3
    D = M + 1
    @timestwo
    0 ; JMP
  (noadd)
    @3
    D = M
  (timestwo)
  @3
  M = D + M

  //decrement counter
  @4
  D = M     // D = R[4]
  M = D - 1 // R[4] = D - 1


(condition)
  @4
  D = M
  @loop
  D ; JGT