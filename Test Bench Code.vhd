-- Stimulus process
stim_proc: process

begin

  wait for 100 ns;

 --insert stimulus here
 a<="10001000";
 b<="00010001";

 m<='0'; cin<='0'; s1<='0'; s0<='1'; wait for 60 ns;
 m<='0'; cin<='0'; s1<='1'; s0<='0'; wait for 60 ns;
 m<='0'; cin<='0'; s1<='1'; s0<='1'; wait for 60 ns;
 m<='0'; cin<='0'; s1<='0'; s0<='0'; wait for 60 ns;
 m<='1'; cin<='0'; s1<='0'; s0<='1'; wait for 60 ns;
 m<='1'; cin<='1'; s1<='0'; s0<='1'; wait for 60 ns;
 m<='1'; cin<='0'; s1<='1'; s0<='0'; wait for 60 ns;
 m<='1'; cin<='1'; s1<='1'; s0<='0'; wait for 60 ns;
 m<='1'; cin<='1'; s1<='1'; s0<='1'; wait for 60 ns;
wait for 60 ns;
wait;
end process;

END;