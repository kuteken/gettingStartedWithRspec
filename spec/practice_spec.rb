require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    it 'If under 12, answer Hiragana' do
      user = User.new(name: 'たろう', age: 12)
      expect(user.greet).to eq 'ぼくはたろうだよ。'
    end
    it 'If upper 13, answer Kanji' do
      user = User.new(name: 'たろう', age: 13)
      expect(user.greet).to eq '僕はたろうです。'
    end
  end
end
