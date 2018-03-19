function loginTypeSelect(args) {
    var cand = document.getElementById("Candidate");
    var emp = document.getElementById("Employer");
    var candHeader = document.getElementById("CandidateHeader");
    var empHeader = document.getElementById("EmployerHeader");

    if (args == 'Employer') {
        cand.style.display = 'none';
        emp.style.display = 'inline';

        empHeader.classList.add('RegisterHeaderNotSelected');
        candHeader.classList.remove('RegisterHeaderNotSelected');
    }
    else {
        cand.style.display = 'inline';
        emp.style.display = 'none';

        candHeader.classList.add('RegisterHeaderNotSelected');
        empHeader.classList.remove('RegisterHeaderNotSelected');
    }
}

$(document).ready(function () {
    $('.busProSpokenLanguages').select2({
        placeholder: 'Select an option',
        closeOnSelect: false
    });
});

//$(document).ready(function () {
//    var danger = document.getElementsByName("text-dangerField")
//    console.log(danger);
//    var temp = danger[0].getAttribute('data-valmsg-summary');
//    console.log(temp);
//});



//$('#busProSpokenLanguages').select2({
//    dropdownParent: $('#WorkingLanguageDiv')
//});
//$('#busProTechLanguages').select2({
//    dropdownParent: $('#techStackDiv')
//});