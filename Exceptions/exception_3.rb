# Chamada das exceções na pilha
def meth_1
  begin
    meth_2
  rescue ZeroDivisionError
    puts "Exception: #$! from class: #{$!.class}"
  end
end

def meth_2
  meth_3
end

def meth_3
  1/0
end
meth_1
