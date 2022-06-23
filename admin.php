<?php include("tableau.php"); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Admin</title>
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
                            <span class="nav-link-inner-text">Les Fonctionalités Enseigant</span>
                            <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="./admin.php?table=Stages">Visualiser tous les stages</a></li>
                            <li><a class="dropdown-item" href="./admin.php?table=Etudiants-c1">la liste des étudiants par enseignant</a></li>
                            <li><a class="dropdown-item" href="./admin.php?table=Etudiants-c2">la liste des étudiants sans encadrants pédagogiques</a></li>
                            <li><a class="dropdown-item" href="./admin.php?table=Etudiants-c3">la liste des étudiants qui n’ont pas déposer le rapport</a></li>
                            <li><a class="dropdown-item" href="./admin.php?table=Etudiants-c4">la liste des stages validés pour la soutenance</a></li>
                            <li><a class="dropdown-item" href="./admin.php?table=Résultats"> les notes attribués aux étudiants</a></li>
                            <li><a class="dropdown-item" href="deconnexion.php">Déconnexion</a></li>
                         
                        </ul>
                
            </div>
            
        </div>
    </nav>
</header>
<?php if(!isset($_GET['table'])){?>

<section class="section section bg-soft pb-5 overflow-hidden z-2">
    <div  class="container z-2">
        <div class="row justify-content-center text-center pt-6" >
            <div class="col-lg-8 col-xl-8">
                <h1 class="display-2 mb-3">Profil Administrateur</h1>
                <p class="lead px-md-6 mb-5">la <strong>Gestion Des Stages </strong> de fin d’études 
                    effectués par les étudiants de l’ENSA lors de leur dernière année d’étude.</p>
            </div>
        </div>
    </div>
</section>

<?php }else{?>

<section class="section section bg-soft pb-5 overflow-hidden z-2">
    <div class="col-12 col-md-12 col-xd-12 col-lg-12 " style=" margin-top:4% ;">
        <div class="profile-card mb-5" >
            <div class="card bg-primary shadow-soft border-light">
                <div class="col-lg-8 col-xl-8" style="margin-left:36%;">
                    <h1 class="card-body">Profil Administrateur</h1>
                </div>
                <?php if(isset($tab)){?>
                <?php $output=''; ?>
                <table  id=<?php echo '"'.$id.'"'; ?> class="table shadow-inset rounded">
                    <tr><?php $output.="<tr> "; ?>
                    <?php foreach($tab as $cle=>$val){?>
                        <th><?php echo implode(" ",explode("_",$cle)); ?></th>
                        <?php $output.="<th>".implode(" ",explode("_",$cle))." </th>"; ?>
                    <?php }?>
                    </tr><?php $output.=" </tr>"; ?>
                    <?php /*$count=0;*/ $result=mysqli_query($link,$sql);?>
                    <?php while($data=mysqli_fetch_assoc($result)){?>
                    <?php 
                    //$count++;
                    //if($count>25) break;
                    ?>
                    <tr><?php $output.="<tr> "; ?>
                    <?php foreach($data as $cle=>$val){ ?>
                        <td>
                        <?php $verf=strtoupper(explode("_",$cle)[0]);
                        if($verf=="PHOTO"){
                            if($val==NULL || $val==""){
                                $val="inconnu.jpg";
                            }
                        ?>
                        <img src=<?php echo '"photo/'.$val.'"'; ?> alt="Photo" width="60" height="60"/>
                        <?php 
                        }else{ 
                            if($cle=="valide_par_la_soutenance"){
                                if($val==1){ echo "V";}
                                else{ echo "-";}
                            }else{
                                if(strtoupper($cle)=="RAPPORT"){
                                    if($val=='NULL'){ echo "Non Déposer";}
                                    else{ echo "Déposer";}
                                }else{
                                    echo $val;
                                    $output.="<td> ".$val." </td>";
                                }
                            }
                        }?>
                        </td>
                    <?php }?>
                    </tr><?php $output.=" </tr>"; ?>
                    <?php }?>
                </table><?php $output.=" </table>"; ?>
                <?php if($id=='Résultats'){?>
                <div class="col-lg-8 col-xl-8">
                    <form action="excel.php" method="post" style="text-align: right; margin-top: 50px">
                        <input type="text"  name="file" hidden value="<?php echo $output;?>"/> 
                        <input type="submit" name="export_excel"  class="mx-auto btn btn-success" value="Exporter sous forme .xls"/>
                    </form>
                </div>
                <?php }?>
                <?php 
                    }else{
                        echo '<h2 style="margin: 50px auto 50px;">Aucune Résultat trouvé</h2>';
                    }
                ?>
            </div>
        </div>
    </div>
</section>
<?php }?>

</body>
</html>