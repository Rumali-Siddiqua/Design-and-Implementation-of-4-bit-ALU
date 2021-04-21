library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Entity p4 is
Port(
    a: in std_logic_vector (7 downto 0);
    b: in std_logic_vector (7 downto 0);
    s0: in std_logic;
    s1: in std_logic;
    m: in std_logic;
    cin: in std_logic;

   f: out std_logic_vector (7 downto 0);
   z: out std_logic;
   cout: out std_logic);
end p4;

architecture Behavioural of p4 is
  signal q: std_logic_vector (8 downto 0);
  signal s: std_logic_vector (3 downto 0);

 begin
 s<= m&s0&s1&cin;
 with s select
  q<= '0' & (a and b) when "0000"|"0001",
  '0' & (a or b) when "0010"|"0011",
  '0' & (a xor b) when "0100"|"0101",
  '0' & (a xnor b) when "0110"|"0111",
  ('0' & a) + b when "1010",
  ('0'& a) + b + cin when "1011",
  ('0'& a) + (not b) when "1100",
  ('0'& a) + (not b) + 1 when "1101",
  ('0'& a) + 1 when "1110"|"1111",
 "000000000" when others;

 z<='1' when q<="000000000" else '0';
 cout<=q(8);
 f<=q (7 downto 0);

end Behavioural
