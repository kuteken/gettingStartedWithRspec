require_relative '../lib/practice'

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }

    shared_examples 'children greeting' do
      it { is_expected.to eq 'ぼくはたろうだよ。' }
    end
    context 'When under 0' do
      let(:age) { 0 }
      it_behaves_like 'children greeting'
    end
    context 'When under 12' do
      let(:age) { 12 }
      it_behaves_like 'children greeting'
    end

    shared_examples 'adult greeting' do
      it { is_expected.to eq '僕はたろうです。' }
    end
    context 'When upper 13' do
      let(:age) { 13 }
      it_behaves_like 'adult greeting'
    end
    context 'When upper 100' do
      let(:age) { 100 }
      it_behaves_like 'adult greeting'
    end
  end
end
