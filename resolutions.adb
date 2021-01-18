pragma Ada_2012;
package body resolutions is

   -----------------------
   -- estChiffreValable --
   -----------------------

   function estChiffreValable
     (g : in Type_Grille; v : Integer; c : Type_Coordonnee) return Boolean
   is
      colonne:Type_Ensemble;
      ligne:Type_Ensemble;
      carre:Type_Ensemble;
   begin
      if not caseVide(g,c) then
         raise CASE_NON_VIDE with "Unimplemented function estChiffreValable";
      end if;

      ligne:=obtenirChiffresDUneLigne(g,obtenirLigne(c));
      colonne:=obtenirChiffresDUneColonne(g,obtenirColonne(c));
      carre:=obtenirChiffresDUnCarre(g,obtenirCarre(c));

      return appartientChiffre(ligne,v) or appartientChiffre(colonne,v)
        or appartientChiffre(carre,v);

   end estChiffreValable;

   -------------------------------
   -- obtenirSolutionsPossibles --
   -------------------------------

   function obtenirSolutionsPossibles
     (g : in Type_Grille; c : in Type_Coordonnee) return Type_Ensemble
   is
      valeurs:Type_Ensemble;
      colonne:Type_Ensemble;
      ligne:Type_Ensemble;
      carre:Type_Ensemble;
      i:Integer;
   begin
      if not caseVide(g,c) then
         raise CASE_NON_VIDE;
      end if;

      ligne:=obtenirChiffresDUneLigne(g,obtenirLigne(c));
      colonne:=obtenirChiffresDUneColonne(g,obtenirColonne(c));
      carre:=obtenirChiffresDUnCarre(g,obtenirCarre(c));

      while i < 9 loop
         if not appartientChiffre(ligne,i) and not appartientChiffre(colonne,i)
           and not appartientChiffre(carre,i) then
            valeurs(i):=true;
         i:=i+1;
      end loop;
   end obtenirSolutionsPossibles;

   ------------------------------------------
   -- rechercherSolutionUniqueDansEnsemble --
   ------------------------------------------

   function rechercherSolutionUniqueDansEnsemble
     (resultats : in Type_Ensemble) return Integer
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "rechercherSolutionUniqueDansEnsemble unimplemented");
      return
        raise Program_Error
          with "Unimplemented function rechercherSolutionUniqueDansEnsemble";
   end rechercherSolutionUniqueDansEnsemble;

   --------------------
   -- resoudreSudoku --
   --------------------

   procedure resoudreSudoku (g : in out Type_Grille; trouve : out Boolean) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "resoudreSudoku unimplemented");
      raise Program_Error with "Unimplemented procedure resoudreSudoku";
   end resoudreSudoku;

end resolutions;
