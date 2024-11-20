#
# Copyright 2022 Hetzner Online GmbH
#
# SPDX-License-Identifier: Apache-2.0
#

class WpCli < Formula
  desc "Command-line interface for WordPress"
  homepage "https://wp-cli.org/"
  url "https://github.com/wp-cli/wp-cli/releases/download/v2.11.0/wp-cli-2.11.0.phar"
  sha256 "a39021ac809530ea607580dbf93afbc46ba02f86b6cffd03de4b126ca53079f6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "wp-cli-#{version}.phar" => "wp"
  end

end
