require 'rails_helper'
include ERB::Util

RSpec.describe 'feedbacks/show', type: :view do
  before(:each) do
    practice = FactoryGirl.create(:practice)
    @user = assign(:user, FactoryGirl.create(:user, practices: [practice]))
    @feedback = assign(:feedback, FactoryGirl.create(:feedback, user: @user, note: 'Proceeding nicely'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/#{html_escape(@feedback.practice)}/)
    expect(rendered).to match(/Proceeding nicely/)
  end
end
