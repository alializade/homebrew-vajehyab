class Vajehyab < Formula
  desc "English, Persian, and Arabic dictionary"
  homepage "https://www.vajehyab.com/"
  url "https://github.com/alializade/vajehyab/archive/v1.0.0.tar.gz"
  sha256 "380b0b33194fb672f9ddb5203a0d02c68ed29ed2bda2460f482f1342a4d3f5bd"

  depends_on "bash" => :run
  depends_on "curl"
  depends_on "jq"

  def install
    # prefix.install Dir["./*"]
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"

    system "make", "install"
  end
end
