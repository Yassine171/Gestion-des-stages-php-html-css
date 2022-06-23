
<?php 
session_start();
include("connexion.php");
$id_admin=$_SESSION['id_admin'];
if(isset($_GET['table']) ){
$id=$_GET['table'];
    switch($id){
        case 'Stages':
            $sql="select entreprise.nom as Entreprise,intitule_du_sujet,valide as valide_par_la_soutenance,CONCAT(enseignant.prenom ,' ',enseignant.nom) as Enseignant
            from `stage`,`enseignant`,`sujet`,`entreprise` 
            where stage.id_ens=enseignant.id_ens and stage.id_sujet=sujet.id_sujet and stage.id_entreprise=entreprise.id_entreprise";
            
            break;
        case 'Etudiants-c1':
            $sql="select photo,CONCAT(nom ,' ',prenom) as Etudient,Enseignant
            from (select DISTINCT(num_apoge_etud),num_apoge_etud1,CONCAT(nom ,' ',prenom) as Enseignant from `stage`,`enseignant` WHERE  (stage.id_ens=0 and stage.id_ens=enseignant.id_ens) or  stage.id_ens=enseignant.id_ens) as T,`etudient` 
            where etudient.num_apoge_etud in (T.num_apoge_etud,T.num_apoge_etud1)";
            
            break;
        case 'Etudiants-c2':
            $sql="select photo,CONCAT(nom ,' ',prenom) as Etudient
            from (select DISTINCT(num_apoge_etud),num_apoge_etud1,CONCAT(nom ,' ',prenom) as Enseignant from `stage`,`enseignant` WHERE  (stage.id_ens=0 or stage.id_ens=NULL) and  stage.id_ens=enseignant.id_ens) as T,`etudient` 
            where etudient.num_apoge_etud in (T.num_apoge_etud,T.num_apoge_etud1)";
                
            break;
        case 'Etudiants-c3':
            $sql="select photo,CONCAT(nom ,' ',prenom) as Etudient
            from (select DISTINCT(num_apoge_etud),num_apoge_etud1,CONCAT(nom ,' ',prenom) as Enseignant from `stage`,`enseignant` WHERE  (stage.id_rapport=0) and  stage.id_ens=enseignant.id_ens) as T,`etudient` 
            where etudient.num_apoge_etud in (T.num_apoge_etud,T.num_apoge_etud1)";
                    
            break;
        case 'Etudiants-c4':
            $sql="select photo,CONCAT(nom ,' ',prenom) as Etudient, valide as valide_par_la_soutenance
            from (select DISTINCT(num_apoge_etud),num_apoge_etud1,stage.valide,CONCAT(nom ,' ',prenom) as Enseignant from `stage`,`enseignant` WHERE  (stage.valide=1) and  stage.id_ens=enseignant.id_ens) as T,`etudient` 
            where etudient.num_apoge_etud in (T.num_apoge_etud,T.num_apoge_etud1)";
                        
            break;
        case 'Résultats':
            $sql="select etd.nom,etd.prenom,note_final 
            from `etudient` as etd,`stage` 
            where stage.num_apoge_etud1=etd.num_apoge_etud or stage.num_apoge_etud1=etd.num_apoge_etud
            ";
            
            break;
        default:
            echo "ERROR: INVALID VALUE";
    }
    $result=mysqli_query($link,$sql);
    $tab=mysqli_fetch_assoc($result);
}