require_relative "../test_helper"

class HomePageTest < FeatureTest
  
  def test_welcome_message
    visit "/"
    within("h1") do
      assert page.has_content?("Skill Inventory")
    end
  end
end
