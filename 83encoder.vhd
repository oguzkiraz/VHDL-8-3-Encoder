Library Ieee;
Use Ieee.std_logic_1164.all;

Entity Eencoder83 is				--Entity ac

  Port(input : in std_logic_vector (7 downto 0); 	-- 8 bit giris oldugu icin 7 downto 0
  output : out std_logic_vector (2 downto 0);	-- 3 cikis

end Eencoder83;					--Entitiy kapa

Architecture Behv of Eencoder83 is 		-- Entity davranislarini yazma

  Begin

  output <= "111" when input(7) = '1' else		--7. giris 1 geldiginde output a 111 ata
  "110" when input(6) = '1' else
  "101" when input(5) = '1' else
  "100" when input(4) = '1' else
  "011" when input(3) = '1' else
  "010" when input(2) = '1' else
  "001" when input(1) = '1' else
  "000" when input(0) = '1' else
  "000";

  end Behv;
