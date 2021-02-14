library ieee;
use ieee.std_logic_1164.all;

entity fa is
  port (
    x, y, cin : in  std_logic;
    s, cout   : out std_logic);
end fa;

architecture faBHV of fa is

begin  -- BHV

	S <= (x xor y) xor cin;
  
	Cout <= (x and y) or ((x xor y) and cin);
  
end faBHV;
