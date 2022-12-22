const title = document.getElementsByClassName('title');
const error_text = document.getElementsByClassName('error-text');
const username_input = document.getElementById('login-usuario');
const password_input = document.getElementById('login-senha');

title[0].style.color = 'red';

function validarForms () {
    if (username_input.value != 'viniciusmarques') {
        error_text[0].classList.add ('visible')
    }

    if (password_input.value != 'senha') {
        error_text[1].classList.add ('visible')
    }
}

validarForms()