# Mensagem da exceção é colocada na variável global $!
def exce_1
  begin
    puts 1/0
  rescue Exception
    puts "Exception raised: #{$!}"
  end
end
exce_1
