Algoritmo "AgenciaDeViagens"
// Disciplina   : Linguagem e L�gica de Programa��o
// Descri��o   : Algoritmo sobre ag�ncia de viagens
// Autor(a)    : Kazuohiro Shoji Tokuta

const
    MAX_CLIENTES = 15
    MAX_DESTINOS = 15

Var
    i: inteiro
    opcao: inteiro
    numClientes: inteiro
    numDestinos: inteiro
    nomeCliente: vetor [0.. MAX_CLIENTES] de caracter
    nomeDestino: vetor [0.. MAX_DESTINOS] de caracter

//cadastro de cliente
procedimento cadastrarCliente
inicio
    se numClientes < MAX_CLIENTES ent�o
        escreva("Cadastre o nome do cliente: ")
        leia(nomeCliente[numClientes])
        numClientes <- numClientes + 1
        escreval("Parab�ns! Voc� cadastrou o ",numClientes,"� cliente")
        escreval("")
    sen�o
        escreval("Limite de clientes cadastrados atingido.")
        escreval("")
    fimse

fimprocedimento

//cadastro de destino
procedimento cadastrarDestino
inicio
    se numDestinos < MAX_DESTINOS ent�o
        escreva("Digite o local de destino: ")
        leia(nomeDestino[numDestinos])
        numDestinos <- numDestinos + 1
        escreval("Parab�ns! Voc� cadastrou o ",numDestinos,"� destino")
        escreval("")
    sen�o
        escreval("Limite de destinos cadastrados atingido.")
        escreval("")
    fimse

fimprocedimento

//consulta de clientes
procedimento consultarClientes
inicio
    se numClientes > 0 ent�o
        para i de 0 ate numClientes - 1 passo 1 faca
            escreval("Cliente ", i + 1, ": ", nomeCliente[i])
            escreval("")
        fimpara
    sen�o
        escreval("Nenhum cliente cadastrado.")
        escreval("")
    fimse
fimprocedimento

//consulta de destinos
procedimento consultarDestinos
inicio
    se numDestinos > 0 ent�o
        para i de 0 ate numDestinos - 1 passo 1 faca
            escreval("Destino ", i + 1, ": ", nomeDestino[i])
            escreval("")
        fimpara
    sen�o
        escreval("Nenhum destino cadastrado.")
        escreval("")
    fimse
fimprocedimento

Inicio
    numClientes <- 0
    numDestinos <- 0

    escreval("Seja bem vindo a Eagles Airlines!")
    escreval("Aqui voc� encontra a viagem dos sonhos")
    escreval("")
    repita
        escreval("------------------------------------------")
        escreval("     Selecione uma das op��es abaixo")
        escreval("------------------------------------------")
        escreval("")
        escreval(" (1) Cadastrar cliente")
        escreval(" (2) Cadastrar destino")
        escreval(" (3) Consultar clientes")
        escreval(" (4) Consultar destinos")
        escreval(" (5) Sair")
        escreval("")
        escreva("Digite a op��o desejada: ")
        leia(opcao)
        escreval("------------------------------------------")
        escreval("")

        escolha (opcao)
            caso 1
                cadastrarCliente
            caso 2
                cadastrarDestino
            caso 3
                consultarClientes
            caso 4
                consultarDestinos
            caso 5
                escreval("Obrigado por visitar a Eagles Airlines")
            outrocaso
                escreval("Op��o inv�lida.")
        fimescolha

     ate opcao = 5

Fimalgoritmo
