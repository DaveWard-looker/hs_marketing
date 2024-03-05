project_name: "hs_marketing"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
remote_dependency: hs_core {
  url: "git@github.com:DaveWard-looker/hs_core.git"
  ref: "master"
}
