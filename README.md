# Crawler Busca Frases

O Crawler Busca Frases é uma api que busca citações de diversos autores no site http://quotes.toscrape.com/. 

## Tecnologias utilizadas
* Ruby 2.7.0
* Ruby on Rails 5.0.1
* MongoDB
* Nokogiri
* Sidekiq
* API protegida por TOKEN

## Desenvolvimento da aplicação
O site citado acima, possui uma série de citações e em cada citação possui uma frase, um autor, um link contendo informações sobre o autor e uma lista de tags que identifica o assunto da citação. Pensando nisso, criei duas classes. Tag e Quote. A classe Tag fica responsável de salvar,sem repetição, cada tag presente no site. Já a classe Quote fica responsável em salvar, sem repetição, a citação, o autor, o link sobre o autor e as tags.

Para obter os dados do site, utilizei a API Nokogiri. Através dessa API é possível acessar o código HTML do site e obter as informações. E para salvar as informações obtidas, utilizei o banco de dados MongoDB.

## Consultas
Existem duas formas de consultar as citações. Uma delas é através do *endpoint* /quotes/{SEARCH_TAG}, fazendo uma requisição utilizando o método HTTP *GET*.
A outra é através do agendador de tarefas *Sidekiq*. O Sidekiq realiza a consulta a cada 12 horas. Ele obtém, através da classe Tag, todas as tags que já foram cadastradas e então a busca no site é feita buscando novas citações que possuem essa tag.

## Execução
Para executar a api e realizar as consultas, deve possuir duas abas do *Terminal* abertas.

Na primeira aba deve ser feita a instalação dos pacotes da aplicação:

```bundle install```

Em seguida é necessário fazer a inicialização do banco de dados:

```sudo service mongod start```

Após iniciar o banco, execute para inicializar o servidor:

```rails server```

A segunda aba do *Terminal* será responsável pelo agendador de tarefas, ele precisa ficar executando o tempo todo, para isso basta digitar:

```bundle exec sidekiq```


**As configurações descritas acima foram feitas em um sistema operacional Linux**

## Configuração do Postman

Como a API é protegida por TOKEN, não é possível realizar a consulta via postman sem configurar o TOKEN. Para isso, vá na aba *Headers* e insira uma chave chamada *Authorization* e informe para ela o valor *Token desafio*. **dasafio** é o valor do fornecido ao TOKEN.

Veja a imagem abaixo:
![Captura de tela de 2022-07-12 19-12-58](https://user-images.githubusercontent.com/18707131/178604916-a31ac8ca-24af-47b3-8a95-e4c10ab08cf2.png)

## Resposta
A resposta que será mostrada ao usuário é a seguinte:
![Captura de tela de 2022-07-12 19-19-43](https://user-images.githubusercontent.com/18707131/178605525-4204af61-2a8d-418c-888c-2c967d127a7f.png)


## Informações e sugestões
Caso tenha alguma dúvida ou sugestão, entre em contato pelo *e-mail* raafapaiva19@gmail.com

## Referências
Segue abaixo, links úteis para o desenvolvimento da API:

https://guides.rubyonrails.org/routing.html

https://nokogiri.org/

https://e-tinet.com/linux/mongodb/#:~:text=Instala%C3%A7%C3%A3o%20e%20configura%C3%A7%C3%A3o%20do%20MongoDB,autentica%C3%A7%C3%A3o%20de%20pacotes%20de%20software.

https://onebitcode.com/mongodb-rails/

https://github.com/ondrejbartas/sidekiq-cron









