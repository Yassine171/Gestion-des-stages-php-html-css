<?php 
session_start();
include("connexion.php");
$id_enseignant=$_SESSION['id_enseignant'];
if(isset($_POST['Modifier'])){
    $choix=htmlspecialchars($_POST['choix']);
    echo $choix;
    switch($choix){
        case 2:
            $Stages_choisi=$_POST['Stages'];
            $sql='UPDATE stage SET id_ens='.$id_enseignant.' WHERE id_stage IN ('.implode(",",$Stages_choisi).')';
            
            $result=mysqli_query($link,$sql);
            break;
        case 3:
            $Stages_valide=$_POST['Stages'];
            $sql='UPDATE stage SET validation=1 WHERE id_stage IN ('.implode(",",$Stages_valide).')';
            
            $result=mysqli_query($link,$sql);
            break;
        case 4:
            $ids=$_POST['Stages_id'];$sql='';
            foreach($ids as $id){
                if(isset($_POST['note/'.$id]) && !empty($_POST['note/'.$id]))
                $sql.='UPDATE stage SET note_final='.$_POST['note/'.$id].' WHERE id_stage='.$id.';';
            }

            $result=mysqli_multi_query($link,$sql);
            break;
        default:
            echo "Erreur: valeur invalid";
    }
}
if($result==False){
    header("Location: enseignant1.php?enregistrement_erreur=1");
}else{
    header("Location: enseignant1.php?Tableau_choisi=1");
}
?>