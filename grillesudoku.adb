pragma Ada_2012;
with Coordonnee; use Coordonnee;
package body grilleSudoku is

   ----------------------
   -- construireGrille --
   ----------------------

   function construireGrille return Type_Grille is
     g : Type_Grille;
   begin
      g(1, 1) := 0;
      g(1, 2) := 0;
      g(1, 3) := 0;
      g(1, 4) := 0;
      g(1, 5) := 0;
      g(1, 6) := 0;
      g(1, 7) := 0;
      g(1, 8) := 0;
      g(1, 9) := 0;

      g(2, 1) := 0;
      g(2, 2) := 0;
      g(2, 3) := 0;
      g(2, 4) := 0;
      g(2, 5) := 0;
      g(2, 6) := 0;
      g(2, 7) := 0;
      g(2, 8) := 0;
      g(2, 9) := 0;

      g(3, 1) := 0;
      g(3, 2) := 0;
      g(3, 3) := 0;
      g(3, 4) := 0;
      g(3, 5) := 0;
      g(3, 6) := 0;
      g(3, 7) := 0;
      g(3, 8) := 0;
      g(3, 9) := 0;

      g(4, 1) := 0;
      g(4, 2) := 0;
      g(4, 3) := 0;
      g(4, 4) := 0;
      g(4, 5) := 0;
      g(4, 6) := 0;
      g(4, 7) := 0;
      g(4, 8) := 0;
      g(4, 9) := 0;

      g(5, 1) := 0;
      g(5, 2) := 0;
      g(5, 3) := 0;
      g(5, 4) := 0;
      g(5, 5) := 0;
      g(5, 6) := 0;
      g(5, 7) := 0;
      g(5, 8) := 0;
      g(5, 9) := 0;

      g(6, 1) := 0;
      g(6, 2) := 0;
      g(6, 3) := 0;
      g(6, 4) := 0;
      g(6, 5) := 0;
      g(6, 6) := 0;
      g(6, 7) := 0;
      g(6, 8) := 0;
      g(6, 9) := 0;

      g(7, 1) := 0;
      g(7, 2) := 0;
      g(7, 3) := 0;
      g(7, 4) := 0;
      g(7, 5) := 0;
      g(7, 6) := 0;
      g(7, 7) := 0;
      g(7, 8) := 0;
      g(7, 9) := 0;

      g(8, 1) := 0;
      g(8, 2) := 0;
      g(8, 3) := 0;
      g(8, 4) := 0;
      g(8, 5) := 0;
      g(8, 6) := 0;
      g(8, 7) := 0;
      g(8, 8) := 0;
      g(8, 9) := 0;

      g(9, 1) := 0;
      g(9, 2) := 0;
      g(9, 3) := 0;
      g(9, 4) := 0;
      g(9, 5) := 0;
      g(9, 6) := 0;
      g(9, 7) := 0;
      g(9, 8) := 0;
      g(9, 9) := 0;
     return g;
   end construireGrille;

   --------------
   -- caseVide --
   --------------

   function caseVide
     (g : in Type_Grille; c : in Type_Coordonnee) return Boolean
   is
      boole : Boolean := False;
   begin
      if obtenirChiffre(g,c) = 0 then
            boole := True;
      end if;
    return boole;
  end caseVide;

   --------------------
   -- obtenirChiffre --
   --------------------

   function obtenirChiffre

   (g : in Type_Grille; c : in Type_Coordonnee) return Integer
     is
        chiffre : Integer;
   begin
         if caseVide(g,c) then
            raise OBTENIR_CHIFFRE_NUL;
         end if;
      chiffre := obtenirCarre(c);
      return chiffre;

   end obtenirChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (g : in Type_Grille) return Integer is

      compt : Integer := 1;
      nbChiffres : Integer := 0;
      compt2 : Integer;
      c : Type_Coordonnee;
   begin
      while compt < 9 loop
         compt2 := 1;
         while compt2 < 9 loop
            c := construireCoordonnees(compt,compt2);
         if not caseVide(g,c) then
            nbChiffres:= nbChiffres +1;
            end if;
            compt2:= compt2+1;
            end loop;
            compt := compt+1;
      end loop;
      return nbChiffres;
   end nombreChiffres;


   ------------------
   -- fixerChiffre --
   ------------------

   procedure fixerChiffre
     (g : in out Type_Grille; c : in Type_Coordonnee; v : in Integer)
   is
   begin
      if not caseVide(g,c) then
         raise FIXER_CHIFFRE_NON_NUL;
      else
        g(obtenirColonne(c),obtenirLigne(c)) := v;
      end if;
   end fixerChiffre;

   ---------------
   -- viderCase --
   ---------------

   procedure viderCase (g : in out Type_Grille; c : in out Type_Coordonnee) is
   begin
      if g(obtenirColonne(c),obtenirLigne(c)) /= 0 then
            g(obtenirColonne(c),obtenirLigne(c)):=0;
         else
            raise VIDER_CASE_VIDE;
      end if;
   end viderCase;

   ----------------
   -- estRemplie --
   ----------------

   function estRemplie (g : in Type_Grille) return Boolean is
      compt : Integer :=1;
      compt2 : Integer;
      c : Type_Coordonnee;
      boole : Boolean :=False;
      testRemplis : Integer := 0;
   begin
      while compt < 9 loop
         compt2:=1;
         while compt2 < 9 loop
            c:=(construireCoordonnees(compt,compt2));
            if not caseVide(g,c) then
               boole := true;
            else
               boole :=False;
               testRemplis := testRemplis+1;
            end if;
            compt2:=compt2+1;
         end loop;
         compt:=compt+1;
      end loop;

      if testRemplis >= 1 then
         boole := False;
      end if;
      return boole;
   end estRemplie;

   ------------------------------
   -- obtenirChiffresDUneLigne --
   ------------------------------

   function obtenirChiffresDUneLigne
    (g : in Type_Grille; numLigne : in Integer) return Type_Ensemble
   is
   begin
     pragma Compile_Time_Warning
       (Standard.True, "obtenirChiffresDUneLigne unimplemented");
      return
        raise Program_Error
         with "Unimplemented function obtenirChiffresDUneLigne";
     end obtenirChiffresDUneLigne;

   --------------------------------
   -- obtenirChiffresDUneColonne --
   --------------------------------

   function obtenirChiffresDUneColonne
    (g : in Type_Grille; numColonne : in Integer) return Type_Ensemble
   is
   begin
     pragma Compile_Time_Warning
       (Standard.True, "obtenirChiffresDUneColonne unimplemented");
     return
        raise Program_Error
          with "Unimplemented function obtenirChiffresDUneColonne";
   end obtenirChiffresDUneColonne;

   -----------------------------
   -- obtenirChiffresDUnCarre --
   -----------------------------

   function obtenirChiffresDUnCarre
    (g : in Type_Grille; numCarre : in Integer) return Type_Ensemble
   is
   begin
     pragma Compile_Time_Warning
        (Standard.True, "obtenirChiffresDUnCarre unimplemented");
      return
        raise Program_Error
         with "Unimplemented function obtenirChiffresDUnCarre";
   end obtenirChiffresDUnCarre;

end grilleSudoku;
