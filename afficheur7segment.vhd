LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY afficheur7segment IS
    PORT (ck, rst: IN STD_LOGIC;
           seg0, seg1, seg2, seg3, seg4, seg5, seg6 : out STD_LOGIC);
END afficheur7segment;

ARCHITECTURE program OF afficheur7segment IS
signal seg_out:STD_LOGIC_VECTOR(6 downto 0);
signal count:STD_LOGIC_VECTOR(3 downto 0);

-- COMPARATEUR COMPONENT
	component Compteur0to9 is
		PORT (ck, rst: IN STD_LOGIC;
				count_out: out STD_LOGIC_VECTOR(3 downto 0));
	END component;

BEGIN 
     compteur: Compteur0to9 port map(ck, rst, count);
	  
	  process(ck) is
	  begin
	      case count is 
				when "0000" => seg_out <= "1000000";
				when "0001" => seg_out <= "1111001";
				when "0010" => seg_out <= "0100100";
				when "0011" => seg_out <= "0110000";
				when "0100" => seg_out <= "0011001";
				when "0101" => seg_out <= "0010010";
				when "0110" => seg_out <= "0000010";
				when "0111" => seg_out <= "1111000";
				when "1000" => seg_out <= "0000000";
				when others => seg_out <= "0010000";
			end case;
		end process;
	  
	  seg0 <= seg_out(0);
	  seg1 <= seg_out(1);
	  seg2 <= seg_out(2);
	  seg3 <= seg_out(3);
	  seg4 <= seg_out(4);
	  seg5 <= seg_out(5);
	  seg6 <= seg_out(6);
     
END program;