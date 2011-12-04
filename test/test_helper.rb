class RestClient
  def self.get(url)
    file = url.split("/").last
    File.open("test/fixtures/#{file}.html", "rb").read
  end
end
