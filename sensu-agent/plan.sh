pkg_name=sensu-agent
pkg_origin=sensu
pkg_version="5.0.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("MIT")
pkg_source="https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/$pkg_version/sensu-go-$pkg_version-linux-amd64.tar.gz"
pkg_svc_run="sensu-agent start -c $pkg_svc_config_path/agent.yml"
pkg_shasum="1dac10ea8060e7d6f31c425ccb114ee678b8cbc08e51db95c17d90c873138b9b"
pkg_deps=(core/curl)
pkg_bin_dirs=(bin)
pkg_binds_optional=(
  [backend]="port"
)
pkg_description="Sensu 2.0 Agent"
pkg_upstream_url="https://sensu.io"

do_build(){
  return 0
}

do_install() {
  build_line "Installing sensu-agent binary"
  chmod +x "$HAB_CACHE_SRC_PATH/bin/sensu-agent"
  install -D "$HAB_CACHE_SRC_PATH/bin/sensu-agent" "$pkg_prefix/bin/sensu-agent"
}
