require 'test_helper'

class MainMenuControllerTest < ActionDispatch::IntegrationTest
  test 'should get default' do
    get main_menu_default_url
    assert_response :success
  end
end
