require 'test_helper'

class DailyNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daily_notes_index_url
    assert_response :success
  end

end
