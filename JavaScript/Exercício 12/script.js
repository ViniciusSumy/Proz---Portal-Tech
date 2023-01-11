const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");
const linkDados = document.getElementById("link-perfil-dados");
const inicio = document.getElementById("inicio");


window.addEventListener('keyup', (e) => {
  if (e.key === '1') {
      if (navPerfil.style.display == "block") {
        linkDados.click()
    } else {
      navPerfil.style.display = "block"
    }
  } 
  if (e.key === 'Backspace') {
    inicio.click()
  } if (e.key === 'Escape') {
    navPerfil.style.display = "none"
  }

})
