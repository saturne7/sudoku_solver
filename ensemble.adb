package body ensemble is



   ------------------------
   -- construireEnsemble --
   ------------------------



   function construireEnsemble return Type_Ensemble is
      e:Type_Ensemble;
   begin
      for i in 1..9 loop
         e(i):=FALSE;
      end loop;
   return e;
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



   function appartientChiffre
     (e : in Type_Ensemble; v : Integer) return Boolean
   is
   begin
      if e(v) then
         return true;
      else
         return false;
      end if;
   end appartientChiffre;



   --------------------
   -- nombreChiffres --
   --------------------



   function nombreChiffres (e : in Type_Ensemble) return Integer is
      r:integer:=0;
      x:integer:=1;
   begin
      while x<10 loop
         if e(x) then
            r:=r+1;
         end if;
         x:=x+1;
      end loop;
      return r;
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
      else raise NON_APPARTIENT_ENSEMBLE;
      end if;
   end retirerChiffre;




end ensemble;
