# MELHORAR ESSE EXEMPLO
# PENSAR EM ALGO UTIL
def retry_meth
  @temp = true
  begin
    # First try an extended login. If it fails because the
    # server doesn't support it, fall back to a normal login
    if @temp
      raise
    else
      puts 'Ok'
    end
  rescue Exception #ProtocolError
    if @temp
      @temp = false
      retry
    else
      raise
    end
  end
end
retry_meth
