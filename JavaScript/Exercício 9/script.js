const quantidadeSubtotal = document.getElementById("quantidade-subtotal");
const valorSubtotal = document.getElementById("valor-subtotal");
const addProduto = document.getElementById("btn-adicionar-produto-01");
const remProduto = document.getElementById("btn-subtrair-produto-01");
const addNumero = document.getElementById("quantidade-produto-01");

const subtotalInfo = {
  valor: 11.66,
};

addProduto.addEventListener("click", adicionarProduto);
remProduto.addEventListener("click", removerProduto)

function calculoValorTotal(addNumero) {
    valorSubtotal.innerText = (subtotalInfo.valor * addNumero).toFixed(2);
}

function subTotal() {
    quantidadeSubtotal.innerText = addNumero.value + " itens"; {
        calculoValorTotal(addNumero.value)
    }
}

function adicionarProduto() {
    if (Number(addNumero.value) < 10) {
        addNumero.value = Number(addNumero.value) + 1
    }
    subTotal()
}   

function removerProduto () {
    if (Number(addNumero.value) > 1) {
        addNumero.value = Number(addNumero.value) - 1
    }
    subTotal()
}
