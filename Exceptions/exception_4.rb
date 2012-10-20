# Ensure clause
def ensure_meth
  begin
    1/0
  rescue # default to StandardError
    puts $!.class
  ensure
    puts "Always here!"
  end
end
ensure_meth
