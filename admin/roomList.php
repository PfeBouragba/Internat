<?php
include '../includes/user_info.php';
$_SESSION['role'] == 'super_admin' || $_SESSION['role'] == 'administration' || $_SESSION['role'] == 'restaurant' || $_SESSION['role'] == 'internat' || $_SESSION['role'] == 'economique' || $_SESSION['role'] == 'departement' ?  null :  header("Location:" . $_SESSION['defaultPage']);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listes des Chambres</title>
    <link rel="shortcut icon" href="../images/ESTC.png" type="image/x-icon">
    <script src="https://d3js.org/d3.v5.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/displayRooms.js"></script>
    <script src="../js/navbar.js"></script>
    <script src="../js/search.js"></script>
    <script src="../js/notifications.js"></script>
</head>

<body id="body-pd">
    <header id="header" class="header fixed-top">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_txt">
            <h5>Listes des Chambres</h5>
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
            <div class="search-container">
                <label for="search" class="fa fa-search"></label>
                <input type="search" placeholder="Search Students" id="search">
            </div>
            <div class="notification-icon" onclick="fetchNotifications()">
                <i class="fa fa-bell"></i>
                <div class="notification-count" id="count"><?php echo $count ?></div>
                <div class="notification-dropdown">
                </div>
            </div>
            <div id="search-results"></div>
        </div>
    </header>

    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div>
                <a href="#" class="nav_logo">
                    <img src="../images/ESTC.png" style="height:30px">
                    <span class="nav_logo-name">EST Casablanca</span>
                </a>

                <?php if ($_SESSION['role'] === 'restaurant') : ?>
                    <div class="nav_list">
                        <a href="restaurant.php" class="nav_link ">
                            <i class="fa-solid fa-utensils"></i> <span class="nav_name">Gestion Tickets</span>
                        </a>
                        <a href="annuler_ticket.php" class="nav_link">
                            <i class="fa-regular fa-rectangle-xmark"></i></i> <span class="nav_name">Anuller Tickets</span>
                        </a>
                        <a href="roomList.php" class="nav_link active">
                            <i class="fa-solid fa-list"></i> <span class="nav_name">Liste des chambres</span>
                        </a>
                    </div>
                <?php else : ?>
                    <div class="nav_list">
                        <?php
                        if ($_SESSION['role'] === 'internat' || $_SESSION['role'] == 'administration') {
                            echo '<a href="internatGarcons.php" class="nav_link ">';
                            echo '<i class="fa-solid fa-mars"></i> <span class="nav_name">Internat Garçons </span>';
                            echo '</a>';
                            echo '<a href="internatFilles.php" class="nav_link">';
                            echo '<i class="fa-solid fa-venus"></i> <span class="nav_name">Internat Filles </span>';
                            echo '</a>';
                            echo '<a href="internat_changements.php" class="nav_link">';
                            echo '<i class="fa-solid fa-clock-rotate-left"></i><span class="nav_name">Historique Internat</span>';
                            echo '</a>';
                        } ?>
                        <a href="dashboard.php" class="nav_link">
                            <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Tableau de bord</span>
                        </a>
                        <a href="roomList.php" class="nav_link active">
                            <i class="fa-solid fa-list"></i> <span class="nav_name">Liste des chambres</span>
                        </a>

                        <?php
                        if (isset($_SESSION['role'])) {
                            switch ($_SESSION['role']) {
                                case 'Student':
                                    $href = 'decharge.php';
                                    break;
                                case 'departement':
                                    $href = 'departement_decharge.php';
                                    break;
                                case 'internat':
                                    $href = 'internat_decharge.php';
                                    break;
                                case 'economique':
                                    $href = 'economique_decharge.php';
                                    break;
                                case 'administration':
                                    $href = 'administration_decharge.php';
                                    break;
                                default:
                                    $href = 'login.php';
                                    break;
                            }
                        } else {
                            $href = 'login.php';
                        }

                        echo '<a href="' . $href . '" class="nav_link">';
                        echo '<i class="fa fa-copy"></i> <span class="nav_name">Gestion décharge</span>';
                        echo '</a>';

                        if ($_SESSION['role'] === 'administration') {
                            echo '<a href="decharge_valide.php" class="nav_link">';
                            echo '<i class="fa fa-file"></i> <span class="nav_name">Gestion décharge</span>';
                            echo '</a>';
                        }
                        if ($_SESSION['role'] === 'departement') {
                            echo '<a href="departement_degats.php" class="nav_link">';
                            echo '<i class="fa-solid fa-flask-vial"></i> <span class="nav_name">Gestion Incidents </span>';
                            echo '</a>';
                        }

                        if ($_SESSION['role'] === 'economique') {
                            echo '<a href="serviceEconomique.php" class="nav_link">';
                            echo '<i class="fa-solid fa-sack-dollar"></i> <span class="nav_name">Payement internat</span>';
                            echo '</a>';
                        }

                        if ($_SESSION['role'] === 'internat') {
                            echo '<a href="internat_demandes_valide.php" class="nav_link">';
                            echo '<i class="fa-solid fa-bed"></i> <span class="nav_name">Demande Validées</span>';
                            echo '</a>';
                            echo '<a href="internat_demandes_casa.php" class="nav_link">';
                            echo '<i class="fa-regular fa-circle-pause"></i> <span class="nav_name">Demandes Casablanca</span>';
                            echo '</a>';
                            echo '<a href="internat_demandes_refuse.php" class="nav_link">';
                            echo '<i class="fa-solid fa-file-circle-xmark"></i> <span class="nav_name">Demande Refusées</span>';
                            echo '</a>';
                        }
                        ?>
                    </div>
                <?php endif; ?>


            </div> <a href="../includes/user_info.php?logout=<?php echo $user_id; ?>" onclick="return confirm('Are your sure you want to logout?');">
                <i class='bx bx-log-out nav_icon'></i>
                <span class="nav_name">SignOut</span>
            </a>
        </nav>
    </div>

    <div class="building">
        <button class="boy" onclick="changeBuilding('boy')">Internat Garçons</button>
        <button class="girl" onclick="changeBuilding('girl')">Internat Filles</button>
    </div>

    <script>
        let currentBuilding = 'boy';

        function changeBuilding(building) {
            currentBuilding = building;
            updateTable();
        }
    </script>

    <div class="RoomList">
        <div class="filters">
            <label for="filter">Filter by Room:</label>
            <select id="filter">
                <option value="all">All Rooms</option>
                <?php
                for ($i = 1; $i <= 110; $i++) {
                    echo "<option value=\"$i\">Room $i</option>";
                }
                ?>
            </select>
        </div>

        <table id="data-table">
            <thead>
                <tr>
                    <th>Chambre</th>
                    <th>Etudiant(e) 1</th>
                    <th>Etudiant(e) 2</th>
                    <th>Etudiant(e) 3</th>
                    <th>Etudiant(e) 4</th>
                    <th>Nombre d'Etudiant(e)s</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

        <div class='pagination-container'>
            <ul class="pagination">
            </ul>
        </div>
    </div>


</body>

</html>