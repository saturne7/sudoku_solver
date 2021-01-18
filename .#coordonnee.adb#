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

   end obtenirCarre;

   ----------------------------
   -- obtenirCoordonneeCarre --
   ----------------------------

   function obtenirCoordonneeCarre (numCarre : Integer) return Type_Coordonnee
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "obtenirCoordonneeCarre unimplemented");
      return
        raise Program_Error
          with "Unimplemented function obtenirCoordonneeCarre";
   end obtenirCoordonneeCarre;

end Coordonnee;
