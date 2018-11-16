  /*** FUNCTION TO ADD ROW ***/
    function addSampleRow(id) {

        var objTable = document.getElementById(id);

        var objRow = objTable.insertRow(objTable.rows.length);

        var objCell1 = objRow.insertCell(0);

        var objInputCheckBox = document.createElement("input");
        objInputCheckBox.type = "checkbox";
        objCell1.appendChild(objInputCheckBox);
        var objCell2 = objRow.insertCell(1);
        var currentDate = new Date()

        objCell2.innerHTML = "<input type='text'></input>";
        var objCell3 = objRow.insertCell(2)
        objCell3.innerHTML = "<input type='text'></input>";
    }

     /*** FUNCTION TO DELETE ROW ***/
    function removeSampleRow(id) {
        var objTable = document.getElementById(id);

        var iRow = objTable.rows.length;

        var counter = 0;

        if (objTable.rows.length > 1) {
            for (var i = 0; i < objTable.rows.length; i++) {

                var chk = objTable.rows[i].cells[0].childNodes[0];
                if (chk.checked) {
                    objTable.deleteRow(i);
                    iRow--;
                    i--;
                    counter = counter + 1;
                }
            }
            if (counter == 0) {
                alert("Please select the row that you want to delete.");
            }
        }else{
            alert("There are no rows being added");
        }
    }