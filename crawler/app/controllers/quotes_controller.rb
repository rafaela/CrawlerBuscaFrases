require 'nokogiri'
require 'open-uri'


class QuotesController < ApplicationController

  TOKEN = "desafio"

  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate
  before_action :set_quote,only: [:show, :update, :destroy]

  #Realiza a consulta da tag informada. Se a tag já tenha sido pesquisada, 
  #retorna os dados que estão salvos no banco. Caso contrário, uma nova consulta
  #ao site é feita.
  def query
    result = searchTag(params[:quote])
    if(result.length == 0)
      crawler_quotes(params[:quote])
    end
    result = searchTagQuote(params[:quote])
    render json: result
  end


  #Pesquisa uma tag de uma determinada quote que está salva no banco
  def searchTagQuote(param)
    Quote.where(tags: { '$in': [param]})
  end

  #Pesquisa, no banco de dados, uma tag
  def searchTag(tag)
    Tag.where(tag: tag)
  end

  #Realiza a consulta ao site em busca de quotes e tags novas.
  #Salva no banco caso ela ainda não tenha sido consultada
  def crawler_quotes(param)
    uri = URI("http://quotes.toscrape.com/")
    document = Nokogiri.HTML(open(uri))

    divs = document.css('div.col-md-8')
    divs.search('div.quote').each do |item|
      quote = item.css("span.text").text
      author = item.css("small.author").text
      author_about = "http://quotes.toscrape.com" + item.css('a')[0].attributes["href"].value
      tagsList = item.css("div.tags")
      tags = []
      tagsList.search('a.tag').each do |t|
        addTag(t.text)
        tags.push(t.text)
      end 

      if (tags.include?(param))
        addQuote(quote, author, author_about, tags)
      end

      next if item['class'] == 'tags'
      
    end

  end

  #Adiciona uma nova tag ao banco verificando se ela já foi salva
  def addTag(name)
    if(Tag.where(name: name).length == 0)
      Tag.create!(name: name)
    end
  end

  #Adiciona uma nova quote ao banco, verificando se ela já foi salva
  def addQuote(quote, author, author_about, tags)
    if(Quote.where(quote: quote).length == 0)
      Quote.create!(
        quote: quote,
        author: author,
        author_about: author_about,
        tags: tags
      )
    end
  end


  #Autenticação do usuário. Todas as consultas que forem realizadas devem utilizar o token
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(
        ::Digest::SHA256.hexdigest(token),
        ::Digest::SHA256.hexdigest(TOKEN)
      )
    end
  end

end
