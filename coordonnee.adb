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

      numcarre : Integer;

   begin
<<<<<<< HEAD
      numcarre :=((3*(c.ligne-1)/3)+(c.colonne-1)/3)+1;
      return(numcarre);
=======
>>>>>>> 42808db9a70445ff720d9f20ec87bbdf479debf2

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
