#Projeto para treino, vou inserir uma gem que o Jackson criou, ela me gera cpf's, vou tentar fazer um app que vai gerar cpf e armazenar no meu arquivo .txt.
#Instalar gem cpf_utils
#criar arquivo .txt
#gerar cpf
#armazenar cpf's no arquivo .txt

require "cpf_utils"

dados = []
#Declarei o vetor 
indice = 5
#Parâmetro de comparação

#A lógica abaixo permite que geramos n cpf's já formatados e a inserimos em um arquivo .txt da preferência do usuario.
while indice > dados.length #Foi muito legal desenvolver essa lógica! Ela repete o método que importamos da gem 'cpf_utils'
    dados.push CpfUtils.cpf_formatted
end

#Abaixo é a lógica que aprendi na aula 51 'Trabalhando com arquivos' do curso basico de Ruby.
File.open('cpf_save.txt', 'w') do |arq| #Aqui é onde indicamos o local do arquivo para ser criado e salvo.
    arq.puts dados
    puts dados.class
end


#Estou muito feliz por ter desenvolvido esse script, apesar de básico eu consegui aplicar um pouco do conhecimento absorvido no curso básico de ruby...
#Pretendo ir aperfeiçoando este projeto quando meu github estiver online.. (16-04-22_20-00PM)
