-- Elementos de Sistemas
-- by Luciano Soares
-- ALU.vhd

-- Ula conceito A

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUa is
	port (
			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			zx:    in STD_LOGIC;                     -- zera a entrada x
			nx:    in STD_LOGIC;                     -- inverte a entrada x
			zy:    in STD_LOGIC;                     -- zera a entrada y
			ny:    in STD_LOGIC;                     -- inverte a entrada y
			f:     in STD_LOGIC_VECTOR(1 downto 0);  -- se 0 calcula x & y, se 1 calcula x + y se 2 calcula x xor y
			no:    in STD_LOGIC;                     -- inverte o valor da saída
            sf:    in STD_LOGIC;                     
			zr:    out STD_LOGIC;                    -- setado se saída igual a zero
			ng:    out STD_LOGIC;                    -- setado se saída é negativa
			saida: out STD_LOGIC_VECTOR(15 downto 0); -- saída de dados da ALU
			carry: out STD_LOGIC
	);
end entity;

architecture  rtl OF ALUa is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

	component zerador16 IS
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
			);
	end component;

	component inversor16 is
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Add16B is
		port(
			a   :  in STD_LOGIC_VECTOR(15 downto 0);
			b   :  in STD_LOGIC_VECTOR(15 downto 0);
			q   : out STD_LOGIC_VECTOR(15 downto 0);
			vaicarry : out STD_LOGIC
		);
	end component;

	component And16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component comparador16 is
		port(
			a   : in STD_LOGIC_VECTOR(15 downto 0);
			zr   : out STD_LOGIC;
			ng   : out STD_LOGIC
    );
	end component;

	--  mudei o seletor para vetor de 3 elementos

	component Mux16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Xor16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	-- component xor para ula do conceito B (mux que selecionara entre add and ou xor)
	component muxXor is
		port(
			a   :  in STD_LOGIC_VECTOR(15 downto 0);
			b   :  in STD_LOGIC_VECTOR(15 downto 0);
			c   :  in  STD_LOGIC_VECTOR(15 downto 0);
			sel :  in  STD_LOGIC_VECTOR(1 downto 0);
			q   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

    -- componente que faz o shift left e shift right de um vetor de 16 bits
    component shift16 is
        port(
            a   :  in  STD_LOGIC_VECTOR(15 downto 0);
            sel :  in  STD_LOGIC_VECTOR(1 downto 0);
            q   : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

   SIGNAL zxout,zyout,nxout,nyout,andout,adderout,muxout,xorout,precomp,shifter: std_logic_vector(15 downto 0);
   SIGNAL CARRYOUT : STD_LOGIC;

begin
  -- Implementação vem aqui!
	zeradorx : zerador16
	port map	
	(
		z => zx,
		a => x,
		y => zxout	

	);

	zeradory : zerador16
	port map(
		z => zy,
		a => y,
		y => zyout
	);

	inversorx : inversor16
	port map(
		z => nx,
		a => zxout,
		y => nxout
	);

	inversory : inversor16
	port map(
		z => ny,
		a => zyout,
		y => nyout
	);

	add : Add16B
	port map(
		a => nxout,
		b => nyout,
		q => adderout,
		vaicarry => CARRYOUT
	);

	and1 : And16
	port map(
		a => nxout,
		b => nyout,
		q => andout
		
	);

	xor1: Xor16
	port map(
		a => nxout,
		b => nyout,
		q => xorout
	);

	muxi : muxXor
	port map(
		a => andout,
		b => adderout,
		c => xorout,
		sel => f,
		q => muxout
	);

	inversor0 : inversor16
	port map(
		z => no,
		a => muxout,
		y => precomp
	);
	compara : comparador16
	port map(
		a => precomp,
		zr => zr,
		ng => ng
	);

    shift : shift16
    port map(
        a => precomp,
        sel => f,
        q => shifter
    );

	carry <= CARRYOUT;
	saida <= shifter;
    
end architecture;