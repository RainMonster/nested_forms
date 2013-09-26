FactoryGirl.define do
  factory :survey do
    title "Great Survey Title"
    # association :question, factory: :question
    # questions_attributes :question
  end

  # factory :survey_with_questions do, :parent => :survey 
  #   after(:create) do |survey|
  #     survey.questions << FactoryGirl.create(:question)
  #   end
  # end

  factory :question do
    body "Awesome Question Body"
    survey
  end
end
