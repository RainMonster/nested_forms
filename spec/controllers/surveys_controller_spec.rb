require 'spec_helper'

describe SurveysController do
  let(:survey) { create(:survey) }

  it "should create a new survey" do
    p '*' * 200
    p attributes_for(:survey)
    p '*' * 200
    expect{
      post :create, { :survey => attributes_for(:survey) }
    }.to change { Survey.count }.by(1)
  end

end
# Survey.create
#   (title: "this is title", questions_attributes: 
#     [{body: "this is the question?" 
#     }]
#   )
