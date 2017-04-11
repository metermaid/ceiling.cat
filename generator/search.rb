
File.open('corpus.txt', 'w') do |writer| 
  Dir.glob('imsdb_scenes_dialogs_nov_2015/scenes/**/*').each do |file|
    next unless File.file?(file)
    content = File.read(file)
    content.scan(/.*lithe .*/) do |match|
      writer.write match
      writer.write "\n"
    end
  end
end