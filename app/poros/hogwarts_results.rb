class HogwartsResults

  def display_hogwarts_data
    data = call_hogwarts_service
  end

  private

  def call_hogwarts_service
    hogwarts = HogwartsService.new
    hogwarts.hogwarts_json
  end
end
