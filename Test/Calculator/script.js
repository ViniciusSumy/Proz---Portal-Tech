  function calcular(){
    // Obtém os valores dos campos de entrada
    let num1 = parseFloat(document.getElementById("num1").value);
    let num2 = parseFloat(document.getElementById("num2").value);

    // Verifica qual operação o usuário selecionou
    let operacao = document.getElementById("operacao").value;
    let resultado;

    switch (operacao) {
      case "soma":
        resultado = realizarSoma(num1, num2);
        break;
      case "subtracao":
        resultado = realizarSubtracao(num1, num2);
        break;
      case "divisao":
        resultado = realizarDivisao(num1, num2);
        break;
      case "multiplicacao":
        resultado = realizarMultiplicacao(num1, num2);
        break;
      case "potencia":
        resultado = realizarPotencia(num1, num2);
        break;
      case "raiz":
        resultado = realizarRaiz(num1);
        break;
      case "fatorial":
        resultado = realizarFatorial(num1);
        break;
      case "porcentagem":
        resultado = realizarPorcentagem(num1, num2);
        break;
      case "media":
        resultado = realizarMedia(num1, num2);
        break;
      default:
        resultado = "Operação inválida";
    }

    // Exibe o resultado na tela
    document.getElementById("resultado").innerHTML = resultado;
  }

  function realizarSoma(num1, num2) {
    return num1 + num2;
  }

  function realizarSubtracao(num1, num2) {
    return num1 - num2;
  }

  function realizarDivisao(num1, num2) {
    return num1 / num2;
  }

  function realizarMultiplicacao(num1, num2) {
    return num1 * num2;
  }

  function realizarPotencia(num1, num2) {
    return Math.pow(num1, num2);
  }

  function realizarRaiz(num1) {
    return Math.sqrt(num1);
  }

  function realizarFatorial(num1) {
    return fatorial(num1);
  }

  function realizarPorcentagem(num1, num2) {
    return (num1 / 100) * num2;
  }

  function realizarMedia(num1, num2) {
    return (num1 + num2) / 2;
  }
