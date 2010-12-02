--# -path=.:../romance:../common:../abstract:../../prelude

-- Irregular verbs from Nancy, based on a list from Sylvain Pogodalla, 25/11/2004
-- Translated to GF by Aarne Ranta
-- added extracted subcat information 29/11

concrete IrregFre of IrregFreAbs = CatFre ** 
  open DiffFre, MorphoFre, BeschFre, Prelude in {

  flags optimize=values ;

-- all verbs in classes with "er" and "finir" are omitted

lin 
  abattre_V2 = v_besch55 "abattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  absoudre_V2 = v_besch72 "absoudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  abstenir_V = v_besch23 "abstenir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  abstraire_V2 = v_besch61 "abstraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  accourir_V = v_besch33 "accourir" ** {vtyp = VHabere ; lock_V = <>} ;
  accro�tre_V2 = v_besch73 "accro�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  accueillir_V2 = v_besch28 "accueillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  acqu�rir_V2 = v_besch24 "acqu�rir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  adjoindre_V2 = v_besch58 "adjoindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  admettre_V2 = v_besch56 "admettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  advenir_V = v_besch23 "advenir" ** {vtyp = VEsse ; lock_V = <>} ;
  aller_V = v_besch22 "aller" ** {vtyp = VEsse ; lock_V = <>} ;
  apercevoir_V2 = v_besch38 "apercevoir" ** {vtyp = VRefl ; lock_V2 = <> ; c2 = complGen} ;
  appara�tre_V = v_besch64 "appara�tre" ** {vtyp = VHabere ; lock_V = <>} ;
  appartenir_V2 = v_besch23 "appartenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  appendre_V2 = v_besch53 "appendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  apprendre_V2 = v_besch54 "apprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  assaillir_V2 = v_besch29 "assaillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  asseoir_V2 = v_besch49 "asseoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  astreindre_V2 = v_besch57 "astreindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  atteindre_V2 = v_besch57 "atteindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  attendre_V2 = v_besch53 "attendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  avoir_V2 = v_besch1 "avoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  battre_V2 = v_besch55 "battre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  boire_V2 = v_besch69 "boire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  bouillir_V2 = v_besch31 "bouillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  braire_V = v_besch61 "braire" ** {vtyp = VHabere ; lock_V = <>} ;
  ceindre_V2 = v_besch57 "ceindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  choir_V = v_besch52 "choir" ** {vtyp = VEsse ; lock_V = <>} ;
  circonscrire_V2 = v_besch80 "circonscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  circonvenir_V2 = v_besch23 "circonvenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  clore_V2 = v_besch70 "clore" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  combattre_V2 = v_besch55 "combattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  commettre_V2 = v_besch56 "commettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  compara�tre_V2 = v_besch64 "compara�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  complaire_V2 = v_besch63 "complaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  comprendre_V2 = v_besch54 "comprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  compromettre_V2 = v_besch56 "compromettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  concevoir_V2 = v_besch38 "concevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  conclure_V2 = v_besch71 "conclure" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  concourir_V2 = v_besch33 "concourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  condescendre_V2 = v_besch53 "condescendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  conduire_V2 = v_besch82 "conduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  confire_V2 = v_besch81 "confire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  confondre_V2 = v_besch53 "confondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  conjoindre_V2 = v_besch58 "conjoindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  conna�tre_V2 = v_besch64 "conna�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  conqu�rir_V2 = v_besch24 "conqu�rir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  consentir_V2 = v_besch25 "consentir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  construire_V2 = v_besch82 "construire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contenir_V2 = v_besch23 "contenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contraindre_V2 = v_besch59 "contraindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contrebattre_V2 = v_besch55 "contrebattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contredire_V2 = v_besch78 "contredire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contrefaire_V2 = v_besch62 "contrefaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  contrevenir_V2 = v_besch23 "contrevenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  convaincre_V2 = v_besch60 "convaincre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  convenir_V2 = v_besch23 "convenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  correspondre_V2 = v_besch53 "correspondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  corrompre_V2 = v_besch53 "corrompre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  coudre_V2 = v_besch73 "coudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  courir_V2 = v_besch33 "courir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  couvrir_V2 = v_besch27 "couvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  craindre_V2 = v_besch59 "craindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  croire_V2 = v_besch68 "croire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  cro�tre_V = v_besch67 "cro�tre" ** {vtyp = VEsse ; lock_V = <>} ;
  cueillir_V2 = v_besch28 "cueillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  cuire_V2 = v_besch82 "cuire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�battre_V2 = v_besch55 "d�battre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�bouillir_V2 = v_besch31 "d�bouillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�cevoir_V2 = v_besch38 "d�cevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�choir_V2 = v_besch52 "d�choir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�clore_V2 = v_besch70 "d�clore" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�commettre_V2 = v_besch56 "d�commettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�confire_V2 = v_besch81 "d�confire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�coudre_V2 = v_besch73 "d�coudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�couvrir_V2 = v_besch27 "d�couvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�crire_V2 = v_besch80 "d�crire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�cro�tre_V2 = v_besch67 "d�cro�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�cuire_V2 = v_besch82 "d�cuire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�duire_V2 = v_besch82 "d�duire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�faillir_V = v_besch30 "d�faillir" ** {vtyp = VHabere ; lock_V = <>} ;
  d�faire_V2 = v_besch62 "d�faire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�fendre_V2 = v_besch53 "d�fendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�mentir_V2 = v_besch25 "d�mentir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�mettre_V2 = v_besch56 "d�mettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�mordre_V = v_besch53 "d�mordre" ** {vtyp = VHabere ; lock_V = <>} ;
  d�partir_V2 = v_besch25 "d�partir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  d�peindre_V2 = v_besch57 "d�peindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�pendre_V2 = v_besch53 "d�pendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  d�plaire_V = v_besch63 "d�plaire" ** {vtyp = VHabere ; lock_V = <>} ;
  d�pourvoir_V2 = v_besch40 "d�pourvoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�prendre_V2 = v_besch54 "d�prendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  d�sapprendre_V2 = v_besch54 "d�sapprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  descendre_V2 = v_besch53 "descendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  desservir_V2 = v_besch35 "desservir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�teindre_V2 = v_besch57 "d�teindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�tendre_V2 = v_besch53 "d�tendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�tenir_V2 = v_besch23 "d�tenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�tordre_V2 = v_besch53 "d�tordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  d�truire_V2 = v_besch82 "d�truire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  devenir_V = v_besch23 "devenir" ** {vtyp = VEsse ; lock_V = <>} ;
  d�v�tir_V2 = v_besch26 "d�v�tir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  devoir_V2 = v_besch42 "devoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  dire_V2 = v_besch78 "dire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  disconvenir_V2 = v_besch23 "disconvenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  discourir_V2 = v_besch33 "discourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  disjoindre_V2 = v_besch58 "disjoindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  dispara�tre_V2 = v_besch64 "dispara�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  dissoudre_V2 = v_besch72 "dissoudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  distendre_V2 = v_besch53 "distendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  distordre_V2 = v_besch53 "distordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  distraire_V2 = v_besch61 "distraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  dormir_V2 = v_besch32 "dormir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �battre_V = v_besch55 "�battre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  �choir_V2 = v_besch52 "�choir" ** {vtyp = VEsse ; lock_V2 = <> ; c2 = complDat} ;
  �clore_V2 = v_besch70 "�clore" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �conduire_V2 = v_besch82 "�conduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �crire_V2 = v_besch80 "�crire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �lire_V2 = v_besch77 "�lire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  embatre_V2 = v_besch55 "embatre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  embattre_V2 = v_besch55 "embattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  emboire_V = v_besch69 "emboire" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  �mettre_V2 = v_besch56 "�mettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �moudre_V2 = v_besch74 "�moudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �mouvoir_V2 = v_besch44 "�mouvoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  empreindre_V2 = v_besch57 "empreindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  enceindre_V2 = v_besch57 "enceindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  enclore_V2 = v_besch70 "enclore" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  encourir_V2 = v_besch33 "encourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  endormir_V2 = v_besch32 "endormir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  enduire_V2 = v_besch82 "enduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  enfreindre_V2 = v_besch57 "enfreindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  enfuir_V = v_besch36 "enfuir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  enjoindre_V2 = v_besch58 "enjoindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  enqu�rir_V = v_besch24 "enqu�rir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entendre_V2 = v_besch53 "entendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  entr'apercevoir_V = v_besch38 "entr'apercevoir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entrebattre_V = v_besch55 "entrebattre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entre_d�truire_V = v_besch82 "entre-d�truire" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entre_ha�r_V = v_besch20 "entre-ha�r" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entremettre_V = v_besch56 "entremettre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  entre_nuire_V = v_besch82 "entre-nuire" ** {vtyp = VHabere ; lock_V = <>} ;
  entreprendre_V2 = v_besch54 "entreprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  entretenir_V2 = v_besch23 "entretenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  entrevoir_V2 = v_besch39 "entrevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  entrouvrir_V2 = v_besch27 "entrouvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  envoyer_V2 = v_besch18 "envoyer" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �pandre_V2 = v_besch53 "�pandre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �perdre_V = v_besch53 "�perdre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  �prendre_V = v_besch54 "�prendre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  �quivaloir_V2 = v_besch47 "�quivaloir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  �teindre_V2 = v_besch57 "�teindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �tendre_V2 = v_besch53 "�tendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �treindre_V2 = v_besch57 "�treindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  �tre_V = v_besch2 "�tre" ** {vtyp = VHabere ; lock_V = <>} ;
  exclure_V2 = v_besch71 "exclure" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  extraire_V2 = v_besch61 "extraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  faillir_V2 = v_besch30 "faillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  faire_V2 = v_besch62 "faire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  falloir_V = v_besch46 "falloir" ** {vtyp = VHabere ; lock_V = <>} ;
  feindre_V2 = v_besch57 "feindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  fendre_V2 = v_besch53 "fendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  fondre_V2 = v_besch53 "fondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  forfaire_V2 = v_besch62 "forfaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  foutre_V2 = v_besch53 "foutre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  frire_V2 = v_besch81 "frire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  fuir_V2 = v_besch36 "fuir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  geindre_V2 = v_besch57 "geindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  g�sir_V2 = mkNV (conj3g�sir "g�sir") ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  ha�r_V2 = v_besch20 "ha�r" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  inclure_V2 = v_besch71 "inclure" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  induire_V2 = v_besch82 "induire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  inscrire_V2 = v_besch80 "inscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  instruire_V2 = v_besch82 "instruire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  interdire_V2 = v_besch78 "interdire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  interrompre_V2 = v_besch53 "interrompre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  intervenir_V = v_besch23 "intervenir" ** {vtyp = VEsse ; lock_V = <>} ;
  introduire_V2 = v_besch82 "introduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  joindre_V2 = v_besch58 "joindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  lire_V2 = v_besch77 "lire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  luire_V = v_besch82 "luire" ** {vtyp = VHabere ; lock_V = <>} ;
  mainmettre_V2 = v_besch56 "mainmettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  maintenir_V2 = v_besch23 "maintenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  m�conna�tre_V2 = v_besch64 "m�conna�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  m�croire_V2 = v_besch68 "m�croire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  m�dire_V2 = v_besch78 "m�dire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  mentir_V2 = v_besch25 "mentir" ** {vtyp = VEsse ; lock_V2 = <> ; c2 = complDat} ;
  m�prendre_V2 = v_besch54 "m�prendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  messeoir_V2 = v_besch50 "messeoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  mettre_V2 = v_besch56 "mettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  m�vendre_V2 = v_besch53 "m�vendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  mordre_V2 = v_besch53 "mordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  morfondre_V = v_besch53 "morfondre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  moudre_V2 = v_besch74 "moudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  mourir_V = v_besch34 "mourir" ** {vtyp = VEsse ; lock_V = <>} ;
  mouvoir_V2 = v_besch44 "mouvoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  na�tre_V = v_besch65 "na�tre" ** {vtyp = VEsse ; lock_V = <>} ;
  nuire_V2 = v_besch82 "nuire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  obtenir_V2 = v_besch23 "obtenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  obvenir_V = v_besch23 "obvenir" ** {vtyp = VEsse ; lock_V = <>} ;
  occlure_V2 = v_besch71 "occlure" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  offrir_V2 = v_besch27 "offrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  oindre_V2 = v_besch58 "oindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  omettre_V2 = v_besch56 "omettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  ou�r_V2 = v_besch37 "ou�r" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  ouvrir_V2 = v_besch27 "ouvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pa�tre_V2 = v_besch66 "pa�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pa�tre_V = v_besch66 "pa�tre" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  para�tre_V = v_besch64 "para�tre" ** {vtyp = VHabere ; lock_V = <>} ;
  parcourir_V2 = v_besch33 "parcourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  parfondre_V2 = v_besch53 "parfondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  partir_V = v_besch25 "partir" ** {vtyp = VEsse ; lock_V = <>} ;
  parvenir_V = v_besch23 "parvenir" ** {vtyp = VEsse ; lock_V = <>} ;
  peindre_V2 = v_besch57 "peindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pendre_V2 = v_besch53 "pendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  percevoir_V2 = v_besch38 "percevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  perdre_V2 = v_besch53 "perdre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  permettre_V2 = v_besch56 "permettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  plaindre_V2 = v_besch59 "plaindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  plaire_V2 = v_besch63 "plaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  pleuvoir_V = v_besch45 "pleuvoir" ** {vtyp = VHabere ; lock_V = <>} ;
  poindre_V2 = v_besch58 "poindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pondre_V2 = v_besch53 "pondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pourfendre_V2 = v_besch53 "pourfendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  poursuivre_V2 = v_besch75 "poursuivre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pourvoir_V2 = v_besch40 "pourvoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  pouvoir_V = v_besch43 "pouvoir" ** {vtyp = VHabere ; lock_V = <>} ;
  pr�dire_V2 = v_besch78 "pr�dire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  prendre_V2 = v_besch54 "prendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  prescrire_V2 = v_besch80 "prescrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pressentir_V2 = v_besch25 "pressentir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pr�tendre_V2 = v_besch53 "pr�tendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  pr�valoir_V2 = v_besch47 "pr�valoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  pr�venir_V2 = v_besch23 "pr�venir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  pr�voir_V2 = v_besch39 "pr�voir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  produire_V2 = v_besch82 "produire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  promettre_V2 = v_besch56 "promettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  promouvoir_V2 = v_besch44 "promouvoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  proscrire_V2 = v_besch80 "proscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  provenir_V = v_besch23 "provenir" ** {vtyp = VEsse ; lock_V = <>} ;
  rabattre_V2 = v_besch55 "rabattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  raire_V2 = v_besch61 "raire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rapprendre_V2 = v_besch54 "rapprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rasseoir_V2 = v_besch49 "rasseoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�admettre_V2 = v_besch56 "r�admettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�appara�tre_V = v_besch64 "r�appara�tre" ** {vtyp = VHabere ; lock_V = <>} ;
  r�apprendre_V2 = v_besch54 "r�apprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rebattre_V2 = v_besch55 "rebattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recevoir_V2 = v_besch38 "recevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recompara�tre_V2 = v_besch64 "recompara�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reconduire_V2 = v_besch82 "reconduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reconna�tre_V2 = v_besch64 "reconna�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reconqu�rir_V2 = v_besch24 "reconqu�rir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reconstruire_V2 = v_besch82 "reconstruire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recoudre_V2 = v_besch73 "recoudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recourir_V2 = v_besch33 "recourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  recouvrir_V2 = v_besch27 "recouvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�crire_V2 = v_besch80 "r�crire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recro�tre_V2 = v_besch67 "recro�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recueillir_V2 = v_besch28 "recueillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  recuire_V2 = v_besch82 "recuire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  red�couvrir_V2 = v_besch27 "red�couvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  red�faire_V2 = v_besch62 "red�faire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  redescendre_V2 = v_besch53 "redescendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  redevenir_V = v_besch23 "redevenir" ** {vtyp = VEsse ; lock_V = <>} ;
  redevoir_V2 = v_besch42 "redevoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  redire_V2 = v_besch78 "redire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�duire_V2 = v_besch82 "r�duire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  r��crire_V2 = v_besch80 "r��crire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r��lire_V2 = v_besch77 "r��lire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�entendre_V2 = v_besch53 "r�entendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  refaire_V2 = v_besch62 "refaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  refendre_V2 = v_besch53 "refendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  refondre_V2 = v_besch53 "refondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�inscrire_V2 = v_besch80 "r�inscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�introduire_V2 = v_besch82 "r�introduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rejoindre_V2 = v_besch58 "rejoindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  relire_V2 = v_besch77 "relire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reluire_V2 = v_besch82 "reluire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  remettre_V2 = v_besch56 "remettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  remordre_V2 = v_besch53 "remordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  remoudre_V2 = v_besch74 "remoudre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rena�tre_V2 = v_besch65 "rena�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rendormir_V2 = v_besch32 "rendormir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rendre_V2 = v_besch53 "rendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rentraire_V2 = v_besch61 "rentraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rentrouvrir_V2 = v_besch27 "rentrouvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  renvoyer_V2 = v_besch18 "renvoyer" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  repa�tre_V2 = v_besch66 "repa�tre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�pandre_V2 = v_besch53 "r�pandre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  repara�tre_V = v_besch64 "repara�tre" ** {vtyp = VEsse ; lock_V = <>} ;
  repartir_V = v_besch25 "repartir" ** {vtyp = VEsse ; lock_V = <>} ;
  repeindre_V2 = v_besch57 "repeindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rependre_V2 = v_besch53 "rependre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  repentir_V = v_besch25 "repentir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  reperdre_V2 = v_besch53 "reperdre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  repleuvoir_V = v_besch45 "repleuvoir" ** {vtyp = VHabere ; lock_V = <>} ;
  r�pondre_V2 = v_besch53 "r�pondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reprendre_V2 = v_besch54 "reprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reproduire_V2 = v_besch82 "reproduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  requ�rir_V2 = v_besch24 "requ�rir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�soudre_V2 =  mkNV (conj3r�soudre "r�soudre") ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  ressentir_V2 = v_besch25 "ressentir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  resservir_V2 = v_besch35 "resservir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  ressortir_V = v_besch25 "ressortir" ** {vtyp = VEsse ; lock_V = <>} ;
  ressouvenir_V = v_besch23 "ressouvenir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  restreindre_V2 = v_besch57 "restreindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  reteindre_V2 = v_besch57 "reteindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retendre_V2 = v_besch53 "retendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retenir_V2 = v_besch23 "retenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retondre_V2 = v_besch53 "retondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retordre_V2 = v_besch53 "retordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retraduire_V2 = v_besch82 "retraduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retraire_V2 = v_besch61 "retraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retranscrire_V2 = v_besch80 "retranscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  retransmettre_V2 = v_besch56 "retransmettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  r�treindre_V2 = v_besch57 "r�treindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revaloir_V2 = v_besch47 "revaloir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revendre_V2 = v_besch53 "revendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revenir_V = v_besch23 "revenir" ** {vtyp = VEsse ; lock_V = <>} ;
  rev�tir_V2 = v_besch26 "rev�tir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revivre_V2 = v_besch76 "revivre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revoir_V2 = v_besch39 "revoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  revouloir_V2 = v_besch48 "revouloir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rire_V2 = v_besch79 "rire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complGen} ;
  rompre_V2 = v_besch53 "rompre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  rouvrir_V2 = v_besch27 "rouvrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  saillir_V2 = v_besch29 "saillir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  satisfaire_V2 = v_besch62 "satisfaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  savoir_V2 = v_besch41 "savoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  secourir_V2 = v_besch33 "secourir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  s�duire_V2 = v_besch82 "s�duire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  sentir_V2 = v_besch25 "sentir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  seoir_V = v_besch50 "seoir" ** {vtyp = VHabere ; lock_V = <>} ;
  servir_V2 = v_besch35 "servir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  sortir_V = v_besch25 "sortir" ** {vtyp = VHabere ; lock_V = <>} ;
  soubattre_V2 = v_besch55 "soubattre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  souffrir_V2 = v_besch27 "souffrir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  soumettre_V2 = v_besch56 "soumettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  sourire_V2 = v_besch79 "sourire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  souscrire_V2 = v_besch80 "souscrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  sous_entendre_V2 = v_besch53 "sous-entendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  sous_tendre_V2 = v_besch53 "sous-tendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  soustraire_V2 = v_besch61 "soustraire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  soutenir_V2 = v_besch23 "soutenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  souvenir_V = v_besch23 "souvenir" ** {vtyp = VHabere ; lock_V = <> ; c2 = complAcc} ;
  subvenir_V2 = v_besch23 "subvenir" ** {vtyp = VEsse ; lock_V2 = <> ; c2 = complDat} ;
  suffire_V2 = v_besch81 "suffire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  suivre_V2 = v_besch75 "suivre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  surfaire_V2 = v_besch62 "surfaire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  surprendre_V2 = v_besch54 "surprendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  surproduire_V2 = v_besch82 "surproduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  surseoir_V2 = v_besch51 "surseoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  surtondre_V2 = v_besch53 "surtondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  survenir_V = v_besch23 "survenir" ** {vtyp = VEsse ; lock_V = <>} ;
  survivre_V2 = v_besch76 "survivre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  suspendre_V2 = v_besch53 "suspendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  taire_V2 = v_besch63 "taire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  teindre_V2 = v_besch57 "teindre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  tendre_V2 = v_besch53 "tendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  tenir_V2 = v_besch23 "tenir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complDat} ;
  tondre_V2 = v_besch53 "tondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  tordre_V2 = v_besch53 "tordre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  traduire_V2 = v_besch82 "traduire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  traire_V2 = v_besch61 "traire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  transcrire_V2 = v_besch80 "transcrire" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  transmettre_V2 = v_besch56 "transmettre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  transpara�tre_V = v_besch64 "transpara�tre" ** {vtyp = VHabere ; lock_V = <>} ;
  tr�fondre_V2 = v_besch53 "tr�fondre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  tressaillir_V = v_besch29 "tressaillir" ** {vtyp = VHabere ; lock_V = <>} ;
  vaincre_V2 = v_besch60 "vaincre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  valoir_V2 = v_besch47 "valoir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  vendre_V2 = v_besch53 "vendre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  venir_V = v_besch23 "venir" ** {vtyp = VEsse ; lock_V = <>} ;
  v�tir_V2 = v_besch26 "v�tir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  vivre_V2 = v_besch76 "vivre" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  voir_V2 = v_besch39 "voir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;
  vouloir_V2 = v_besch48 "vouloir" ** {vtyp = VHabere ; lock_V2 = <> ; c2 = complAcc} ;

}