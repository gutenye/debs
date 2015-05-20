# DEBUG level
#  1 info
#  2 debug

get_package() {
  [[ ! -e "debian/changelog" ]] && error_exit "get_package: Can't find debian/changelog file"
  package=$(dpkg-parsechangelog | sed -n 's/^Source: //p')
  [[ "$package" == "" ]] && error_exit "Can't get package name"
  echo "$package"
}

get_version() {
  [[ ! -e "debian/changelog" ]] && error_exit "get_version: Can't find debian/changelog file"
  version=$(dpkg-parsechangelog | sed -nr 's/^Version: ([^-]+).*/\1/p')
  [[ "$version" == "" ]] && error_exit "Can't get version"
  echo "$version"
}

# echo cmd and run cmd
run_cmd() {
  cmd="$1"; shift
  echo -e ">> $cmd $@"
  $cmd $@
}

pd() {
  echo -e "$@"
}

say() {
  echo -e "$@"
}

say2() {
  echo -e "$@" >&2
}

error() {
  echo -e "$@" >&2
}

error_exit() {
  echo -e "$@" >&2
  exit 1
}

debug() {
  if (( $DEBUG >= 1 )); then
    echo -e "$@" >&2
  fi
}

absolutename() {
	readlink -m "$1"
}

filename() {
	base=$(basename "$1")
	echo ${base%.*}
}

extname() {
	base=$(basename "$1")
	[[ "$base" =~ \. ]] && echo "${base##*.}" || echo ""
}
