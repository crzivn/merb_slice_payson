require File.join( File.dirname(__FILE__), '..', "spec_helper" )
require 'request'

describe MerbSlicePayson::Request do

  it "should have specs"


end

describe "A Request" do

  before(:all) do
    #@request = MerbSlicePayson::Request.new
  end

  it "should have a valid MD5 sum"

  it "should have a cost and extra_cost formatted as strings with two decimals and ',' as separator" do
    pending
    @request.cost should == '12,45'
    @request.extra_cost should == '67,89'
  end

end

describe "A valid Request" do

  before(:all) do
    #@request = MerbSlicePayson::Request.new
  end

  it "should have a seller email"

  it "should have a buyer email"

  it "should have a description"

  it "should have a cost"

  it "should have an extra cost"

  it "should have an ok_url"

  it "should have an agent id"

  it "should have a valid Payson url" do
    pending
    @request.url should == "https://www.payson.se/testagent/default.aspx" ||
                           "https://www.payson.se/merchant/default.aspx"
  end

end
