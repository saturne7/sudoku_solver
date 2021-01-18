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
      i:=1;
      while i < 9 loop
         if not appartientChiffre(ligne,i) and not appartientChiffre(colonne,i)
           and not appartientChiffre(carre,i) then
            ajouterChiffre(valeurs,i);
         end if;
         i:=i+1;
      end loop;
      return valeurs;
   end obtenirSolutionsPossibles;

   ------------------------------------------
   -- rechercherSolutionUniqueDansEnsemble --
   ------------------------------------------

   function rechercherSolutionUniqueDansEnsemble
     (resultats : in Type_Ensemble) return Integer
   is
      i:Integer;
   begin
      if nombreChiffres(resultats) > 1 then
         raise PLUS_DE_UN_CHIFFRE;
      end if;

      if ensembleVide(resultats) then
         raise ENSEMBLE_VIDE;
      end if;

      i:=1;
      while i < 9 loop
         if appartientChiffre(resultats,i) then
            return i;
         end if;
         i:=i+1;
      end loop;
   end rechercherSolutionUniqueDansEnsemble;

   --------------------
   -- resoudreSudoku --
   --------------------

   procedure resoudreSudoku (g : in out Type_Grille; trouve : out Boolean) is
      i:Integer;
      j:Integer;
      c:Type_Coordonnee;
      colonne:Type_Ensemble;
      ligne:Type_Ensemble;
      carre:Type_Ensemble;
      compteurSol:Integer:=0;
   begin
      if estRemplie(g) then
         i:=1;
         while i < 9 loop
            j:=1;
            while j < 9 loop
               c:=construireCoordonnees(i,j);
               ligne:=obtenirChiffresDUneLigne(g,i);
               colonne:=obtenirChiffresDUneColonne(g,j);
               carre:=obtenirChiffresDUnCarre(g,obtenirCarre(c));
               if nombreChiffres(obtenirSolutionsPossibles(g,c)) > 1 and
                 ensembleVide(obtenirSolutionsPossibles(g,c)) then
                  compteurSol:=compteurSol+1;
               end if;
               j:=j+1;
            end loop;
            i:=i+1;
         end loop;
         if compteurSol = 81 then
            trouve:=true;
         else
            trouve:=false;
         end if;
      else
         trouve:=false;
      end if;
   end resoudreSudoku;

end resolutions;
