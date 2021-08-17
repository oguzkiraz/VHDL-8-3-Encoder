Library Ieee;
Use Ieee.std_logic_1164.all;

Entity Eencoder83 is				--Entity

  Port(input : in std_logic_vector (7 downto 0); 	-- 7 downto 0 for 8 bit input
  output : out std_logic_vector (2 downto 0);	-- 3 bit output

end Eencoder83;					--Entitiy close

Architecture Behv of Eencoder83 is 		-- Entity behaviour

  Begin

  output <= "111" when input(7) = '1' else
  "110" when input(6) = '1' else
  "101" when input(5) = '1' else
  "100" when input(4) = '1' else
  "011" when input(3) = '1' else
  "010" when input(2) = '1' else
  "001" when input(1) = '1' else
  "000" when input(0) = '1' else
  "000";

  end Behv;
