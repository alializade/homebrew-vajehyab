class Vajehyab < Formula
  desc "English, Persian, and Arabic dictionary"
  homepage "https://www.vajehyab.com/"
  url "https://github.com/alializade/vajehyab/archive/v0.1.0.tar.gz"
  sha256 "591c0e17064bda2f065395a290527e5789d363d2a19df47ecbb8a49d79fa07d4"

  depends_on "bash" => :run
  depends_on "jq"

  def install
    system "./configure"
    system "make", "install"
  end
end
