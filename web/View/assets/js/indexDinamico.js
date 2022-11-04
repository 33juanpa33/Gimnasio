function cargarElementoDinamico(url, elemento) {
    let request = new XMLHttpRequest();
    request.open("GET", url, false);
    request.send(null);
    elemento.innerHTML = request.responseText;
}

function cargarLogin() {
    cargarElementoDinamico("login.jsp", document.getElementById("contenidoDinamico"));
}

function cargarLoginCliente() {
    cargarElementoDinamico("loginCliente.jsp", document.getElementById("contenidoDinamico"));
}