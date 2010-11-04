require 'spec_helper'

describe Info do
  subject {Factory(:info)}
  # validations
  it "should require a name" do
    subject.name = nil
    subject.should_not be_valid
  end
  it "should require a unique name" do
    Factory(:info, :name => "uniq name")
    subject.name = "uniq name"
    subject.should_not be_valid
  end

  # associations
  it {should respond_to(:items)}
  it {should respond_to(:phones)}
  it {should respond_to(:locations)}
  it {should respond_to(:websites)}

  describe "#items" do
    let(:info) {Factory(:info)}
    subject {info.items}

    it "should accept phones" do
      subject << Factory(:phone)
      info.phones.length.should == 1
    end
    it "should accept locations" do
      subject << Factory(:location)
      info.locations.length.should == 1
    end
    it "should accept websites" do
      subject << Factory(:website)
      info.websites.length.should == 1
    end
  end

  # state machine
  it "should be created as 'draft'" do
    subject.state.should == 'draft'
  end
  it "should transition from 'draft' to 'published'" do
    subject.publish!
    subject.state.should == 'published'
  end
  it "should transition from 'published' to 'pending' " do
    subject.publish!
    subject.put_aside!
    subject.state.should == 'pending'
  end
  it "should transition from 'pending' to 'publish' " do
    subject.publish!
    subject.put_aside!
    subject.publish!
    subject.state.should == 'published'
  end
end
