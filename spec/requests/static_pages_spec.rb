require 'rails_helper'

describe "Home page" do
	it "should have the content 'Sample App'"do
		dr = Selenium::WebDriver.for:ie
		url = 'www.baidu.com'
		dr.get url
		#~ dr.find_element(:id,'su').should be_displayed
		expect(dr.find_element(:id,'su')).to be_displayed#新的语法
	end #it
end #describe
