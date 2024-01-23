// Function to move a student to another room
function moveStudent(studentId) {
    // Prompt the user for the new room number
    const newRoomNumber = prompt('Enter the new room number:');

    // Check if the input is valid
    if (newRoomNumber !== null && !isNaN(newRoomNumber) && newRoomNumber !== '') {
        // Send AJAX request to move student
        $.ajax({
            url: 'moveStudent.php',
            type: 'POST',
            dataType: 'json',
            data: {
                studentId: studentId,
                newRoomNumber: newRoomNumber
            },
            success: function (response) {
                if (response.success) {
                    alert('L\'étudiant a déplacé avec succès');
                    // Close the info popup
                    document.querySelector('.info-popup').style.display = 'none';
                } else {
                    if (response.error === 'Numéro de chambre invalide') {
                        alert('Numéro de chambre invalide');
                    } else if (response.error === 'La chambre est déjà pleine') {
                        alert('La chambre est déjà pleine');
                    } else {
                        alert('Échec du déplacement de l\'étudiant');
                    }
                }
            },
            error: function (error) {
                console.log('Error:', error);
            }
        });
    } else {
        alert('Numéro de chambre invalide');
    }
}
// Function to close the popup
function closePopup() {
    document.getElementById("popup").style.display = "none";
}