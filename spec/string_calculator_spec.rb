require "string_calculator"
describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
    context "given an '4'" do
      it "returns '4'" do
        expect(StringCalculator.add("4")).to eq(4)
      end
    end
    context "given an '5'" do
      it "returns '5'" do
        expect(StringCalculator.add("5")).to eq(5)
      end
    end
  end
end
