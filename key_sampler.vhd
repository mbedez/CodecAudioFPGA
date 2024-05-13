library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity key_sampler is
    Port ( ck, rst, key : in STD_LOGIC;
           enable_out : out STD_LOGIC);
end key_sampler;

architecture Program of key_sampler is
	 type state is (ENABLE, DISABLE);
	 signal current_state, next_state : state;
	 
	 signal sample_sig:STD_LOGIC_VECTOR(3 downto 0);
	 signal counter : integer range 0 to 999 := 0;	
begin
	 
	 -- Compteur
	 process(ck)
	 begin
		if rst = '1' then
            counter <= 0;
        elsif rising_edge(ck) then
             counter <= counter + 1;
        end if;
	 end process;
	 
	 -- Sampleur
    process(ck, key)
    begin
		if rising_edge(ck) and counter=999 then
			sample_sig <= key & sample_sig(3 downto 1);	
		end if;
    end process;
	 
	 process(ck, current_state)
	 begin 
		if rising_edge(ck) and counter=999 then
			if sample_sig="1100" then 
				current_state <= next_state;
			end if;
		end if;
	 end process;
	 
	 
	 process(current_state)
	 begin
		if current_state = ENABLE then
			enable_out <= '1';
			next_state <= DISABLE;
		else 
			enable_out <= '0';
			next_state <= ENABLE;
		end if;
	 end process;
	 
end Program;