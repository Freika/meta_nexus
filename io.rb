def io(file, &block)
  output = File.open( "spec/fixtures/#{file}.yml","w" )
  output << yield
  output.close
end
