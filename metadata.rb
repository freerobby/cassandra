maintainer        "Robby Grossman"
maintainer_email  "robby@freerobby.com"
license           "MIT License"
description       "Installs and configures Apache Cassandra."

recipe "cassandra", "Installs Apache Cassandra and configures the node as a Cassandra instance."

supports "ubuntu"

depends "apt"
depends "java"

attribute "cassandra/major_version",
  :display_name => "Major Version",
  :description => "The major version of Cassandra that you wish to run.",
  :default => "1"
attribute "cassandra/minor_version",
  :display_name => "Minor Version",
  :description => "The minor version of Cassandra that you wish to run.",
  :default => "0"