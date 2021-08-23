# selenium_with_docker

Um simples projeto de Exemplo para criação de Image Docker contendo um browser e um driver para execução de testes automatizados em imagem DOCKER.

 - O que é instalado na imagem:
    - Google Chrome última versão estável
    - Chromedriver versão compatível com versão do chrome instalado
    - Selenium

Pré-requisitos:
    - Possuir Docker instalado na máquina

- Execução:

- Gerar imagem docker localmente:

    Command: docker build -t <nome da imagem que está criando> .
        Ex: docker build -t testeseleniumwithdocker .

- Criar Container com imagem:

    Command: docker run -it -v $PWD/resource/:/opt/scripts/ testeseleniumwithdocker

O Container será criado no modo interativo e irá habilitar o bash para que você possa navegar por dentro da imagem

Execução do teste:

 - Navegue até /opt/scripts/
 - Execute o comando:
    -python run.py

O teste será executado e será adicionado o print da tela no diretório resource/images/
