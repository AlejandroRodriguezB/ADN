with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   type tcadena is array(1..50)of Character;

   type tadn is record
      cadena1:tcadena;
      l1:Integer;
      cadena2: tcadena;
   end record;
   adn:tadn;
   procedure llegirCadena(adn: out tadn) is
      s:String(1..50);
      l:Integer;
   begin

      Get_Line(s,l);

      adn.l1 := l;

      for i in 1..l  loop
         adn.cadena1(i) := s(i);
      end loop;

      return;
   end llegirCadena;

   procedure completarADN(adn:in out tadn) is

   begin
      for i in 1..adn.l1  loop
         if adn.cadena1(i)='T' then
            adn.cadena2(i):='A';
         elsif adn.cadena1(i)='A' then
            adn.cadena2(i):='T';
         elsif adn.cadena1(i)='C' then
            adn.cadena2(i):='G';
         else
            adn.cadena2(i):='C';

         end if;

      end loop;

   end completarADN;



begin
   Put_Line("Cadena de ADN");

   llegirCadena(adn);
   completarADN(adn);

   Put_Line(String(adn.cadena2(1..adn.l1)));
end Main;
