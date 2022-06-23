<?php
if (isset($_GET['enregistrement_erreur'])) {
    echo "<script>";
    echo 'alert("Un problème dans le mise à jour !")';
    echo "</script>";
}
include("tableau1.php");
$sql1 = 'SELECT * FROM enseignant WHERE id_ens=' . $id_enseignant . '';
$resu1 = mysqli_query($link, $sql1);
if ($resu1 != False) {
    $row1 = mysqli_fetch_assoc($resu1);
} else {
    echo "<script>";
    echo 'alert("Un problème dans l\'affichage de la modification!");';
    echo "</script>";
}
?>
<!DOCTYPE html>
<html lang="en">

<style type="text/css">


</style>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Primary Meta Tags -->
    <title>Neumorphism UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="title" content="Neumorphism UI">
    <meta name="author" content="Themesberg">

    <link rel="canonical" href="https://themesberg.com/product/ui-kits/neumorphism-ui/" />

    <!--  Social tags -->
    <meta name="keywords" content="neumorphism, neumorphism ui, neomorphism, neomorphism ui, neomorphism css, neumorphism css, neumorph, neumorphic, design system, login, form, table, tables, card, cards, navbar, modal, icons, icons, map, chat, carousel, menu, datepicker, gallery, slider, date, social, dropdown, search, tab, nav, footer, date picker, forms, tabs, time, button, select, input, timeline, cart, about us, account, log in, blog, profile, portfolio, landing page, ecommerce, shop, landing, register, app, contact, one page, sign up, signup, store, bootstrap 4, bootstrap4, dashboard, bootstrap 4 dashboard, bootstrap 4 design, bootstrap 4 system, bootstrap 4, bootstrap 4 uit kit, bootstrap 4 kit, themesberg, html kit, html css template, web template, bootstrap, bootstrap 4, css3 template, frontend, responsive bootstrap template, bootstrap ui kit, responsive ui kit">
    <meta name="description" content="Start developing neumorphic web applications and pages using Neumorphism UI. It features over 100 individual components and 5 example pages.">

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Neumorphism UI by Themesberg">
    <meta itemprop="description" content="Start developing neumorphic web applications and pages using Neumorphism UI. It features over 100 individual components and 5 example pages.">
    <meta itemprop="image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/neumorphism-ui/neumorphism-thumbnail.jpg">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@themesberg">
    <meta name="twitter:title" content="Neumorphism UI by Themesberg">
    <meta name="twitter:description" content="Start developing neumorphic web applications and pages using Neumorphism UI. It features over 100 individual components and 5 example pages.">
    <meta name="twitter:creator" content="@themesberg">
    <meta name="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/neumorphism-ui/neumorphism-thumbnail.jpg">

    <!-- Open Graph data -->
    <meta property="fb:app_id" content="214738555737136">
    <meta property="og:title" content="Neumorphism UI by Themesberg" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://demo.themesberg.com/neumorphism-ui/" />
    <meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/neumorphism-ui/neumorphism-thumbnail.jpg" />
    <meta property="og:description" content="Start developing neumorphic web applications and pages using Neumorphism UI. It features over 100 individual components and 5 example pages." />
    <meta property="og:site_name" content="Themesberg" />

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="120x120" href="./assets/img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="./assets/img/favicon/site.webmanifest">
    <link rel="mask-icon" href="./assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">

    <!-- Fontawesome -->
    <link type="text/css" href="./vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Pixel CSS -->
    <link type="text/css" href="./css/neumorphism.css" rel="stylesheet">
</head>

