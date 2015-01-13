require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう' } }
    context 'When under 12' do
      before do
        params.merge!(age: 12)
      end
      it 'answer Hiragana' do
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context 'When upper 13' do
      before do
        params.merge!(age: 13)
      end
      it 'answer Kanji' do
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
