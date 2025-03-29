# Cálculo de Velocidade Média

Este exercício consiste em uma aplicação simples que calcula a **velocidade média** (em km/h) de um carro com base na **distância** percorrida e no **tempo** gasto.

### Funcionalidades:
- O usuário insere a **distância** e o **tempo**.
- A aplicação calcula a **velocidade média** usando a fórmula:

  \[
  \text{Velocidade} (km/h) = \frac{\text{Distância (km)}}{\text{Tempo (h)}}
  \]

- Dependendo da velocidade calculada:
  - A **imagem** do carro muda.
  - A **cor de fundo** da tela é alterada com base na faixa de velocidade.

### Lógica de Exibição:

| Faixa de Velocidade (km/h) | Cor de Fundo      | Imagem do Carro   |
|----------------------------|-------------------|-------------------|
| **0 < resultado < 10**      | Verde Claro       | Chevette          |
| **10 <= resultado < 30**    | Azul Claro        | Fusca             |
| **30 <= resultado < 70**    | Laranja Claro     | Uno               |
| **70 <= resultado < 90**    | Amarelo Claro     | Porche            |
| **resultado >= 90**         | Vermelho Claro    | Ferrari           |
| **resultado == 0**          | Cinza (Neutra)    | Interrogação      |

### Exemplo de Comportamento:
- **Baixa velocidade**: Fundo verde claro e imagem de um carro devagar (Chevette).
- **Alta velocidade**: Fundo vermelho claro e imagem de um carro esportivo (Ferrari).

### Tecnologias Utilizadas:
- **SwiftUI**: Foi a tecnologia escolhida para construir a interface do aplicativo. Com o SwiftUI, conseguimos criar interfaces de usuário de maneira declarativa e reativa, facilitando o gerenciamento de estados e a construção de layouts interativos.
  
- **`Button` e `action`**: Utilizados para capturar o clique do usuário e realizar as ações necessárias para calcular a velocidade média. O `Button` permite a interação do usuário, enquanto o `action` define o comportamento que ocorre quando o botão é pressionado, como o cálculo da velocidade e a alteração da interface.

A combinação de SwiftUI com os componentes de interface como `Button` torna o processo de construção de aplicativos mais ágil e eficiente. No caso deste exercício, o `Button` foi fundamental para permitir que o usuário iniciasse o cálculo da velocidade, enquanto a reatividade do SwiftUI garantiu que a interface fosse atualizada imediatamente após o cálculo da velocidade média.

Essa aplicação foi um ótimo exercício para entender como utilizar SwiftUI para criar interfaces interativas, manipular dados de entrada e atualizar dinamicamente a interface com base no resultado obtido. 

### Imagens 

<div align="center">
  <img src="/Images/Calculadora/calculadora1.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/Calculadora/calculadora3.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/Calculadora/calculadora2.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/Calculadora/calculadora4.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/Calculadora/calculadora5.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
  <img src="/Images/Calculadora/calculadora6.jpg" height="400px" alt="Tela Principal">
  <img width="12" />
</div>
