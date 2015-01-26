require 'test_helper'

# Tests the layout of the page by setting up a the application and interagating the html/css that gets returned

class CheckHomepageTest < ActionDispatch::IntegrationTest
  
  def setup 
    visit root_path 
  end
        
  def teardown

  end

  test 'Scenario 1: Use the how-to' do
    is_css_in_page? '#how-to'
  end

  test 'Scenario 2: Contact support' do
    is_css_in_page? '#contacts'
  end

  test 'Scenario 3: Show server metrics display' do
    is_css_in_page? '#server-metrics'
  end

  test 'Scenario 4: Menu'  do
    # Check content of the <div> .nav
    is_css_in_page? '.navbar' 
    #is_text_in_section? '.navbar-brand', "System Analyser"
    #is_text_in_section? '.navbar-nav', 'Select System'
    #is_text_in_section? '.navbar-nav', 'How To'
    #is_text_in_section? '.navbar-nav', 'Contacts'
  end

  test 'Scenario 5: Title amd description' do
    is_css_in_page? '#header'
    is_css_in_section? '#header', '#title'
    is_css_in_section? '#header', '#image'
    #is_text_in_section? '#title', 'System Analyser'
    #is_text_in_section? '#title', 'description here'
  end

end  