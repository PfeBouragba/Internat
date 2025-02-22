<?php
include 'db_connect.php';
include '../includes/count.php';

$previous_page = $_SERVER['HTTP_REFERER'];

if (isset($_GET['input']) && !empty($_GET['input'])) {
    $searchInput = $conn->real_escape_string($_GET['input']);
    $sql = "SELECT * FROM internat ";

    $sql = "SELECT internat.*, users.*
        FROM internat
        JOIN users ON internat.student_id = users.id ";

    if (strpos($previous_page, 'internat_demandes_valide.php') !== false) {
        $sql .= "WHERE internat.valide = 1 AND internat.status = 'En attente'";
    } elseif (strpos($previous_page, 'internat_demandes_refuse.php') !== false) {
        $sql .= "WHERE internat.status = 'Refusé'";
    }

    $sql .= " AND ((users.name LIKE '%$searchInput%') OR (internat.id_demande LIKE '%$searchInput%'))";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $output = "<div class='RoomList'>";
        $output .= "<table id='data-table'>";
        $output .= "<thead><tr><th>Numéro de demande</th><th>Nom de l'étudiant</th><th>Sexe</th><th>Ville</th><th>Date de création</th><th colspan=2>Action</th></tr></thead>";
        $output .= "<tbody>";

        while ($row = $result->fetch_assoc()) {
            $output .= "<tr>";
            $output .= "<td>" . $row['id_demande'] . "</td>";
            $output .= "<td>" . $row['name'] . "</td>";
            $output .= "<td>" . ($row['genre'] == 'boy' ? 'Garçon' : 'Fille') . "</td>";

            $output .= "<td>" . $row['ville'] . "</td>";
            $output .= "<td>" . $date = date('d-m-Y', strtotime($row['created_at'])) . "</td>";
            if (strpos($previous_page, 'internat_demandes_valide.php') !== false) {

                $output .= "<td><button class='add-student blue' data-id='" . $row['id_demande'] . "' data-student-id='" . $row['id'] . "' data-genre='" . $row['genre'] . "'>Ajouter chambre</button></td>";

                $output .= "<td><button style='font-size:0.8rem' class='cancel-validation reject' data-id='" . $row['id_demande'] . "'>Annuler validation</button></td>";
            } elseif (strpos($previous_page, 'internat_demandes_refuse.php') !== false) {
                $output .= "<td><button style='margin: 0 auto 0 auto;' class='validate-request validate' data-id='" . $row['id_demande'] . "''>Valider</button></td>";
            }
            $output .= "</tr>";
        }

        $output .= "</tbody>";
        $output .= "</table>";
        $output .= "</div>";

        echo $output;
    } else {
        echo "Il n'y a aucune demande ";
    }
}
