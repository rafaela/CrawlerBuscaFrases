class QuoteSerializer < ActiveModel::Serializer
  attributes :quote, :author, :author_about, :tags
  

  def default_serializer_options
    {root: true}
  end

end
