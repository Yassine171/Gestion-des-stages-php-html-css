<?php 
session_start();
include("connexion.php");
 

 
// Get search term 
$searchTerm = $_GET['term']; 
 
// Fetch matched data from the database 
$query = $link->query("SELECT * FROM entreprise WHERE nom LIKE '".$searchTerm."%' ORDER BY nom ASC"); 
 
// Generate array with skills data 
$skillData = array(); 
if($query->num_rows > 0){ 
    while($row = $query->fetch_assoc()){ 
        $data[] = $row['nom'];  
    } 
} 
 
// Return results as json encoded array 
echo json_encode($data); 
?>