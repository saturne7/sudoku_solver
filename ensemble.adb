pragma Ada_2012;
package body ensemble is

   ------------------------
   -- construireEnsemble --
   ------------------------

   function construireEnsemble return Type_Ensemble is
   Ensemble:Type_Ensemble;
   begin
      for i in 1..9 loop
         Ensemble(i):=FALSE;
      end loop;
      return Ensemble;
   end construireEnsemble;

   ------------------
   -- ensembleVide --
   ------------------

   function ensembleVide (e : in Type_Ensemble) return Boolean is
   begin
      for i in 1..9 loop
         if e(i) then
            return false;
         end if;
         end loop;
      return true;
   end ensembleVide;

   -----------------------
   -- appartientChiffre --
   -----------------------

   function appartientChiffre (e : in Type_Ensemble; v : in Integer) return Boolean is
      trouve:boolean;
      begin
         trouve:=FALSE;
            if e(v) then
               trouve:=TRUE;
            end if;
         return trouve;
   end appartientChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (e : in Type_Ensemble) return Integer is
      c:integer;
      c2:integer;
   begin
      c:=1;
      c2:=0;
      while c<9 loop
         if e(c) then
            c2:=c2+1;
         end if;
      c:=c+1;
      end loop;
      return c2;
   end nombreChiffres;

   --------------------
   -- ajouterChiffre --
   --------------------

   procedure ajouterChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if not appartientChiffre(e,v) then
         e(v):=TRUE;
      else raise APPARTIENT_ENSEMBLE;
      end if;
   end ajouterChiffre;

   --------------------
   -- retirerChiffre --
   --------------------

   procedure retirerChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if appartientChiffre(e,v) then
         e(v):=FALSE;
      else raise APPARTIENT_ENSEMBLE;
      end if;
   end retirerChiffre;

end ensemble;
