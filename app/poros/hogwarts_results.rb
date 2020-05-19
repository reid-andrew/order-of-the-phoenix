class HogwartsResults

  def initialize(house)
    @house = house
  end

  def display_hogwarts_data
    data = call_hogwarts_service
  end

  private

  def call_hogwarts_service
    hogwarts = HogwartsService.new(@house)
    hogwarts.hogwarts_json
  end
end
