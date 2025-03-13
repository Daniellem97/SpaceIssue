variable "space_count" {
  default = 45
}

resource "spacelift_space" "spaces" {
  count            = var.space_count
  name             = "space-${count.index + 1}"
  description      = "This is space number ${count.index + 1}."
  parent_space_id  = count.index == 0 ? "root" : element(spacelift_space.spaces[*].id, count.index - 1)
  inherit_entities = true
}
