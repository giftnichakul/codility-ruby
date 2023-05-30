require_relative '../solution/DecReprSeniorCoding'

RSpec.describe 'example test' do
    it "example1" do
      result = drsc(213)
      expect(result).to eq(321)
    end
    it "example2" do
        result = drsc(553)
        expect(result).to eq(553)
      end
end

RSpec.describe 'correctness tests' do
    it "simple1" do
        result = drsc(1234)
        expect(result).to eq(4321)
    end
    it "simple2" do
        result = drsc(1001)
        expect(result).to eq(1100)
    end
    it "simple3" do
        result = drsc(9879)
        expect(result).to eq(9987)
    end
    it "two_digit" do
        result = drsc(36)
        expect(result).to eq(63)
    end
    it "one_digit" do
        result = drsc(9)
        expect(result).to eq(9)
    end
    it "large" do
        result = drsc(6789)
        expect(result).to eq(9876)
    end
    it "noting_to_change" do
        result = drsc(9000)
        expect(result).to eq(9000)
    end
    it "noting_to_change" do
        result = drsc(10000)
        expect(result).to eq(10000)
    end
end