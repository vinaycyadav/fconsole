require 'spec_helper'

describe "dbmock object" do
  before :each do
    @dbmock = Dbmock.new
    @recruiter = Recruiter.new("tname","temail","tzip")
    @hash_recruiter = {1 => @recruiter}
  end

  describe "#initialize" do
    it "should take no parameters and returns a dbmock object" do
      expect(@dbmock).to be_an_instance_of(Dbmock)
    end
  end

  describe "#add_recruiter" do
    it 'should take recruiter object and return true' do
      expect(@dbmock.add_recruiter(@recruiter)).to eq(true)
    end
  end

  describe "#view_recruiter" do
    it 'should take ID and return Recruiter object' do
      expect(@dbmock.view_recruiter(1)).to be_an_instance_of(Recruiter)
    end
  end

  describe "#update_recruiter" do
    it 'should take ID & Recruiter object and return true' do
      expect(@dbmock.update_recruiter(1,@recruiter)).to eq(true)
    end
  end

  describe "#delete_recruiter" do
    it 'should take ID and return true' do
      expect(@dbmock.delete_recruiter(1)).to eq(true)
    end
  end

  describe "#yaml_put" do
    it 'should take hash as parameter, save to YAML file and returns true' do
      expect(@dbmock.yaml_put(@hash_recruiter)).to eq(true)
    end
  end

  describe "#yaml_get" do
    it 'should take no parameter, load from YAML file and returns Hash' do
      expect(@dbmock.yaml_get()).to be_an_instance_of(Hash)
    end
  end

  describe "#json_put" do
    it 'should take hash as parameter, save to YAML file and returns true' do
      expect(@dbmock.json_put(@hash_recruiter)).to eq(true)
    end
  end

  describe "#json_get" do
    it 'should take no parameter, load from JSON file and returns Hash' do
      expect(@dbmock.json_get()).to be_an_instance_of(Hash)
    end
  end

  describe "#marshal_put" do
    it 'should take hash as parameter, save to marshal file and returns true' do
      expect(@dbmock.marshal_put(@hash_recruiter)).to eq(true)
    end
  end

  describe "#marshal_get" do
    it 'should take no parameter, load from marshal file and returns Hash' do
      expect(@dbmock.marshal_get()).to be_an_instance_of(Hash)
    end
  end

  describe "#mysql_put" do
    it "should take hash as parameter, save to sql and returns true" do
      expect(@dbmock.mysql_put(@hash_recruiter)).to eq(true)
    end
  end

  describe "#mysql_get" do
    it "should take no parameter, load from mysql and return Hash" do
      expect(@dbmock.mysql_get()).to be_an_instance_of(Hash)
    end
  end

end