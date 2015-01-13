require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    before do
      @params = { name: 'たろう' }
    end
    context 'When under 12' do
      it 'answer Hiragana' do
        user = User.new(@params.merge(age: 12))
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context 'When upper 13' do
      it 'answer Kanji' do
        user = User.new(@params.merge(age: 13))
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
