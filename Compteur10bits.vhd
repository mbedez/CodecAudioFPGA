library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Compteur10bits is
    Port ( ck, rst : in STD_LOGIC;
           count_out : out STD_LOGIC_VECTOR(9 downto 0)); -- Sortie du compteur
end Compteur10bits;

architecture Program of Compteur10bits is
    signal counter : integer range 0 to 999 := 0;
begin

    process(ck, rst)
    begin
        if rst = '1' then
            counter <= 0;
        elsif rising_edge(ck) then
            if counter = 999 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    count_out <= std_logic_vector(to_unsigned(counter, count_out'length));

end Program;