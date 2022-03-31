-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

-- O program counter será o nosso endereçador de memória da CPU, ele será responsável por apontar para a próxima instrução a ser executada. Como normalmente um código segue um fluxo sequencial (uma linha na sequência da outra) o PC possui a habilidade de se auto incrementar a cada clock (apontando assim para a próxima instrução), mas ele tem que suportar condições (if, while, ...) rompendo com esse fluxo contínuo.

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is

 signal muxOut : std_logic_vector(15 downto 0);

  component Inc16 is
      port(
          a   :  in STD_LOGIC_VECTOR(15 downto 0);
          q   : out STD_LOGIC_VECTOR(15 downto 0)
          );
  end component;

  component Register16 is
      port(
          clock:   in STD_LOGIC;
          input:   in STD_LOGIC_VECTOR(15 downto 0);
          load:    in STD_LOGIC;
          output: out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

begin

    Inc16 inc16(
        a => muxOut,
        q => muxOut
    );

    Register16 reg16(
        clock => clock,
        input => input,
        load => load,
        output => muxOut
    );

    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                muxOut <= (others => '0');
            elsif load = '1' then
                muxOut <= input;
            elsif increment = '1' then
                muxOut <= muxOut + (others => '1');
            end if;
        end if;
    end process;

    muxOut <= reg16.output;

end architecture;
