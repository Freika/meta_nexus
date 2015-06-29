def io(file, &block)
  output = File.open( "#{file}.yml","w" )
  output << yield
  output.close
end
