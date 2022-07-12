class WorkerQuoteJob
  include Sidekiq::Job

  #Realiza uma nova consulta das tags que já foram consultadas para atualizar as citações.
  #Essa consulta é feita a cada 12 horas.
  def perform(*args)
    tags = Tag.all

    quotes = QuotesController.new
    puts tags.length
    tags.each do |t|
      quotes.crawler_quotes(t.name)
    end
  end
end
