--Program Counter Code
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--Increments the program counter by 1 if there is a positive edge clock and increment =1
entity ProgramCounter is
port (
	output : out std_logic_vector(7 downto 0);
	clk : in std_logic;
	increment : in std_logic
);
end;

architecture behavior of ProgramCounter is
begin

process(clk,increment)
 variable counter: integer:= 0;

begin
	--Create an if statement to check for the condition of a positive edge clock and increment =1
	if (clk'event and clk = '1' and increment = '1') then
		counter := counter + 1;
		--INSERT CODE HERE
		output <= conv_std_logic_vector(counter,8);
		--Output the counter variable as a std logic vector of 8 bits,
		--Use function conv_std_logic_vector(counter,8)
		--INSERT CODE HERE
	end if;
end process;
end behavior;
