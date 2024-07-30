![poster](./.github/qa.png)

## Sobre

Repositório: Testes contínuos em Robot Framework no Github Actions

## Techs
- Robot Framework
- Browser (Playwright)
- Python

## Como executar localmente

1. Clonar o repositório, instalar as dependências
```
pip install -r requirements.text
```

2. Executar testes em Headless
```
robot -d ./logs -v IS_HEADLESS:True tests
```

3. Executar testes em modo assistido
```
robot -d ./logs -v IS_HEADLESS:False tests
```

## Instruções para Executar os Testes com GitHub Actions
Repositório GitHub
Você pode acessar o repositório original através do seguinte link: [iuricdq/robot1](https://github.com/iuricdq/robot1).

Passos para Executar os Testes:
1. Clonar o Repositório
Clone o repositório para o seu ambiente local.
Navegue até o diretório do repositório clonado no seu sistema local.
2. Adicionar e Comitar no Seu Repositório
Crie um novo repositório na sua conta GitHub.
Adicione o repositório remoto do GitHub ao repositório local clonado.
Envie as alterações para o novo repositório na sua conta GitHub.
3. Configurar Permissões para Workflow
Após adicionar o repositório à sua conta GitHub, acesse as configurações do seu repositório:
Vá para Settings > Actions > General.
Em "Workflow permissions", selecione a opção 'Read and write permissions'. Isso é crucial para garantir que o relatório de testes seja gerado corretamente e evitar erros.
4. Executar os Testes
Acesse a página dos workflows do GitHub Actions no seu repositório:
https://github.com/SEU-USUARIO/NOME-DO-REPOSITORIO/actions/workflows/tests.yml
Substitua SEU-USUARIO e NOME-DO-REPOSITORIO pelos valores apropriados.
Clique na opção "Run workflow" para iniciar a execução dos testes.
Após a execução, clique em "E2E Tests" para visualizar os resultados dos testes.
Se precisar de mais assistência, estou à disposição!

