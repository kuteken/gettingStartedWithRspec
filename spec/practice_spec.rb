require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう', age: age } }
    subject { user.greet }
    context 'When under 12' do
      let(:age) { 12 }
      it 'answer Hiragana' do
        is_expected.to eq 'ぼくはたろうだよ。'
      end
    end
    context 'When upper 13' do
      let(:age) { 13 }
      it 'answer Kanji' do
        is_expected.to eq '僕はたろうです。'
      end
    end
  end
end
