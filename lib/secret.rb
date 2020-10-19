require_relative 'key'

class SecretDiary
  attr_reader :lock
  def initialize
    @notes = []
    @lock = Key.new
  end
def add_entry(title, body)
fail "Diary locked" if @lock.open == false
@notes << {title: title, body: body}
end

def get_entries
fail "Diary locked" if @lock.open == false
@notes.each { |note| puts "#{@notes.index(note) + 1}. " + note[:title];
              puts "---------"; puts note[:body] }
end
end
