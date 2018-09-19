$pkg_name="sensu-agent-win"
$pkg_filename="sensu-agent"
$pkg_origin="ncr_devops_platform"
$pkg_version="2.0.0-beta.4-1"
$pkg_maintainer="NCR Devops Platform Team <johnwilliam.kerry@ncr.com>"
$pkg_license=("MIT")
$pkg_source="https://storage.googleapis.com/sensu-binaries/$pkg_version/windows/amd64/$pkg_filename"
$pkg_svc_run="sensu-agent.exe start -c $pkg_svc_config_path/agent.yml"
$pkg_shasum="0badb2a5776054419185ceede42f36adbc2a82a9639366f23f1a5f40819b6c12"
$pkg_bin_dirs=@("bin")
$pkg_binds_optional=@{
  backend="port"
}
$pkg_description="Sensu 2.0 Agent"
$pkg_upstream_url="https://sensu.io"

function Invoke-Unpack {
  return 0
}

function Invoke-Build {
  return 0
}

function Invoke-Install {
  Write-BuildLine "Installing $pkg_filename binary"
  if(!(Test-Path "$pkg_prefix/bin")){
    mkdir "$pkg_prefix/bin"
  }
  Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_filename" "$pkg_prefix/bin/$pkg_filename.exe"
}
