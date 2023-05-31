require_relative '../solution/tree_visibility'

RSpec.describe 'example test' do
  it 'example1' do
    t1 = TreeVisibility.new(5,
                            TreeVisibility.new(3, TreeVisibility.new(20, nil, nil), TreeVisibility.new(21, nil, nil)), TreeVisibility.new(10, TreeVisibility.new(1, nil, nil), nil))
    expect(t1.solution).to eq(4)
  end

  it 'example2' do
    t2 = TreeVisibility.new(8,
                            TreeVisibility.new(2, TreeVisibility.new(8, nil, nil), TreeVisibility.new(7, nil, nil)), TreeVisibility.new(6, nil, nil))
    expect(t2.solution).to eq(2)
  end
end
