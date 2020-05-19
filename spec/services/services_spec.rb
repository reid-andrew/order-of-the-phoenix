require 'rails_helper'

RSpec.describe "Service/Poro Tests ", type: :service do
  it 'Tests hogwarts results' do
    hufflepuff = HogwartsResults.new("Hufflepuff")

    expect(hufflepuff.class).to eq(HogwartsResults)
    expect(hufflepuff.house).to eq("Hufflepuff")
    expect(hufflepuff.display_hogwarts_data.size).to eq(3)
    expect(hufflepuff.display_hogwarts_data[0]["name"]).to eq("Amelia Bones")

    slytherin = HogwartsResults.new("Slytherin")

    expect(slytherin.display_hogwarts_data.size).to eq(1)
    expect(slytherin.display_hogwarts_data[0]["name"]).to eq("Severus Snape")
  end

  it 'Tests hogwarts service' do
    hufflepuff = HogwartsService.new("Hufflepuff")

    expect(hufflepuff.class).to eq(HogwartsService)
    expect(hufflepuff.house).to eq("Hufflepuff")
    expect(hufflepuff.hogwarts_json.size).to eq(3)
    expect(hufflepuff.hogwarts_json[0]["name"]).to eq("Amelia Bones")

    slytherin = HogwartsService.new("Slytherin")

    expect(slytherin.hogwarts_json.size).to eq(1)
    expect(slytherin.hogwarts_json[0]["name"]).to eq("Severus Snape")
  end
end
