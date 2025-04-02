# Monitoramento de umidade de esponjas em tempo real com IoT e mobile app

<div align= "center">
  <img src="/Images/" height="400"/>
</div>

---

## 📋 Descrição do Projeto
Este projeto visa o monitoramento contínuo da umidade de esponjas utilizando tecnologia IoT, permitindo o acompanhamento remoto via um aplicativo móvel. O sistema inclui:

- **🔌 Hardware**: Sensor de umidade + NodeMCU ESP8266
- **🌐 Backend**: API REST com banco de dados para armazenamento das leituras
- **📱 Mobile**: Aplicativo iOS nativo desenvolvido em Swift
- **📊 Monitoramento**: Atualizações automáticas a cada 5 segundos via requisições POST/GET

---

## 🛠️ Componentes Principais

### 🔌 Hardware

#### **Configuração física do experimento**

<div align= "center">
  <img src="/Images/" height="400"/>
</div>

#### 📟 Componentes Utilizados:
- **NodeMCU ESP8266** – Microcontrolador com conectividade WiFi
- **Sensor de umidade capacitivo** – Mede a umidade da esponja
- **Potenciômetro** – Ajuste fino para calibração do sensor
- **Fonte USB-C** – Alimentação do circuito
- **Jumpers** – Conexões entre os componentes

### 💾 Software

#### **🎛 Firmware para NodeMCU (Arduino IDE)**

```arduino
#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

WiFiClient client;
HTTPClient httpClient;

const char *WIFI_SSID = "HackaTruckIoT";
const char *WIFI_PASSWORD = "iothacka";
const char *URL = "http://192.168.128.239:1880/postUmidade";

int output_value ;
int sensor_pin = A0;
 
void setup(){
    Serial.begin(115200); 
    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    Serial.println("Connected");
    delay(5000);
}

float FazLeituraUmidade(void)
{
    int ValorADC; //Valor lido analogicamente pelo sensor de umidade
    float UmidadePercentual; //valor interpretado de acordo com a escala abaixo
 
     ValorADC = analogRead(0);   //1023 -> 3,3V
     Serial.print("[Leitura ADC] ");
     Serial.println(ValorADC);
 
     //Quanto maior o número lido do ADC, menor a umidade.
     //Sendo assim, calcula-se a porcentagem de umidade por:
     //      
     //   Valor lido                 Umidade percentual
     //      _    0                           _ 100
     //      |                                |   
     //      |                                |   
     //      -   ValorADC                     - UmidadePercentual 
     //      |                                |   
     //      |                                |   
     //     _|_  1023                         _|_ 0
     //
     //   (UmidadePercentual-0) / (100-0)  =  (ValorADC - 1024) / (-1024)
     //      Logo:
     //      UmidadePercentual = 100 * ((1024-ValorADC) / 1024)  
     
    UmidadePercentual = 100 * ((1024-(float)ValorADC) / 1024);
    //  UmidadePercentual = map(ValorADC, 0, 1023, 100, 0);
     Serial.print("[Umidade Percentual] ");
     Serial.print(UmidadePercentual);
     Serial.println("%");
 
     return UmidadePercentual;
}

void loop(){
  float umidade = FazLeituraUmidade();
  String data = "umidade="+String(umidade);

    httpClient.begin(client, URL);
    httpClient.addHeader("Content-Type", "application/x-www-form-urlencoded");
    httpClient.POST(data);
    String content = httpClient.getString();
    httpClient.end();

    Serial.print(output_value); 
    Serial.print("\n resposta");   
    Serial.println(content);
    delay(5000);
}
```

---

### 📱 Aplicativo Swift

<div align= "center">
  <img src="/Images/exemplo" height="400"/>
  <img width="12"/>
  <img src="/Images/exemplo" height="400"/>
</div>

#### **🖥️ Funcionalidades do App:**
- Exibição da **última leitura** da umidade em tempo real
- Histórico das medições em **cards interativos**
- **Gráfico temporal** para análise das variações de umidade
- **Pull-to-refresh** para atualizar os dados manualmente
- **Conexão com API REST** para recuperar os dados mais recentes

#### **📝 Código de Requisição de Dados**
```swift
func fetch(){
        guard let url = URL(string: "http://192.168.128.239:1880/getUmidade") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Umidade].self, from: data)
                DispatchQueue.main.async {
                    self?.umidade = parsed
                }
            } catch {
                print (error)
            }
        }
        task.resume()
    }
```

---

## 🌐 Estrutura da API

<div align= "center">
  <img src="/Images/" height="400"/>
</div>

#### **🔗 Endpoints**
- **POST /leituras** – Envia novos dados de umidade
- **GET /leituras** – Recupera as medições mais recentes

#### **📄 Exemplo de Resposta da API:**
```json
[
  {
    "_id": "11fcb68d38da1298abfa9ff47869b8fb",
    "_rev": "1-24a896e70d38055958b1eef94fe73af6",
    "umidade": "72.75"
  },
  {
    "_id": "11fcb68d38da1298abfa9ff4786b5ed5",
    "_rev": "1-b2115ca6c287aa8ebbc2f0e36667e2d3",
    "umidade": "66.31"
  }
]
```

---

## ⚙️ Configuração

### 🔧 **Passo a Passo de Configuração**

#### **Hardware:**
✅ Conectar o sensor ao pino analógico **A0** do NodeMCU  
✅ Alimentar o sistema via **USB-C**  
✅ Ajustar o **potenciômetro** para calibrar a sensibilidade do sensor  

#### **Firmware:**
✅ Configurar credenciais **WiFi** no código-fonte  
✅ Definir o **endpoint da API** para envio dos dados  
✅ Realizar o **upload do código via Arduino IDE**  

#### **Aplicativo:**
✅ Clonar o **repositório do app iOS**  
✅ Configurar a **URL da API** para sincronizar os dados  
✅ Compilar e executar o projeto no **Xcode**  
