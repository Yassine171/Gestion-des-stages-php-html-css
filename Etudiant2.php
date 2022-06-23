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
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/neumorphism-ui/neumorphism-thumbnail.jpg"/>
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
    
<?php
  if(isset($_GET['stage'])){
    ?>
        <script type="text/javascript">
            	   		alert("votre données ont été bien enregistré");
            	   	</script>
                   <?php
      }
      else{
        
        header("Location:etudiant1.php?stage=0");

} 


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
                            <a href="./index.html" class="navbar-brand shadow-soft py-2 px-3 rounded border border-light">
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
                        <a href="#" class="nav-link" data-toggle="dropdown" >
                            <span class="nav-link-inner-text">Les Fonctionalités Etudiant</span>
                            <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./Etudient.php">Acceuil</a></li>
                            <li><a class="dropdown-item" href="./Etudiant1.php">Ajouter un stage</a></li>
                            <li><a class="dropdown-item" href="./Etudiant2.php">Ajouter les fichiers du stage</a></li>
                            <li><a class="dropdown-item" href="./Deconnexion.php">Déconnexion</a></li>
                            
                         
                        </ul>
                
            </div>
            
        </div>
    </nav>
</header>

<main >
<section class="section section bg-soft pb-5 overflow-hidden z-2" >
<div class="col-12 col-md-6 col-lg-10 mb-4 mb-md-5" style="margin-left: 9%; margin-top:4% ; ">
    <!-- Profile Card -->
    <div class="profile-card mb-5" >
        <div class="card bg-primary shadow-soft border-light">
           
            <div class="card-body"  >
                
                <span style="margin-left: 35%;" class="h3 font-weight-normal text-gray mb-3 card-body">Ajouter les fichier de stage <br><br></span>
                
                <form action="etudiant_traitement2.php" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    
                    <span class="h6 font-weight-normal text-gray mb-3">Rapport: <br><br></span>
                        
                        <div class="custom-file">
                            
                            <input  class="custom-file-input" type="file" name="premier_version"  id="exampleInputPassword1" placeholder="Enter nom" required="required">
                          <label class="custom-file-label" for="exampleInputPassword1">La première version du rapport</label>
                        </div>
                        <br><br>
                        
                        <div class="custom-file">
 <label class="custom-file-label" for="exampleInputPassword1">La version corrigée du rapport</label>
                            <input class="custom-file-input" type="file" name="version_corige"  id="exampleInputPassword1" placeholder="Enter nom" required="required">
                          
                        </div>
                        <br><br>
                        <span class="h6 font-weight-normal text-gray mb-3">Presentation: <br> <br></span>
                        
                        <div class="custom-file">
<label class="custom-file-label" for="exampleInputPassword1">déposer le presentation </label>
                            <input class="custom-file-input" type="file" name="presentation"  id="exampleInputPassword1" placeholder="Enter nom" required="required">
                          
                        </div>
                        <br><br>
                        <span class="h6 font-weight-normal text-gray mb-3">L’attestation: <br> <br></span>
                        
                        <div class="custom-file">
<label  class="custom-file-label" for="exampleInputPassword1">l’attestation de stage </label>
                            <input class="custom-file-input" type="file" name="attestation"  id="exampleInputPassword1" placeholder="Enter nom" required="required">
                          
                        </div>
                        <br><br>
                        
                        <div class="custom-file">
<label class="custom-file-label"  for="exampleInputPassword1">la fiche d’évaluation </label>
                            <input  class="custom-file-input" type="file" name="evaluation"  id="exampleInputPassword1" placeholder="Enter nom" required="required">
                          
                        </div>
                        <br><br>
                        
                    </div>  
                    <input style="margin-left: 44%;" class="btn btn-primary text-danger" name="submit"  type="submit" value="Mis à jour">


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