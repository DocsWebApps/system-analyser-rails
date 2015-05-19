require 'test_helper'

class HomepageFunctionalTest < ActionDispatch::IntegrationTest

  def setup
    visit root_path
  end

  def teardown
  end

  test 'Select server kirk' do 
    select "Kirk", from: 'server'
  end
end