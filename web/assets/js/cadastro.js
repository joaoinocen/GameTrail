$('#formulario-cadastro').on('submit', CriarUsuario);

function CriarUsuario(evento) {
    evento.preventDefault();
    console.log("Dentro da função")
    
    if ($('#senha').val() != $('#confirmarSenha').val()) {
        alert("As senhas não coincidem!")
        return;
    }
    
    $.ajax({
        url: "/usuarios",
        method: "POST",
        data: {
            nome: $('#nome').val(),
            email: $('#email').val(),
            nick: $('#nick').val(),
            senha: $('#senha').val()
        }
    }).done(function() {
        alert("Usuário cadastrado com sucesso!");
    }).fail(function(erro) {
        console.log(erro)
        alert("Erro ao cadastrar o usuário!");
    });
}