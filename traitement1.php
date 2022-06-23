<?php
session_start();
include("connexion.php");
$num_apogee=$_POST["num_apogee"];
$_SESSION['num_apoge']=$num_apogee;
$pass=$_POST["pass"];

if(isset($_FILES['fichier']) and $_FILES['fichier']['error']==0)
	{ 
		$dossier='photo/';
		$temp_name=$_FILES['fichier']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le fichier est untrouvable");
		}
		if ($_FILES['fichier']['size'] >= 1000000){
			exit("Erreur, le fichier est volumineux");
		}
		$infosfichier = pathinfo($_FILES['fichier']['name']);
		$extension_upload = $infosfichier['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('png','jpeg','jpg');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une image svp (extensions autorisées: png)");
		}
		$nom_photo=$num_apogee.".".$extension_upload;
		if(!move_uploaded_file($temp_name,$dossier.$nom_photo)){
		exit("Problem dans le telechargement de l'image, Ressayez");
		}
		$ph_name=$nom_photo;
		$sq1="UPDATE `etudient` SET  `photo`='$ph_name' WHERE `num_apoge_etud`='".$num_apogee."'";
	$res1= mysqli_query($link,$sq1);
	}
	
	
	

	$sq="UPDATE `etudient` SET  `mot_de_passe`='$pass'  WHERE `num_apoge_etud`='".$num_apogee."'";
	
	$res= mysqli_query($link,$sq);

	if($res==true ){
		header("Location:etudient.php?erreur=1");
    }
	else {
        header("Location:etudient.php?erreur=0");
	}
	?>
