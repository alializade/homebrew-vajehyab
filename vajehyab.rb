class Vajehyab < Formula
  desc "English, Persian, and Arabic dictionary"
  homepage "https://www.vajehyab.com/"
  url "https://github.com/alializade/vajehyab/archive/v0.2.0.tar.gz"
  sha256 "088d57e0a8981015948f3996d5ebc1114c114a5526cecad42a0b4feacf4d6c5f"

  depends_on "bash" => :run
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install Dir["./*"]
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"

    # system "make", "install"
  end
end
