RSpec.describe "four arithmetic operations" do
  describe 'addition' do
    it '1 + 1 is 2' do
      expect(1 + 1).to eq 2
    end
  end

  describe 'subtraction' do
    it '10 - 1 is 9' do
      expect(10 - 1).to eq 9
    end
  end

  it 'all can' do
    expect(1 + 2).to  eq 3
    expect(3 - 4).to  eq -1
    expect(5 * 6).to  eq 30
    expect(8 / 2).to  eq 4
  end
end
