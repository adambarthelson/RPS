require 'spec_helper'

describe GameController do
  it "should get index" do
    get :index
    assert_response :success
  end

  it "should get throw" do
    post :throw, sign: Move.random.name
    assert_response :success
  end

end
