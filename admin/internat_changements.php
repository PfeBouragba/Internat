<?php
include '../includes/user_info.php';
$_SESSION['role'] == 'super_admin' || $_SESSION['role'] == 'internat' || $_SESSION['role'] == 'administration' ?  null :  header("Location:" . $_SESSION['defaultPage']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demandes de décharge</title>
    <link rel="shortcut icon" href="../images/ESTC.png" type="image/x-icon">
    <script src="https://d3js.org/d3.v5.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/internat_changementsSearch.js"></script>
    <script src="../js/navbar.js"></script>
    <script src="../js/notifications.js"></script>

</head>

<body id="body-pd">
    <div id="notification" class="hidden"></div>
    <?php if (isset($_SESSION['error'])) : ?>
        <div class="error-message"><?php echo $_SESSION['error'];
                                    unset($_SESSION['error']); ?></div>
    <?php endif; ?>

    <?php if (isset($_SESSION['success'])) : ?>
        <div class="success-message"><?php echo $_SESSION['success'];
                                        unset($_SESSION['success']); ?></div>
    <?php endif; ?>

    <script>
        // Add fade-in, fade-out, and timeout for error and success messages
        $(document).ready(function() {
            $(".error-message, .success-message").fadeIn().delay(3000).fadeOut();
        });
    </script>
    <header id="header" class="header fixed-top">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_txt">
            <h5>Historique des changements de chambres</h5>
        </div>
        <div class="action">
            <div class="profile" onmouseover="menuToggle(true);" onmouseout="menuToggle(false);">
                <img src="<?php echo $image ?>" />
            </div>
            <div class="menu" onmouseover="menuToggle(true);" onmouseout="menuToggle(false);">
                <h3><?php echo $name ?></h3>
                <ul>
                    <li>
                        <img src="../images/user.png" /><a href="../includes/profile.php">Mon Profile</a>
                    </li>
                    <li>
                        <img src="../images/edit.png" /><a href="../includes/updateProfile.php">Modifier Profile</a>
                    </li>
                    <li>
                        <img src="../images/envelope.png" /><a href="#">Inbox</a>
                    </li>
                    <li>
                        <img src="../images/question.png" /><a href="#">Aide</a>
                    </li>
                    <li>
                        <img src="../images/log-out.png" />
                        <a href="../includes/user_info.php?logout=<?php echo $user_id; ?>" onclick="return confirm('Are your sure you want to logout?');" class="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        <script>
            function menuToggle(isHovered) {
                const toggleMenu = document.querySelector(".menu");
                const toggleProfile = document.querySelector(".profile");

                if (isHovered) {
                    toggleMenu.classList.add("active");
                    toggleProfile.classList.add("active");
                } else {
                    toggleMenu.classList.remove("active");
                    toggleProfile.classList.remove("active");
                }
            }
        </script>

        <div class="left">
            <div class="notification-icon" onclick="fetchNotifications()">
                <i class="fa fa-bell"></i>
                <div class="notification-count" id="count"><?php echo $count ?></div>
                <div class="notification-dropdown">
                </div>
            </div>
        </div>
    </header>

    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <img src="../images/ESTC.png" style="height:30px"><span class="nav_logo-name">EST Casablanca</span> </a>
                <div class="nav_list">
                    <a href="internatGarcons.php" class="nav_link ">
                        <i class="fa-solid fa-mars"></i> <span class="nav_name">Internat Garçons </span>
                    </a>
                    <a href="internatFilles.php" class="nav_link ">
                        <i class="fa-solid fa-venus"></i> <span class="nav_name">Internat Filles </span>
                    </a>
                    <a href="internat_changements.php" class="nav_link active">
                        <i class="fa-solid fa-clock-rotate-left"></i><span class="nav_name">Historique Internat</span>
                    </a>
                    <?php if ($_SESSION['role'] === 'internat') : ?>
                        <a href="internat_decharge_historique.php" class="nav_link">
                            <i class="fa-solid fa-person-walking-arrow-right"></i><span class="nav_name">Historique Décharge</span>
                        </a>
                    <?php endif; ?>
                    <a href="dashboard.php" class="nav_link">
                        <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Tableau de bord</span>
                    </a>
                    <?php if ($_SESSION['role'] === 'administration') : ?>
                        <a href="roomList.php" class="nav_link ">
                            <i class="fa-solid fa-list"></i> <span class="nav_name">Liste des chambres</span>
                        </a>
                        <a href="administration_decharge.php" class="nav_link">
                            <i class="fa fa-copy"></i> <span class="nav_name">Gestion décharge</span>
                        </a>
                        <a href="decharge_valide.php" class="nav_link ">
                            <i class="fa fa-file"></i> <span class="nav_name">Gestion décharge</span>
                        </a>
                    <?php endif; ?>
                    <?php if ($_SESSION['role'] === 'internat') : ?>
                        <a href="internat_decharge.php" class="nav_link">
                            <i class="fa fa-copy"></i> <span class="nav_name">Gestion décharge</span>
                        </a>
                        <a href="internat_demandes_valide.php" class="nav_link">
                            <i class="fa-solid fa-bed"></i> <span class="nav_name">Demandes Internat Validé</span>
                        </a>
                        <a href="internat_demandes_casa.php" class="nav_link">
                            <i class="fa-regular fa-circle-pause"></i> <span class="nav_name">Demandes Internat</span>
                        </a>
                        <a href="internat_demandes_refuse.php" class="nav_link">
                            <i class="fa-solid fa-file-circle-xmark"></i> <span class="nav_name">Demandes Internat Refusé </span>
                        </a>
                    <?php endif; ?>
                </div>
            </div> <a href="../includes/user_info.php?logout=<?php echo $user_id; ?>" onclick="return confirm('Are your sure you want to logout?');"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span> </a>
        </nav>
    </div>
    <div class="internatSearch">
        <div class="box" style="margin-top: 2rem;">
            <i class="fas fa-search"></i>
            <input type="text" id="searchExterne" name="searchBox" placeholder="Rechercher un étudiant (Par Nom ou N° Cin)" onkeyup="searchAll()">
        </div>
    </div>
    <div id="searchResults">
    </div>
    <hr>
    </div>

</body>

</html>