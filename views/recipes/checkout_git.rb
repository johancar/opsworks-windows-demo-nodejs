package "git" do
  package_name value_for_platform_family(
    "debian" => "git-core",
    "rhel" => "git"
  )
  retries 2
end

apt_package("git") do
  package_name "git-core"
  action [:install]
  retries 2
  retry_delay 2
  default_guard_interpreter :default
  declared_type :package
  cookbook_name "aws_opsworks_custom_cookbooks"
  recipe_name "checkout_git"
end
