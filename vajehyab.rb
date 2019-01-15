class Vajehyab < Formula
  desc "English, Persian, and Arabic dictionary"
  homepage "https://www.vajehyab.com/"
  url "https://github.com/alializade/vajehyab/archive/v0.1.0.tar.gz"
  sha256 "591c0e17064bda2f065395a290527e5789d363d2a19df47ecbb8a49d79fa07d4"

  depends_on "bash" => :run
  depends_on "curl"
  depends_on "jq"

  def install
    # ENV.deparallelize
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install"
    
    # bin.install Dir["output/*"]
    # var.install "./var/vajehyab-config"
  end
end
