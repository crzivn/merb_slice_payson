require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "MerbSlicePayson" do

  before(:all) do
    mount_slice
  end

  after(:all) do
    dismount_slice
  end

  describe "POST /payment" do

    before(:each) do
      #@response = post(slice_url(:payment))
    end

    it "should display a form for the Payson API" do
      pending
      @response.should have_selector("form#payson_form[action='https://www.payson.se/testagent/default.aspx'][method='post']")
    end

    it "should have a SellerEmail field" do
      pending
      @response.should have_selector("input[name='SellerEmail']")
    end

    it "should have a BuyerEmail field" do
      pending
      @response.should have_selector("input[name='BuyerEmail']")
    end

    it "should have a BuyerFirstName field" do
      pending
      @response.should have_selector("input[name='BuyerFirstName']")
    end

    it "should have a BuyerLastName field" do
      pending
      @response.should have_selector("input[name='BuyerLastName']")
    end

    it "should have a Description field" do
      pending
      @response.should have_selector("input[name='Description']")
    end

    it "should have a Cost field" do
      pending
      @response.should have_selector("input[name='Cost']")
    end

    it "should have a ExtraCost field" do
      pending
      @response.should have_selector("input[name='ExtraCost']")
    end

    it "should have a RefNr field" do
      pending
      @response.should have_selector("input[name='RefNr']")
    end

    it "should have a OkUrl field" do
      pending
      @response.should have_selector("input[name='OkUrl']")
    end

    it "should have a AgentId field" do
      pending
      @response.should have_selector("input[name='AgentId']")
    end

    it "should have a GuaranteeOffered field" do
      pending
      @response.should have_selector("input[name='GuaranteeOffered']")
    end

    it "should have a MD5 field" do
      pending
      @response.should have_selector("input[name='MD5']")
    end

    it "should have a CustomReceipt field" do
      pending
      @response.should have_selector("input[name='CustomReceipt']")
    end

    it "should have a PaymentMethod field" do
      pending
      @response.should have_selector("input[name='PaymentMethod']")
    end

    it "should POST the form to Payson" do
      pending
    end

  end

end
