require File.expand_path('../../test_helper', __FILE__)

class PollsControllerTest < ActionController::TestCase
  fixtures :projects

  def test_index
    # @request.session[:user_id] = 2
    # Role.find(1).add_permission! :my_permission
    # Project.find(1).enabled_module_names = [:mymodule]

    get :index, project_id: 1

    assert_response :success
    assert_template 'index'
  end
end