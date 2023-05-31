
require_relative '../solution/DecReprSeniorCoding'

RSpec.describe 'example test' do
    it "example1" do
        result = DRSC.new(213).solution
        expect(result).to eq(321)
    end
    it "example2" do
        result = DRSC.new(553).solution
        expect(result).to eq(553)
    end
end

RSpec.describe 'correctness tests' do
      it "simple1" do
          result = DRSC.new(1234).solution
          expect(result).to eq(4321)
      end
      it "simple2" do
          result = DRSC.new(1001).solution
          expect(result).to eq(1100)
      end
      it "simple3" do
          result = DRSC.new(9879).solution
          expect(result).to eq(9987)
      end
      it "two_digit" do
          result = DRSC.new(36).solution
          expect(result).to eq(63)
      end
      it "one_digit" do
          result = DRSC.new(9).solution
          expect(result).to eq(9)
      end
      it "large" do
          result = DRSC.new(6789).solution
          expect(result).to eq(9876)
      end
      it "noting_to_change" do
          result = DRSC.new(9000).solution
          expect(result).to eq(9000)
      end
      it "noting_to_change" do
          result = DRSC.new(10000).solution
          expect(result).to eq(10000)
      end
end