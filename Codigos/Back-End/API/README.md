# Harry Potter API

Neste exercício, desenvolvi uma aplicação simples que consome uma **API RESTful** para exibir informações sobre o universo de Harry Potter, como o nome do personagem e os detalhes dos personagens principais. Durante o desenvolvimento, apliquei os conceitos de requisições HTTP, parsing de JSON e manipulação de dados dentro de um aplicativo iOS.

### Funcionalidades:
- A aplicação realiza uma **requisição à API RESTful** para obter dados sobre personagens de Harry Potter.
- Exibe o **nome do personagem**, sua **descrição** e outras informações relacionadas.
- Permite ao usuário **navegar entre os diferentes personagens**, mostrando as informações de cada um.

### Estrutura da Aplicação:
- **Tela Principal**: Exibe uma lista com o nome dos personagens.
- **Detalhes do Personagem**: Ao selecionar um personagem, são mostrados seus detalhes, incluindo o nome, descrição e outras informações.
- **Requisição à API**: A aplicação realiza uma requisição HTTP GET para consumir os dados da API.

### Navegação:
Durante o desenvolvimento dessa aplicação, utilizei recursos do SwiftUI e da manipulação de APIs, como:

- **`List`**: Utilizado para exibir a lista de personagens na tela principal.
- **`NavigationLink`**: Usado para navegar da lista principal para a tela de detalhes do personagem.
- **`URLSession`**: Responsável por realizar a requisição à API RESTful, buscando dados sobre os personagens.

### Exemplo de Comportamento:
1. Na **tela principal**, o usuário vê uma lista com o nome dos personagens de Harry Potter.
2. Ao selecionar um personagem, a aplicação faz uma requisição à API, recupera os dados e os exibe na tela de detalhes.
3. As informações são apresentadas de maneira simples e intuitiva, com dados como nome, descrição e mais.

### Tecnologias:
- SwiftUI
- `ScrollView`, `NavigationLink`
- `URLSession` (para realizar as requisições HTTP)
- API RESTful (Harry Potter API)

- ### Modelo dos Personagens:

```swift
struct HaPo: Codable, Identifiable {
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patrons: String?
    let hogwartsStuddent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternative_actors: [String]?
    let alive: Bool?
    let image: String?
}

struct Wand: Codable {
    let wood: String?
    let core: String?
    let lenth: Double?
}
```
<div align="center"">

  <img src="/Images/API/harryPotter1.jpeg" height="400px" alt="">
  <img width="12" />
  <img src="/Images/API/harryPotter2.jpeg" height="400px" alt="">
  
</div>
