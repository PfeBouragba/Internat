<?php
include 'db_connect.php';

$studentId = 1;

$selectQuery = "SELECT * FROM decharge WHERE student_id = ?";
$selectStmt = $conn->prepare($selectQuery);
$selectStmt->bind_param('i', $studentId);
$selectStmt->execute();
$result = $selectStmt->get_result();

echo "<h3 style='text-align: center'>Votre demande de décharge précédente:</h3>";
if ($result->num_rows > 0) {
    echo "<div class='RoomList'>";
    echo "<table id='data-table'>";
    echo "<tr><th>Numéro de la demande</th><th>Date de soumission</th><th>Status</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id_demande'] . "</td>";
        echo "<td>" . $row['created_at'] . "</td>";
        echo "<td>" . $row['status'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
    echo "</div>";
} else {
    echo "Vous n'avez pas encore soumis de demandes de décharge.";
}

$selectStmt->close();
$conn->close();
