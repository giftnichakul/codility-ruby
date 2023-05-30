require_relative '../solution/TreeVisibility'

RSpec.describe 'example test' do
    it "example1" do
        t1 = Tree.new(5, Tree.new(3, Tree.new(20, nil, nil), Tree.new(21, nil, nil)), Tree.new(10, Tree.new(1, nil, nil), nil))
        expect(t1.solution).to eq(4)
    end
    it "example2" do
        t2 = Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil))
        expect(t2.solution).to eq(2)
      end
end
