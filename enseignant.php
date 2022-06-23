<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

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
<style type="text/css">
    
</style>

<body>
    <?php
    include("connexion.php");
    $id_enseignant = $_SESSION['id_enseignant'];
    if (isset($_POST['submit'])) {
        $pass_updated = htmlspecialchars($_POST['pass']);
        $sql = 'UPDATE enseignant SET mot_de_passe="' . $pass_updated . '"';
        if (isset($_FILES['photo'])) {
            $dossier = 'photo/';
            $temp_name = $_FILES['photo']['tmp_name'];
            if (!is_uploaded_file($temp_name)) {
                exit("le fichier est introuvable");
            }
            if ($_FILES['photo']['size'] >= 9000000) {
                exit("Erreur, le fichier est volumineux");
            }
            $infosfichier = pathinfo($_FILES['photo']['name']);
            $extension_upload = $infosfichier['extension'];

            $extension_upload = strtolower($extension_upload);
            $extensions_autorisees = array('png', 'jpeg', 'jpg');
            if (!in_array($extension_upload, $extensions_autorisees)) {
                exit("Erreur, Veuillez inserer une image svp (extensions autorisées: png)");
            }
            $nom_photo = $id_enseignant . "." . $extension_upload;
            if (!move_uploaded_file($temp_name, $dossier . $nom_photo)) {
                exit("Problem dans le telechargement de l'image, Ressayez");
            }
            $photo_name = $nom_photo;
        } else {
            $photo_name = "inconnu.jpg";
        }
        $sql .= ', photo="' . $photo_name . '" ';
        $sql .= 'WHERE id_ens=' . $id_enseignant . '';
        $res = mysqli_query($link, $sql);
        if ($res == False) {
            echo "<script>";
            echo 'alert("Un problème dans le Mise à jour!");';
            echo "</script>";
        }
    }
    $sql1 = 'SELECT * FROM enseignant WHERE id_ens=' . $id_enseignant . '';

    $resu1 = mysqli_query($link, $sql1);
    if ($resu1 != False) {
        $row1 = mysqli_fetch_assoc($resu1);
    } else {
        echo "<script>";
        echo 'alert("Un problème dans l\'affichage de la modification!");';
        echo "</script>";
    }
    //}
    ?>
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
                                <li><a class="dropdown-item" href="./enseignant1.php?tableau1_choisi=1">Visualiser tous les stages</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?tableau1_choisi=2">Choisir les stages à encadrer</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?tableau1_choisi=3">Valider un stage pour la soutenance</a></li>
                                <li><a class="dropdown-item" href="./enseignant1.php?tableau1_choisi=4">Attribuer une note finale</a></li>
                                <li><a class="dropdown-item" href="./Deconnexion.php">Déconnexion</a></li>
                            </ul>

                </div>

            </div>
        </nav>
    </header>
    <main>
        <section class="section section bg-soft pb-5 overflow-hidden z-2">
            <div class="col-12 col-md-6 col-lg-7 mb-4 mb-md-5" style="margin-left: 22%; margin-top:4% ;">
                <!-- Profile Card -->
                <div class="profile-card mb-5">
                    <div class="card bg-primary shadow-soft border-light">
                        <div class="profile-image bg-primary shadow-inset border border-light rounded-circle p-3 ml-3 mt-n5">
                            <img src="<?php if (empty($row1['photo'])) {
                                            echo "photo/inconnu.jpg";
                                        } else {
                                            echo "photo/" .$row1['photo'];
                                        } ?>" style="width : 100%; height:100%" class="card-img-top rounded-circle" alt="">
                        </div>
                        <div class="card-body">
                            <h3 class="h5 mb-2"><?php if ($row1 != False) {
                                                    echo $row1['prenom'];
                                                } else echo ""; ?> <?php if ($row1 != False) {
                                                                        echo $row1['nom'];
                                                                    } else echo ""; ?></h3>
                            <span class="h6 font-weight-normal text-gray mb-3">Enseignant <br></span>
                            <form action="traitement2.php" method="post" enctype="multipart/form-data">
                                <div class="form-group"><br>
                                    <label for="exampleInputPassword1">Email Enseignant</label>
                                    <div class="input-group mb-4">

                                        <input class="form-control" value="<?php echo $row1['email']; ?>" name="email" disabled id="exampleInputPassword1" placeholder="Mot de passe" type="text" aria-label="Password">
                                        <div class="input-group-append">

                                            <span class="input-group-text"><span class="fas fa-exclamation-circle"></span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="custom-file" style="margin-top: 2%;">
                                    <label for="fichier">Photo </label>
                                    <input type="file" name='fichier' class="custom-file-input" id="customFile" aria-label="File upload" id="photo">
                                    <label class="custom-file-label" for="customFile">Choisir nouveau photo</label>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Changer le mot de passe</label>
                                    <div class="input-group mb-4">
                                    <input class="form-control" value="<?php echo $row1['id_ens']; ?>" name="id_ens" hidden  type="text" aria-label="Password">
                                        <input class="form-control" name="pass" id="exampleInputPassword1" value="<?php if ($row1 != False) {
                                                                                                                        echo $row1['mot_de_passe'];
                                                                                                                    } ?>" type="text" aria-label="Password">
                                        <div class="input-group-append">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                    </div>
                                </div>

                                <input class="btn btn-primary text-danger" name="submit" type="submit" value="Mis à jour">


                            </form>

                        </div>
                    </div>
                </div>
                <!-- End of Profile Card -->
            </div>
        </section>
    </main>

</body>

</html>