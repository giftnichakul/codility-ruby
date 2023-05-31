require_relative '../solution/diverse_word'

def checkResult(word, num_a, num_b, num_c)
  return false if word.count('a') > num_a || word.count('b') > num_b || word.count('c') > num_c

  (0...word.length - 1).each do |i|
    return false if word[i] == word[i + 1] && word[i + 1] == word[i + 2]
  end

  true
end

RSpec.describe 'Example test' do
  it 'example1' do
    test = DiverseWord.new(6, 1, 1).solution
    expect(checkResult(test, 6, 1, 1)).to be true
  end

  it 'example2' do
    test = DiverseWord.new(1, 3, 1).solution
    expect(checkResult(test, 1, 3, 1)).to be true
  end

  it 'example3' do
    test = DiverseWord.new(0, 1, 8).solution
    expect(checkResult(test, 0, 1, 8)).to be true
  end
end

RSpec.describe 'Correctness test' do
  it 'super_small' do
    test = DiverseWord.new(1, 0, 1).solution
    expect(checkResult(test, 1, 0, 1)).to be true
  end

  it 'two_zeroes' do
    test = DiverseWord.new(0, 0, 1).solution
    expect(checkResult(test, 0, 0, 1)).to be true
  end

  it 'no_a' do
    test = DiverseWord.new(0, 1, 5).solution
    expect(checkResult(test, 0, 1, 5)).to be true
  end

  it 'no_b' do
    test = DiverseWord.new(7, 0, 5).solution
    expect(checkResult(test, 7, 0, 5)).to be true
  end

  it 'no_c' do
    test = DiverseWord.new(7, 3, 0).solution
    expect(checkResult(test, 7, 3, 0)).to be true
  end

  it 'all_similar' do
    test = DiverseWord.new(5, 5, 6).solution
    expect(checkResult(test, 5, 5, 6)).to be true
  end

  it 'one_big' do
    test = DiverseWord.new(34, 5, 6).solution
    expect(checkResult(test, 34, 5, 6)).to be true
  end

  it 'two_big' do
    test = DiverseWord.new(34, 35, 6).solution
    expect(checkResult(test, 34, 35, 6)).to be true
  end

  it 'one_fixed_letter' do
    test = DiverseWord.new(12, 2, 3).solution
    expect(checkResult(test, 12, 2, 3)).to be true
  end

  it 'almost_one_fixed_letter' do
    test = DiverseWord.new(12, 2, 3).solution
    expect(checkResult(test, 12, 2, 3)).to be true
  end

  it 'max' do
    test = DiverseWord.new(99, 99, 99).solution
    expect(checkResult(test, 99, 99, 99)).to be true
  end
end
