class HogwartsService
  def hogwarts_json
    hogwarts_parse
  end

  private

  def hogwarts_response
    Faraday.get('https://www.potterapi.com/v1/characters') do |req|
      req.params['key'] = ENV['POTTER_API_KEY']
      req.params['house'] = 'Gryffindor'
      req.params['orderOfThePhoenix'] = true
    end
  end

  def hogwarts_parse
    JSON.parse(hogwarts_response.body)
  end
end
