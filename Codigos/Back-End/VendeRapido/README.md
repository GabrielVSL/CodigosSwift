# VendeRapido API

Neste exercício, desenvolvi uma aplicação chamada **VendeRapido**, que simula um sistema de vendas de produtos. A aplicação consome uma API criada por mim, onde os dados dos produtos são mockados em um arquivo JSON. Utilizei o **Postman** para testar as requisições **GET** e validar a obtenção das informações.

### Funcionalidades:
- A aplicação realiza uma **requisição GET** para consumir dados da API mockada e exibe uma lista de **produtos** disponíveis para venda.
- Exibe **detalhes do produto**, incluindo nome, preço e descrição.
- Utilizei **mock de dados** em um arquivo JSON, para simular uma API funcional sem a necessidade de um backend real.

### Estrutura da Aplicação:
- **Tela Principal**: Exibe uma lista com os produtos disponíveis para venda, puxados da API.
- **Detalhes do Produto**: Ao selecionar um produto, o usuário é redirecionado para uma tela com informações detalhadas sobre o produto.
- **Mock de Dados**: Todos os dados dos produtos são mockados em um arquivo JSON que simula a resposta da API.

### Requisição da API:
Durante o desenvolvimento, criei e configurei minha própria API para responder com dados mockados. Para testar, utilizei o **Postman** para fazer a requisição **GET** aos dados. A estrutura da resposta foi em formato **JSON**, com informações como nome do produto, preço e descrição.

### Exemplo de Requisição (Postman):
A requisição GET é feita para o seguinte endpoint: GET http://localhost:3000/products


A resposta mockada da API é um array de objetos JSON com os produtos:

```json
[
  {
    "id": 1,
    "name": "Camiseta",
    "price": 29.99,
    "description": "Camiseta de algodão, tamanho M"
  },
  {
    "id": 2,
    "name": "Tênis",
    "price": 199.99,
    "description": "Tênis esportivo, tamanho 42"
  }
]
```

### Navegação:
Durante o desenvolvimento dessa aplicação, utilizei recursos do SwiftUI para exibir as informações obtidas da API mockada:

- **`List`**: Exibe os produtos na tela principal, utilizando os dados obtidos via API.
- **`NavigationLink`**: Usado para navegar da lista de produtos para a tela de detalhes de um produto específico.
- **`URLSession`**: Utilizado para realizar a requisição GET à API mockada.

### Exemplo de Comportamento:
1. Na **tela principal**, o usuário vê uma lista com os produtos disponíveis para venda.
2. Ao selecionar um produto, a aplicação mostra os **detalhes do produto**, incluindo nome, preço e descrição.
3. Os dados são consumidos de uma API mockada, que responde com informações simuladas no formato JSON.

### Tecnologias:
- **SwiftUI**
- **Postman** (para testar a API)
- **`List`**, **`NavigationLink`**
- **`URLSession`** (para realizar as requisições GET)
- Mock de dados em **JSON**

### Exemplo de Modelo de Produto:

```swift
struct Product: Codable {
    let id: Int
    let name: String
    let price: Double
    let description: String
}
```
### Imagens:
Aqui estão as imagens que representam os diferentes aspectos da aplicação:

<div align="center"">

  <img src="/Images/VendeRapido/VendeRapido1.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/VendeRapido/VendeRapido2.jpg" height="400px" alt="Conversa 1">
  
</div>
