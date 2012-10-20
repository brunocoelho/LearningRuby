# Pode passar mais de uma exceção para as cláusulas rescue
# Pode declarar uma variável para guardar a mensagem da exceção, melhor do que escrever $!
def exec_2
  begin
    eval string
  rescue SyntaxError, NameError => boom
    puts "String doesn't compile: " + boom.to_s
  rescue StandardError => bang
    puts "Error running script: " + bang
  end
end
exec_2
