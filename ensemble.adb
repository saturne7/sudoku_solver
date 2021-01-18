package body ensemble is



   ------------------------
   -- construireEnsemble --
   ------------------------



   function construireEnsemble return Type_Ensemble is
      e:Type_Ensemble;
   begin
      e:=(false,false,false,false,false,false,false,false,false);
   return e;
   end construireEnsemble;



   ------------------
   -- ensembleVide --
   ------------------



   function ensembleVide (e : in Type_Ensemble) return Boolean is
   begin
      if e=(false,false,false,false,false,false,false,false,false)then
         return true;
      else
         return false;
      end if;
   end ensembleVide;



   -----------------------
   -- appartientChiffre --
   -----------------------



   function appartientChiffre
     (e : in Type_Ensemble; v : Integer) return Boolean
   is



   begin
      if e(v)=true then
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
         if e(x)=true then
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
      if (e)=FALSE then
         e(v):=true;
      else raise APPARTIENT_ENSEMBLE;
   end ajouterChiffre;



   --------------------
   -- retirerChiffre --
   --------------------



   procedure retirerChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if e(v)=TRUE then
         e(v):=false;
      else raise NON_APPARTIENT_ENSEMBLE;
   end retirerChiffre;



end ensemble;
