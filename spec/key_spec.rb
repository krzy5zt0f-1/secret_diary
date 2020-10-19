require_relative "../lib/key.rb"

describe Key do
  it { is_expected.to respond_to(:lock) }
  it { is_expected.to respond_to(:unlock) }

  describe ".unlock" do
    it "unlocks new instance of secret diary" do
      expect(subject.unlock).to eq true
    end
  end
  describe ".lock" do
    it "locks previously unlocked instance of secret diary" do
      subject.unlock
      expect(subject.lock).to eq false
    end
  end
end
