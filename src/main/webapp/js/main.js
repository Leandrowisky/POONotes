// $(document).ready(function(){
//     $('#logar').click(function () {
//         $('#login-form').attr('action', '/poonotes/login');
//         $('#login-form').submit();
//     });
// });

function submitForm() {
    document.getElementById('login-form').submit();
}

function getCardId(id) {
    document.getElementById('cardId').value = id;
    document.getElementById('card-form').submit();
}

function openCardType(evt, tabName) {
    var i, tabcontent, tablinks;
    
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

function trocaBoard(idboard) {
    //obtenho o form de trocar de board
    var form = document.getElementById('form-trocarBoard')
    //adiciono o id do board selecionado ao input hidden
    var hiddenValue = document.getElementById('selectedBoard')
    hiddenValue.setAttribute('value', idboard)
    //faco o submit do form
    form.submit()
}

function selectedBoard() {
    //obter id do board atual
    var boardAtual = document.getElementById('boardAtual').value
    
    //obtenho todos os ids dos boards na lista
    var boards = document.getElementsByClassName('boardsOptions')
    
    //verifico qual o board atual para selecionalo no menu
    for(var board of boards) {
        if(board.value === boardAtual)
            board.setAttribute('selected', 'true')
    }

}

function arquiveObject(cardId) {
    //Alerta o usuario
    if(!(confirm('Arquivar o objeto?')))
        return;

    //Obtenho o form
    var form = document.getElementById('form-alterador')

    //seto o id do card no input
    document.getElementById('arquivado').setAttribute('value', cardId)

    form.submit()

}

function arquiveBoard(idBoard) {
    //Alerta o usuario
    if(!(confirm('Arquivar o Board?')))
        return;

    //Obtenho o form
    var form = document.getElementById('form-arquiveBoard')

    //seto o id do card no input
    document.getElementById('boardarquivado').setAttribute('value', idBoard)

    form.submit()
}

function changeCardSize(tipo) {
    if(!tipo === 2) {
        return
    }

}