require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう', age: age } }
    context 'When under 12' do
      let(:age) { 12 }
      it 'answer Hiragana' do
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context 'When upper 13' do
      let(:age) { 13 }
      it 'answer Kanji' do
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
