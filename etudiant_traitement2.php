<?php
session_start();
include("connexion.php");
$id_stage=$_SESSION["id_stage"];
$num_apogee=$_SESSION['id_etudient'];

if(isset($id_stage)){



if(isset($_FILES['premier_version']) and $_FILES['premier_version']['error']==0)
	{ 
		
		$dossier='photo/';
		$temp_name=$_FILES['premier_version']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le pdf est untrouvable");
		}
		if ($_FILES['premier_version']['size'] >= 1000000){
			exit("Erreur, le pdf est volumineux");
		}
		$infospdf = pathinfo($_FILES['premier_version']['name']);
		$extension_upload = $infospdf['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('pdf','doc','docx');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une fichier svp (extensions autorisées: pdf)");
		}
		$nom_pdf=$num_apogee.".premier_version.".$extension_upload;

		if(!move_uploaded_file($temp_name,$dossier.$nom_pdf)){
			exit("Problem dans le telechargement de le fichier, Ressayez");}
			
		$premier_version=$nom_pdf;
		
		
		
}
if(isset($_FILES['version_corige']) and $_FILES['version_corige']['error']==0)
	{ 
		$dossier='photo/';
		$temp_name=$_FILES['version_corige']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le pdf est untrouvable");
		}
		if ($_FILES['version_corige']['size'] >= 1000000){
			exit("Erreur, le pdf est volumineux");
		}
		$infospdf = pathinfo($_FILES['version_corige']['name']);
		$extension_upload = $infospdf['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('pdf','doc','docx');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une fichier svp (extensions autorisées: pdf)");
		}
		$nom_pdf=$num_apogee.".version_corige.".$extension_upload;

		if(!move_uploaded_file($temp_name,$dossier.$nom_pdf)){
			exit("Problem dans le telechargement de le fichier, Ressayez");}
			
		$version_corige=$nom_pdf;
        
}
if (isset($premier_version)){
	$sql7="insert into rapp (nom_pre_version,nom_version_corrige) values('$premier_version','$version_corige')  ";
    $res7=mysqli_query($link,$sql7);
    $id_rapport = mysqli_insert_id($link);
}

if(isset($_FILES['presentation']) and $_FILES['presentation']['error']==0)
	{ 
		$dossier='photo/';
		$temp_name=$_FILES['presentation']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le pdf est untrouvable");
		}
		if ($_FILES['presentation']['size'] >= 1000000){
			exit("Erreur, le pdf est volumineux");
		}
		$infospdf = pathinfo($_FILES['presentation']['name']);
		$extension_upload = $infospdf['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('pdf','doc','docx');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une fichier svp (extensions autorisées: pdf)");
		}
		$nom_pdf=$num_apogee.".presentation.".$extension_upload;

		if(!move_uploaded_file($temp_name,$dossier.$nom_pdf)){
			exit("Problem dans le telechargement de le fichier, Ressayez");}
			
		$presentation=$nom_pdf;
}
if(isset($_FILES['attestation']) and $_FILES['attestation']['error']==0)
	{ 
		$dossier='photo/';
		$temp_name=$_FILES['attestation']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le pdf est untrouvable");
		}
		if ($_FILES['attestation']['size'] >= 1000000){
			exit("Erreur, le pdf est volumineux");
		}
		$infospdf = pathinfo($_FILES['attestation']['name']);
		$extension_upload = $infospdf['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('pdf','doc','docx');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une fichier svp (extensions autorisées: pdf)");
		}
		$nom_pdf=$num_apogee.".attestation1.".$extension_upload;

		if(!move_uploaded_file($temp_name,$dossier.$nom_pdf)){
			exit("Problem dans le telechargement de le fichier, Ressayez");}
			
		$attestation=$nom_pdf;
}
if(isset($_FILES['evaluation']) and $_FILES['evaluation']['error']==0)
	{ 
		$dossier='photo/';
		$temp_name=$_FILES['evaluation']['tmp_name'];
		if(!is_uploaded_file($temp_name))
		{
		exit("le pdf est untrouvable");
		}
		if ($_FILES['evaluation']['size'] >= 1000000){
			exit("Erreur, le pdf est volumineux");
		}
		$infospdf = pathinfo($_FILES['evaluation']['name']);
		$extension_upload = $infospdf['extension'];
		
		$extension_upload = strtolower($extension_upload);
		$extensions_autorisees = array('pdf','doc','docx');
		if (!in_array($extension_upload, $extensions_autorisees))
		{
		exit("Erreur, Veuillez inserer une fichier svp (extensions autorisées: pdf)");
		}
		$nom_pdf=$num_apogee.".evaluation.".$extension_upload;

		if(!move_uploaded_file($temp_name,$dossier.$nom_pdf)){
			exit("Problem dans le telechargement de le fichier, Ressayez");}
			
		$evaluation=$nom_pdf;
		
}
echo "attestation:::".$attestation."<br>";
echo "id_stage:::".$id_stage."<br>";

echo "id_rapport:::".$id_rapport."<br>";

echo "version_corige:::".$version_corige."<br>";

echo "num_apogee:::".$num_apogee."<br>";
echo "presentation:::".$presentation."<br>";
echo "evaluation:::".$evaluation."<br>";
						
	$sql5="update stage set attestation ='".$attestation."',id_rapport='".$id_rapport."',presentation='".$presentation."',fiche_devaluation='".$evaluation."' where id_stage=".$id_stage."";
    $res5=mysqli_query($link,$sql5);
	
	if($res5=true ){	
		header("Location:etudient.php?erreur=1");
	}else{	header("Location:etudient.php?erreur=0");
	}


}else{
	header("Location:etudiant1.php?erreur=0");

}?>