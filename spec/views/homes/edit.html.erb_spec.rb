require 'spec_helper'

describe "homes/edit.html.erb" do
  context "show form" do
    should have_css('a', text: 'Tab1')
  end
end