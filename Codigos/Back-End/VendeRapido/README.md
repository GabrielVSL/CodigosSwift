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
    "_id": "1d267f724de31e5c60d69114016c44d6",
    "_rev": "1-38eeba5344ad4b987212601f382ba147",
    "nome": "Julio Duarte",
    "carro": "Volkswagen Fusca",
    "anoCarro": "1997",
    "cidade": "Salvador",
    "carroImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhoQ0za5yiGxXRA6KwYUXND2WPG9yZU1nGIA&s",
    "pessoaImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7N3EOvO7aeWsEz83uqekgE3dRea8KH-24Yw&s"
  },
  {
    "_id": "2b1be587fb4727b90d2fcad6702313ba",
    "_rev": "1-c91a1ea7699192051d96e94d95223242",
    "nome": "Juliana Amorin",
    "carro": "Opala SS 1978",
    "anoCarro": "1990",
    "cidade": "Rio de Janeiro",
    "carroImage": "https://upload.wikimedia.org/wikipedia/commons/2/22/Chevrolet_Opala_SS_1978_Inca.jpg",
    "pessoaImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxm74F8IRA7VDmB8GpK_ty6MmkyrZMpx4xNQ&s"
  },
  {
    "_id": "9402ac4b6338b5328bf0d9a1b131d259",
    "_rev": "1-4198515a82042bcb23491d779c9fad4d",
    "nome": "Matheus Vieira",
    "carro": "Mitsubishi Lancer Evolution VIII",
    "anoCarro": "2005",
    "cidade": "Belo Horizonte",
    "carroImage": "https://s3.sa-east-1.amazonaws.com/revista.mobiauto/Coluna+Perda+Total/Mitsubish+Lancer+Evolution+VIII.jpg",
    "pessoaImage": "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyZmlsfGVufDB8fDB8fHww"
  },
  {
    "_id": "e2460c5da2e0657cbeccdc7bc79db1e2",
    "_rev": "1-2d35940c011d20cb395fec63adc2228a",
    "nome": "Mario Oliveira",
    "carro": "Dodge Challenger Hellcat",
    "anoCarro": "2015",
    "cidade": "São Paulo",
    "carroImage": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrvTmxNdQZ1y8ax7j9jvKqjDaIKTF5xmBf3g&s",
    "pessoaImage": "https://lh3.googleusercontent.com/proxy/wi1OZY3E58kV0XYV-a049jZlNQ43uIIIZfMrQJKGod9phosCKepHd3uJ8ZBisXiBVRa3bEb353G8rk9BFFGE0sgbhIQK5LCVm5Ic7rI8zLjw79LZEHx1_KBbGSlnMZbyAIch5vLkUw_la5qcOhdMYnwklm0384kG"
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
struct Post: Codable, Hashable {
    let nome: String?
    let carro: String?
    let anoCarro: String?
    let cidade: String?
    let carroImage: String?
    let pessoaImage: String?
}
```
### Imagens:
Aqui estão as imagens que representam os diferentes aspectos da aplicação:

<div align="center"">

  <img src="/Images/VendeRapido/VendeRapido1.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/VendeRapido/VendeRapido2.jpg" height="400px" alt="Conversa 1">
  
</div>
