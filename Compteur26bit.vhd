LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY Compteur26bit IS
    PORT (ck_50, enable: IN STD_LOGIC;
           msb1, msb2, msb3, msb4, led: out STD_LOGIC);
END Compteur26bit;

ARCHITECTURE program OF Compteur26bit IS 
signal ledsig:std_logic;
signal qsig:std_logic_vector(25 downto 0);
BEGIN 
        
    PROCESS(ck_50, enable)
    BEGIN
		if enable='1' and rising_edge(ck_50) then
			if qsig = "01011111010111100000111111" then
				 ledsig <= not ledsig;
				 qsig <= (others => '0');
			else
				 qsig <= qsig + "1" ;
			end if;
		end if;
	 END PROCESS;
	 
	 msb1 <= qsig(24);
	 msb2 <= qsig(23);
    msb3 <= qsig(22);
    msb4 <= qsig(21);
    led <= ledsig;
END program;