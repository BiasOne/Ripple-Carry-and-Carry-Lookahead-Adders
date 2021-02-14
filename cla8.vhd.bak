library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla4 is
  port (
    X, Y 			: in  std_logic_vector(3  downto 0);
	 Cin  			: in std_logic;
	 S    			: out std_logic_vector(3 downto 0);	 
    Cout, BP, BG  : out std_logic);
end cla4;



architecture cla4Struct of cla4 is
signal C : std_logic;
signal P, G : std_logic_vector(1 downto 0);

begin  -- BHV

	cla2_1 : entity work.cla2
        port map(	
				X    => x(1 downto 0),
				Y    => y(1 downto 0),
				Cin  => cin,
				S   => s(1 downto 0),
				BP => P(0),
				BG => G(0)
				);
						
	cla2_2 : entity work.cla2
        port map(	
				X    => x(3 downto 2),
				Y    => y(3 downto 2),
				Cin  => C,
				S    => s(3 downto 2),
				BP => P(1),
				BG => G(1)
				);
						
	cgen2_1 : entity work.cgen2
        port map(	
				P   => P(1 downto 0),						
				G   => G(1 downto 0),
				Cin => cin,						
				BP => BP,
				BG => BG,
				Cout(0) => C,
				Cout(1) => cout
				);
				
end cla4Struct;