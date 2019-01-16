class Vajehyab < Formula
  desc "English, Persian, and Arabic dictionary"
  homepage "https://www.vajehyab.com/"
  url "https://github.com/alializade/vajehyab/archive/v1.0.1.tar.gz"
  sha256 "2a72a33ce84901237aa1f1ab15c71e0fad696ac0a497a6116a69a68b24f42bb7"

  depends_on "bash" => :run
  depends_on "curl"
  depends_on "jq"

  def install
    prefix.install Dir["./*"]
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    #
    # system "make", "install"
  end
end