<body>
    <header class="header-global">
        <nav id="navbar-main" aria-label="Primary navigation" class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-light navbar-transparent navbar-theme-primary">
            <div class="container position-relative">
                <a class="navbar-brand shadow-soft py-2 px-3 rounded border border-light mr-lg-4" href="./index.php">
                    <span style="font-size: 38px;" class="fab fa-stripe-s"></span>
                </a>
                <div class="navbar-collapse collapse" id="navbar_global">
                    <div class="navbar-collapse-header">
                        <div class="row">
                            <div class="col-6 collapse-brand">
                                <a href="./index.php" class="navbar-brand shadow-soft py-2 px-3 rounded border border-light">
                                    <img src="./assets/img/brand/dark.svg" alt="Themesberg logo">
                                </a>
                            </div>
                            <div class="col-6 collapse-close">
                                <a href="#navbar_global" class="fas fa-times" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" title="close" aria-label="Toggle navigation"></a>
                            </div>
                        </div>
                    </div>
                    <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                                <span class="nav-link-inner-text">Les Fonctionalités Enseigant</span>
                                <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="./enseignant1.php?Tableau_choisi=1">Visualiser tous les stages</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?Tableau_choisi=2">Choisir les stages à encadrer</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?Tableau_choisi=3">Valider un stage pour la soutenance</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?Tableau_choisi=4">Attribuer une note finale</a></li>
                                <li><a class="dropdown-item" href="./Deconnexion.php">Déconnexion</a></li>
                            </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <section class="section section bg-soft pb-5 overflow-hidden z-2">
            <div class="col-12 col-md-12 col-xd-12 col-lg-12 " style=" margin-top:4% ;">
                <!-- Profile Card -->
                <div class="profile-card mb-5 col-6 col-md-6 col-xd-6 col-lg-6 mx-auto ">
                    <div class="card bg-primary shadow-soft border-light">
                        <div class="profile-image bg-primary shadow-inset border border-light rounded-circle p-3 ml-3 mt-n5">
                            <img src="<?php if (empty($row1['photo'])) {
                                            echo "photo/inconnu.jpg";
                                        } else {
                                            echo "photo/" . $row1['photo'];
                                        } ?>" style="width : 100%; height:100%" class="card-img-top rounded-circle" alt="">
                        </div>
                        <div class="card-body">
                            <h3 class="h5 mb-2"><?php if ($row1 != False) {
                                                    echo $row1['prenom'];
                                                } else echo ""; ?> <?php if ($row1 != False) {
                                                                        echo $row1['nom'];
                                                                    } else echo ""; ?></h3>
                            <span class="h6 font-weight-normal text-gray mb-3">Enseignant <br></span>
                        </div>
                    </div>
                </div>

                <form action="confirmation.php" method="post">
                    <?php if (isset($tableau1)) { ?>
                        <table class="table shadow-inset rounded" id="<?php echo $Tableau_choisi; ?>">
                            <tr>
                                <?php
                                foreach ($tableau1 as $cle => $val) {
                                    if ($cle != "id" && $cle != "note_final") {
                                ?>
                                        <th><?php echo implode(" ", explode("_", $cle)); ?></th>
                                    <?php } ?>
                                <?php } ?>
                                <?php
                                switch ($Tableau_choisi) {
                                    case 2:
                                        echo "<th>Choisir</th>";
                                        break;
                                    case 3:
                                        echo "<th>Choisir</th>";
                                        break;
                                    case 4:
                                        echo "<th>Saisie une note</th>";
                                        break;
                                }
                                ?>
                            </tr>
                            <?php
                           $result=mysqli_query($link,$sql);
                            while ($data = mysqli_fetch_assoc($result)) {
                                echo "<tr>";
                                foreach ($data as $cle => $val) {
                                   if (in_array($cle,array('Premiere_version_du_rapport','version_corrigé_du_rapport','attestation','fiche_devaluation','presentation')))
                                   {
                                       if (isset($val) && !empty($val))
                                       {
                                        echo '<td><a href="photo/'.$val.'">fichier</a></td>'; 
                                       }
                                       else
                                       {
                                        echo '<td>AUCUN</td>'; 
                                       }
                                
                                   }
                                   else{
                                       
                                    if ($cle != "id" && $cle != "note_final") {
                                        echo "<td>" . $val . "</td>";
                                    }
                                }
                                }
                                switch ($Tableau_choisi) {
                                    case 2:
                                        echo "<td>";
                                        echo '<input type="checkbox" name="Stages[]" value="' . $data['id'] . '" />';
                                        echo "</td>";
                                        break;
                                    case 3:
                                        echo "<td>";
                                        echo '<input type="checkbox" name="Stages[]" value="' . $data['id'] . '" />';
                                        echo "</td>";
                                        break;
                                    case 4:
                                        echo "<td>";
                                        if (!empty($data['note_final'])) {
                                            $note = $data['note_final'];
                                        } else {
                                            $note = "";
                                        }
                                        echo '<input type="number" max="20" min="0" name="note/' . $data['id'] . '" value="' . $note . '" />';
                                        echo '<input type="text" name="Stages_id[]" value="' . $data['id'] . '" hidden/>';
                                        echo "</td>";
                                        break;
                                }
                                echo "</tr>";
                            }
                            ?>
                        </table>
                        <br /><br />
                      <?php  if (in_array($Tableau_choisi,array(2,3,4))){?>
                        <input type="submit" class="mx-auto btn-center btn btn-primary" name="Modifier" value="Valider" />
                        <input type="text" name="choix" value="<?php echo $Tableau_choisi; ?>" hidden /><?php } ?>
                    <?php
                    } else {
                        echo "<h2>Aucune Résultat trouvé</h2>";
                    }
                    ?>
                </form>
                <!-- End of Profile Card -->
            </div>
        </section>
    </main>

</body>

</html>