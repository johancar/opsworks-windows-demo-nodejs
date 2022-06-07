package "git" do
  package_name value_for_platform_family(
    "debian" => "git-core",
    "rhel" => "git"
  )
  retries 2
end
