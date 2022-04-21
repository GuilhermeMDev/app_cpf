#### PRATICA
#Projeto começou simples, onde eu só queria gerar um .txt e armazenar uma qtd de cpf's gerados a partir da gem 'cpf_utils'. 
#Consegui desenvolver bastante conceito e lógica, onde busquei inserir a possibilidade do usuario inserir o nome do arquivo e também a quantidade de cpf's a serem gerados..
#Vejo 1 milhão de possíbilidades..

require "cpf_utils" #Aqui não necessario um require_relative porque a gem está na pasta raiz do ruby.. 


def criar_arq

@dados = []

while @indice > @dados.count #Foi muito legal desenvolver essa lógica! Ela repete o método que importamos da gem 'cpf_utils' #Aqui era @dados.length, porém troquei pro count. Preciso saber qual é o mais indicado e por quê.
    @dados.push CpfUtils.cpf_formatted #Método importado da gem 'cpf_utils', posso inserir qlq função a partir desse principio, de qualquer tipo/funcionalidade de gem! Incrível.
end
    File.open(@nome, 'w') do |arq|
        arq.puts @dados
        puts @dados.class
    end
end

#Aqui damos o nome do arquivo
puts "Digite o nome do arquivo"
@nome = gets.chomp

# #Aqui damos a quantidade de cpf's a serem gerados.
puts "Quantos CPF's precisa?"
@indice = gets.chomp.to_i

criar_arq()