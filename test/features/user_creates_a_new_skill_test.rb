require_relative '../test_helper'

class UserCreatesANewSkillTest < FeatureTest
  
  def test_user_creates_a_new_skill
    visit "/skills/new"
    fill_in "skill[title]", with: "test title"
    fill_in "skill[description]", with: "test description"
    click_on("submit")
    
    within("h3") do
      assert page.has_content? "test title"
    end
  end
end
