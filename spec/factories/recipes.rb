FactoryBot.define do
  factory :recipe do
    title { "MyString" }
    recipe_type { "MyString" }
    cook_method { "MyString" }
    ingredients { "MyString" }
    cuisine { "MyString" }
    difficulty { "MyString" }
    cook_time { 1 }
  end
end
