require 'spec_helper'
describe "go to edit", :type => :feature do
  it "create new home" do
    visit "/homes/new"
    fill_in 'Name', :with => 'Test Home'
    fill_in 'Size', :with => '100'
    click_button 'Create Home'
    expect(page).to have_content 'Edit Home'
    expect(current_path).to eql(homes_path)
  end
  it "edit home" do
    visit "/homes"
    click_link 'Edit Home'
    page.has_selector?('div', :text => 'This is Tab1', :visible => true)
    within("//form[@id='unofficial-form']") do
      fill_in 'Name', :with => 'Copied Name'
      fill_in 'Size', :with => '200'
    end
    click_button 'Copy to Tab2'
    page.has_selector?('div', :text => 'This is Tab2', :visible => true)
    within("//form[@id='official-form']") do
      click_button 'Update Home'
    end
    page.has_selector?('div', :text => 'This is Tab1', :visible => true)
  end
  
  it "check home name" do
    visit "/homes"
    expect(page).to have_content 'Copied Name'
  end
  
end