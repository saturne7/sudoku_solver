pragma Ada_2012;
with Coordonnee; use Coordonnee;
package body grilleSudoku is

   ----------------------
   -- construireGrille --
   ----------------------

   function construireGrille return Type_Grille is
      g : Type_Grille;
   begin
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
      colonne : Integer;
      ligne : Integer;
   begin
      colonne := c.colonne;
      ligne := c.ligne;
      if not caseVide(g,c) then
         raise FIXER_CHIFFRE_NON_NUL;
      else
        g(colonne,ligne) := v;
      end if;
   end fixerChiffre;

   ---------------
   -- viderCase --
   ---------------

   procedure viderCase (g : in out Type_Grille; c : in out Type_Coordonnee) is
   begin
      pragma Compile_Time_Warning (Standard.True, "viderCase unimplemented");
      raise Program_Error with "Unimplemented procedure viderCase";
   end viderCase;

   ----------------
   -- estRemplie --
   ----------------

   function estRemplie (g : in Type_Grille) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "estRemplie unimplemented");
      return raise Program_Error with "Unimplemented function estRemplie";
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
