if defined?(PryByebug)
  Pry.commands.alias&#095;command 'c', 'continue'
  Pry.commands.alias&#095;command 's', 'step'
  Pry.commands.alias&#095;command 'n', 'next'
  Pry.commands.alias&#095;command 'f', 'finish'
end