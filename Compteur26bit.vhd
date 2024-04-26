LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY Compteur26bit IS
    PORT (ck_50, rst: IN STD_LOGIC;
           msb1, msb2, msb3, msb4: out STD_LOGIC);
END Compteur26bit;

ARCHITECTURE program OF Compteur26bit IS 
signal qsig:std_logic_vector(25 downto 0);
BEGIN 
        
        PROCESS(ck_50, rst)
        BEGIN
            if (rst = '1') then
                qsig <= "00000000000000000000000000";
            elsif ck_50'event and ck_50='1' then
                qsig <= qsig + "1" ;
            end if;
    END PROCESS;
    msb1 <= qsig(25);
    msb2 <= qsig(24);
    msb3 <= qsig(23);
    msb4 <= qsig(22);
END program;