require 'spec_helper'

describe "Library object" do
  before :each do
    @recruiter = Recruiter.new("Name", "Email", "Zip")
  end

  describe "#new" do
    it "takes three parameters and returns a Recruiter object" do
      expect(@recruiter).to be_an_instance_of(Recruiter)
    end
  end

end

