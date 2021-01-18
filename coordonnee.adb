pragma Ada_2012;
package body Coordonnee is

   ---------------------------
   -- construireCoordonnees --
   ---------------------------

   function construireCoordonnees
     (ligne : Integer; colonne : Integer) return Type_Coordonnee
   is
      c : Type_Coordonnee;
   begin
      c.ligne := ligne;
      c.colonne := colonne;
     return(c);
   end construireCoordonnees;

   ------------------
   -- obtenirLigne --
   ------------------

   function obtenirLigne (c : Type_Coordonnee) return Integer is
   begin
      return(c.ligne);
   end obtenirLigne;

   --------------------
   -- obtenirColonne --
   --------------------

   function obtenirColonne (c : Type_Coordonnee) return Integer is
   begin
      return(c.colonne);
   end obtenirColonne;

   ------------------
   -- obtenirCarre --
   ------------------

   function obtenirCarre (c : Type_Coordonnee) return Integer is

   begin

      if c.ligne <= 3 and c.colonne <=3 then
         return 1;
      elsif c.ligne <= 3 and c.colonne > 3 and c.colonne <= 6 then
         return 2;
      elsif c.ligne <= 3 and c.colonne > 6 then
         return 3;
      elsif c.ligne > 3 and c.ligne <= 6 and c.colonne <= 3 then
         return 4;
      elsif c.ligne > 3 and c.ligne <= 6 and c.colonne > 3 and c.colonne <= 6 then
         return 5;
      elsif c.ligne > 3 and c.ligne <= 6 and c.colonne > 6 then
         return 6;
      elsif c.ligne > 6 and c.colonne <= 3 then
         return 7;
      elsif c.ligne > 6 and c.colonne > 3 and c.colonne <= 6 then
         return 8;
      elsif c.ligne > 6 and c.colonne > 6 then
         return 9;
      end if;

   end obtenirCarre;

   ----------------------------
   -- obtenirCoordonneeCarre --
   ----------------------------

   function obtenirCoordonneeCarre (numCarre : Integer) return Type_Coordonnee
   is
      c : Type_Coordonnee;
   begin
      if numCarre = 1 then
         c.ligne := 1;
         c.colonne := 1;
      end if;
      if numCarre = 2 then
         c.ligne := 1;
         c.colonne := 4;
      end if;
      if numCarre = 3 then
         c.ligne := 1;
         c.colonne := 7;
      end if;
      if numCarre = 4 then
         c.ligne := 4;
         c.colonne := 1;
      end if;
      if numCarre = 5 then
         c.ligne := 4;
         c.colonne := 4;
      end if;
      if numCarre = 6 then
         c.ligne := 4;
         c.colonne := 7;
      end if;
      if numCarre = 7 then
         c.ligne := 7;
         c.colonne := 1;
      end if;
      if numCarre = 8 then
         c.ligne := 7;
         c.colonne := 4;
      end if;
      if numCarre = 9 then
         c.ligne := 7;
         c.colonne := 7;
      end if;
      return c;
   end obtenirCoordonneeCarre;

end Coordonnee;
