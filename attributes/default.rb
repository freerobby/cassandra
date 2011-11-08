# Cassandra will download the latest patch version of the major/minor version specified.
# e.g. Major=1, Minor=0 => 1.0.x; Major=0, Minor=8 => 0.8.x
default[:cassandra][:major_version] = 1
default[:cassandra][:minor_version] = 0
