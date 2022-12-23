const title = document.getElementsByClassName('title');
const error_text = document.getElementsByClassName('error-text');
const username_input = document.getElementById('login-usuario');
const password_input = document.getElementById('login-senha');

title[0].style.color = 'purple';

function validarForms () {
    if (username_input.value != 'viniciusmarques') {
        error_text[0].classList.add ('visible')
    }
    else {
    error_text[0].classList.remove ('visible')
    }
    if (password_input.value != 'senha') {
        error_text[1].classList.add ('visible')
    }
    else {
        error_text[1].classList.remove ('visible')
    }
}

validarForms()