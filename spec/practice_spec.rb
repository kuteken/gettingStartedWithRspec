require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    let(:params) { { name: 'たろう' } }
    context 'When under 12' do
      before do
        params.merge!(age: 12)
      end
      it 'answer Hiragana' do
        user = User.new(params)
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context 'When upper 13' do
      before do
        params.merge!(age: 13)
      end
      it 'answer Kanji' do
        user = User.new(params)
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
