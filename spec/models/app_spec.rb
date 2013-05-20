require 'spec_helper'

describe App do
  before do
    @app = App.new(
        name: 'Lorem ipsim',
        description_short: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit",
        description_large: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat."
    )
  end

  subject { @app }

  it { should respond_to(:name) }
  it { should respond_to(:description_short) }
  it { should respond_to(:description_large) }
  it { should be_valid }

  describe "when name is not present" do
    before { @app.name = nil }
    it { should_not be_valid }
    end
  describe "when description_short is not present" do
    before { @app.description_short = nil }
    it { should_not be_valid }
  end
  describe "when description_large is not present" do
    before { @app.description_large = nil }
    it { should_not be_valid }
  end

end
