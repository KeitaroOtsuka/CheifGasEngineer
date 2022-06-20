require 'open-uri'
require 'pdf-reader'

url = 'https://www.jia-page.or.jp/files/user/doc/exam/q_kou_r2.pdf'

io = open(url)
reader = PDF::Reader.new(io)