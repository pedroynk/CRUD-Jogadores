# Projeto Java com Tomcat 9

Este documento descreve como configurar e rodar o projeto Java 21 em um servidor Apache Tomcat 9. O projeto utiliza Java 21 para a implementação e Tomcat 9 para o servidor de aplicação.

## Pré-requisitos

Certifique-se de ter os seguintes softwares instalados em sua máquina:

- **Java 21 (JDK 21)**: [Download Java 21](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)
- **Apache Tomcat 9**: [Download Tomcat 9](https://tomcat.apache.org/download-90.cgi)
- **IDE de desenvolvimento** (ex.: IntelliJ IDEA, Eclipse)

## Configuração do Projeto

1. **Clone o projeto** (caso esteja em um repositório Git):
   ```bash
   git clone https://github.com/pedroynk/crud-jogadores.git
   cd crud-jogadores
   
## Configuração do Projeto

1. **Abra o projeto na sua IDE de preferência**:
   - Importe o projeto como um projeto Java e configure o ambiente de build para utilizar o JDK 21.

2. **Verifique as configurações de build**:
   - Certifique-se de que o projeto está configurado para usar o JDK 21 nas configurações de build da IDE.

## Implantação e Execução no Tomcat

1. **Configure o servidor Tomcat na sua IDE**:
   - Adicione o Apache Tomcat 9 na aba "Servers" da sua IDE (ex.: IntelliJ IDEA, Eclipse).
   - Importe o projeto para o servidor, se ainda não estiver adicionado.

2. **Inicie o Tomcat**:
   - Na aba "Servers", selecione o servidor Tomcat configurado.
   - Clique no botão de "Play" ou "Run" para iniciar o servidor com o projeto.

3. **Verifique os logs**:
   - Certifique-se de que o servidor iniciou corretamente verificando os logs de inicialização na aba de console.

## Acessando a Aplicação

1. **Abra o navegador e acesse o seguinte URL**:http://localhost:8080/ProjetoModelo/jogador-form.jsp

css
Copiar código
- Essa página é a interface de cadastro de jogadores.

