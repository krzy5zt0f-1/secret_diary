require_relative "../lib/secret.rb"

describe SecretDiary do
  it { is_expected.to respond_to(:lock) }
  it { is_expected.to respond_to(:unlock) }
  it { is_expected.to respond_to(:add_entry) }
  it { is_expected.to respond_to(:get_entries) }

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
  describe ".get_entries" do
    it "throws an error if diary is locked" do
      expect { subject.get_entries }.to raise_error "Diary locked"
    end
    it "displays entries  appropriate" do
      subject.unlock
      subject.add_entry("hello", "world")
      subject.add_entry("world", "is great")
      expect { subject.get_entries }.to output("1. hello\n---------\nworld\n2. world\n---------\nis great\n").to_stdout
    end
  end
  describe "#add_entry()" do
    it "throws an error if input provided is incorrect" do
      expect { subject.add_entry() }.to raise_error(ArgumentError)
      expect { subject.add_entry("title", ) }.to raise_error(ArgumentError)
    end
    it "throws an error if diary is locked" do
      expect { subject.add_entry("title", "body") }.to raise_error "Diary locked"
    end
  end
end
