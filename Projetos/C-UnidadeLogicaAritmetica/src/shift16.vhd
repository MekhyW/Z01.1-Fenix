library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity shift16 is
	port(
		a   :  in  STD_LOGIC_VECTOR(15 downto 0);
    sel :  in  STD_LOGIC_VECTOR(1 downto 0);
    q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of shift16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!
  -- faz o shift left e shift right de um vetor de 16 bits
  q <= STD_LOGIC_VECTOR(shift_left(unsigned(a), 1)) when sel = "00" else
  STD_LOGIC_VECTOR(shift_right(unsigned(a), 1));

end architecture;