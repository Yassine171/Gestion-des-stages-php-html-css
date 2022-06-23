<?php
session_start();
include("connexion.php");
$num_apogee=$_SESSION['id_etudient'];
$nom_entreprise=$_POST["nom_entreprise"];
$rue_entreprise=$_POST["rue_entreprise"];
$avenue_entreprise=$_POST["avenue_entreprise"];
$tel_entreprise=$_POST['tel_entreprise'];
$ville_entreprise=$_POST['ville_entreprise'];
$nom_encadrant=$_POST['nom_encadrant'];
$prenom_encadrant=$_POST['prenom_encadrant'];
$sujet=$_POST['sujet'];
$description=$_POST['description'];
$technologie=$_POST['technologie'];
$nom_binome=$_POST['nom_binome'];
$prenom_binome=$_POST['prenom_binome'];
// $premier_version=$_POST['premier_version'];
// $version_corrige=$_POST['version_corrige'];
// $presentation=$_POST['presentation'];
// $attestation=$_POST['attestation'];


$sql2="insert into `entreprise` (`nom`,`ville`,`tell`,`rue`,`avenue`) values('$nom_entreprise','$ville_entreprise','$tel_entreprise','$rue_entreprise','$avenue_entreprise') ";
    $res2=mysqli_query($link,$sql2);

    $sql4="select `id_entreprise` from `entreprise` where  `nom`='".$nom_entreprise."'";
    $res4=mysqli_query($link,$sql4);
    $row4=mysqli_fetch_assoc($res4);
   $id_entreprise=$row4['id_entreprise'];

   $sql3="insert into encadrant (nom,prenom,id_entreprise) values('$nom_encadrant','$prenom_encadrant','$id_entreprise')  ";
    $res3=mysqli_query($link,$sql3);

	$sql10="select id_encadrant from encadrant where  nom='".$nom_encadrant."'";
    $res10=mysqli_query($link,$sql10);
	$row=mysqli_fetch_assoc($res10);
    $id_encadrant=$row['id_encadrant'];

    $sql5="insert into sujet (intitule_du_sujet,description) values('$sujet','$description')  ";
    $res5=mysqli_query($link,$sql5);

	$sql8="select id_sujet from sujet where  intitule_du_sujet='".$sujet."'";
    $res8=mysqli_query($link,$sql8);
	$row=mysqli_fetch_assoc($res8);
    $id_sujet=$row['id_sujet'];

	

    $sql6="insert into tech (nom) values('$technologie')  ";
    $res6=mysqli_query($link,$sql6);

	$sql11="select id_tech from tech where  nom='".$technologie."'";
    $res11=mysqli_query($link,$sql11);
	$row=mysqli_fetch_assoc($res11);
    $id_tech=$row['id_tech'];
    $id_ens=0;

    $sql20="insert into stage (id_ens,id_sujet,id_entreprise,id_encadrant,num_apoge_etud) values('$id_ens','$id_sujet','$id_entreprise','$id_encadrant','$num_apogee')";
    $res20=mysqli_query($link,$sql20);
    
    if ($res20==true) {
        $last_stage_id = mysqli_insert_id($link);
        
      }
	

echo "id_sujet:::".$id_sujet."<br>";
echo "id_entreprise:::".$id_entreprise."<br>";
echo "id_encadrant:::".$id_encadrant."<br>";
echo "num_apogee:::".$num_apogee."<br>";



$sql13="select 	* from stage where  id_sujet='".$id_sujet."'";
$res13=mysqli_query($link,$sql13);
$rowu=mysqli_fetch_assoc($res13);


$id_stage=$rowu['id_stage'];
$_SESSION["id_stage"]=$last_stage_id;



$sql12="insert into utiliser (id_stage,id_tech) values('$id_stage','$id_tech')  ";
$res12=mysqli_query($link,$sql12);
//binome

if(isset($nom_binome)){
$sql14="select 	* from etudient where  nom ='".$nom_binome."' and prenom  ='".$prenom_binome."'";
$res14=mysqli_query($link,$sql14);
$row14=mysqli_fetch_assoc($res14);
$num_apoge_etud2=$row14['num_apoge_etud'];
echo $num_apoge_etud2;
$sql22="update etudient set num_apoge_etud2='".$num_apoge_etud2."'  where num_apoge_etud ='".$num_apogee."'";
$res22=mysqli_query($link,$sql22);

}
  
header("Location:etudiant2.php?stage=1");
?>