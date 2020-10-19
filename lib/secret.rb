class SecretDiary

def initialize
  @open = false
  @notes = []
  end

def lock
@open = false
end

def unlock
  @open = true
end

def add_entry(title, body)
fail "Diary locked" if @open == false
@notes << {title: title, body: body}
end

def get_entries
fail "Diary locked" if @open == false
@notes.each { |note| puts "#{@notes.index(note) + 1}. " + note[:title];
              puts "---------"; puts note[:body] }
end
end
