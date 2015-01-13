require_relative '../lib/practice'

RSpec.describe User do
  let(:user) { User.new(name: 'たろう', age: age) }
  shared_context 'When under 12' do
    let(:age) { 12 }
  end
  shared_context 'When upper 13' do
    let(:age) { 13 }
  end

  describe '#greet' do
    subject { user.greet }
    context 'When under 12' do
      include_context 'When under 12'
      it { is_expected.to eq 'ぼくはたろうだよ。' }
    end

    context 'When upper 13' do
      include_context 'When upper 13'
      it { is_expected.to eq '僕はたろうです。' }
    end
  end

  describe "#child?" do
    subject { user.child? }
    context 'When under 12' do
      include_context 'When under 12'
      it { is_expected.to eq true }
    end

    context 'When upper 13' do
      include_context 'When upper 13'
      it { is_expected.to eq false }
    end
  end

end
