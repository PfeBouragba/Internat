<?php
session_start();
include '../includes/db_connect.php';

if (isset($_GET['request_id'])) {
    $request_id = $_GET['request_id'];
    $name = $_GET['name'];

    $updateSql = "UPDATE internat SET valide = 1, status = 'Accepté' WHERE id_demande = $request_id";

    if ($conn->query($updateSql) === TRUE) {
        $_SESSION['success'] = "La demande N° " . $request_id . " de l'étudiant: " . $name . " a été validé";
        header("Location: internat_demandes.php");
        exit();
    } else {
        $_SESSION['error'] = "La demande N° " . $request_id . " de l'étudiant: " . $name . " n'a pas été validé";
        header("Location: internat_demandes.php?error=validation_error");
        exit();
    }
} else if (isset($_POST['id'])) {

    $idDemande = $_POST['id'];

    $updateSql = "UPDATE internat SET valide = 1, status = 'Accepté' WHERE id_demande = $idDemande";

    if ($conn->query($updateSql) === TRUE) {
        $_SESSION['success'] = "La demande N° " . $idDemande . " a été annulée";
        header("Location: internat.php");
        exit();
    } else {
        $_SESSION['error'] = "La demande N° " . $idDemande . " n'a pas été annulée";
        header("Location: internat.php?error=validation_error");
        exit();
    }
} else {
    header("Location: internat.php?error=invalid_request");
    exit();
}
