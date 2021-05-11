# Bhaskara
Criando um pacote no Julia com os passos:

[] Criar um diretório NOME
[] entrar no terminal Julia dentro do diretório
[] generate NOME
[] Verificar estrutura:
  - NOME.jl
  - Project.toml
  - src/NOME.jl
  - test/
[] Ativar o Pacote:
   [pkg] activate .  # muda o enviroment
   [pkg] add Revise
   - using Revise
   - using NOME
   - teste a funcao definida em src/NOME.jl
[] Acrescenter um HELP no arquivo NOME.jl
[] criar o arquivo test/runtests.jl
[pkg] add Test #adiciona o pacote Test
[pkg] test #testa o algoritmo
[] crie um REAMDE.md
[] crie um arquivo .gitignore a adcione o arquivo Manifest.toml
[] git init
[] git add src/ test/ Project.toml