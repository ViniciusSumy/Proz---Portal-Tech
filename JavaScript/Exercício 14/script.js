const inputEmail = document.getElementById("email");
const inputIdade = document.getElementById("idade");
const formulario = document.querySelector("form");


inputEmail.addEventListener("focus", ()=> {

    inputEmail.style.backgroundColor = "lightblue"
  
});

inputEmail.addEventListener("blur", (e)=> {

    e.target.style.backgroundColor = ""
  
});

inputIdade.addEventListener("change", ()=> {

    alert("Certeza que quer alterar seus dados?")
  
});

formulario.addEventListener("submit", ()=> {

    alert("Dados enviados com sucesso!")
  
});
