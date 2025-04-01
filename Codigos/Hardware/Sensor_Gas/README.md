# Detector de Gás com Sensor MQ3 e Arduino

<div align= "center">
  <img src="/Images/sensorGas/experiencia.jpg" height="400"/>
</div>

## 📌 Sobre o Projeto
Este projeto utiliza o **sensor MQ3** para detectar a presença de gases no ambiente, especialmente **álcool**. O código é desenvolvido em **C++** e carregado no **Arduino** através da Arduino IDE.

## 🛠️ Materiais Necessários
- Arduino (UNO, Mega, etc.)
- Sensor MQ3
- Jumpers
- Protoboard (opcional)
- Fonte de alimentação USB

## ⚙️ Circuito
Conecte o **sensor MQ3** ao Arduino conforme a seguinte configuração:

- **VCC** → 5V (Arduino)
- **GND** → GND (Arduino)
- **A0** → Pino analógico (A0 no Arduino)

### 📸 Imagem do Circuito

<div align= "center">
  <img src="/Images/sensorGas/exemplo.jpg" height="400"/>
</div>

## 📜 Código Fonte
```cpp
const int sensorPin = A0; // Pino analógico conectado ao sensor MQ3
int sensorValue; // Variável para armazenar o valor lido do sensor

void setup() {
  Serial.begin(115200); // Inicializa a comunicação serial
}

void loop() {
  sensorValue = analogRead(sensorPin); // Lê o valor do sensor
  Serial.println(map(sensorValue, 0, 1023, 0, 500)); // Envia o valor convertido
  delay(1000); // Aguarda 1 segundo antes da próxima leitura
}
```

## 📊 Como Funciona
O **sensor MQ3** detecta a concentração de álcool e outros gases inflamáveis no ar. O Arduino lê os valores do sensor, que podem ser visualizados no **Monitor Serial**.

- **Baixo valor** → Baixa concentração de gás
- **Alto valor** → Alta concentração de gás





