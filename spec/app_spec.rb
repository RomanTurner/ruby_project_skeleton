require "app"

describe App do
  x = App.new
  describe "#something" do
    it "should return something" do
      expect(x.something).to eq("something")
    end
  end
  it "is equal to another string of the same value" do
    expect("this string").to eq("this string")
  end
  it "should do something cool" do
    expect(true).to eq(true)
  end
end
