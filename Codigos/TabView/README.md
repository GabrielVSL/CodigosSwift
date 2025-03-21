# Aplicativo de Conversa

Neste exercício, desenvolvi uma aplicação simples de **mensagens de texto**, onde o usuário pode entrar em conversas e visualizar as mensagens trocadas.

### Funcionalidades:
- O usuário pode **entrar em diferentes conversas**.
- As **mensagens trocadas** entre os participantes são exibidas de forma simples e intuitiva.
- O aplicativo exibe **imagens de parcerias** para cada conversa, além de uma tela principal com uma lista de conversas.

### Estrutura da Aplicação:
- **Tela Principal**: A tela inicial exibe uma lista de conversas disponíveis.
- **Exibição de Mensagens**: Quando o usuário seleciona uma conversa, o histórico de mensagens entre os participantes é carregado e exibido.
- **Envio de Mensagens**: O usuário pode enviar novas mensagens para a conversa selecionada, que serão adicionadas ao final da conversa.
- **Imagens de Parcerias**: Cada conversa tem uma imagem associada, representando a parceria ou o tema da conversa.

### Navegação:
Durante o desenvolvimento dessa aplicação, aprendi a utilizar os seguintes recursos de navegação no SwiftUI:

- **`NavigationStack`**: Utilizado para gerenciar a pilha de navegação. Ele permite a navegação entre telas e fornece a capacidade de empurrar novas views dentro da aplicação.
  
- **`NavigationLink`**: Usado dentro do `NavigationStack` para navegar entre as diferentes telas, como ir de uma lista de conversas para uma conversa específica.

- **`TabView`**: Permite criar uma interface de navegação com abas, facilitando a troca entre diferentes seções do aplicativo, como a tela de conversas e outras funcionalidades que o aplicativo pode ter.

### Exemplo de Comportamento:
1. Na **tela principal**, o usuário vê uma lista de conversas, cada uma representada por uma imagem de parceria.
2. Ao selecionar uma conversa, o histórico de mensagens é exibido, com a opção de enviar novas mensagens.
3. A navegação entre as telas é feita de forma fluída com o uso de `NavigationStack` e `NavigationLink`.

### Tecnologias:
- SwiftUI
- `NavigationStack`, `NavigationLink`, `TabView`

### Imagens:
Aqui estão as imagens que representam os diferentes aspectos da aplicação:

1. **Tela Principal (Lista de Conversas)**: Exibe uma lista de conversas disponíveis.
   ![Tela Principal](/Images/TabView/Pagina1.jpg)

2. **Conversa 1 (Parceria 1)**: A tela de uma conversa com uma imagem representando a parceria.
   ![Conversa 1](/Images/TabView/Conversa1.jpg)

3. **Conversa 2 (Parceria 2)**: Outra conversa com sua respectiva imagem de parceria.
   ![Conversa 2](/Images/TabView/Conversa2.jpg)

4. **Conversa 3 (Parceria 3)**: Mais uma conversa com imagem de parceria.
   ![Conversa 3](/Images/TabView/Conversa3.jpg)

