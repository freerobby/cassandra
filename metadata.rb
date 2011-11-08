maintainer        "Robby Grossman"
maintainer_email  "robby@freerobby.com"
license           "MIT License"
description       "Installs and configures Apache Cassandra."

recipe "cassandra", "Installs Apache Cassandra and configures the node as a Cassandra instance."

supports "ubuntu"

depends "java"
