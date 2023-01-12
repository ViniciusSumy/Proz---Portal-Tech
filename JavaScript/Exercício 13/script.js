const linkProz = document.getElementById("link-proz");
const btnSubmit = document.querySelector("button[type=submit]");

linkProz.addEventListener("click", (e)=> {
    e.preventDefault()
    alert("Não foi possível acessar o link");
})

btnSubmit.addEventListener("click", (e)=> {

    alert("Não foi possível enviar os dados do formulário")
  
    e.preventDefault()
  
  })