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
    is_css_in_section? '#server-metrics', '#server-select'
    is_text_in_section? '#server-metrics', 'Please select a server ..'
  end

  test 'Scenario 4: Menu'  do
    # Check content of the <div> .nav
    is_css_in_page? '.navbar' 
    is_text_in_section? '.navbar-brand', "System Analyser"
    is_text_in_section? '.navbar-nav', 'Select System'
    is_text_in_section? '.navbar-nav', 'How To'
    is_text_in_section? '.navbar-nav', 'Contacts'
  end

  test 'Scenario 5: Title amd description' do
    is_css_in_page? '#main'
    is_css_in_section? '#main', '#title'
    is_css_in_section? '#main', '#image'
    is_text_in_section? '#title', 'System Analyser'
    is_text_in_section? '#title', 'Check the health of your servers today'
  end

  test 'Scenario 6' do
    is_image_in_section? '#main', 'system-analyser.jpg' ,1
  end 
end  