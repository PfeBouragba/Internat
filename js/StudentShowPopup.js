function showPopup() {
  const id = user_id;
  const name = user_name;
  const gender = user_gender;
  const ville = user_ville;
  const roomNumber = d3.select(this).datum().id;
  const popup = document.getElementById("popup");
  const popupRoomNumber = document.getElementById("popupRoomNumber");
  const popupImages = document.getElementById("popupImages");

  // Fetch student data using AJAX
  $.ajax({
    url: `../includes/getRoomData.php?roomNumber=${roomNumber}&building=${currentBuilding}`,
    type: "GET",
    dataType: "json",
    success: function (data) {
      console.log(data);
      // Set room number in popup
      popupRoomNumber.textContent = `Chambre ${roomNumber}`;

      // Set images and student info in popup
      popupImages.innerHTML = "";

      // Add student data to popup
      data.forEach((student) => {
        // Check if the image field is empty, assign a default avatar
        const imageUrl = student.image
          ? student.image
          : "images/default_user.png";

        popupImages.innerHTML += `
                    <div class="student-container">
                        <img src="${imageUrl}" alt="${student.name}">
                        <p>${student.name}</p>
                        <button class="student-container-button" onclick=showStudentInfo(${student.id})>Plus d'infos</button>                        
                    </div>
                `;
      });
      // Add "Edit Room" button
      const studentCount = data.length;

      $.ajax({
        url: `../includes/getStudentInfo.php?studentId=${id}`,
        type: 'GET',
        dataType: 'json',
        success: function (studentInfo) {

          if (studentCount < 4 && studentInfo.status == 'externe') {
            popupImages.innerHTML += `
                    <div class="edit-room-container">
                        <button class="edit-room-button" onclick="demanderChambre(${roomNumber}, ${id}, '${name}', '${gender}','${ville}')">Demander Chambre
                        <i class="fa fa-plus icon"></i>
                        </button>
                    </div> `;
          }
        },
        error: function (error) {
          console.log('Error:', error);
        }
      });
      // Show the popup
      popup.style.display = "block";

      // Close the info popup when clicking outside
      document.addEventListener("click", function closepopupOutside(event) {
        if (!popup.contains(event.target)) {
          popup.style.display = "none";
          document.removeEventListener("click", closepopupOutside);
        }
      });
    },
    error: function (error) {
      console.log("Error:", error);
    },
  });
}
