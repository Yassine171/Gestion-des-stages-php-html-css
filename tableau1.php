<?php 
session_start();
include("connexion.php");
$id_enseignant=$_SESSION['id_enseignant'];
if(!isset($_GET['Tableau_choisi'])){
    $Tableau_choisi=1;
}else{
    $Tableau_choisi=$_GET['Tableau_choisi'];
}
switch($Tableau_choisi){
    case 1:
        $sql='SELECT entreprise.nom as Entreprise,tech.nom as Technologie_utilisée,intitule_du_sujet,description, attestation
        FROM `stage`,`utiliser`,`tech`,`enseignant`,`sujet`,`entreprise` 
        WHERE stage.id_ens=enseignant.id_ens and stage.id_sujet=sujet.id_sujet and stage.id_entreprise=entreprise.id_entreprise and stage.id_stage=utiliser.id_stage and utiliser.id_tech=tech.id_tech';
        break;
    case 2:
        $sql='SELECT stage.id_stage as id, entreprise.nom as Entreprise,tech.nom as Technologie_utilisée,intitule_du_sujet,description, attestation 
        FROM `stage`,`utiliser`,`tech`,`sujet`,`entreprise` 
        WHERE stage.id_sujet=sujet.id_sujet and stage.id_entreprise=entreprise.id_entreprise and stage.id_stage=utiliser.id_stage and utiliser.id_tech=tech.id_tech and stage.id_ens=0';
        break;
    case 3:
        $sql='SELECT id_stage as id,intitule_du_sujet,description, attestation,fiche_devaluation,nom_pre_version as Premiere_version_du_rapport, nom_version_corrige as version_corrigé_du_rapport
        FROM `stage`,`rapp`,`sujet`
        WHERE stage.id_sujet=sujet.id_sujet and stage.id_rapport=rapp.id_rapport and stage.id_ens='.$id_enseignant.' and stage.valide=0;';
    
        break;
    case 4:
        $sql='SELECT id_stage as id,intitule_du_sujet,description, attestation,fiche_devaluation,nom_pre_version as Premiere_version_du_rapport, nom_version_corrige as version_corrigé_du_rapport, note_final
        FROM `stage`,`rapp`,`sujet`
        WHERE stage.id_sujet=sujet.id_sujet and stage.id_rapport=rapp.id_rapport and stage.id_ens='.$id_enseignant.'';
        break;
    default:
        echo "Erreur: valeur invalid";
}
//$sql.=" and filiere="'.$_GET.'"';
$result=mysqli_query($link,$sql);
$tableau1=mysqli_fetch_assoc($result);
