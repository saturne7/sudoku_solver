with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package a_tester is

   type Pt_Fonction is access function return Boolean;

   type Test_Unitaire is limited record
      function_Of_Test : Pt_Fonction;
      error_Test       : Unbounded_String;
   end record;

   -- tests TAD Coordonnees
   function test_Coordonnees_P1 return Boolean; --1
   function test_Coordonnees_P2 return Boolean; --2
   function test_Coordonnees_P3a return Boolean; --3
   function test_Coordonnees_P3b return Boolean; --4
   function test_Coordonnees_P3c return Boolean; --5
   function test_Coordonnees_P3d return Boolean; --6
   function test_Coordonnees_P3e return Boolean; --7
   function test_Coordonnees_P3f return Boolean; --8
   function test_Coordonnees_P3g return Boolean; --9
   function test_Coordonnees_P3h return Boolean; --10
   function test_Coordonnees_P3i return Boolean; --11
   function test_Coordonnees_P3 return Boolean; --12
   function test_Coordonnees_P4 return Boolean; --13

   -- tests TAD Ensemble
   function test_Ensemble_P1 return Boolean; --14
   function test_Ensemble_P2 return Boolean; --15
   function test_Ensemble_P3 return Boolean; --16
   function test_Ensemble_P4 return Boolean; --17
   function test_Ensemble_P5a return Boolean; --18
   function test_Ensemble_P5b return Boolean; --19
   function test_Ensemble_P6 return Boolean; --20
   function test_Ensemble_P7a return Boolean; --21
   function test_Ensemble_P7b return Boolean; --22
   function test_Ensemble_P8 return Boolean; --23
   function test_Ensemble_Exception1 return Boolean; --24
   function test_Ensemble_Exception2 return Boolean; --25

   -- tests TAD GrillesSudoku
   function test_Grille_P1 return Boolean; --26
   function test_Grille_P2 return Boolean; --27
   function test_Grille_P3 return Boolean; --28
   function test_Grille_P4 return Boolean; --29
   function test_Grille_P5 return Boolean; --30
   function test_Grille_P6 return Boolean; --31
   function test_Grille_P7a return Boolean; --32
   function test_Grille_P7b return Boolean; --33
   function test_Grille_P8 return Boolean; --34
   function test_Grille_P9 return Boolean; --35
   function test_Grille_P10a return Boolean; --36
   function test_Grille_P10b return Boolean; --37
   function test_Grille_P11 return Boolean; --38
   function test_Grille_P12 return Boolean; --39
   function test_Grille_P13 return Boolean; --41
   function test_Grille_P14a return Boolean; --342
   function test_Grille_P14b return Boolean; --43
   function test_Grille_P15 return Boolean; --44
   function test_Grille_P16 return Boolean; --45
   function test_Grille_P17 return Boolean; --46
   function test_Grille_P18 return Boolean; --47
   function test_Grille_P19 return Boolean; --48
   function test_Grille_Exception1 return Boolean; --49
   function test_Grille_Exception2 return Boolean; --50
   function test_Grille_Exception3 return Boolean; --51

   -- tests résolution Sudoku
   function test_Resolution_Grille_1 return Boolean; --52
   function test_Resolution_Grille_2 return Boolean; -- 53
   function test_Resolution_Grille_3 return Boolean; -- 54
   function test_Resolution_Grille_4 return Boolean; -- 55
   function test_Resolution_Grille_6 return Boolean; -- 56
   function test_Resolution_Grille_7 return Boolean; -- 57
   function test_Resolution_Grille_8 return Boolean; -- 58
   function test_Resolution_Grille_9 return Boolean; -- 59

   les_Tests : constant array (Positive range <>) of Test_Unitaire :=

   -- tests TAD Coordonnees
     ((test_Coordonnees_P1'Access,
       To_Unbounded_String ("echec de la propriete 1 Coordonnees")),
      (test_Coordonnees_P2'Access,
       To_Unbounded_String ("echec de la propriete 2 Coordonnees")),
      (test_Coordonnees_P3a'Access,
       To_Unbounded_String ("echec de la propriete 3a Coordonnees")),
      (test_Coordonnees_P3b'Access,
       To_Unbounded_String ("echec de la propriete 3b Coordonnees")),
      (test_Coordonnees_P3c'Access,
       To_Unbounded_String ("echec de la propriete 3c Coordonnees")),
      (test_Coordonnees_P3d'Access,
       To_Unbounded_String ("echec de la propriete 3d Coordonnees")),
      (test_Coordonnees_P3e'Access,
       To_Unbounded_String ("echec de la propriete 3e Coordonnees")),
      (test_Coordonnees_P3f'Access,
       To_Unbounded_String ("echec de la propriete 3f Coordonnees")),
      (test_Coordonnees_P3g'Access,
       To_Unbounded_String ("echec de la propriete 3g Coordonnees")),
      (test_Coordonnees_P3h'Access,
       To_Unbounded_String ("echec de la propriete 3h Coordonnees")),
      (test_Coordonnees_P3h'Access,
       To_Unbounded_String ("echec de la propriete 3i Coordonnees")),
      (test_Coordonnees_P3'Access,
       To_Unbounded_String ("echec de la propriete 3 Coordonnees")),
      (test_Coordonnees_P4'Access,
       To_Unbounded_String ("echec de la propriete 4 Coordonnees")));




   resultats : array (les_Tests'Range) of Boolean;

end a_tester;
