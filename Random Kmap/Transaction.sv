// _____________________________________
// |                                   |
// |          Transaction              |
// |___________________________________|
class transaction;
  randc bit a;
  randc bit b;
  randc bit c;
  function void outputs( );
    $display(" a=%b | b=%b | c=%b",a,b,c);
  endfunction
endclass
