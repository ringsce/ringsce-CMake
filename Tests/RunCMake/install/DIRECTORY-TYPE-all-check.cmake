set(_check_files
  [[bin]]
  [[bin/dir]]
  [[bin/dir/empty\.txt]]
  [[com]]
  [[com/dir]]
  [[com/dir/empty\.txt]]
  [[etc]]
  [[etc/dir]]
  [[etc/dir/empty\.txt]]
  [[include]]
  [[include/dir]]
  [[include/dir/empty\.txt]]
  [[lib]]
  [[lib/dir]]
  [[lib/dir/empty\.txt]]
  [[libexec]]
  [[libexec/dir]]
  [[libexec/dir/empty\.txt]]
  [[sbin]]
  [[sbin/dir]]
  [[sbin/dir/empty\.txt]]
  [[share]]
  [[share/dir]]
  [[share/dir/empty\.txt]]
  [[share/doc]]
  [[share/doc/dir]]
  [[share/doc/dir/empty\.txt]]
  [[share/info]]
  [[share/info/dir]]
  [[share/info/dir/empty\.txt]]
  [[share/locale]]
  [[share/locale/dir]]
  [[share/locale/dir/empty\.txt]]
  [[share/man]]
  [[share/man/dir]]
  [[share/man/dir/empty\.txt]]
  [[var]]
  [[var/dir]]
  [[var/dir/empty\.txt]]
  [[var/run]]
  [[var/run/dir]]
  [[var/run/dir/empty\.txt]]
  )
check_installed("^${_check_files}$")
