def else_meth
  begin
    1/1
  rescue
    # .. handle error
  else
    puts "Congratulations-- no errors!"
  ensure
    puts "Ensure clause"
  end
end
else_meth
